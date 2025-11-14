# ===========================
# FS_LACTA.do
# ===========================

transcript file ../Documentation/OutputFiles/FS-LACTA-Transcript.txt
transcript off
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
transcript on
echo "Starting functional simulation for Look-Ahead Carry Tree Adder..."
transcript off
vsim -t 100ps -gui work.CFG_FUNC_LACTA

# Set up wave window
do wave.do
transcript on

echo "Running functional simulation for Look-Ahead Carry Tree Adder..."
transcript off
run -all
transcript on

echo "=== Functional Simulation for Look-Ahead Carry Tree Adder Complete ==="
transcript off