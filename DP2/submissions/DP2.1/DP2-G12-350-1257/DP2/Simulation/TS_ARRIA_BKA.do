# ===========================
# TS_ARRIA_BKA.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/ARRIA_BKA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting timing simulation for Brent-Kung Adder on ARRIA II..."
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/ARRIA_BKA.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/TS-ARRIA-BKA-Transcript.txt
transcript quietly 

echo "Running timing simulation for Brent-Kung Adder on ARRIA II..."
run -all

echo "=== timing Simulation for Brent-Kung Adder on ARRIA II Complete ==="
transcript off
