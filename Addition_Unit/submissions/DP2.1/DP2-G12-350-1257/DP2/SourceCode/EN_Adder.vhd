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

		-- Generate Recursive case N > 4
		
		recur: if N > 4 generate
			-- split N into quarters
			constant Q : integer := N/4;
			
			-- intermediate signals
			signal A0, A1, A2, A3 : std_logic_vector(Q-1 downto 0);
			signal B0, B1, B2, B3 : std_logic_vector(Q-1 downto 0);
			signal P0, P1, P2, P3 : std_logic_vector(Q-1 downto 0);
			signal G0, G1, G2, G3 : std_logic_vector(Q-1 downto 0);
			
			

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
			-- Quarter slices
			A0 <= A(Q-1 downto 0);
			A1 <= A(2*Q-1 downto Q);
			A2 <= A(3*Q-1 downto 2*Q);
			A3 <= A(4*Q-1 downto 3*Q);

			B0 <= B(Q-1 downto 0);
			B1 <= B(2*Q-1 downto Q);
			B2 <= B(3*Q-1 downto 2*Q);
			B3 <= B(4*Q-1 downto 3*Q);

			P0 <= P(Q-1 downto 0);
			P1 <= P(2*Q-1 downto Q);
			P2 <= P(3*Q-1 downto 2*Q);
			P3 <= P(4*Q-1 downto 3*Q);

			G0 <= G(Q-1 downto 0);
			G1 <= G(2*Q-1 downto Q);
			G2 <= G(3*Q-1 downto 2*Q);
			G3 <= G(4*Q-1 downto 3*Q);
			
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

	-- intermediate signals 
	signal P1, G1 : std_logic_vector(N-1 downto 0);
	signal P2, G2 : std_logic_vector(N-1 downto 0);
	signal P3, G3 : std_logic_vector(N-1 downto 0);
	signal P4, G4 : std_logic_vector(N-1 downto 0);
	signal P5, G5 : std_logic_vector(N-1 downto 0);

	-- Final p and g last stage
	signal Pf, Gf : std_logic_vector(N-1 downto 0);

	-- Carries
	signal C : std_logic_vector(N downto 0);
	
	begin
	-- 1) Bitwise propagate / generate
	gen_pg : for i in 0 to N-1 generate
		P0(i) <= A(i) xor B(i);
		G0(i) <= A(i) and B(i);
	end generate;

	-- 2) Prefix network (Brent–Kung via iterative doubling: 1,2,4,8,16,32)
	--    (G,P) ∘ (g,p) = (G or (P and g), P and p)

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

	-- 3) Carries / Sum / Ovfl 
	-- set C(0) as Cin for ease of computations
	C(0) <= Cin;

	-- generate carries 
	gen_c : for i in 0 to N-1 generate
		C(i+1) <= Gf(i) or (Pf(i) and Cin);
	end generate;

	-- generate sums 
	gen_s : for i in 0 to N-1 generate
		S(i) <= P0(i) xor C(i);
	end generate;
	
	-- set Cout and Ovfl 
	Cout <= C(N);
	Ovfl <= C(N) xor C(N-1);
end architecture BKA;

-- Carry-Bypass Adder (CBA) 
architecture CBA of EN_Adder is
    -- Component declaration for the 4-bit lookahead carry generator
    component EN_LACG4 is 
        generic (N: natural := 4);
        port (
            Gin, Pin  : in std_logic_vector (N-1 downto 0);
            Gout, Pout  : out std_logic;
            Cin : in std_logic;
            C : out std_logic_vector (N-1 downto 1)
        );
    end component;

    -- Constants and signals
    constant BLOCK_SIZE : natural := 4;
    constant NUM_BLOCKS : natural := N / BLOCK_SIZE;
    
    -- Block propagate and generate signals
    signal P_block, G_block : std_logic_vector(NUM_BLOCKS-1 downto 0);
    
    -- Block carry signals
    signal block_carry_in : std_logic_vector(NUM_BLOCKS downto 0);
    signal block_carry_out : std_logic_vector(NUM_BLOCKS-1 downto 0);
    signal block_carry_ripple : std_logic_vector(NUM_BLOCKS-1 downto 0);
    
    -- Individual bit propagate and generate signals
    signal P, G : std_logic_vector(N-1 downto 0);
    
    -- Internal carry signals for each bit
    type carry_array is array (0 to NUM_BLOCKS-1) of std_logic_vector(BLOCK_SIZE-1 downto 1);
    signal C_internal : carry_array;
    
    -- Individual sum signals
    signal S_internal : std_logic_vector(N-1 downto 0);

begin
    -- Initialize the first block carry input
    block_carry_in(0) <= Cin;
    
    -- Generate all the propagate and generate signals for individual bits
    GEN_PG: for i in 0 to N-1 generate
        P(i) <= A(i) xor B(i);
        G(i) <= A(i) and B(i);
    end generate GEN_PG;
    
    -- Generate the 4-bit lookahead blocks
    GEN_BLOCKS: for i in 0 to NUM_BLOCKS-1 generate
        -- Instantiate the 4-bit lookahead carry generator for each block
        LACG_INST: EN_LACG4 
            generic map (N => BLOCK_SIZE)
            port map (
                Gin => G((i+1)*BLOCK_SIZE-1 downto i*BLOCK_SIZE),
                Pin => P((i+1)*BLOCK_SIZE-1 downto i*BLOCK_SIZE),
                Gout => G_block(i),
                Pout => P_block(i),
                Cin => block_carry_in(i),
                C => C_internal(i)
            );
        
        -- Calculate the ripple carry output for this block (normal lookahead output)
        block_carry_ripple(i) <= G_block(i) or (P_block(i) and block_carry_in(i));
        
        -- Skip logic: multiplexer to choose between ripple path and skip path
        block_carry_out(i) <= block_carry_in(i) when P_block(i) = '1' else block_carry_ripple(i);
        
        -- Connect carry output to next block's carry input
        block_carry_in(i+1) <= block_carry_out(i);
        
        -- Generate sum bits for this block
        GEN_SUM_BITS: for j in 0 to BLOCK_SIZE-1 generate
            -- For bit 0 in each block, use the block carry input
            BIT0: if j = 0 generate
                S_internal(i*BLOCK_SIZE + j) <= P(i*BLOCK_SIZE + j) xor block_carry_in(i);
            end generate BIT0;
            
            -- For bits 1-3 in each block, use the internal carry from lookahead
            OTHER_BITS: if j > 0 generate
                S_internal(i*BLOCK_SIZE + j) <= P(i*BLOCK_SIZE + j) xor C_internal(i)(j);
            end generate OTHER_BITS;
        end generate GEN_SUM_BITS;
    end generate GEN_BLOCKS;
    
    -- Connect outputs
    S <= S_internal;
    Cout <= block_carry_in(NUM_BLOCKS);
    
    -- Overflow detection for signed arithmetic
	Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));
    
end architecture CBA;