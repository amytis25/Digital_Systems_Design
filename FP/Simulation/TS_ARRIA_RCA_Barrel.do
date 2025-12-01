# ===========================
# TS_ARRIA_RCA_Barrel.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/ARRIA_RCA_Barrel.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_Adder.vhd

# Start simulation using configuration
echo "Starting timing simulation for Ripple-Carry Adder and Barrel Shifting unit on ARRIA II..."
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/ARRIA_RCA_Barrel.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/TS_ARRIA_RCA_Barrel_Transcript.txt
transcript quietly

echo "Running timing simulation for the execution unit using Ripple-Carry Adder and Barrel Shifting unit on ARRIA II..."
run -all

echo "=== timing Simulation for Ripple-Carry Adder and Barrel Shifting unit on ARRIA II Complete ==="
transcript off
