----------------------------------------------------------------------
-- 3. Timing verification config (Quartus gate-level netlist)
----------------------------------------------------------------------

configuration CFG_TIMING of TB_ExecUnit is
    for behavior
        for DUT : TestUnit
            -- Bind DUT to Quartus gate-level netlist:
            --   entity EN_ExecUnit with architecture 'structure'
            -- (Make sure EN_ExecUnit.vho is compiled before EN_ExecUnit.vhd in ModelSim.)
            use entity work.EN_ExecUnit(structure);
        end for;
    end for;
end configuration CFG_TIMING;
