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
end FastRipple;

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
	
	
end ripple;

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

-- LATA : Look Ahead Tree Adder 
architecture LATA of EN_Adder is 

end LATA;

-- BKA : Brent-Kung Adder
architecture BKA of EN_Adder is 

end BKA;

-- LFA : Ladner Fischer Adder
architecture LFA of EN_Adder is 

end LFA;

