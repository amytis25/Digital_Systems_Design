# ===========================
# TS_CYC_RCA.do
# ===========================

transcript file ../Documentation/OutputFiles/TS-CYC-RCA-Transcript.txt
transcript off
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ModelSim/Questa/CYC_RCA.vho
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
transcript on 
echo "Starting timing simulation for RCA on cyclone IV E ..."
transcript off 
vsim -t 100ps -gui -sdftyp /TB_ADDER/DUT=ModelSim/Questa/CYC_RCA.sdo work.CFG_TIMING

# Set up wave window
do wave.do
transcript on

echo "Running timing simulation for RCA on cyclone IV E..."
run -all
transcript off
run -all
transcript on

echo "=== timing simulation for RCA on cyclone IV E Complete ==="
transcript off