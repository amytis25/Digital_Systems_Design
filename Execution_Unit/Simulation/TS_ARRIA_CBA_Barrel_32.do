# ===========================
# TS_ARRIA_CBA_Barrel_32.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/ARRIA_CBA_Barrel_32.vho
vcom -work work -2008 -explicit -stats=none TB_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_ExecUnit_Time.vhd

# Start simulation using configuration
echo "Starting timing simulation for Carry-Bypass Adder and Barrel Shifting unit on ARRIA II..."
vsim -t 100ps -gui -sdftyp /TB_ExecUnit/DUT=ModelSim/Questa/ARRIA_CBA_Barrel_32.sdo work.CFG_TIMING -gTestVectorFile=""TestVectors/Exec32.tvs""
# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/TS_ARRIA_CBA_Barrel_32_Transcript.txt
transcript quietly

echo "Running timing simulation for the 32-bit execution unit using Carry-Bypass Adder and Barrel Shifting unit on ARRIA II..."
run -all

echo "=== timing Simulation for the 32-bit execution unit usingCarry-Bypass Adder and Barrel Shifting unit on ARRIA II Complete ==="
transcript off
