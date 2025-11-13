library ieee;
Use ieee.std_logic_1164.all;
Use STD.TEXTIO.all;
Use ieee.numeric_std.all;

entity TB_MagComp is
   generic (
   N : natural := 64
  );
end entity TB_MagComp;

architecture sim of TB_MagComp is

	  -- Testbench signals
	  signal TBX   : std_logic_vector(N-1 downto 0);
	  signal TBY   : std_logic_vector(N-1 downto 0);
	  signal TBEQ : std_logic;
	  signal TBGT : std_logic;
	  signal TBEQ_true : std_logic;
	  signal TBGT_true : std_logic;
	  constant PREPTIME : time := 40 ns;
  	  constant MEASTIME : time := 100 ns;

	  -- Timing measurement signals
	  signal DUTout : std_logic_vector(1 downto 0);
	  constant STABLETIME : time := 50 ns;

	  -- Test vectors
	  type TestVectorOP is record
		X : std_logic_vector (N-1 downto 0 );
		Y : std_logic_vector (N-1 downto 0 );
		EQ : std_logic;
		GT : std_logic;
	  end record TestVectorOP;
	  
	  type TestDataTable is array (1 to 5) of TestVectorOP;
	  
	  constant Table1 : TestDataTable := (
		1 => (X => std_logic_vector(to_unsigned(0, N)), Y => std_logic_vector(to_unsigned(0, N)), EQ => '1', GT => '0'),
		2 => (X => std_logic_vector(to_unsigned(0, N)), Y => std_logic_vector(to_unsigned(5, N)), EQ => '0', GT => '0'),
		3 => (X => std_logic_vector(to_unsigned(10, N)), Y => std_logic_vector(to_unsigned(5, N)), EQ => '0', GT => '1'),
		4 => (X => std_logic_vector(to_unsigned(16, N)), Y => std_logic_vector(to_unsigned(16, N)), EQ => '1', GT => '0'),
		5 => (X => std_logic_vector(to_unsigned(1, N)), Y => std_logic_vector(to_unsigned(0, N)), EQ => '0', GT => '1')
	);  

	-- Component declaration (REQUIRED for configurations)
	component TestUnit is
		port (
			X, Y : in std_logic_vector(N-1 downto 0);
			EQ, GT : out std_logic
		);
	end component;

	begin

	  -- Component instantiation
	  DUT : TestUnit
		port map (
		  X   => TBX,
		  Y => TBY,
		  EQ => TBEQ,
		  GT => TBGT
		);
		
	  -- Combine outputs for stability checking
	  DUTout <= TBEQ & TBGT;

	   MAIN : process
            variable MeasurementIndex : integer := 1;
            variable error_count : integer := 0;
			variable StartTime, EndTime : time;
			variable PropDelayEQ, PropDelayGT : time;
    
 		 begin
   		 -- Initialize
   			 TBX <= (others => 'X');
			 TBY <= (others => 'X');
   			 TBEQ_true <= 'X';
			 TBGT_true <= 'X';
			 wait for PREPTIME;
    
   		 MeasurementIndex := 1;
    
    		while MeasurementIndex <= 5 loop
    		  StartTime := NOW;
			  
    		  -- Apply stimulus
     			 TBX <= Table1(MeasurementIndex).X;
				 TBY <= Table1(MeasurementIndex).Y;
    			 TBEQ_true <= Table1(MeasurementIndex).EQ;
				 TBGT_true <= Table1(MeasurementIndex).GT;
				 
				 -- Wait for outputs to stabilize
				 wait until DUTout'Stable(STABLETIME);
				 
				 -- Calculate propagation delays
				 EndTime := NOW;
				 PropDelayEQ := TBEQ'Last_Event;
				 PropDelayGT := TBGT'Last_Event;
      
      		-- Check results
      		if TBEQ = TBEQ_true and TBGT = TBGT_true then
        		report "Measurement " & integer'image(MeasurementIndex) & " PASSED" &
              		   ": PropDelayEQ = " & time'image(PropDelayEQ) & 
              		   ", PropDelayGT = " & time'image(PropDelayGT);
      		else
        		report "Measurement " & integer'image(MeasurementIndex) & " TIMING MISMATCH" &
              		   ": Input=" & to_hstring(TBX) & " and " & to_hstring(TBY) &
              		   " Expected=" & std_logic'image(TBEQ_true) & " and " & std_logic'image(TBGT_true) &
             		   " Got=" & std_logic'image(TBEQ) & std_logic'image(TBGT) &
              		   " Delays: EQ=" & time'image(PropDelayEQ) & " GT=" & time'image(PropDelayGT)
              		   severity warning;
      		end if;
      
     		 -- Count functional errors
    		  if TBEQ /= TBEQ_true or TBGT /= TBGT_true then
      		  error_count := error_count + 1;
     		  end if;
      
    		  MeasurementIndex := MeasurementIndex + 1;
   		 end loop;
    
   		 -- Final summary
    		if error_count = 0 then
    		  report "FUNCTIONAL SUCCESS: All " & integer'image(MeasurementIndex-1) & " tests passed functionally!" severity note;
   		  else
     		 report "FUNCTIONAL ISSUES: " & integer'image(error_count) & " mismatches out of " & 
            	 integer'image(MeasurementIndex-1) & " tests (may be timing-related)" severity note;
 		    end if;
    
    		report "=== SIMULATION COMPLETE ===";

    wait;
  end process MAIN;

end architecture sim;
