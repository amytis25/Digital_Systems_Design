-- Configuration declarations for TB_ExecUnit.
-- Provides independent configs for:
--   - Functional verification with different adder & shifter architectures
--   - Timing verification using Quartus-generated netlist (architecture 'structure')

library ieee;
use ieee.std_logic_1164.all;

----------------------------------------------------------------------
-- Functional config: RCA adder + IEEE_fn shifter
----------------------------------------------------------------------
configuration CFG_FUNC_RCA_IEEE of TB_ExecUnit is
    for behavior
        -- Bind the DUT in the testbench to the RTL ExecUnit
        for DUT : TestUnit
            use entity work.EN_ExecUnit(RTL);

            -- Inside EN_ExecUnit(RTL), bind component instances:

            -- Adder: ripple-carry (RCA)
            for Add : EN_Adder
                use entity work.EN_Adder(RCA);
            end for;

            -- Logic unit: RTL architecture
            for Logic : EN_Logic
                use entity work.EN_Logic(RTL);
            end for;

            -- Shifter: IEEE function-based architecture
            for Shift : EN_Shift
                use entity work.EN_Shift(IEEE_fn);
            end for;
        end for;
    end for;
end configuration CFG_FUNC_RCA_IEEE;

----------------------------------------------------------------------
-- Functional config: RCA adder + barrel shifter
----------------------------------------------------------------------
configuration CFG_FUNC_RCA_barrel of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            use entity work.EN_ExecUnit(RTL);

            for Add : EN_Adder
                use entity work.EN_Adder(RCA);
            end for;

            for Logic : EN_Logic
                use entity work.EN_Logic(RTL);
            end for;

            for Shift : EN_Shift
                use entity work.EN_Shift(barrel);
            end for;
        end for;
    end for;
end configuration CFG_FUNC_RCA_barrel;

----------------------------------------------------------------------
-- Functional config: CBA adder + IEEE_fn shifter
----------------------------------------------------------------------
configuration CFG_FUNC_CBA_IEEE of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            use entity work.EN_ExecUnit(RTL);

            -- Adder: carry-bypass (CBA)
            for Add : EN_Adder
                use entity work.EN_Adder(CBA);
            end for;

            for Logic : EN_Logic
                use entity work.EN_Logic(RTL);
            end for;

            for Shift : EN_Shift
                use entity work.EN_Shift(IEEE_fn);
            end for;
        end for;
    end for;
end configuration CFG_FUNC_CBA_IEEE;

----------------------------------------------------------------------
-- Functional config: CBA adder + barrel shifter
----------------------------------------------------------------------
configuration CFG_FUNC_CBA_barrel of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            use entity work.EN_ExecUnit(RTL);

            for Add : EN_Adder
                use entity work.EN_Adder(CBA);
            end for;

            for Logic : EN_Logic
                use entity work.EN_Logic(RTL);
            end for;

            for Shift : EN_Shift
                use entity work.EN_Shift(barrel);
            end for;
        end for;
    end for;
end configuration CFG_FUNC_CBA_barrel;

----------------------------------------------------------------------
-- Timing verification config
-- Bind DUT to Quartus gate-level netlist:
--   entity EN_ExecUnit with architecture 'structure'
-- (Make sure EN_ExecUnit.vho is compiled before EN_ExecUnit.vhd in ModelSim.)
----------------------------------------------------------------------
configuration CFG_TIMING of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            use entity work.EN_ExecUnit(structure);
        end for;
    end for;
end configuration CFG_TIMING;
