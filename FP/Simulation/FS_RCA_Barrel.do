# ===========================
# FS_RCA_Barrel.do
# ===========================

transcript file ""
# --- Compile design and testbench ---
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_LACG4.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Adder.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Logic.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_Shift.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/EN_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none TB_ExecUnit.vhd
vcom -work work -2008 -explicit -stats=none ../SourceCode/Config_ExecUnit_Func.vhd

# Start simulation using configuration
echo "Starting functional simulation for Ripple-Carry Adder and Barrel Shifting unit ..."
vsim -t 100ps -gui work.CFG_FUNC_RCA_Barrel

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/FS_RCA_Barrel_Transcript.txt
transcript quietly

echo "Running functional simulation for the execution unit using Ripple-Carry Adder and Barrel Shifting unit..."
run -all

echo "=== Functional Simulation for Ripple-Carry Adder and Barrel Shifting unit Complete ==="
transcript off
