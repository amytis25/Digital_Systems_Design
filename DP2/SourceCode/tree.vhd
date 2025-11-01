library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;


entity tree is 
	generic (N: natural := 64);
	port (
		A, B  : in std_logic_vector (N-1 downto 0);
		S : out std_logic_vector (N-1 downto 0);
		Cin : in std_logic;
		Cout, Ovfl : out std_logic
	);
end tree;



architecture LACGT of tree is
  ------------------------------------------------------------------------------
  -- Bitwise propagate / generate (always present)
  ------------------------------------------------------------------------------
  signal P0, G0 : std_logic_vector(N-1 downto 0);

  ------------------------------------------------------------------------------
  -- Level 1 (leaf, 4-bit blocks) – always present (since N >= 4)
  ------------------------------------------------------------------------------
  constant COUNT1 : integer := N/4;
  signal C_in_grp_1 : std_logic_vector(COUNT1-1 downto 0);
  signal P_blk_1    : std_logic_vector(COUNT1-1 downto 0);
  signal G_blk_1    : std_logic_vector(COUNT1-1 downto 0);

  -- Per 4-bit block carries (C(1..4)) for sums:
  type carr_block_array is array (natural range <>) of std_logic_vector(4 downto 1);
  signal Cbits_1 : carr_block_array(0 to COUNT1-1);

  ------------------------------------------------------------------------------
  -- Overall group P/G and outputs
  ------------------------------------------------------------------------------
  signal Pov_all, Gov_all : std_logic;
  signal Cout_i, C_into_MSB : std_logic;

