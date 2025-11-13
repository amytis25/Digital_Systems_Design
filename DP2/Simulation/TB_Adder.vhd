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
    
    -- Propagation delay measurement signals
    signal StartTime_S    : time := 0 ns;
    signal StartTime_Cout : time := 0 ns;
    signal StartTime_Ovfl : time := 0 ns;
    
    signal EndTime_S      : time := 0 ns;
    signal EndTime_Cout   : time := 0 ns;
    signal EndTime_Ovfl   : time := 0 ns;
    
    signal PropDelay_S    : time := 0 ns;
    signal PropDelay_Cout : time := 0 ns;
    signal PropDelay_Ovfl : time := 0 ns;
    
    signal MaxDelay_S     : time := 0 ns;
    signal MaxDelay_Cout  : time := 0 ns;
    signal MaxDelay_Ovfl  : time := 0 ns;
    
    signal MinDelay_S     : time := time'high;
    signal MinDelay_Cout  : time := time'high;
    signal MinDelay_Ovfl  : time := time'high;
    
    signal MeasurementDone : boolean := false;

    -- Component declaration 
    component TestUnit is
        port (
            A, B  : in std_logic_vector (N-1 downto 0);
            S : out std_logic_vector (N-1 downto 0);
            Cin : in std_logic;
            Cout, Ovfl : out std_logic
        );
    end component;
