-- Configuration declarations for TB_Adder.
-- Provide independent configs for:
--   - Functional verification per architecture (LACA, BKA, etc.)
--   - Timing verification using Quartus .vho (architecture 'structure') + SDF


library ieee;
use ieee.std_logic_1164.all;

-- functional testing
configuration CFG_FUNC_RCA of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(RCA); end for;
  end for;
end configuration;

configuration CFG_FUNC_CSA of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(CSA); end for;
  end for;
end configuration;

configuration CFG_FUNC_LACGT of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(LACGT); end for;
  end for;
end configuration;

configuration CFG_FUNC_BKA of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(BKA); end for;
  end for;
end configuration;



-- Timing verification 
-- Timing: bind to Quartus-generated .vho architecture, usually named 'structure'
-- Make sure EN_Adder.vho is compiled *before* EN_Adder.vhd in ModelSim.
configuration CFG_TIMING_RCA of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(structure); end for;
  end for;
end configuration;

-- (Optional) Another timing candidate (e.g., BKA synthesized separately)
configuration CFG_TIMING_CSA of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(structure); end for;
  end for;
end configuration;

configuration CFG_TIMING_LACGT of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(structure); end for;
  end for;
end configuration;

configuration CFG_TIMING_BKA of TB_Adder is
  for behavior
    for DUT : TestUnit use entity work.EN_Adder(structure); end for;
  end for;
end configuration;
