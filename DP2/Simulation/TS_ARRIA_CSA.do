# ===========================
# TS_ARRIA_CSA.do
# ===========================

transcript file ../Documentation/OutputFiles/TS-ARRIA-CSA-Transcript.txt
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/ARRIA_CSA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting timing simulation..."
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/ARRIA_CSA.sdo work.CFG_TIMING

# Set up wave window
transcript off
do FS_wave.do
transcript on

echo "Running timing simulation..."
run -all

transcript off

echo "=== timing Simulation Complete ==="