begin
    --------------------------------------------------------------------
    -- Device Under Test
    --------------------------------------------------------------------
    DUT: TestUnit
        port map (
            A => TBA,
            B => TBB,
            Cin => TBCin,
            S => TBS,
            Cout => TBCout,
            Ovfl => TBOvfl
        );

    --------------------------------------------------------------------
    -- Input Change Detection Process (Starts timing measurement)
    --------------------------------------------------------------------
    input_monitor : process(TBA, TBB, TBCin)
    begin
        -- Record the time when inputs change (after PreStimTime)
        StartTime_S <= now;
        StartTime_Cout <= now;
        StartTime_Ovfl <= now;
    end process;

    --------------------------------------------------------------------
    -- Output Change Detection Processes (End timing measurement)
    --------------------------------------------------------------------
    
    -- S output delay measurement
    S_delay_measure : process(TBS)
    begin
        if now > 0 ns then  -- Avoid initial transient
            EndTime_S <= now;
            PropDelay_S <= EndTime_S - StartTime_S;
            
            -- Update min/max delays
            if PropDelay_S > 0 ns then
                if PropDelay_S > MaxDelay_S then
                    MaxDelay_S <= PropDelay_S;
                end if;
                if PropDelay_S < MinDelay_S then
                    MinDelay_S <= PropDelay_S;
                end if;
            end if;
        end if;
    end process;

    -- Cout output delay measurement
    Cout_delay_measure : process(TBCout)
    begin
        if now > 0 ns then  -- Avoid initial transient
            EndTime_Cout <= now;
            PropDelay_Cout <= EndTime_Cout - StartTime_Cout;
            
            -- Update min/max delays
            if PropDelay_Cout > 0 ns then
                if PropDelay_Cout > MaxDelay_Cout then
                    MaxDelay_Cout <= PropDelay_Cout;
                end if;
                if PropDelay_Cout < MinDelay_Cout then
                    MinDelay_Cout <= PropDelay_Cout;
                end if;
            end if;
        end if;
    end process;

    -- Ovfl output delay measurement
    Ovfl_delay_measure : process(TBOvfl)
    begin
        if now > 0 ns then  -- Avoid initial transient
            EndTime_Ovfl <= now;
            PropDelay_Ovfl <= EndTime_Ovfl - StartTime_Ovfl;
            
            -- Update min/max delays
            if PropDelay_Ovfl > 0 ns then
                if PropDelay_Ovfl > MaxDelay_Ovfl then
                    MaxDelay_Ovfl <= PropDelay_Ovfl;
                end if;
                if PropDelay_Ovfl < MinDelay_Ovfl then
                    MinDelay_Ovfl <= PropDelay_Ovfl;
                end if;
            end if;
        end if;
    end process;

    --------------------------------------------------------------------
    -- Stimulus Process with Propagation Delay Reporting
    --------------------------------------------------------------------
    stimulus : process
        file      tvf : text;
        variable  L, L2 : line;
        constant  MAXLEN : natural := 2048;
        variable  s : string(1 to MAXLEN);
        variable  vA, vB, vS : std_logic_vector(N-1 downto 0);
        variable  vCin, vCout, vOvfl : std_logic;
        variable  skip_line  : boolean;
        variable  idx        : natural := 0;
        variable  pass       : boolean;
        variable  OUTL       : line;
        
        -- Delay measurement variables
        variable vec_delay_S, vec_delay_Cout, vec_delay_Ovfl : time;
        variable delay_measured : boolean;
    begin
        file_open(tvf, TestVectorFile, read_mode);
        report "Using test vectors from file: " & TestVectorFile;
        report "Starting propagation delay measurement...";

        while not endfile(tvf) loop
            readline(tvf, L);

            -- Skip blank or comment lines
            if L'length = 0 then
                next;
            end if;

            skip_line := false;

            if L'length > MAXLEN then
                report "Input line exceeds MAXLEN=" & integer'image(MAXLEN) severity failure;
            end if;

            s := (others => ' ');
            s(1 to L'length) := L.all;

            -- Check for comment lines
            for i in s'range loop
                if s(i) > ' ' then
                    if i < s'high and s(i) = '-' and s(i + 1) = '-' then
                    skip_line := true;
                    end if;
                    exit;
                end if;
            end loop;
            
            if skip_line then
                next;
            end if;

            -- Rebuild the line to parse values
            L2 := null;
            write(L2, s(1 to L'length));

            -- Parse: A B Cin S Cout Ovfl
            HREAD(L2, vA);
            HREAD(L2, vB);
            read (L2, vCin);
            HREAD(L2, vS);
            read (L2, vCout);
            read (L2, vOvfl);

            -- 1) Drive 'X' for PreStimTime
            TBA   <= (others => 'X');
            TBB   <= (others => 'X');
            TBCin <= 'X';
            wait for PreStimTime;

            -- Reset delay measurements for this vector
            vec_delay_S := 0 ns;
            vec_delay_Cout := 0 ns;
            vec_delay_Ovfl := 0 ns;
            delay_measured := false;

            -- 2) Apply inputs (this triggers the input_monitor process)
            TBA   <= vA;
            TBB   <= vB;
            TBCin <= vCin;

            -- 3) Wait for outputs to settle and measure delays
            wait for PostStimTime;

            -- Capture the measured delays for this vector
            vec_delay_S := PropDelay_S;
            vec_delay_Cout := PropDelay_Cout;
            vec_delay_Ovfl := PropDelay_Ovfl;
            delay_measured := true;

            -- 4) Compute pass/fail and assert
            pass := (TBS = vS) and (TBCout = vCout) and (TBOvfl = vOvfl);

            assert pass
                report "Mismatch: i=" & integer'image(idx) &
                    " A=" & to_hstring(TBA) &
                    " B=" & to_hstring(TBB) &
                    " Cin=" & std_logic'image(TBCin) &
                    "  got S=" & to_hstring(TBS) & " Cout=" & std_logic'image(TBCout) & " Ovfl=" & std_logic'image(TBOvfl) &
                    "  exp S=" & to_hstring(vS)  & " Cout=" & std_logic'image(vCout)  & " Ovfl=" & std_logic'image(vOvfl)
            severity error;

            -- 5) Print comprehensive summary line with delay information
            OUTL := null;
            write(OUTL, idx);
            write(OUTL, string'(" A="));              write(OUTL, to_hstring(TBA));
            write(OUTL, string'(" B="));              write(OUTL, to_hstring(TBB));
            write(OUTL, string'(" Cin="));            write(OUTL, TBCin);
            write(OUTL, string'("  |  S="));          write(OUTL, to_hstring(TBS));
            write(OUTL, string'(" Cout="));           write(OUTL, TBCout);
            write(OUTL, string'(" Ovfl="));           write(OUTL, TBOvfl);
            
            -- Add delay information
            if delay_measured then
                write(OUTL, string'("  Delays(S="));
                write(OUTL, vec_delay_S);
                write(OUTL, string'(" Cout="));
                write(OUTL, vec_delay_Cout);
                write(OUTL, string'(" Ovfl="));
                write(OUTL, vec_delay_Ovfl);
                write(OUTL, string'(")"));
            end if;
            
            write(OUTL, string'("  status="));
            if pass then 
                write(OUTL, string'("PASS"));
            else 
                write(OUTL, string'("FAIL"));
            end if;
            writeline(output, OUTL);

            idx := idx + 1;
        end loop;

        -- Final delay statistics report
        report "=== PROPAGATION DELAY STATISTICS ===";
        report "S output:    Min=" & time'image(MinDelay_S) & ", Max=" & time'image(MaxDelay_S);
        report "Cout output: Min=" & time'image(MinDelay_Cout) & ", Max=" & time'image(MaxDelay_Cout);
        report "Ovfl output: Min=" & time'image(MinDelay_Ovfl) & ", Max=" & time'image(MaxDelay_Ovfl);
        report "Simulation completed: reached end of " & TestVectorFile;
        
        file_close(tvf);
        MeasurementDone <= true;
        wait;
    end process;
end architecture;