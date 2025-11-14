# ===========================
# TS_ARRIA_RCA.do
# ===========================

transcript file ../Documentation/OutputFiles/TS-ARRIA-RCA-Transcript.txt
transcript off
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/ARRIA_RCA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
transcript on 
echo "Starting timing simulation for Ripple-Carry Adder on ARRIA II..."
transcript off
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/ARRIA_RCA.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript on

echo "Running timing simulation for Ripple-Carry Adder on ARRIA II..."
transcript off
run -all
transcript on

echo "=== timing Simulation for Ripple-Carry Adder on ARRIA II Complete ==="
transcript off