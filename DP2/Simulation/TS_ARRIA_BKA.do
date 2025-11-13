# Timing Simulation for Arria Brent-Kung Adder
vlib work
vcom -93 -explicit Simulation/ModelSim/Questa/ARRIA_BKA.vho
vcom -93 -explicit tb_adder.vhd
vsim -t ps -sdfmax /tb_adder/DUT=Simulation/ModelSim/Questa/ARRIA_BKA.sdo work.tb_adder
do FS_wave.do
run 1000 ns