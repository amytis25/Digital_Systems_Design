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
/*
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


			
end CSA;*/

-- LATA : Look Ahead Carry Adder 
architecture LACA of EN_Adder is 
	component EN_LACG4
        Port ( 
			Gin, Pin  : in std_logic_vector (N-1 downto 0);
			Gout, Pout  : out std_logic;
			Cin : in std_logic;
			C : out std_logic_vector (N-1 downto 1));
			end component;
		constant N_quart : integer := N / 4;
		constant N_half : integer := N / 2;
		constant N_3quart: integer := 3*(N/4); 
		signal G, P : std_logic_vector (N-1 downto 0);
		signal G_group, P_group : std_logic;
		signal C : std_logic_vector (N downto 0);
	
	begin*/
	recur : if N > 4 generate
			begin 
			LACAzero : entity work.EN_Adder(LACA)
				generic map (N => N_quart)
				port map (
					A => A(N_quart-1 downto 0),
					B => B(N_quart-1 downto 0),
					S => S(N_quart-1 downto 0),
					Cin => C(N),
					Cout => open,
					Ovfl => open
				);
			LACAone : entity work.EN_Adder(LACA)
				generic map (N => N_quart)
				port map (
					A    => A(N_half-1 downto N_quart),
					B    => B(N_half-1 downto N_quart),
					S    => S(N_half-1 downto N_quart),
					Cin  => C(N),
					Cout => open,
					Ovfl => open
				);
			LACAtwo : entity work.EN_Adder(LACA)
				generic map (N => N_quart)
				port map (
					A    => A(N_3quart-1 downto N_half),
					B    => B(N_3quart-1 downto N_half),
					S    => S(N_3quart-1 downto N_half),
					Cin  => C(N),
					Cout => open,
					Ovfl => open
				);
			LACAthree : entity work.EN_Adder(LACA)
				generic map (N => N_quart)
				port map (
					A    => A(N-1 downto N_3quart),
					B    => B(N-1 downto N_3quart),
					S    => S(N-1 downto N_3quart),
					Cin  => C(N),
					Cout => open,
					Ovfl => open
				);
		end generate recur;*/
	-- Generate and propogates 
		C(0) <= Cin;
		P <= A xor B;
		G <= A and B;
		
	-- base case (i.e carry network)
	leaf: if N = 4 generate
		U0: entity work.EN_LACG4 
		generic map (N => 4)
		port map ( 
			Gin => G, 
			Pin => P, 
			Gout => G_group, 
			Pout => P_group, 
			C => C(N-1 downto 1), 
			Cin => Cin);		
	end generate leaf;
	U0: entity work.EN_LACG4 
		generic map (N => 4)
		port map ( 
			Gin => G(3 downto 1), 
			Pin => P(3 downto 1), 
			Gout => G_group, 
			Pout => P_group, 
			C => C(2 downto 1), 
			Cin => Cin);	
	
	
	-- form sum bits and Cout
	S <= P xor C(N-1 downto 0);
	C(N) <= (P_group and Cin) or G_group;
	Ovfl <= (not (A(N-1) xor B(N-1))) and (A(N-1) xor S(N-1));

end LACA;
/*
-- BKA : Brent-Kung Adder
architecture BKA of EN_Adder is 

end BKA;

-- LFA : Ladner Fischer Adder
architecture LFA of EN_Adder is 

end LFA;*/

