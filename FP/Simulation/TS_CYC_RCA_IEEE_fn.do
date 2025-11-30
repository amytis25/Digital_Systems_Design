# ===========================
# TS_CYC_RCA_IEEE_fn.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/CYC_RCA_IEEE_fn.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_Adder.vhd

# Start simulation using configuration
echo "Starting timing simulation for Ripple-Carry Adder and Shifting unit that uses IEEE functions on Cyclone IV E..."
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/CYC_RCA_IEEE_fn.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/TS_CYC_RCA_IEEE_fn_Transcript.txt
transcript quietly

echo "Running timing simulation for the execution unit using Ripple-Carry Adder and Shifting unit that uses IEEE functions on Cyclone IV E..."
run -all

echo "=== timing Simulation for Ripple-Carry Adder and Shifting unit that uses IEEE functions on Cyclone IV E Complete ==="
transcript off
