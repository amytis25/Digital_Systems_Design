library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity TB_ExecUnit is
end TB_ExecUnit;

architecture behavior of TB_ExecUnit is
    constant N : integer := 64;

    -- DUT ports
    signal TBA, TBB : std_logic_vector(N-1 downto 0) := (others => '0');
    signal TBFuncClass, TBLogicFN, TBShiftFN : std_logic_vector(1 downto 0) := (others => '0');
    signal TBAddnSub, TBExtWord : std_logic := '0';

    signal TBY    : std_logic_vector(N-1 downto 0);
    signal TBZero : std_logic;
    signal TBAltB : std_logic;
    signal TBAltBu: std_logic;

    -- Test-vector file
    constant TestVectorFile : string := "TestVectors/Exec00.tvs";
    constant PreStimTime    : time   := 1 ns;
    constant PostStimTime   : time   := 100 ns;
    constant StableTime     : time   := 2 ns;  -- Time to consider signal stable

    -- Signal array for monitoring all outputs together
    -- Y is N bits + 3 flag bits
    signal DUTout : std_logic_vector(N+2 downto 0);
	
	component TestUnit is
        generic ( N : natural := 64 );
        port (
            A, B : in  std_logic_vector(N-1 downto 0);
            FuncClass, LogicFN, ShiftFN : in std_logic_vector(1 downto 0);
            AddnSub, ExtWord : in std_logic;
            Y : out std_logic_vector(N-1 downto 0);
            Zero, AltB, AltBu : out std_logic
        );
    end component;

