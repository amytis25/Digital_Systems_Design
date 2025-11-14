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
    -- Stimulus Process with propagation delay measurement
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
        
        -- Timing measurement variables
        variable StartTime, EndTime : time;
        variable PropDelay_S   : time;
        variable PropDelay_Cout : time;
        variable PropDelay_Ovfl : time;
        variable MaxPropDelay  : time;
        
    begin
        file_open(tvf, TestVectorFile, read_mode);
        report "Using test vectors from file: " & TestVectorFile;

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

            -- Check for comments
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

            -- 2) Apply inputs and record start time
            TBA   <= vA;
            TBB   <= vB;
            TBCin <= vCin;
            StartTime := now;

            -- 3) Wait for outputs to become stable
            wait until DUTout'stable(StableTime);
            EndTime := now;

            -- 4) Calculate individual propagation delays
            PropDelay_S := TBS'last_event;
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

            -- 5) Compute pass/fail and (optionally) assert
            pass := (TBS = vS) and (TBCout = vCout) and (TBOvfl = vOvfl);

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

            idx := idx + 1;
        end loop;

        -- Report worst-case delays at the end
        report "Simulation completed: reached end of " & TestVectorFile;
        report "Worst-case propagation delays - S: " & time'image(PropDelay_S) & 
               ", Cout: " & time'image(PropDelay_Cout) & 
               ", Ovfl: " & time'image(PropDelay_Ovfl);
        file_close(tvf);
        wait;
    end process;
end architecture;