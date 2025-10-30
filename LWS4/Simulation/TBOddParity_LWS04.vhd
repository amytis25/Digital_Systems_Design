library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

entity TBOddParity is
  generic (
    N : natural := 16
  );
end entity TBOddParity;

architecture sim of TBOddParity is

	  -- Testbench signals (local signals to drive DUT)
	  signal TBX   : std_logic_vector(N-1 downto 0);
	  signal TBisOdd : std_logic;
	  signal TBtrueIsOdd : std_logic;
	  constant PREPTIME : time := 40 ps;
  	  constant MEASTIME : time := 200 ps;

	  -- record
	  type TestVectorOP is record
		X : std_logic_vector (N-1 downto 0 );
		isOdd : std_logic;
	  end record TestVectorOP;
	  
	  type TestDataTable is array (1 to 5) of TestVectorOP;
	  
	  constant Table1 : TestDataTable := (
		1 => (
			X     => std_logic_vector(to_unsigned(0, N)),  -- 0000 0000 0000 0000
			isOdd => '0'
		),
		2 => (
			X     => std_logic_vector(to_unsigned(1, N)),  -- 0000 0000 0000 0001
			isOdd => '1'
		),
		3 => (
			X     => std_logic_vector(to_unsigned(15, N)),  -- 0000 0000 0000 1111
			isOdd => '0'
		),
		4 => (
			X     => std_logic_vector(to_unsigned(75, N)),  
			isOdd => '0'
		),
		5 => (
			X     => std_logic_vector(to_unsigned(100, N)), 
			isOdd => '1'
		)
	);  

	begin

	  -- Direct entity instantiation
	  DUT : entity work.EN_OddParity(PrimTree)
		generic map (
		  N => N
		)
		port map (
		  X   => TBX,
		  isOdd => TBisOdd
		);
	   MAIN : process
            variable MeasurementIndex : integer := 1;
            variable error_count : integer := 0;
    
 		 begin
   		 -- Initialize with unknowns
   			 TBX <= (others => 'X');
   			 TBtrueIsOdd <= 'X';
			 wait for PREPTIME;
    
   		 MeasurementIndex := 1;
    
    		while MeasurementIndex <= 5 loop
    		  -- Apply stimulus from table
     			 TBX <= Table1(MeasurementIndex).X;
    			 TBtrueIsOdd <= Table1(MeasurementIndex).isOdd;
     			 wait for MEASTIME;
      
      		-- ASSERTION 
      		assert TBisOdd = TBtrueIsOdd
        		report "ERROR at measurement " & integer'image(MeasurementIndex) & 
              			 ": Input=" & to_hstring(TBX) & 
              			 " Expected=" & std_logic'image(TBtrueIsOdd) & 
             			 " Got=" & std_logic'image(TBisOdd)
      			 severity error;
      
     		 -- Count errors for summary
    		  if TBisOdd /= TBtrueIsOdd then
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

