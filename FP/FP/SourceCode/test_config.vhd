
library ieee;
use ieee.std_logic_1164.all;

configuration config of EN_ExecUnit is
    for RTL
        for Add : EN_Adder
            use entity work.EN_Adder(RCA);
        end for;

        for Shift : EN_Shift
            use entity work.EN_Shift(IEEE_fn);
        end for;
    end for;
end configuration config;