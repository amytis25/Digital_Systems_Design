# ===========================
# TS_CYC_BKA.do
# ===========================

transcript file ../Documentation/OutputFiles/TS-CYC-BKA-Transcript.txt
transcript off
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/CYC_BKA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
transcript on 
echo "Starting timing simulation for Brent-Kung Adder on Cyclone IV E..."
transcript off
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/CYC_BKA.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript on

echo "Running timing simulation for Brent-Kung Adder on Cyclone IV E..."
transcript off
run -all
transcript on

echo "=== timing Simulation for Brent-Kung Adder on Cyclone IV E Complete ==="
transcript off