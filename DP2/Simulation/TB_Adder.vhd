library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;

entity TB_Adder is
end TB_Adder;

architecture behavior of TB_Adder is
    constant N : integer := 64;

    -- DUT ports
    signal TBA, TBB : std_logic_vector(N-1 downto 0) := (others => '0');
    signal TBCin    : std_logic := '0';
    signal TBS      : std_logic_vector(N-1 downto 0);
    signal TBCout   : std_logic;
    signal TBOvfl   : std_logic;

    -- Test-vector file
    constant TestVectorFile : string := "TestVectors/Adder00.tvs";
    constant PreStimTime    : time   := 1 ns;
    constant PostStimTime   : time   := 100 ns;
    constant StableTime     : time   := 2 ns;  -- Time to consider signal stable
    
    -- Component declaration 
    component TestUnit is
        port (
            A, B  : in std_logic_vector (N-1 downto 0);
            S : out std_logic_vector (N-1 downto 0);
            Cin : in std_logic;
            Cout, Ovfl : out std_logic
        );
    end component;
    
    -- Signal array for monitoring all outputs together
    signal DUTout : std_logic_vector(N+1 downto 0);
    
begin
    -- Group all outputs for stability checking
    DUTout <= TBS & TBCout & TBOvfl;

    -- Device Under Test (DUT)
    DUT: TestUnit
        port map (
            A => TBA,
            B => TBB,
            Cin => TBCin,
            S => TBS,
            Cout => TBCout,
            Ovfl => TBOvfl
        );

    -- Stimulus Process with propagation delay measurement
    stimulus : process
		-- Simulation Variables
        file      tvf : text;
        variable  L, L_parse : line;
        constant  MAXLEN : natural := 2048;
        variable  s : string(1 to MAXLEN);
        variable  vA, vB, vS : std_logic_vector(N-1 downto 0);
        variable  vCin, vCout, vOvfl : std_logic;
        variable  idx        : natural := 0;
        variable  pass       : boolean;
        variable  OUTL       : line;
        
        -- Timing measurement variables
        variable StartTime, EndTime : time;
        variable PropDelay_S   : time;
        variable PropDelay_Cout : time;
        variable PropDelay_Ovfl : time;
        variable MaxPropDelay  : time;
        
    begin
		-- open test vector file
        file_open(tvf, TestVectorFile, read_mode);
		
		-- report file name
        report "Using test vectors from file: " & TestVectorFile;

        while not endfile(tvf) loop
            readline(tvf, L);

            -- Skip blank lines
            if L'length = 0 then
                next;
            end if;

			-- check if line is too long 
            if L'length > MAXLEN then
                report "Input line exceeds MAXLEN=" & integer'image(MAXLEN) severity failure;
            end if;

            s := (others => ' ');
            s(1 to L'length) := L.all;

            -- Check for comments
            for i in s'range loop
                if s(i) > ' ' then
                    if i < s'high and s(i) = '-' and s(i + 1) = '-' then
						-- skip commented lines
                        next;
                    end if;
                    exit;
                end if;
            end loop;
            
            

            -- Rebuild the line to parse values
            L_parse := null;
            write(L_parse, s(1 to L'length));

            -- Parse: A B Cin S Cout Ovfl
            HREAD(L_parse, vA);
            HREAD(L_parse, vB);
            read (L_parse, vCin);
            HREAD(L_parse, vS);
            read (L_parse, vCout);
            read (L_parse, vOvfl);

            -- 1) Drive 'X' for PreStimTime
            TBA   <= (others => 'X');
            TBB   <= (others => 'X');
            TBCin <= 'X';
            wait for PreStimTime;

            -- 2) Apply inputs and record start time
            TBA   <= vA;
            TBB   <= vB;
            TBCin <= vCin;
            StartTime := now;

            -- 3) Wait for outputs to become stable
            wait until DUTout'stable(StableTime); -- returns a true if DUTout has been stable for StableTime
            EndTime := now;

            -- 4) Calculate individual propagation delays
            PropDelay_S := TBS'last_event; -- 'last_event: returns time elapsed since the last event on a signal 
            PropDelay_Cout := TBCout'last_event;
            PropDelay_Ovfl := TBOvfl'last_event;
            
            -- Find maximum propagation delay
            MaxPropDelay := PropDelay_S;
            if PropDelay_Cout > MaxPropDelay then
                MaxPropDelay := PropDelay_Cout;
            end if;
            if PropDelay_Ovfl > MaxPropDelay then
                MaxPropDelay := PropDelay_Ovfl;
            end if;

            -- define pass condition
            pass := (TBS = vS) and (TBCout = vCout) and (TBOvfl = vOvfl);
			
			-- 5) Compute pass/fail and assert
            assert pass
                report "Mismatch: i=" & integer'image(idx) &
                    " A=" & to_hstring(TBA) &
                    " B=" & to_hstring(TBB) &
                    " Cin=" & std_logic'image(TBCin) &
                    "  got S=" & to_hstring(TBS) & " Cout=" & std_logic'image(TBCout) & " Ovfl=" & std_logic'image(TBOvfl) &
                    "  exp S=" & to_hstring(vS)  & " Cout=" & std_logic'image(vCout)  & " Ovfl=" & std_logic'image(vOvfl)
            severity error;

            -- 6) Print one concise summary line with timing information
            OUTL := null;
            write(OUTL, idx);
            write(OUTL, string'(" A="));              write(OUTL, to_hstring(TBA));
            write(OUTL, string'(" B="));              write(OUTL, to_hstring(TBB));
            write(OUTL, string'(" Cin="));            write(OUTL, TBCin);
            write(OUTL, string'("  |  S="));          write(OUTL, to_hstring(TBS));
            write(OUTL, string'(" Cout="));           write(OUTL, TBCout);
            write(OUTL, string'(" Ovfl="));           write(OUTL, TBOvfl);
            write(OUTL, string'("  Delays(S/Cout/Ovfl)="));
            write(OUTL, PropDelay_S);   write(OUTL, string'("/"));
            write(OUTL, PropDelay_Cout);write(OUTL, string'("/"));
            write(OUTL, PropDelay_Ovfl);
            write(OUTL, string'("  status="));
            if pass then 
                write(OUTL, string'("PASS"));
            else 
                write(OUTL, string'("FAIL"));
            end if;
            writeline(output, OUTL);
			
			-- increase index 
            idx := idx + 1;
        end loop;

        -- Report worst-case delays at the end
        report "Simulation completed: reached end of " & TestVectorFile;
        report "Worst-case propagation delays - S: " & time'image(PropDelay_S) & 
               ", Cout: " & time'image(PropDelay_Cout) & 
               ", Ovfl: " & time'image(PropDelay_Ovfl);
			   
		-- close test vector file
        file_close(tvf);
        wait;
    end process;
end architecture;