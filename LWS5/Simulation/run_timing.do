# ==================================================
# Timing Simulation Script for LWS05 Part 2
# ==================================================

quit -sim
transcript file "timing_simulation.txt"

echo "=== Starting LWS05 Timing Simulation ==="

# Compile files in order
vcom -work work -2008 -explicit -stats=none ../SourceCode/MagComp.vho
vcom -work work -2008 -explicit -stats=none TB_MagComp.vhd
vcom -work work -2008 -explicit -stats=none ConfigMagComp.vhd

# Start simulation with SDF using configuration
echo "Starting timing simulation..."
vsim -t 100ps -gui -sdftyp /TB_MagComp/DUT=../SourceCode/MagComp_vhd.sdo work.ConfigMagComp_timing

transcript off
do wave.do
transcript on

echo "Running timing simulation..."
run -all

transcript off
transcript file ""

echo "=== Timing Simulation Complete ==="