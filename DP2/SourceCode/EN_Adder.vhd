library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;


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

-- RCA : Ripple Carry Adder
architecture RCA of EN_Adder is 
	signal C : std_logic_vector (N downto 0);
	signal P,G : std_logic_vector (N-1 downto 0);
	
	begin
	c(0) <= Cin;
	g <= a and b;
	p <= a xor b;
	c(N downto 1) <= g or (p and c(N-1 downto 0));
	S <= p xor c(n-1 downto 0);
	Cout <= C(N);
	Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));
	
	
end RCA;

-- CSA : Conditional Sum Adder
architecture CSA of EN_Adder is 
	constant N_half : integer := N / 2; 
	signal Cout0, Cout1, Chalf : std_logic := '0';
	signal sum0, sum1 : std_logic_vector ((N_half-1) downto 0) := (others => '0');
	
	
	begin
		recur : if N > 2 generate
			begin 
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
		
		leaf: if N = 2 generate
			signal g, p : std_logic;
			begin
			g <= A(0) and B(0);
			p <= A(0) xor B(0);
			S(0) <= p xor Cin;
			Chalf <= g or (Cin and p);
			
			sum0(0) <= A(1) xor B(1);
			sum1(0) <= not (A(1) xor B(1));
			Cout0 <= A(1) and B(1);
			Cout1 <= A(1) or B(1);
		end generate leaf;
		
		
		S((N-1)downto N_half) <= sum1 when Chalf = '1' else sum0;
		Cout <= Cout1 when Chalf = '1' else Cout0;
		
		Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));


			
end CSA;

-- LACGT : Look Ahead Carry Generate Tree 
architecture LACGT of EN_Adder is 
	-- Bit-level P/G (section 1)
	signal P, G : std_logic_vector(N-1 downto 0);
	begin
		P <= A xor B;
		G <= A and B;

		------------------------------------------------------------------------------
		-- Base case N=4
		------------------------------------------------------------------------------
		leaf: if N = 4 generate
			signal Cbits : std_logic_vector(4 downto 0);
			signal Pg4, Gg4 : std_logic;
		begin
			Cbits(0) <= Cin;

			U_LEAF: entity work.EN_LACG4(LACN4)
			generic map (N => 4)
			port map (
				Gin  => G,
				Pin  => P,
				Gout => Gg4,
				Pout => Pg4,
				Cin  => Cbits(0),
				C    => Cbits(3 downto 1)  -- FIX: 3 bits for N=4
			);

			S    <= P xor Cbits(3 downto 0);
			Cout <= (Pg4 and Cin) or Gg4;
			Ovfl <= (not (A(3) xor B(3))) and (A(3) xor S(3));
		end generate;

		------------------------------------------------------------------------------
		-- Recursive case N>4
		------------------------------------------------------------------------------
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
		UQ0: entity work.EN_Adder(LACGT)
			generic map (N => Q)
			port map ( A=>A0, B=>B0, S=>S0, Cin=>Cq(0), Cout=>open, Ovfl=>open );

		UQ1: entity work.EN_Adder(LACGT)
			generic map (N => Q)
			port map ( A=>A1, B=>B1, S=>S1, Cin=>Cq(1), Cout=>open, Ovfl=>open );

		UQ2: entity work.EN_Adder(LACGT)
			generic map (N => Q)
			port map ( A=>A2, B=>B2, S=>S2, Cin=>Cq(2), Cout=>open, Ovfl=>open );

		UQ3: entity work.EN_Adder(LACGT)
			generic map (N => Q)
			port map ( A=>A3, B=>B3, S=>S3, Cin=>Cq(3), Cout=>open, Ovfl=>open );

		-- Stitch sums (MSB..LSB), top-level Cout, signed overflow
		S    <= S3 & S2 & S1 & S0;
		Cout <= (PgTop and Cin) or GTop;
		Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));
	  end generate;


end LACGT;

