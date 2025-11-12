# ==================================================
# Main Simulation Script for LWS03 Part 1
# Automates: Compile -> Simulate -> Wave Setup -> Run
# ==================================================

# Close any existing simulation (clean start)
quit -sim
# --- Set up transcript file ---
transcript file ""

# Display status message
echo "=== Starting LWS05 Simulation ==="

# Compile all files in proper order
echo "Compiling source files..."

# Compile the DUT (Device Under Test) - leaf node first
vcom -work work -2008 -explicit -stats=none ../SourceCode/MagComp.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/MagComp.vho

# Compile the testbench
vcom -work work -2008 -explicit -stats=none TB_MagComp.vhd

# Start the simulation
echo "Starting simulation..."
vsim work.TB_MagComp
transcript off
# Set up the wave window using the wave.do script
echo "Setting up wave window..."
do wave.do

transcript on

echo "Running simulation ..."
run -all

transcript off
# Display completion message
echo "=== Simulation Complete ==="
echo "Check the transcript for assertion results and wave window for signals."