library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
use std.textio.all;


entity EN_LACG4 is 
	generic (N: natural := 4);
	port (
		Gin, Pin  : in std_logic_vector (N-1 downto 0);
		Gout, Pout  : out std_logic;
		Cin : in std_logic;
		C : out std_logic_vector (N-1 downto 1)
	);
end EN_LACG4;

architecture LACN4 of EN_LACG4 is
  signal p_int, g_int : std_logic_vector(N-1 downto 0);
begin
  -- Propagates 
  p_int(0) <= Pin(0);
  p_int(1) <= Pin(1) and Pin(0);
  p_int(2) <= Pin(2) and Pin(1) and Pin(0);
  p_int(3) <= Pin(3) and Pin(2) and Pin(1) and Pin(0);

  -- Generates 
  g_int(0) <= Gin(0);
  g_int(1) <= Gin(1) or (Gin(0) and Pin(1));
  g_int(2) <= Gin(2) or (Gin(1) and Pin(2)) or (Gin(0) and Pin(1) and Pin(2));
  g_int(3) <= Gin(3) or (Gin(2) and Pin(3)) or (Gin(1) and Pin(2) and Pin(3)) or
              (Gin(0) and Pin(1) and Pin(2) and Pin(3));

  -- Drive the ports from the internal signals
  Pout <= p_int(3);
  Gout <= g_int(3);

  -- Carries: broadcast Cin to a vector, then bitwise AND/OR
  C(N-1 downto 1) <= g_int(N-2 downto 0) or
                   (p_int(N-2 downto 0) and (N-2 downto 0 => Cin));
end LACN4;