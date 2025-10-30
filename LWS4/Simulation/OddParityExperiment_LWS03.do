# ==================================================
# Main Simulation Script for LWS03 Part 1
# Automates: Compile -> Simulate -> Wave Setup -> Run
# ==================================================

# Close any existing simulation (clean start)
quit -sim

# Display status message
echo "=== Starting LWS03 Part 1 Simulation ==="

# Compile all files in proper order
echo "Compiling source files..."

# Compile the DUT (Device Under Test) - leaf node first
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_OddParity.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_xor.vhd

# Compile the testbench
vcom -work work -2008 -explicit -stats=none TBOddParity.vhd

# Start the simulation
echo "Starting simulation..."
vsim work.TBOddParity

# Set up the wave window using the wave.do script
echo "Setting up wave window..."
do wave.do


echo "Running simulation ..."
run -all

# Display completion message
echo "=== Simulation Complete ==="
echo "Check the transcript for assertion results and wave window for signals."

