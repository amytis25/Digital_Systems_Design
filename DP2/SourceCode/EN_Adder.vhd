library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;

-- naming convention for architectures: an acronym created based on the name of each topology (i.e. ripple-carry adder = RCA, etc.) 

entity EN_Adder is 
	generic (N: natural := 64);
	port (
		A, B  : in std_logic_vector (N-1 downto 0);
		S : out std_logic_vector (N-1 downto 0);
		Cin : in std_logic;
		Cout, Ovfl : out std_logic
	);
end EN_Adder;
/*
-- Quartus Optimized Ripple Adder
architecture FastRipple of EN_Adder is 

signal temp : unsigned(N downto 0);
	begin
    -- Extend A and B to N+1 bits with a leading '0'
    -- Extend Cin to N+1 bits with N zeros in the upper bits
	 
		temp <= unsigned('0' & A) + unsigned('0' & B) + unsigned(to_unsigned(0,N) & Cin);

		S    <= std_logic_vector(temp(N-1 downto 0));
    Cout <= temp(N);
	 Ovfl <= (temp(N) xor temp(N-1));
end FastRipple;*/
/*
-- RCA : Ripple Carry Adder
architecture RCA of EN_Adder is 
	signal C : std_logic_vector (N downto 0);
	signal P,G : std_logic_vector (N-1 downto 0);
	
	begin
	-- replace c(0) so c can be used all throughout 
	c(0) <= Cin;
	
	-- generate and propagates block (for every bit)
	g <= a and b;
	p <= a xor b;
	
	-- carry network 
	c(N downto 1) <= g or (p and c(N-1 downto 0));
	
	-- generate sum bits 
	S <= p xor c(n-1 downto 0);
	
	-- label the final carry as cout 
	Cout <= C(N);
	
	-- ovfl logic 
	Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));
	
	
end RCA;

-- CSA : Conditional Sum Adder
architecture CSA of EN_Adder is 
	-- define size of each recursion
	constant N_half : integer := N / 2; 
	-- define intermediate signals 
	signal Cout0, Cout1, Chalf : std_logic := '0';
	signal sum0, sum1 : std_logic_vector ((N_half-1) downto 0) := (others => '0');
	
	
	begin
		-- generate recursion until we reach base case of N = 2
		recur : if N > 2 generate
			begin 
			-- Lower half of calculations
			CSAlow : entity work.EN_Adder(CSA)
				generic map (N => N_half)
				port map (
					A => A(N_half-1 downto 0),
					B => B(N_half-1 downto 0),
					S => S(N_half-1 downto 0),
					Cin => Cin,
					Cout => Chalf,
					Ovfl => open
				);
			-- upper half caclulations assuming cin = 0 
			CSAzero : entity work.EN_Adder(CSA)
				generic map (N => N_half)
				port map (
					A    => A(N-1 downto N_half),
					B    => B(N-1 downto N_half),
					S    => sum0,
					Cin  => '0',
					Cout => Cout0,
					Ovfl => open
				);
			-- -- upper half caclulations assuming cin = 1
			CSAone : entity work.EN_Adder(CSA)
				generic map (N => N_half)
				port map (
					A    => A(N-1 downto N_half),
					B    => B(N-1 downto N_half),
					S    => sum1,
					Cin  => '1',
					Cout => Cout1,
					Ovfl => open
				);
		end generate recur;
		-- leaf case 2 bit carry-select adder 
		leaf: if N = 2 generate
			-- define intermediate signals 
			signal g, p : std_logic;
			begin
				-- generate and propagate for lower bit
				g <= A(0) and B(0);
				p <= A(0) xor B(0);
				S(0) <= p xor Cin;
				
				-- Mux input (i.e intermediate carry/ true Cin) 
				Chalf <= g or (Cin and p);
				
				-- half adder with cin = 0 
				sum0(0) <= A(1) xor B(1);
				
				-- half adder with cin = 1
				sum1(0) <= not (A(1) xor B(1));
				-- Cout nux inputs 
				Cout0 <= A(1) and B(1);
				Cout1 <= A(1) or B(1);
		end generate leaf;
		
		-- sum mux 
		S((N-1)downto N_half) <= sum1 when Chalf = '1' else sum0;
		-- cout mux
		Cout <= Cout1 when Chalf = '1' else Cout0;
		-- ovfl logic 
		Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));


			
end CSA;

-- LACTA : Look Ahead Carry Tree Adder
architecture LACTA of EN_Adder is 
	-- define intermediate signals 
	signal P, G : std_logic_vector(N-1 downto 0);
	
	begin
		-- propogate and generate block (for each bit)
		P <= A xor B;
		G <= A and B;

		-- Base case N = 4
		leaf: if N = 4 generate
			-- define intermediate signals
			signal Cbits : std_logic_vector(4 downto 0); -- Carry out within leaf 
			signal Pg4, Gg4 : std_logic;
			
			begin
				-- replace Cbits(0) so c can be used all throughout
				Cbits(0) <= Cin;
				
				-- use 4 bit look ahead carry network componenet (EN_LACGN4) to get the carries 
				U_LEAF: entity work.EN_LACG4(LACN4)
				generic map (N => 4)
				port map (
					Gin  => G,
					Pin  => P,
					Gout => Gg4,
					Pout => Pg4,
					Cin  => Cbits(0),
					C    => Cbits(3 downto 1)  
				);
				
				-- generate the sum from EN_LACGN4 outputs 
				S    <= P xor Cbits(3 downto 0);
				
				-- intermediate Cout 
				Cout <= (Pg4 and Cin) or Gg4;
				
				-- intermediate ovfl ??? 
				Ovfl <= (not (A(3) xor B(3))) and (A(3) xor S(3));
		end generate;

		-- Generate Recursive case N>4
		
		recur: if N > 4 generate
			constant Q : integer := N/4;

			-- Quarter slices
			alias A0 : std_logic_vector(Q-1 downto 0) is A(Q-1 downto 0);
			alias A1 : std_logic_vector(Q-1 downto 0) is A(2*Q-1 downto Q);
			alias A2 : std_logic_vector(Q-1 downto 0) is A(3*Q-1 downto 2*Q);
			alias A3 : std_logic_vector(Q-1 downto 0) is A(4*Q-1 downto 3*Q);

			alias B0 : std_logic_vector(Q-1 downto 0) is B(Q-1 downto 0);
			alias B1 : std_logic_vector(Q-1 downto 0) is B(2*Q-1 downto Q);
			alias B2 : std_logic_vector(Q-1 downto 0) is B(3*Q-1 downto 2*Q);
			alias B3 : std_logic_vector(Q-1 downto 0) is B(4*Q-1 downto 3*Q);

			alias P0 : std_logic_vector(Q-1 downto 0) is P(Q-1 downto 0);
			alias P1 : std_logic_vector(Q-1 downto 0) is P(2*Q-1 downto Q);
			alias P2 : std_logic_vector(Q-1 downto 0) is P(3*Q-1 downto 2*Q);
			alias P3 : std_logic_vector(Q-1 downto 0) is P(4*Q-1 downto 3*Q);

			alias G0 : std_logic_vector(Q-1 downto 0) is G(Q-1 downto 0);
			alias G1 : std_logic_vector(Q-1 downto 0) is G(2*Q-1 downto Q);
			alias G2 : std_logic_vector(Q-1 downto 0) is G(3*Q-1 downto 2*Q);
			alias G3 : std_logic_vector(Q-1 downto 0) is G(4*Q-1 downto 3*Q);

			-- Quarter group P/G (one bit per quarter)
			signal PgQ : std_logic_vector(3 downto 0);
			signal GgQ : std_logic_vector(3 downto 0);

			-- Carry fanout to quarters (Cq(0)=Cin, Cq(1..3) drive Q1..Q3)
			signal Cq  : std_logic_vector(3 downto 0);

			-- Quarter sums
			signal S0, S1, S2, S3 : std_logic_vector(Q-1 downto 0);

			-- Top group P/G (for overall Cout)
			signal PgTop, GTop : std_logic;

			-- First reduction stage: 4-bit blocks inside each quarter
			constant BLKS_PER_Q : integer := Q/4;
			signal Pg0_blk, Gg0_blk : std_logic_vector(BLKS_PER_Q-1 downto 0);
			signal Pg1_blk, Gg1_blk : std_logic_vector(BLKS_PER_Q-1 downto 0);
			signal Pg2_blk, Gg2_blk : std_logic_vector(BLKS_PER_Q-1 downto 0);
			signal Pg3_blk, Gg3_blk : std_logic_vector(BLKS_PER_Q-1 downto 0);
		begin
			-- Build 4-bit block groups inside each quarter
			blk_q0: for i in 0 to BLKS_PER_Q-1 generate
			  constant L : integer := 4*i;
			begin
				Q0_BLK: entity work.EN_LACG4(LACN4)
					generic map (N => 4)
					port map ( Gin=>G0(L+3 downto L), Pin=>P0(L+3 downto L),
							   Gout=>Gg0_blk(i), Pout=>Pg0_blk(i), Cin=>'0', C=>open );
			end generate;

			blk_q1: for i in 0 to BLKS_PER_Q-1 generate
				constant L : integer := 4*i;
			begin
				Q1_BLK: entity work.EN_LACG4(LACN4)
					generic map (N => 4)
					port map ( Gin=>G1(L+3 downto L), Pin=>P1(L+3 downto L),
								Gout=>Gg1_blk(i), Pout=>Pg1_blk(i), Cin=>'0', C=>open );
			end generate;

			blk_q2: for i in 0 to BLKS_PER_Q-1 generate
				constant L : integer := 4*i;
			begin
				Q2_BLK: entity work.EN_LACG4(LACN4)
					generic map (N => 4)
					port map ( Gin=>G2(L+3 downto L), Pin=>P2(L+3 downto L),
								Gout=>Gg2_blk(i), Pout=>Pg2_blk(i), Cin=>'0', C=>open );
			end generate;

			blk_q3: for i in 0 to BLKS_PER_Q-1 generate
				constant L : integer := 4*i;
			begin
				Q3_BLK: entity work.EN_LACG4(LACN4)
					generic map (N => 4)
					port map ( Gin=>G3(L+3 downto L), Pin=>P3(L+3 downto L),
								Gout=>Gg3_blk(i), Pout=>Pg3_blk(i), Cin=>'0', C=>open );
			end generate;

		-- Combine the 4 block groups of each quarter into one group bit (Q=16)
		combine_q16: if Q = 16 generate
			Q0_GRP: entity work.EN_LACG4(LACN4)
				generic map (N => 4)
				port map ( Gin=>Gg0_blk, Pin=>Pg0_blk, Gout=>GgQ(0), Pout=>PgQ(0), Cin=>'0', C=>open );
			Q1_GRP: entity work.EN_LACG4(LACN4)
				generic map (N => 4)
				port map ( Gin=>Gg1_blk, Pin=>Pg1_blk, Gout=>GgQ(1), Pout=>PgQ(1), Cin=>'0', C=>open );
			Q2_GRP: entity work.EN_LACG4(LACN4)
				generic map (N => 4)
				port map ( Gin=>Gg2_blk, Pin=>Pg2_blk, Gout=>GgQ(2), Pout=>PgQ(2), Cin=>'0', C=>open );
			Q3_GRP: entity work.EN_LACG4(LACN4)
				generic map (N => 4)
				port map ( Gin=>Gg3_blk, Pin=>Pg3_blk, Gout=>GgQ(3), Pout=>PgQ(3), Cin=>'0', C=>open );
		end generate;

		-- Pass-through for Q=4 (each quarter already one 4-bit block)
		combine_q4: if Q = 4 generate
			PgQ(0) <= Pg0_blk(0);  GgQ(0) <= Gg0_blk(0);
			PgQ(1) <= Pg1_blk(0);  GgQ(1) <= Gg1_blk(0);
			PgQ(2) <= Pg2_blk(0);  GgQ(2) <= Gg2_blk(0);
			PgQ(3) <= Pg3_blk(0);  GgQ(3) <= Gg3_blk(0);
		end generate;

		-- Top EN_LACG4 over the 4 quarters: generates carries into Q1..Q3
		Cq(0) <= Cin;
		TOP_FANOUT: entity work.EN_LACG4(LACN4)
			generic map (N => 4)
			port map (
				Gin  => GgQ,
				Pin  => PgQ,
				Gout => GTop,
				Pout => PgTop,
				Cin  => Cq(0),
				C    => Cq(3 downto 1)  -- three carries into Q1..Q3
		  );

		-- Recurse into four child adders with their proper carry-ins
		UQ0: entity work.EN_Adder(LACTA)
			generic map (N => Q)
			port map ( A=>A0, B=>B0, S=>S0, Cin=>Cq(0), Cout=>open, Ovfl=>open );

		UQ1: entity work.EN_Adder(LACTA)
			generic map (N => Q)
			port map ( A=>A1, B=>B1, S=>S1, Cin=>Cq(1), Cout=>open, Ovfl=>open );

		UQ2: entity work.EN_Adder(LACTA)
			generic map (N => Q)
			port map ( A=>A2, B=>B2, S=>S2, Cin=>Cq(2), Cout=>open, Ovfl=>open );

		UQ3: entity work.EN_Adder(LACTA)
			generic map (N => Q)
			port map ( A=>A3, B=>B3, S=>S3, Cin=>Cq(3), Cout=>open, Ovfl=>open );

		-- Stitch sums (MSB..LSB), top-level Cout, signed overflow
		S    <= S3 & S2 & S1 & S0;
		Cout <= (PgTop and Cin) or GTop;
		Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));
	  end generate;


end LACTA;

-- BKA : Brent-Kung Adder
architecture BKA of EN_Adder is 

	-- Bitwise propagate / generate
	signal P0, G0 : std_logic_vector(N-1 downto 0);

	-- Stage signals (prefix)
	signal P1, G1 : std_logic_vector(N-1 downto 0);
	signal P2, G2 : std_logic_vector(N-1 downto 0);
	signal P3, G3 : std_logic_vector(N-1 downto 0);
	signal P4, G4 : std_logic_vector(N-1 downto 0);
	signal P5, G5 : std_logic_vector(N-1 downto 0);

	-- Final after last stage
	signal Pf, Gf : std_logic_vector(N-1 downto 0);

	-- Carries
	signal C : std_logic_vector(N downto 0);
	
	begin
	---------------------------------------------------------------------------
	-- 1) Bitwise propagate / generate
	---------------------------------------------------------------------------
	gen_pg : for i in 0 to N-1 generate
		P0(i) <= A(i) xor B(i);
		G0(i) <= A(i) and B(i);
	end generate;

	---------------------------------------------------------------------------
	-- 2) Prefix network (Brent–Kung via iterative doubling: 1,2,4,8,16,32)
	--    (G,P) ∘ (g,p) = (G or (P and g), P and p)
	---------------------------------------------------------------------------

	-- Stage 0: distance = 1
	G1(0) <= G0(0);
	P1(0) <= P0(0);
	gen_s0_rest_en : if N > 1 generate
		gen_s0_rest : for i in 1 to N-1 generate
			G1(i) <= G0(i) or (P0(i) and G0(i-1));
			P1(i) <= P0(i) and P0(i-1);
		end generate;
	end generate;

	-- Stage 1: distance = 2
	gen_s1_pass_en : if N >= 2 generate
		gen_s1_pass : for i in 0 to 1 generate
			G2(i) <= G1(i);
			P2(i) <= P1(i);
		end generate;
	end generate;
	gen_s1_rest_en : if N > 2 generate
		gen_s1_rest : for i in 2 to N-1 generate
			G2(i) <= G1(i) or (P1(i) and G1(i-2));
			P2(i) <= P1(i) and P1(i-2);
		end generate;
	end generate;

	-- Stage 2: distance = 4
	gen_s2_pass_en : if N >= 4 generate
		gen_s2_pass : for i in 0 to 3 generate
			G3(i) <= G2(i);
			P3(i) <= P2(i);
		end generate;
	end generate;
	gen_s2_rest_en : if N > 4 generate
		gen_s2_rest : for i in 4 to N-1 generate
			G3(i) <= G2(i) or (P2(i) and G2(i-4));
			P3(i) <= P2(i) and P2(i-4);
		end generate;
	end generate;

	-- Stage 3: distance = 8
	gen_s3_pass_en : if N >= 8 generate
		gen_s3_pass : for i in 0 to 7 generate
			G4(i) <= G3(i);
			P4(i) <= P3(i);
		end generate;
	end generate;
	gen_s3_rest_en : if N > 8 generate
		gen_s3_rest : for i in 8 to N-1 generate
			G4(i) <= G3(i) or (P3(i) and G3(i-8));
			P4(i) <= P3(i) and P3(i-8);
		end generate;
	end generate;

	-- Stage 4: distance = 16
	gen_s4_pass_en : if N >= 16 generate
		gen_s4_pass : for i in 0 to 15 generate
			G5(i) <= G4(i);
			P5(i) <= P4(i);
		end generate;
	end generate;
	gen_s4_rest_en : if N > 16 generate
		gen_s4_rest : for i in 16 to N-1 generate
			G5(i) <= G4(i) or (P4(i) and G4(i-16));
			P5(i) <= P4(i) and P4(i-16);
		end generate;
	end generate;

	-- Stage 5: distance = 32
	gen_s5_pass_en : if N >= 32 generate
		gen_s5_pass : for i in 0 to 31 generate
			Gf(i) <= G5(i);
			Pf(i) <= P5(i);
		end generate;
	end generate;
	gen_s5_rest_en : if N > 32 generate
		gen_s5_rest : for i in 32 to N-1 generate
			Gf(i) <= G5(i) or (P5(i) and G5(i-32));
			Pf(i) <= P5(i) and P5(i-32);
		end generate;
	end generate;

	---------------------------------------------------------------------------
	-- 3) Carries / Sum / Flags
	---------------------------------------------------------------------------
	C(0) <= Cin;

	gen_c : for i in 0 to N-1 generate
		C(i+1) <= Gf(i) or (Pf(i) and Cin);
	end generate;

	gen_s : for i in 0 to N-1 generate
		S(i) <= P0(i) xor C(i);
	end generate;

	Cout <= C(N);
	Ovfl <= C(N) xor C(N-1);
end architecture BKA;

*/
-- LFA : Ladner Fischer Adder
architecture LFA of EN_Adder is 
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
			C         : out std_logic_vector (N-1 downto 1)
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
end LFA;

