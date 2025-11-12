library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

entity TB_MagComp is
   generic (
    N : natural := 16
  );
end entity TB_MagComp;

architecture sim of TB_MagComp is

	  -- Testbench signals (local signals to drive DUT)
	  signal TBX   : std_logic_vector(N-1 downto 0);
	  signal TBY   : std_logic_vector(N-1 downto 0);
	  signal TBEQ : std_logic;
	  signal TBGT : std_logic;
	  signal TBEQ_true : std_logic;
	  signal TBGT_true : std_logic;
	  constant PREPTIME : time := 40 ps;
  	  constant MEASTIME : time := 100 ps;

	  -- record
	  type TestVectorOP is record
		X : std_logic_vector (N-1 downto 0 );
		Y : std_logic_vector (N-1 downto 0 );
		EQ : std_logic;
		GT : std_logic;
	  end record TestVectorOP;
	  
	  type TestDataTable is array (1 to 5) of TestVectorOP;
	  
	  constant Table1 : TestDataTable := (
		1 => (
			X => std_logic_vector(to_unsigned(0, N)),  -- 0000 0000 0000 0000
			Y => std_logic_vector(to_unsigned(0, N)),  -- 0000 0000 0000 0000
			EQ => '1',
			GT => '0'
		),
		2 => (
			X => std_logic_vector(to_unsigned(0, N)),  -- 0000 0000 0000 0000
			Y => std_logic_vector(to_unsigned(5, N)),  -- 0000 0000 0000 0000
			EQ => '0',
			GT => '0'
		),
		3 => (
			X => std_logic_vector(to_unsigned(10, N)),  -- 0000 0000 0000 0000
			Y => std_logic_vector(to_unsigned(5, N)),  -- 0000 0000 0000 0000
			EQ => '0',
			GT => '1'
		),
		4 => (
			X => std_logic_vector(to_unsigned(16, N)),  -- 0000 0000 0000 0000
			Y => std_logic_vector(to_unsigned(16, N)),  -- 0000 0000 0000 0000
			EQ => '1',
			GT => '0'
		),
		5 => (
			X => std_logic_vector(to_unsigned(1, N)),  -- 0000 0000 0000 0000
			Y => std_logic_vector(to_unsigned(0, N)),  -- 0000 0000 0000 0000
			EQ => '0',
			GT => '1'
		)
	);  

	begin

	  -- Direct entity instantiation
	  DUT : entity work.MagComp(structure)
		--generic map (
		 -- N => N
		--)
		port map (
		  X   => TBX,
		  Y => TBY,
		  EQ => TBEQ,
		  GT => TBGT
		);
	   MAIN : process
            variable MeasurementIndex : integer := 1;
            variable error_count : integer := 0;
    
 		 begin
   		 -- Initialize with unknowns
   			 TBX <= (others => 'X');
			 TBY <= (others => 'X');
   			 TBEQ_true <= 'X';
			 TBGT_true <= 'X';
			 wait for PREPTIME;
    
   		 MeasurementIndex := 1;
    
    		while MeasurementIndex <= 5 loop
    		  -- Apply stimulus from table
     			 TBX <= Table1(MeasurementIndex).X;
				 TBY <= Table1(MeasurementIndex).Y;
    			 TBEQ_true <= Table1(MeasurementIndex).EQ;
				 TBGT_true <= Table1(MeasurementIndex).GT;
     			 wait for MEASTIME;
      
      		-- ASSERTION 
      		assert TBEQ = TBEQ_true and TBGT = TBGT_true
        		report "ERROR at measurement " & integer'image(MeasurementIndex) & 
              			 ": Input=" & to_hstring(TBX) & " and " & to_hstring(TBY) &
              			 " Expected=" & std_logic'image(TBEQ_true) & " and " & std_logic'image(TBGT_true) &
             			 " Got=" & std_logic'image(TBEQ) & std_logic'image(TBGT)
      			 severity error;
      
     		 -- Count errors for summary
    		  if TBEQ /= TBEQ_true and TBGT /= TBGT_true then
      		  error_count := error_count + 1;
     		  end if;
      
    		  MeasurementIndex := MeasurementIndex + 1;
   		 end loop;
    
   		 -- Final summary report
    		if error_count = 0 then
    		  report "SUCCESS: All " & integer'image(MeasurementIndex-1) & " tests passed!" severity note;
   		else
     		 report "FAILURE: " & integer'image(error_count) & " errors out of " & 
            	 integer'image(MeasurementIndex-1) & " tests" severity error;
 		  end if;
    

    wait;
  end process MAIN;

end architecture sim;

