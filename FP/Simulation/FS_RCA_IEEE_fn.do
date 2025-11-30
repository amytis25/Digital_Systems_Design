# ===========================
# FS_RCA_IEEE_fn.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Logic.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Shift.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none TB_Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_ExecUnit.vhd

# Start simulation using configuration
echo "Starting functional simulation for Ripple-Carry Adder and Shifting unit that uses IEEE functions ..."
vsim -t 100ps -gui work.CFG_FUNC_RCA_IEEE_fn

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/FS_RCA_IEEE_fn_Transcript.txt
transcript quietly

echo "Running functional simulation for the execution unit using Ripple-Carry Adder and Shifting unit that uses IEEE functions..."
run -all

echo "=== Functional Simulation for Ripple-Carry Adder and Shifting unit that uses IEEE functions Complete ==="
transcript off
