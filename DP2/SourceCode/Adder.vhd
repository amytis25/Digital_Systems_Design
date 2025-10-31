library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;


entity Adder is 
	generic (N: natural := 4);
	port (
		A, B  : in std_logic_vector (N-1 downto 0);
		S : out std_logic_vector (N-1 downto 0);
		Cin : in std_logic;
		Cout: out std_logic
	);
end Adder;

architecture LATA of Adder is 
	component EN_LACG4
        Port ( 
			Gin, Pin  : in std_logic_vector (N-1 downto 0);
			Gout, Pout  : out std_logic_vector (N-1 downto 0);
			Cin : in std_logic;
			C : out std_logic_vector (N downto 1));
			end component;
		
		signal Pin, Pout, Gin, Gout : std_logic_vector (N-1 downto 0);
		signal C : std_logic_vector (N downto 0);

		begin 
		C(0) <= Cin;
		Pin <= A xor B;
		Gin <= A and B;
		
		U0: EN_LACG4 port map ( Gin => Gin, Pin => Pin, Gout => Gout, Pout => Pout, C => C(N downto 1), Cin => Cin);
		
		S <= Pin xor C(N-1 downto 0);
		Cout <= C(N);
		
end LATA;