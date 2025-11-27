# ===========================
# FS_CBA.do
# ===========================

# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting functional simulation for Carry-Bypass Adder..."
vsim -t 100ps -gui work.CFG_FUNC_CBA

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/FS-CBA-Transcript.txt
transcript quietly 

echo "Running functional simulation Carry-Bypass Adder..."
run -all

echo "=== Functional Simulation Carry-Bypass Adder Complete ==="
transcript off