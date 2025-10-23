library ieee;
use ieee.std_logic_1164.all;

entity EN_xor is 
	port(
		A : in std_logic;
		B : in std_logic;
		R : out std_logic
	);
end entity EN_xor;

architecture logic of EN_xor is 

	begin
	R <= 'X' after 15 ps, A xor B after 20 ps;
	
end architecture logic; 