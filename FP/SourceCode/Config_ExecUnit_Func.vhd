-- Configuration declarations for TB_ExecUnit and EN_ExecUnit.
-- Provides independent configs for:
--   - Functional verification with different adder & shifter architectures
--   - Timing verification using Quartus-generated netlist (architecture 'structure')

library ieee;
use ieee.std_logic_1164.all;

----------------------------------------------------------------------
-- 1. CONFIGURATIONS OF EN_ExecUnit (internal binding of Add & Shift)
----------------------------------------------------------------------

-- EN_ExecUnit with RCA adder + IEEE_fn shifter
configuration CFG_EN_RCA_IEEE of EN_ExecUnit is
    for RTL
        -- Adder: ripple-carry (RCA)
        for Add : EN_Adder
            use entity work.EN_Adder(RCA);
        end for;

        -- Shifter: IEEE function-based architecture
        for Shift : EN_Shift
            use entity work.EN_Shift(IEEE_fn);
        end for;
    end for;
end configuration CFG_EN_RCA_IEEE;


-- EN_ExecUnit with RCA adder + barrel shifter
configuration CFG_EN_RCA_Barrel of EN_ExecUnit is
    for RTL
        for Add : EN_Adder
            use entity work.EN_Adder(RCA);
        end for;

        for Shift : EN_Shift
            use entity work.EN_Shift(barrel);
        end for;
    end for;
end configuration CFG_EN_RCA_Barrel;


-- EN_ExecUnit with CBA adder + IEEE_fn shifter
configuration CFG_EN_CBA_IEEE of EN_ExecUnit is
    for RTL
        for Add : EN_Adder
            use entity work.EN_Adder(CBA);
        end for;

        for Shift : EN_Shift
            use entity work.EN_Shift(IEEE_fn);
        end for;
    end for;
end configuration CFG_EN_CBA_IEEE;


-- EN_ExecUnit with CBA adder + barrel shifter
configuration CFG_EN_CBA_Barrel of EN_ExecUnit is
    for RTL
        for Add : EN_Adder
            use entity work.EN_Adder(CBA);
        end for;

        for Shift : EN_Shift
            use entity work.EN_Shift(barrel);
        end for;
    end for;
end configuration CFG_EN_CBA_Barrel;

----------------------------------------------------------------------
-- 2. CONFIGURATIONS OF TB_ExecUnit (select which EN_ExecUnit config)
----------------------------------------------------------------------

-- Functional config: RCA adder + IEEE_fn shifter
configuration CFG_FUNC_RCA_IEEE of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            -- Bind DUT to EN_ExecUnit using the RCA+IEEE configuration
            use configuration work.CFG_EN_RCA_IEEE;
        end for;
    end for;
end configuration CFG_FUNC_RCA_IEEE;


-- Functional config: RCA adder + barrel shifter
configuration CFG_FUNC_RCA_Barrel of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            use configuration work.CFG_EN_RCA_Barrel;
        end for;
    end for;
end configuration CFG_FUNC_RCA_Barrel;


-- Functional config: CBA adder + IEEE_fn shifter
configuration CFG_FUNC_CBA_IEEE of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            use configuration work.CFG_EN_CBA_IEEE;
        end for;
    end for;
end configuration CFG_FUNC_CBA_IEEE;


-- Functional config: CBA adder + barrel shifter
configuration CFG_FUNC_CBA_Barrel of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            use configuration work.CFG_EN_CBA_Barrel;
        end for;
    end for;
end configuration CFG_FUNC_CBA_Barrel;
