library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;      -- for unsigned arithmetic and to_hstring
-- std.textio not required here

--========================
-- Testbench Entity
--========================
entity TB_Adder is
end entity TB_Adder;

--========================
-- Architecture
--========================
architecture sim of TB_Adder is
  -- Parameters
  constant N            : integer := 4;
  constant PreStimTime  : time    := 1 ns;   -- settle after init
  constant PostStimTime : time    := 10 ns;  -- allow DUT to respond

  -- DUT ports
  signal TBA, TBB : std_logic_vector(N-1 downto 0) := (others => '0');
  signal TBCin    : std_logic := '0';
  signal TBS      : std_logic_vector(N-1 downto 0);
  signal TBCout   : std_logic;

  --========================
  -- Device Under Test
  --========================
  -- Your Adder from the prompt
  component Adder is
    generic (N : natural := 4);
    port (
      A, B  : in  std_logic_vector(N-1 downto 0);
      S     : out std_logic_vector(N-1 downto 0);
      Cin   : in  std_logic;
      Cout  : out std_logic
    );
  end component;

  --========================
  -- Test vectors
  --========================
  type TestVector is record
    A   : std_logic_vector(N-1 downto 0);
    B   : std_logic_vector(N-1 downto 0);
    Cin : std_logic;
  end record;

  -- A small set that hits carry/no-carry, Cin=0/1, edges
  type TestTable is array (natural range <>) of TestVector;
  constant V : TestTable := (
    (A => std_logic_vector(to_unsigned(0,  N)), B => std_logic_vector(to_unsigned(0,  N)), Cin => '0'),
    (A => std_logic_vector(to_unsigned(1,  N)), B => std_logic_vector(to_unsigned(1,  N)), Cin => '0'),
    (A => std_logic_vector(to_unsigned(2,  N)), B => std_logic_vector(to_unsigned(3,  N)), Cin => '1'),
    (A => std_logic_vector(to_unsigned(7,  N)), B => std_logic_vector(to_unsigned(8,  N)), Cin => '0'),
    (A => std_logic_vector(to_unsigned(15, N)), B => std_logic_vector(to_unsigned(1,  N)), Cin => '0'), -- overflow on 4 bits
    (A => std_logic_vector(to_unsigned(9,  N)), B => std_logic_vector(to_unsigned(6,  N)), Cin => '1'),
    (A => std_logic_vector(to_unsigned(5,  N)), B => std_logic_vector(to_unsigned(10, N)), Cin => '1'),
    (A => std_logic_vector(to_unsigned(15, N)), B => std_logic_vector(to_unsigned(15, N)), Cin => '1')  -- max + max + 1
  );

begin
  -- DUT instantiation (use your LATA architecture)
  DUT: entity work.Adder(LATA)
    generic map ( N => N )
    port map (
      A    => TBA,
      B    => TBB,
      S    => TBS,
      Cin  => TBCin,
      Cout => TBCout
    );

  --========================
  -- Main stimulus & checks
  --========================
  MAIN : process
    variable error_count : integer := 0;
    variable total_tests : integer := 0;

    -- local helpers
    variable uA, uB  : unsigned(N-1 downto 0);
    variable uSumExt : unsigned(N downto 0);  -- N+1 bits to capture carry
    variable expS    : std_logic_vector(N-1 downto 0);
    variable expCout : std_logic;
    variable cin_int : integer;
  begin
    -- initialize
    TBA   <= (others => 'X');
    TBB   <= (others => 'X');
    TBCin <= 'X';
    wait for PreStimTime;

    for i in V'range loop
      -- apply inputs
      TBA   <= V(i).A;
      TBB   <= V(i).B;
      TBCin <= V(i).Cin;

      -- compute expected using numeric_std (avoids manual mistakes)
      uA := unsigned(V(i).A);
      uB := unsigned(V(i).B);
      cin_int := (1) when V(i).Cin = '1' else 0;
      uSumExt := ('0' & uA) + ('0' & uB) + to_unsigned(cin_int, N+1);

      expS    := std_logic_vector(uSumExt(N-1 downto 0));
      expCout := std_logic(uSumExt(N));

      wait for PostStimTime;  -- let the DUT propagate

      total_tests := total_tests + 1;

      -- Assertions for S and Cout (separate so we see which part failed)
 

      if (TBS /= expS) or (TBCout /= expCout) then
        error_count := error_count + 1;
      end if;
    end loop;

    if error_count = 0 then
      report "SUCCESS: All " & integer'image(total_tests) & " tests passed!" severity note;
    else
      report "FAILURE: " & integer'image(error_count) & " errors out of " &
             integer'image(total_tests) & " tests" severity error;
    end if;

    wait;
  end process MAIN;

end architecture sim;
