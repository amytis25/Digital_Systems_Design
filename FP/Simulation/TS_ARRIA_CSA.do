# ===========================
# TS_ARRIA_CSA.do
# ===========================

# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/ARRIA_CSA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting timing simulation for Conditional-Sum Adder on ARRIA II..."
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/ARRIA_CSA.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/TS-ARRIA-CSA-Transcript.txt
transcript quietly

echo "Running timing simulation for Conditional-Sum Adder on ARRIA II..."
run -all

echo "=== timing Simulation for Conditional-Sum Adder on ARRIA II Complete ==="
transcript off