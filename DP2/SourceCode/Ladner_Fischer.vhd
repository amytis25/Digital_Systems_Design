-- LF_Adder.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Ladner_Fischer is
  generic ( N : natural := 64 );  -- must be multiple of 4; N/4 must be power of two
  port (
    A, B : in  std_logic_vector(N-1 downto 0);
    Cin  : in  std_logic;
    S    : out std_logic_vector(N-1 downto 0);
    Cout : out std_logic;
    Ovfl : out std_logic
  );
end entity;

architecture Structural of Ladner_Fischer is
	signal Cout_i : std_logic;
  -- number of 4-bit groups
  constant G : natural := N / 4;

  -- checks at elaboration time
  -- N must be multiple of 4
  -- G must be a power of two for the LF tree code below
  function is_power_of_two(x: natural) return boolean is
    variable v: natural := x;
  begin
    if v = 0 then return false; end if;
    while (v mod 2 = 0) loop
      v := v / 2;
    end loop;
    return (v = 1);
  end function;

  -- bit-level P and G
  signal P_bit, G_bit : std_logic_vector(N-1 downto 0);

  -- per-block signals (each block has an EN_LACG4 instance)
  -- C_block(k) is the internal carry vector for block k (4 downto 1)
  type slv4 is array (natural range <>) of std_logic_vector(4 downto 1);
  signal C_block : slv4(0 to G-1);

  -- store EN_LACG4's Gout,Pout (4 bits each) per block
  type slv4_rg is array (natural range <>) of std_logic_vector(3 downto 0);
  signal Gout_blk : slv4_rg(0 to G-1);
  signal Pout_blk : slv4_rg(0 to G-1);

  -- group-level generate/propagate (single bit per group) (from Gout_blk(k)(3), Pout_blk(k)(3))
  signal G_grp, P_grp : std_logic_vector(G-1 downto 0);

  -- carry into each group (group index 0..G). C_group(0)=Cin, C_group(k) = carry into block k
  signal C_group : std_logic_vector(G downto 0);

  -- component declaration (must match the EN_LACG4 you provided)
  component EN_LACG4
    generic (N: natural := 4);
    port (
      Gin, Pin  : in  std_logic_vector (N-1 downto 0);
      Gout, Pout: out std_logic_vector (N-1 downto 0);
      Cin       : in  std_logic;
      C         : out std_logic_vector (N downto 1)
    );
  end component;

begin

  -- elaboration checks
  elaboration_checks: assert (N mod 4 = 0)
    report "LF_Adder: N must be a multiple of 4"
    severity FAILURE;

  elaboration_checks2: assert is_power_of_two(G)
    report "LF_Adder: (N/4) must be a power of two"
    severity FAILURE;

  -- 1) compute per-bit propagate/generate
  gen_bit_pg: for i in 0 to N-1 generate
  begin
    P_bit(i) <= A(i) xor B(i);
    G_bit(i) <= A(i) and B(i);
  end generate;

  -- 2) instantiate EN_LACG4 for each 4-bit block to compute internal carries and block-level G/P outputs
  gen_blocks: for k in 0 to G-1 generate
    -- map little-endian within block: bits 4*k .. 4*k+3
    -- construct vectors Gin/Pin in order (3 downto 0) = bit indices (4*k+3 downto 4*k)
    signal Gin_vec, Pin_vec : std_logic_vector(3 downto 0);
  begin
    Gin_vec <= G_bit(4*k+3) & G_bit(4*k+2) & G_bit(4*k+1) & G_bit(4*k);
    Pin_vec <= P_bit(4*k+3) & P_bit(4*k+2) & P_bit(4*k+1) & P_bit(4*k);

    U_blk : EN_LACG4
      port map (
        Gin  => Gin_vec,
        Pin  => Pin_vec,
        Gout => Gout_blk(k),
        Pout => Pout_blk(k),
        Cin  => C_group(k),    -- carry into this 4-bit block
        C    => C_block(k)
      );

    -- group-level signals: use MSB (index 3) of Gout_blk/Pout_blk
    G_grp(k) <= Gout_blk(k)(3);
    P_grp(k) <= Pout_blk(k)(3);
  end generate;

  -- 3) compute group-level prefix (Ladner-Fischer style) combinationally
  prefix_comb_proc: process(G_grp, P_grp, Cin)
    -- variable arrays sized to G
    type vbit is array (natural range <>) of std_logic;
    variable Gv, Pv, Gnext, Pnext : vbit(0 to G-1);

    -- helper for integer power of two
    function ipow2(n: natural) return natural is
      variable r: natural := 1;
      variable i: natural;
    begin
      for i in 1 to n loop
        r := r * 2;
      end loop;
      return r;
    end function;

    -- compute minimal stages = ceil(log2(G))
    variable stages: natural := 0;
    variable t: natural := 1;
  begin
    -- init
    for i in 0 to G-1 loop
      Gv(i) := G_grp(i);
      Pv(i) := P_grp(i);
    end loop;

    -- compute number of stages
    stages := 0;
    t := 1;
    while t < G loop
      t := t * 2;
      stages := stages + 1;
    end loop;

    -- iterative prefix (binary lifting): after loop Gv(i) is prefix generate for 0..i
    for s in 0 to stages-1 loop
      for i in 0 to G-1 loop
        if i >= 2**s then
          Gnext(i) := Gv(i) or (Pv(i) and Gv(i - 2**s));
          Pnext(i) := Pv(i) and Pv(i - 2**s);
        else
          Gnext(i) := Gv(i);
          Pnext(i) := Pv(i);
        end if;
      end loop;
      -- copy next -> current
      for i in 0 to G-1 loop
        Gv(i) := Gnext(i);
        Pv(i) := Pnext(i);
      end loop;
    end loop;

    -- compute group carries: carry into group 0 is Cin
    C_group(0) <= Cin;
    for k in 1 to G loop
      -- carry into group k is prefix generate of groups [0..k-1] with Cin
      -- that is: C_group(k) = Gv(k-1) or (Pv(k-1) and Cin)
      C_group(k) <= (Gv(k-1)) or (Pv(k-1) and Cin);
    end loop;

  end process prefix_comb_proc;

  -- 4) build sums: each block's internal C_block(k) vector gives carries into bits.
  --    mapping: C_block(k)(1) = carry into least significant bit of the block (bit 4*k)
  sum_gen: for k in 0 to G-1 generate
    begin
      -- bits within the block: j = 0 .. 3 mapping to absolute index idx = 4*k + j
      bit_loop: for j in 0 to 3 generate
      begin
        S(4*k + j) <= P_bit(4*k + j) xor C_block(k)(j+1);
      end generate;
  end generate;

  -- final outputs
	Cout_i <= C_group(G);
	Cout   <= Cout_i;
	Ovfl   <= Cout_i xor C_block(G-1)(4);

end architecture Structural;