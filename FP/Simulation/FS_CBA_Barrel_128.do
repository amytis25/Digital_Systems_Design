# ===========================
# FS_CBA_Barrel_128.do
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
echo "Starting functional simulation for Carry-Bypass Adder and Barrel Shifting unit ..."
vsim -t 100ps -gui work.CFG_FUNC_CBA_Barrel     -gN=64     -gTestVectorFile=""TestVectors/Exec128.tvs""

# Set up wave window
do wave.do
transcript file ../Documentation/OutputFiles/FS_CBA_Barrel_128_Transcript.txt
transcript quietly

echo "Running functional simulation for the 128-bit execution unit using Carry-Bypass Adder and Barrel Shifting unit..."
run -all

echo "=== Functional Simulation for Carry-Bypass Adder and Barrel Shifting unit Complete ==="
transcript off
