library ieee;
use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

Entity EN_OddParity is
	Generic ( N : natural := 7); -- 1 to 8 including 8 
	Port ( X : in std_logic_vector( N-1 downto 0 );
	IsOdd : out std_logic );
End Entity EN_OddParity;


architecture PrimTree of  EN_OddParity is 
		
	component EN_xor
		Port ( A : in STD_LOGIC; B : in STD_LOGIC; R : out STD_LOGIC );
	end component;
		
		signal top_par, bottom_par : std_logic;
		
	-- sizes for odd/even N
	constant N_TOP : integer := (N + 1) / 2;  -- ceil(N/2)
	constant N_BOT : integer := N / 2;        -- floor(N/2)
	
	begin
	
	  -- Recursive case
		gen_recursive : if N > 1 generate
		 -- top half has N_TOP bits: X(N-1 downto N_BOT)
		top_inst : entity work.EN_OddParity(tree)
			generic map ( N => N_TOP )
			port map    ( X => X(N-1 downto N_BOT),
							  IsOdd => top_par );

		 -- bottom half has N_BOT bits: X(N_BOT-1 downto 0)
		bottom_inst : entity work.EN_OddParity(tree)
			generic map ( N => N_BOT )
			port map    ( X => X(N_BOT-1 downto 0),
							  IsOdd => bottom_par );

		xor_inst : entity work.EN_xor
			port map ( A => top_par, B => bottom_par, R => IsOdd );
		end generate;

	  -- Base case
		gen_base : if N = 1 generate
			IsOdd <= X(0);
		end generate;
		
end architecture PrimTree; 



architecture tree of  EN_OddParity is 
		
		signal top_par, bottom_par : std_logic;
		
	-- sizes for odd/even N
	constant N_TOP : integer := (N + 1) / 2;  -- ceil(N/2)
	constant N_BOT : integer := N / 2;        -- floor(N/2)
	
	begin
	
	  -- Recursive case
	  gen_recursive : if N > 1 generate
		 -- top half has N_TOP bits: X(N-1 downto N_BOT)
		 top_inst : entity work.EN_OddParity(tree)
			generic map ( N => N_TOP )
			port map    ( X => X(N-1 downto N_BOT),
							  IsOdd => top_par );

		 -- bottom half has N_BOT bits: X(N_BOT-1 downto 0)
		 bottom_inst : entity work.EN_OddParity(tree)
			generic map ( N => N_BOT )
			port map    ( X => X(N_BOT-1 downto 0),
							  IsOdd => bottom_par );

		 xor_inst : IsOdd <= top_par xor bottom_par;
	end generate; 
	  -- Base case
	  gen_base : if N = 1 generate
		 IsOdd <= X(0);
	  end generate;
		
end architecture tree; 