begin
  ------------------------------------------------------------------------------
  -- Section 1: bitwise P/G
  ------------------------------------------------------------------------------
  P0 <= A xor B;
  G0 <= A and B;

  ------------------------------------------------------------------------------
  -- Level 1 (leaf): 4-bit EN_LACG4 over raw bits
  ------------------------------------------------------------------------------
  gen_level1 : for k in 0 to COUNT1-1 generate
    signal pvec, gvec, pout4, gout4 : std_logic_vector(3 downto 0);
  begin
    pvec <= P0(4*k+3 downto 4*k);
    gvec <= G0(4*k+3 downto 4*k);

    u_l1 : entity work.EN_LACG4
      generic map (N => 4)
      port map (
        Pin  => pvec,
        Gin  => gvec,
        Pout => pout4,
        Gout => gout4,
        Cin  => C_in_grp_1(k),
        C    => Cbits_1(k)
      );

    P_blk_1(k) <= pout4(3);
    G_blk_1(k) <= gout4(3);
  end generate;

  ------------------------------------------------------------------------------
  -- Top seed for N=4 (tree height L=1): Cin goes directly to the only leaf block.
  ------------------------------------------------------------------------------
  top_L1 : if N = 4 generate
  begin
    C_in_grp_1(0) <= Cin;
    Pov_all <= P_blk_1(0);
    Gov_all <= G_blk_1(0);
  end generate;

  ------------------------------------------------------------------------------
  -- Level 2 (exists when N >= 16): groups of 4 Level-1 blocks
  ------------------------------------------------------------------------------
  gen_has_l2 : if N >= 16 generate
    constant COUNT2 : integer := N/16;
    signal C_in_grp_2, P_blk_2, G_blk_2 : std_logic_vector(COUNT2-1 downto 0);
  begin
    -- If the tree height is exactly L=2 (i.e., N=16), seed the top Cin here.
    seed_l2_top : if N = 16 generate
    begin
      C_in_grp_2(0) <= Cin;
    end generate;

    nodes_l2 : for g in 0 to COUNT2-1 generate
      signal pin4, gin4, pout4, gout4 : std_logic_vector(3 downto 0);
      signal c4 : std_logic_vector(4 downto 1);
    begin
      pin4 <= P_blk_1(4*g+3 downto 4*g);
      gin4 <= G_blk_1(4*g+3 downto 4*g);

      u_l2 : entity work.EN_LACG4
        generic map (N => 4)
        port map (
          Pin  => pin4,
          Gin  => gin4,
          Pout => pout4,
          Gout => gout4,
          Cin  => C_in_grp_2(g),
          C    => c4
        );

      -- Carries down into level-1 child blocks
      C_in_grp_1(4*g+0) <= c4(1);
      C_in_grp_1(4*g+1) <= c4(2);
      C_in_grp_1(4*g+2) <= c4(3);
      C_in_grp_1(4*g+3) <= c4(4);

      -- Bubble up group P/G
      P_blk_2(g) <= pout4(3);
      G_blk_2(g) <= gout4(3);
    end generate;

    -- If N is 16..63 (in our constraint it’ll be exactly 16), Level 2 is the top:
    top_L2 : if N >= 16 and N < 64 generate
    begin
      Pov_all <= P_blk_2(0);
      Gov_all <= G_blk_2(0);
    end generate;

    ----------------------------------------------------------------------------
    -- Level 3 (N >= 64): groups of 4 Level-2 blocks
    ----------------------------------------------------------------------------
    gen_has_l3 : if N >= 64 generate
      constant COUNT3 : integer := N/64;
      signal C_in_grp_3, P_blk_3, G_blk_3 : std_logic_vector(COUNT3-1 downto 0);
    begin
      -- If height L=3 (N=64), seed top Cin here.
      seed_l3_top : if N = 64 generate
      begin
        C_in_grp_3(0) <= Cin;
      end generate;

      nodes_l3 : for g in 0 to COUNT3-1 generate
        signal pin4, gin4, pout4, gout4 : std_logic_vector(3 downto 0);
        signal c4 : std_logic_vector(4 downto 1);
      begin
        pin4 <= P_blk_2(4*g+3 downto 4*g);
        gin4 <= G_blk_2(4*g+3 downto 4*g);

        u_l3 : entity work.EN_LACG4
          generic map (N => 4)
          port map (
            Pin  => pin4,
            Gin  => gin4,
            Pout => pout4,
            Gout => gout4,
            Cin  => C_in_grp_3(g),
            C    => c4
          );

        -- Carries into level-2 groups
        C_in_grp_2(4*g+0) <= c4(1);
        C_in_grp_2(4*g+1) <= c4(2);
        C_in_grp_2(4*g+2) <= c4(3);
        C_in_grp_2(4*g+3) <= c4(4);

        P_blk_3(g) <= pout4(3);
        G_blk_3(g) <= gout4(3);
      end generate;

      top_L3 : if N >= 64 and N < 256 generate
      begin
        Pov_all <= P_blk_3(0);
        Gov_all <= G_blk_3(0);
      end generate;

    /*  --------------------------------------------------------------------------
      -- Level 4 (N >= 256): groups of 4 Level-3 blocks
      --------------------------------------------------------------------------
      gen_has_l4 : if N >= 256 generate
        constant COUNT4 : integer := N/256;
        signal C_in_grp_4, P_blk_4, G_blk_4 : std_logic_vector(COUNT4-1 downto 0);
      begin
        -- If height L=4 (e.g., N=256), seed top Cin here.
        seed_l4_top : if N = 256 generate
        begin
          C_in_grp_4(0) <= Cin;
        end generate;

        nodes_l4 : for g in 0 to COUNT4-1 generate
          signal pin4, gin4, pout4, gout4 : std_logic_vector(3 downto 0);
          signal c4 : std_logic_vector(4 downto 1);
        begin
          pin4 <= P_blk_3(4*g+3 downto 4*g);
          gin4 <= G_blk_3(4*g+3 downto 4*g);

          u_l4 : entity work.EN_LACG4
            generic map (N => 4)
            port map (
              Pin  => pin4,
              Gin  => gin4,
              Pout => pout4,
              Gout => gout4,
              Cin  => C_in_grp_4(g),
              C    => c4
            );

          C_in_grp_3(4*g+0) <= c4(1);
          C_in_grp_3(4*g+1) <= c4(2);
          C_in_grp_3(4*g+2) <= c4(3);
          C_in_grp_3(4*g+3) <= c4(4);

          P_blk_4(g) <= pout4(3);
          G_blk_4(g) <= gout4(3);
        end generate;

        top_L4 : if N >= 256 and N < 1024 generate
        begin
          Pov_all <= P_blk_4(0);
          Gov_all <= G_blk_4(0);
        end generate;

        ------------------------------------------------------------------------
        -- (Extend pattern for higher levels if you ever go beyond 1024)
        ------------------------------------------------------------------------
      end generate; -- gen_has_l4 */
    end generate; -- gen_has_l3
  end generate; -- gen_has_l2

 -- ====================================================================
-- Section 3: Sums, Cout, Ovfl  (no concurrent-constant declarations)
-- ====================================================================

-- Sum bits, split the ib=0 vs ib=1..3 cases so we never index (..)(0)
gen_sum_bits : for i in 0 to N-1 generate
  gen_ib0 : if (i mod 4) = 0 generate
  begin
    S(i) <= P0(i) xor C_in_grp_1(i/4);
  end generate;

  gen_ib123 : if (i mod 4) /= 0 generate
  begin
    -- (i mod 4) is 1..3 here, valid for Cbits_1(..)(4 downto 1)
    S(i) <= P0(i) xor Cbits_1(i/4)( (i mod 4) );
  end generate;
end generate;

-- Carry into MSB = carry into bit N-1 (ib=3 of the last 4-bit block)
-- COUNT1 = N/4, so last block index is COUNT1-1
C_into_MSB <= Cbits_1(COUNT1-1)(3);

-- Final Cout and Ovfl
Cout <= (Gov_all or (Pov_all and Cin));
Ovfl <= Cout xor C_into_MSB;


end LACGT;
