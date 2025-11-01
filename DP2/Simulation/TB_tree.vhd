-- TB_tree.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TB_tree is
end entity;

architecture sim of TB_tree is
  -- Set your width (power of 4)
  constant N : natural := 64;

  -- DUT ports
  signal A, B  : std_logic_vector(N-1 downto 0) := (others => '0');
  signal S     : std_logic_vector(N-1 downto 0);
  signal Cin   : std_logic := '0';
  signal Cout  : std_logic;
  signal Ovfl  : std_logic;
begin
  ---------------------------------------------------------------------------
  -- DUT
  -- NOTE: Your compiled design shows entity name "tree".
  -- If your top entity is EN_Adder instead, change "tree" to "EN_Adder".
  ---------------------------------------------------------------------------
  dut: entity work.tree
    generic map (N => N)
    port map (
      A    => A,
      B    => B,
      S    => S,
      Cin  => Cin,
      Cout => Cout,
      Ovfl => Ovfl
    );

  ---------------------------------------------------------------------------
  -- Stimulus (5 edge cases), self-checking
  ---------------------------------------------------------------------------
  stim: process
    -- expected
    variable S_exp  : std_logic_vector(N-1 downto 0);
    variable Cout_e : std_logic;
    variable Ovfl_e : std_logic;

    -- scratch (kept local to TB; not signals)
    variable au, bu : unsigned(N-1 downto 0);
    variable ext    : unsigned(N downto 0);
    variable sa, sb, ss : signed(N-1 downto 0);

    -- local temps for specific vectors
    variable a2, b2 : std_logic_vector(N-1 downto 0);
    variable a3, b3 : std_logic_vector(N-1 downto 0);
    variable a4, b4 : std_logic_vector(N-1 downto 0);

    -- compute expected (unsigned Cout, signed Ovfl)
    procedure calc_expected(
      constant a  : in  std_logic_vector;
      constant b  : in  std_logic_vector;
      constant ci : in  std_logic;
      variable s0 : out std_logic_vector;
      variable co : out std_logic;
      variable ov : out std_logic
    ) is
      variable au_l   : unsigned(a'length-1 downto 0) := unsigned(a);
      variable bu_l   : unsigned(b'length-1 downto 0) := unsigned(b);
      variable ext_l  : unsigned(a'length downto 0);
      variable sa_l   : signed(a'length-1 downto 0) := signed(a);
      variable sb_l   : signed(b'length-1 downto 0) := signed(b);
      variable ss_l   : signed(a'length-1 downto 0);
    begin
      if ci = '1' then
        ext_l := ('0' & au_l) + ('0' & bu_l) + 1;
      else
        ext_l := ('0' & au_l) + ('0' & bu_l);
      end if;

      s0 := std_logic_vector(ext_l(ext_l'high-1 downto 0));
      co := std_logic(ext_l(ext_l'high));

      ss_l := signed(s0);
      ov := '1' when ((sa_l(sa_l'high) = sb_l(sb_l'high)) and (ss_l(ss_l'high) /= sa_l(sa_l'high))) else '0';
    end procedure;
  begin
    --------------------------------------------------------------------------
    -- 0) Zero + Zero, Cin=0
    --------------------------------------------------------------------------
    A   <= (others => '0');
    B   <= (others => '0');
    Cin <= '0';
    calc_expected(A, B, Cin, S_exp, Cout_e, Ovfl_e);
    wait for 10 ns;
    assert S = S_exp report "FAIL vec0 SUM" severity error;
    assert Cout = Cout_e report "FAIL vec0 COUT" severity error;
    assert Ovfl = Ovfl_e report "FAIL vec0 OVFL" severity error;
    report "PASS vec0: zero+zero" severity note;

    --------------------------------------------------------------------------
    -- 1) All ones + 1, Cin=0  -> expect Sum=0..0, Cout=1, Ovfl=0
    --------------------------------------------------------------------------
    A   <= (others => '1');
    B   <= std_logic_vector(to_unsigned(1, N));
    Cin <= '0';
    calc_expected(A, B, Cin, S_exp, Cout_e, Ovfl_e);
    wait for 10 ns;
    assert S = S_exp report "FAIL vec1 SUM" severity error;
    assert Cout = Cout_e report "FAIL vec1 COUT" severity error;
    assert Ovfl = Ovfl_e report "FAIL vec1 OVFL" severity error;
    report "PASS vec1: allones + 1" severity note;

    --------------------------------------------------------------------------
    -- 2) Max positive + Max positive (signed overflow), Cin=0
    --    max_pos = 0x7...7  (MSB=0, others=1)
    --------------------------------------------------------------------------
    a2 := (others => '1'); a2(N-1) := '0';
    b2 := a2;
    A   <= a2;
    B   <= b2;
    Cin <= '0';
    calc_expected(A, B, Cin, S_exp, Cout_e, Ovfl_e);
    wait for 10 ns;
    assert S = S_exp report "FAIL vec2 SUM" severity error;
    assert Cout = Cout_e report "FAIL vec2 COUT" severity error;
    assert Ovfl = Ovfl_e report "FAIL vec2 OVFL" severity error;
    report "PASS vec2: maxpos + maxpos" severity note;

    --------------------------------------------------------------------------
    -- 3) Most negative + Most negative (signed overflow), Cin=0
    --    min_neg = 0x8...0  (MSB=1, others=0)
    --------------------------------------------------------------------------
    a3 := (others => '0'); a3(N-1) := '1';
    b3 := a3;
    A   <= a3;
    B   <= b3;
    Cin <= '0';
    calc_expected(A, B, Cin, S_exp, Cout_e, Ovfl_e);
    wait for 10 ns;
    assert S = S_exp report "FAIL vec3 SUM" severity error;
    assert Cout = Cout_e report "FAIL vec3 COUT" severity error;
    assert Ovfl = Ovfl_e report "FAIL vec3 OVFL" severity error;
    report "PASS vec3: minneg + minneg" severity note;

    --------------------------------------------------------------------------
    -- 4) Full-propagate chain: A=1010..., B=0101..., Cin=1  (Sum=0..0, Cout=1)
    --------------------------------------------------------------------------
    for i in 0 to N-1 loop
      if (i mod 2) = 0 then
        a4(i) := '0';  -- ...1010...
        b4(i) := '1';  -- ...0101...
      else
        a4(i) := '1';
        b4(i) := '0';
      end if;
    end loop;

    A   <= a4;
    B   <= b4;
    Cin <= '1';
    calc_expected(A, B, Cin, S_exp, Cout_e, Ovfl_e);
    wait for 10 ns;
    assert S = S_exp report "FAIL vec4 SUM" severity error;
    assert Cout = Cout_e report "FAIL vec4 COUT" severity error;
    assert Ovfl = Ovfl_e report "FAIL vec4 OVFL" severity error;
    report "PASS vec4: AA + 55 with Cin=1" severity note;

    report "All 5 tests completed." severity note;
    wait;
  end process;
end architecture;

