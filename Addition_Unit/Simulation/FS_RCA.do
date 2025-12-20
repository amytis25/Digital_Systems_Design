# ===========================
# FS_RCA.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_Adder.vhd

# Start simulation using configuration
echo "Starting functional simulation for Ripple-Carry Adder..."
vsim -t 100ps -gui work.CFG_FUNC_RCA

# Set up wave window
do wave.do

transcript file ../Documentation/OutputFiles/FS-RCA-Transcript.txt
transcript quietly

echo "Running functional simulation for Ripple-Carry Adder..."
run -all

echo "=== Functional Simulation for Ripple-Carry Adder Complete ===" 
transcript off