# ===========================
# FS_BKA.do
# ===========================

transcript file ../Documentation/OutputFiles/FS-BKA-Transcript.txt
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting functional simulation..."
vsim -t 100ps -gui work.CFG_FUNC_BKA

transcript off
do FS_wave.do
transcript on

echo "Running functional simulation..."
run -all

transcript off

echo "=== Functional Simulation Complete ==="