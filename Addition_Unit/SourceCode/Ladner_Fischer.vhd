library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ladner_Fischer is
    generic ( N : natural := 64 );
    port (
        A, B   : in  std_logic_vector(N-1 downto 0);
        Cin    : in  std_logic;
        S      : out std_logic_vector(N-1 downto 0);
        Cout   : out std_logic;
        Ovfl   : out std_logic
		  );
end entity;

architecture RTL of Ladner_Fischer is

    -- Synthesizable log2 function
    function log2(n : natural) return natural is
        variable res : natural := 0;
        variable val : natural := n;
    begin
        while val > 1 loop
            val := val / 2;
            res := res + 1;
        end loop;
        return res;
    end function;

    signal P : std_logic_vector(0 to N);
    signal G : std_logic_vector(0 to N);
    signal C : std_logic_vector(0 to N);

begin

    -- Initial propagate/generate
    P(0) <= '0';
    G(0) <= Cin;

    gen_pg: for i in 1 to N generate
        P(i) <= A(i-1) xor B(i-1);
        G(i) <= A(i-1) and B(i-1);
    end generate;

    -- Ladner-Fischer prefix tree
    process(P, G)
        variable temp_P : std_logic_vector(0 to N);
        variable temp_G : std_logic_vector(0 to N);
    begin
        temp_P := P;
        temp_G := G;

        for d in 0 to log2(N) - 1 loop
            for i in 0 to N loop
                if i >= 2**d then
                    temp_P(i) := temp_P(i) and temp_P(i - 2**d);
                    temp_G(i) := temp_G(i) or (temp_P(i) and temp_G(i - 2**d));
                end if;
            end loop;
        end loop;

        for i in 0 to N loop
            C(i) <= temp_G(i);
        end loop;
    end process;

    -- Sum computation
    gen_sum: for i in 0 to N-1 generate
        S(i) <= P(i+1) xor C(i);
    end generate;

    Cout <= C(N);
    Ovfl <= C(N) xor C(N-1);

end architecture;