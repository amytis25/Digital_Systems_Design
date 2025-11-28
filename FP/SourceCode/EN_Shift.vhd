library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;

Entity EN_Shift is
	Generic N ( N : natural := 64 )'
	Port ( A : in std_logic_vector( N-1 downto 0 );
	ShiftFN  : in std_logic_vector( 1 downto 0 );
	ShiftCount : in std_logic_vector( 5 downto 0 );
	Y_LL , Y_RL, Y_RA : out std_logic_vector (N-1 downto 0);
end Entity EN_Shift