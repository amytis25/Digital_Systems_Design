# ===========================
# TS_CYC_BKA.do
# ===========================

transcript file ../Documentation/OutputFiles/TS-CYC-BKA-Transcript.txt
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/CYC_BKA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting functional simulation..."
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/CYC_BKA.sdo work.CFG_TIMING

# Set up wave window
transcript off
do FS_wave.do
transcript on

echo "Running functional simulation..."
run -all

transcript off

echo "=== Functional Simulation Complete ==="
