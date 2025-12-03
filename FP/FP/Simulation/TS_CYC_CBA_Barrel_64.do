# ===========================
# TS_CYC_CBA_Barrel_64.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/CYC_CBA_Barrel_64.vho
vcom -work work -2008 -explicit -stats=none TB_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_ExecUnit_Time.vhd

# Start simulation using configuration
echo "Starting timing simulation for Carry-Bypass Adder and Barrel Shifting unit on Cyclone IV E..."
vsim -t 100ps -gui -sdftyp /TB_ExecUnit/DUT=ModelSim/Questa/CYC_CBA_Barrel_64.sdo work.CFG_TIMING -gTestVectorFile=""TestVectors/Exec64.tvs""
# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/TS_CYC_CBA_Barrel_64_Transcript.txt
transcript quietly

echo "Running timing simulation for the 64-bit execution unit using Carry-Bypass Adder and Barrel Shifting unit on Cyclone IV E..."
run -all

echo "=== timing Simulation for the 64-bit execution unit usingCarry-Bypass Adder and Barrel Shifting unit on Cyclone IV E Complete ==="
transcript off
