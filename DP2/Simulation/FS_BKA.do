# ===========================
# FS_BKA.do
# ===========================

transcript file ../Documentation/OutputFiles/FS-BKA-Transcript.txt
transcript off
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
transcript on
echo "Starting functional simulation for Brent-Kung Adder ..."
transcript off
vsim -t 100ps -gui work.CFG_FUNC_BKA

# Set up wave window
do wave.do
transcript on

echo "Running functional simulation for Brent-Kung Adder ..."
transcript off
run -all
transcript on

echo "=== Functional Simulation for Brent-Kung Adder Complete ==="
transcript off