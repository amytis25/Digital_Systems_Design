library ieee;
use ieee.std_logic_1164.all;

entity EN_Logic is
    Generic ( N : natural := 64 );
    Port ( 
        A, B : in std_logic_vector(N-1 downto 0);
        LogicFN : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(N-1 downto 0)
    );
end entity EN_Logic;

architecture RTL of EN_Logic is
    -- Internal signals for logic operations
    signal lui_result : std_logic_vector(N-1 downto 0);
    signal xor_result : std_logic_vector(N-1 downto 0);
    signal or_result  : std_logic_vector(N-1 downto 0);
    signal and_result : std_logic_vector(N-1 downto 0);
    
begin
    -- Shift immediate left by 12 bits and sign extend
    lui_result <= (63 downto 32 => B(19)) & B(19 downto 0) & "000000000000";
    
    -- Compute standard logic operations
    xor_result <= A xor B;
    or_result  <= A or B;
    and_result <= A and B;
    
    -- Select output based on LogicFN control signals
    output_select: process(LogicFN, lui_result, xor_result, or_result, and_result)
    begin
        case LogicFN is
            when "00" =>   -- LUI (Load Upper Immediate)
                Y <= lui_result;
            when "01" =>   -- A xor B operation
                Y <= xor_result;
            when "10" =>   -- A or B operation  
                Y <= or_result;
            when "11" =>   -- A and B operation
                Y <= and_result;
            when others => -- Default case
                Y <= (others => '0');
        end case;
    end process output_select;
    
end architecture RTL;