begin
    -- Group all outputs for stability checking
    DUTout <= TBY & TBZero & TBAltB & TBAltBu;

    -- Device Under Test (DUT)
    DUT: TestUnit
        port map (
            A         => TBA,
            B         => TBB,
            FuncClass => TBFuncClass,
            LogicFN   => TBLogicFN,
            ShiftFN   => TBShiftFN,
            AddnSub   => TBAddnSub,
            ExtWord   => TBExtWord,
            Y         => TBY,
            Zero      => TBZero,
            AltB      => TBAltB,
            AltBu     => TBAltBu
        );

    -- Stimulus Process with propagation delay measurement
    stimulus : process
        -- Simulation variables
        file      tvf : text;
        variable  L, L_parse : line;
        constant  MAXLEN : natural := 2048;
        variable  s : string(1 to MAXLEN);

        -- expected values from TVS file
        variable  vA, vB, vY : std_logic_vector(N-1 downto 0);
        variable  vFuncClass, vLogicFN, vShiftFN : std_logic_vector(1 downto 0);
        variable  vAddnSub, vExtWord : std_logic;
        variable  vZero, vAltB, vAltBu : std_logic;

        variable  skip_line  : boolean;
        variable  idx        : natural := 0;
        variable  pass       : boolean;
        variable  OUTL       : line;

        -- Timing measurement variables
        variable PropDelay_Y      : time := 0 ns;
        variable PropDelay_Zero   : time := 0 ns;
        variable PropDelay_AltB   : time := 0 ns;
        variable PropDelay_AltBu  : time := 0 ns;

        -- Worst-case tracking
        variable MaxDelay_Y      : time := 0 ns;
        variable MaxDelay_Zero   : time := 0 ns;
        variable MaxDelay_AltB   : time := 0 ns;
        variable MaxDelay_AltBu  : time := 0 ns;

    begin
        -- open test vector file
        file_open(tvf, TestVectorFile, read_mode);

        -- report file name
        report "Using test vectors from file: " & TestVectorFile;

        -- loop through every test vector 
        while not endfile(tvf) loop
            readline(tvf, L);

            -- Skip blank lines
            if L'length = 0 then
                next;
            end if;

            skip_line := false;

            -- check if line is too long 
            if L'length > MAXLEN then
                report "Input line exceeds MAXLEN=" & integer'image(MAXLEN) severity failure;
            end if;

            s := (others => ' ');
            s(1 to L'length) := L.all;

            -- Check for comments (lines starting with "--" after optional whitespace)
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
            L_parse := null;
            write(L_parse, s(1 to L'length));

            --------------------------------------------------------------------
            -- Parse: A, B, FuncClass, LogicFN, ShiftFN, AddnSub, ExtWord,
            --        Y, Zero, AltB, AltBu
            -- Assume A, B, Y are hex; control bits/flags are binary or '0'/'1'.
            --------------------------------------------------------------------
            HREAD(L_parse, vA);
            HREAD(L_parse, vB);
            read (L_parse, vFuncClass);  -- 2-bit std_logic_vector
            read (L_parse, vLogicFN);    -- 2-bit std_logic_vector
            read (L_parse, vShiftFN);    -- 2-bit std_logic_vector
            read (L_parse, vAddnSub);    -- std_logic
            read (L_parse, vExtWord);    -- std_logic
            HREAD(L_parse, vY);
            read (L_parse, vZero);
            read (L_parse, vAltB);
            read (L_parse, vAltBu);

            -- 1) Drive 'X' for PreStimTime
            TBA        <= (others => 'X');
            TBB        <= (others => 'X');
            TBFuncClass<= (others => 'X');
            TBLogicFN  <= (others => 'X');
            TBShiftFN  <= (others => 'X');
            TBAddnSub  <= 'X';
            TBExtWord  <= 'X';
            wait for PreStimTime;

            -- 2) Apply inputs
            TBA        <= vA;
            TBB        <= vB;
            TBFuncClass<= vFuncClass;
            TBLogicFN  <= vLogicFN;
            TBShiftFN  <= vShiftFN;
            TBAddnSub  <= vAddnSub;
            TBExtWord  <= vExtWord;

            -- 3) Wait for outputs to become stable
            wait until DUTout'stable(StableTime);

            -- 4) Calculate individual propagation delays from last event
            PropDelay_Y     := TBY'last_event;
            PropDelay_Zero  := TBZero'last_event;
            PropDelay_AltB  := TBAltB'last_event;
            PropDelay_AltBu := TBAltBu'last_event;

            -- Track worst-case (max) delays
            if PropDelay_Y > MaxDelay_Y then
                MaxDelay_Y := PropDelay_Y;
            end if;
            if PropDelay_Zero > MaxDelay_Zero then
                MaxDelay_Zero := PropDelay_Zero;
            end if;
            if PropDelay_AltB > MaxDelay_AltB then
                MaxDelay_AltB := PropDelay_AltB;
            end if;
            if PropDelay_AltBu > MaxDelay_AltBu then
                MaxDelay_AltBu := PropDelay_AltBu;
            end if;

            -- define pass condition
            pass := (TBY = vY) and
                    (TBZero = vZero) and
                    (TBAltB = vAltB) and
                    (TBAltBu = vAltBu);

            -- 5) Compute pass/fail and assert
            assert pass
                report "Mismatch: i=" & integer'image(idx) &
                    " A=" & to_hstring(TBA) &
                    " B=" & to_hstring(TBB) &
                    " FuncClass=" & to_hstring(TBFuncClass) &
                    " LogicFN=" & to_hstring(TBLogicFN) &
                    " ShiftFN=" & to_hstring(TBShiftFN) &
                    " AddnSub=" & std_logic'image(TBAddnSub) &
                    " ExtWord=" & std_logic'image(TBExtWord) &
                    "  got Y=" & to_hstring(TBY) &
                    " Zero=" & std_logic'image(TBZero) &
                    " AltB=" & std_logic'image(TBAltB) &
                    " AltBu=" & std_logic'image(TBAltBu) &
                    "  exp Y=" & to_hstring(vY) &
                    " Zero=" & std_logic'image(vZero) &
                    " AltB=" & std_logic'image(vAltB) &
                    " AltBu=" & std_logic'image(vAltBu)
            severity error;

            -- 6) Print one concise summary line with timing information
            OUTL := null;
            write(OUTL, idx);
            write(OUTL, string'(" A="));          write(OUTL, to_hstring(TBA));
            write(OUTL, string'(" B="));          write(OUTL, to_hstring(TBB));
            write(OUTL, string'(" FuncClass="));  write(OUTL, to_hstring(TBFuncClass));
            write(OUTL, string'(" LogicFN="));    write(OUTL, to_hstring(TBLogicFN));
            write(OUTL, string'(" ShiftFN="));    write(OUTL, to_hstring(TBShiftFN));
            write(OUTL, string'(" AddnSub="));    write(OUTL, TBAddnSub);
            write(OUTL, string'(" ExtWord="));    write(OUTL, TBExtWord);
            write(OUTL, string'("  |  Y="));      write(OUTL, to_hstring(TBY));
            write(OUTL, string'(" Zero="));       write(OUTL, TBZero);
            write(OUTL, string'(" AltB="));       write(OUTL, TBAltB);
            write(OUTL, string'(" AltBu="));      write(OUTL, TBAltBu);
            write(OUTL, string'("  Delays(Y/Zero/AltB/AltBu)="));
            write(OUTL, PropDelay_Y);     write(OUTL, string'("/"));
            write(OUTL, PropDelay_Zero);  write(OUTL, string'("/"));
            write(OUTL, PropDelay_AltB);  write(OUTL, string'("/"));
            write(OUTL, PropDelay_AltBu);
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
        report "Worst-case propagation delays - Y: "     & time'image(MaxDelay_Y) &
               ", Zero: "   & time'image(MaxDelay_Zero) &
               ", AltB: "   & time'image(MaxDelay_AltB) &
               ", AltBu: "  & time'image(MaxDelay_AltBu);

        file_close(tvf);
        wait;
    end process;

end architecture;
