library ieee;
use ieee.std_logic_1164.all;

-- Configuration for timing simulation (using Quartus .vho file)
configuration ConfigMagComp_timing of TB_MagComp is
    for sim
        for DUT : TestUnit use entity work.MagComp(structure);
        end for;
    end for;
end configuration ConfigMagComp_timing;

-- Configuration for functional simulation (using original .vhd file)
configuration ConfigMagComp_rtl of TB_MagComp is
    for sim
        for DUT : TestUnit use entity work.MagComp(rtl);
        end for;
    end for;
end configuration ConfigMagComp_rtl;