-- BKA : Brent-Kung Adder
architecture BKA of EN_Adder is 

    constant W : natural := N;

	-- Bitwise propagate / generate
	signal P0, G0 : std_logic_vector(W-1 downto 0);

	-- Stage signals (prefix)
	signal P1, G1 : std_logic_vector(W-1 downto 0);
	signal P2, G2 : std_logic_vector(W-1 downto 0);
	signal P3, G3 : std_logic_vector(W-1 downto 0);
	signal P4, G4 : std_logic_vector(W-1 downto 0);
	signal P5, G5 : std_logic_vector(W-1 downto 0);

	-- Final after last stage
	signal Pf, Gf : std_logic_vector(W-1 downto 0);

	-- Carries
	signal C : std_logic_vector(W downto 0);
	
	begin
	---------------------------------------------------------------------------
	-- 1) Bitwise propagate / generate
	---------------------------------------------------------------------------
	gen_pg : for i in 0 to W-1 generate
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
	gen_s0_rest_en : if W > 1 generate
		gen_s0_rest : for i in 1 to W-1 generate
			G1(i) <= G0(i) or (P0(i) and G0(i-1));
			P1(i) <= P0(i) and P0(i-1);
		end generate;
	end generate;

	-- Stage 1: distance = 2
	gen_s1_pass_en : if W >= 2 generate
		gen_s1_pass : for i in 0 to 1 generate
			G2(i) <= G1(i);
			P2(i) <= P1(i);
		end generate;
	end generate;
	gen_s1_rest_en : if W > 2 generate
		gen_s1_rest : for i in 2 to W-1 generate
			G2(i) <= G1(i) or (P1(i) and G1(i-2));
			P2(i) <= P1(i) and P1(i-2);
		end generate;
	end generate;

	-- Stage 2: distance = 4
	gen_s2_pass_en : if W >= 4 generate
		gen_s2_pass : for i in 0 to 3 generate
			G3(i) <= G2(i);
			P3(i) <= P2(i);
		end generate;
	end generate;
	gen_s2_rest_en : if W > 4 generate
		gen_s2_rest : for i in 4 to W-1 generate
			G3(i) <= G2(i) or (P2(i) and G2(i-4));
			P3(i) <= P2(i) and P2(i-4);
		end generate;
	end generate;

	-- Stage 3: distance = 8
	gen_s3_pass_en : if W >= 8 generate
		gen_s3_pass : for i in 0 to 7 generate
			G4(i) <= G3(i);
			P4(i) <= P3(i);
		end generate;
	end generate;
	gen_s3_rest_en : if W > 8 generate
		gen_s3_rest : for i in 8 to W-1 generate
			G4(i) <= G3(i) or (P3(i) and G3(i-8));
			P4(i) <= P3(i) and P3(i-8);
		end generate;
	end generate;

	-- Stage 4: distance = 16
	gen_s4_pass_en : if W >= 16 generate
		gen_s4_pass : for i in 0 to 15 generate
			G5(i) <= G4(i);
			P5(i) <= P4(i);
		end generate;
	end generate;
	gen_s4_rest_en : if W > 16 generate
		gen_s4_rest : for i in 16 to W-1 generate
			G5(i) <= G4(i) or (P4(i) and G4(i-16));
			P5(i) <= P4(i) and P4(i-16);
		end generate;
	end generate;

	-- Stage 5: distance = 32
	gen_s5_pass_en : if W >= 32 generate
		gen_s5_pass : for i in 0 to 31 generate
			Gf(i) <= G5(i);
			Pf(i) <= P5(i);
		end generate;
	end generate;
	gen_s5_rest_en : if W > 32 generate
		gen_s5_rest : for i in 32 to W-1 generate
			Gf(i) <= G5(i) or (P5(i) and G5(i-32));
			Pf(i) <= P5(i) and P5(i-32);
		end generate;
	end generate;

	---------------------------------------------------------------------------
	-- 3) Carries / Sum / Flags
	---------------------------------------------------------------------------
	C(0) <= Cin;

	gen_c : for i in 0 to W-1 generate
		C(i+1) <= Gf(i) or (Pf(i) and Cin);
	end generate;

	gen_s : for i in 0 to W-1 generate
		S(i) <= P0(i) xor C(i);
	end generate;

	Cout <= C(W);
	Ovfl <= C(W) xor C(W-1);
end architecture BKA;

/*
-- LFA : Ladner Fischer Adder
architecture LFA of EN_Adder is 

end LFA;*/

