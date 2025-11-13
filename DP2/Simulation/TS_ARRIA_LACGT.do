# Timing Simulation for Arria Look Ahead Carry Generator Tree
vlib work
vcom -93 -explicit Simulation/ModelSim/Questa/ARRIA_LACGT.vho
vcom -93 -explicit tb_adder.vhd
vsim -t ps -sdfmax /tb_adder/DUT=Simulation/ModelSim/Questa/ARRIA_LACGT.sdo work.tb_adder
do FS_wave.do
run 1000 ns