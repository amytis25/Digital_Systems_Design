library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;

Entity EN_ExecUnit is
	Generic ( N : natural := 64 );
	Port ( A, B : in std_logic_vector( N-1 downto 0 );
	FuncClass, LogicFN, ShiftFN : in std_logic_vector( 1 downto 0 );
	AddnSub, ExtWord : in std_logic := '0';
	Y : out std_logic_vector( N-1 downto 0 );
	Zero, AltB, AltBu : out std_logic );
End Entity EN_ExecUnit;
