# ==================================================
# Functional Simulation Script for LWS05 Part 2
# ==================================================

quit -sim
transcript file "functional_simulation.txt"

echo "=== Starting LWS05 Functional Simulation ==="

# Compile files in order
vcom -work work -2008 -explicit -stats=none ../SourceCode/MagComp.vhd
vcom -work work -2008 -explicit -stats=none TB_MagComp.vhd
vcom -work work -2008 -explicit -stats=none ConfigMagComp.vhd

# Start simulation using configuration
echo "Starting functional simulation..."
vsim -t 100ps -gui work.ConfigMagComp_rtl

transcript off
do wave.do
transcript on

echo "Running functional simulation..."
run -all

transcript off
transcript file ""

echo "=== Functional Simulation Complete ==="