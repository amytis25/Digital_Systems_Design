# ===========================
# FS_CBA.do
# ===========================

transcript file ../Documentation/OutputFiles/FS-CBA-Transcript.txt
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none Config_Adder.vhd

# Start simulation using configuration
echo "Starting functional simulation for Carry-Bypass Adder..."
vsim -t 100ps -gui work.CFG_FUNC_CBA

transcript off
do FS_wave.do
transcript on

echo "Running functional simulation Carry-Bypass Adder..."
run -all

transcript off

echo "=== Functional Simulation Carry-Bypass Adder Complete ==="