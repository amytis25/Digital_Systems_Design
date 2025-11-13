# Timing Simulation for Arria Conditional Sum Adder
vlib work
vcom -93 -explicit Simulation/ModelSim/Questa/ARRIA_CSA.vho
vcom -93 -explicit tb_adder.vhd
vsim -t ps -sdfmax /tb_adder/DUT=Simulation/ModelSim/Questa/ARRIA_CSA.sdo work.tb_adder
do FS_wave.do
run 1000 ns