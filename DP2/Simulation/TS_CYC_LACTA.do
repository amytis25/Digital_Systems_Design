# ===========================
# TS_CYC_LACTA.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/CYC_LACTA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting timing simulation for Look-Ahead Carry Tree Adder on Cyclone IV E..."
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/CYC_LACTA.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/TS-CYC-LACTA-Transcript.txt
transcript quietly

echo "Running timing simulation for Look-Ahead Carry Tree Adder on Cyclone IV E..."
run -all

echo "=== timing Simulation for Look-Ahead Carry Tree Adder on Cyclone IV E Complete ==="
transcript off