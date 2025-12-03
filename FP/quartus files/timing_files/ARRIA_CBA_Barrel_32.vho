-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/30/2025 22:26:19"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EN_ExecUnit IS
    PORT (
	A : IN std_logic_vector(31 DOWNTO 0);
	B : IN std_logic_vector(31 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(31 DOWNTO 0);
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END EN_ExecUnit;

-- Design Ports Information
-- ExtWord	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EN_ExecUnit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \Y[8]~output_o\ : std_logic;
SIGNAL \Y[9]~output_o\ : std_logic;
SIGNAL \Y[10]~output_o\ : std_logic;
SIGNAL \Y[11]~output_o\ : std_logic;
SIGNAL \Y[12]~output_o\ : std_logic;
SIGNAL \Y[13]~output_o\ : std_logic;
SIGNAL \Y[14]~output_o\ : std_logic;
SIGNAL \Y[15]~output_o\ : std_logic;
SIGNAL \Y[16]~output_o\ : std_logic;
SIGNAL \Y[17]~output_o\ : std_logic;
SIGNAL \Y[18]~output_o\ : std_logic;
SIGNAL \Y[19]~output_o\ : std_logic;
SIGNAL \Y[20]~output_o\ : std_logic;
SIGNAL \Y[21]~output_o\ : std_logic;
SIGNAL \Y[22]~output_o\ : std_logic;
SIGNAL \Y[23]~output_o\ : std_logic;
SIGNAL \Y[24]~output_o\ : std_logic;
SIGNAL \Y[25]~output_o\ : std_logic;
SIGNAL \Y[26]~output_o\ : std_logic;
SIGNAL \Y[27]~output_o\ : std_logic;
SIGNAL \Y[28]~output_o\ : std_logic;
SIGNAL \Y[29]~output_o\ : std_logic;
SIGNAL \Y[30]~output_o\ : std_logic;
SIGNAL \Y[31]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B_adder[31]~0_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~14_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~6_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~8_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_R[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~2_combout\ : std_logic;
SIGNAL \Shift|Y_RL[31]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[24]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[16]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[20]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[28]~5_combout\ : std_logic;
SIGNAL \Shift|rl4[16]~1_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shift|rl2[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~2_combout\ : std_logic;
SIGNAL \Shift|rl4[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|Cout~1_combout\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \Shift|rl2[17]~13_combout\ : std_logic;
SIGNAL \Shift|rl2[21]~12_combout\ : std_logic;
SIGNAL \Shift|rl3[17]~2_combout\ : std_logic;
SIGNAL \Shift|ra3[29]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[25]~11_combout\ : std_logic;
SIGNAL \Shift|ra3[25]~1_combout\ : std_logic;
SIGNAL \Shift|ra4[17]~0_combout\ : std_logic;
SIGNAL \Shift|rl3[29]~0_combout\ : std_logic;
SIGNAL \Shift|rl3[25]~1_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~3_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~9_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~10_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~8_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Shift|ll4[1]~0_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~18_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~19_combout\ : std_logic;
SIGNAL \Shift|rl3[18]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~17_combout\ : std_logic;
SIGNAL \Shift|rl3[26]~3_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~4_combout\ : std_logic;
SIGNAL \Shift|ra3[26]~2_combout\ : std_logic;
SIGNAL \Shift|ra4[18]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~14_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~15_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~16_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~23_combout\ : std_logic;
SIGNAL \Shift|rl3[27]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~24_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~25_combout\ : std_logic;
SIGNAL \Shift|rl3[19]~6_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~5_combout\ : std_logic;
SIGNAL \Shift|ra3[27]~3_combout\ : std_logic;
SIGNAL \Shift|ra4[19]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~20_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~21_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~22_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~1_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Shift|ll2[0]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~3_combout\ : std_logic;
SIGNAL \Shift|ll4[4]~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Shift|rl3[20]~7_combout\ : std_logic;
SIGNAL \Shift|ra4[20]~3_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~6_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~9_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Shift|ll2[1]~4_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~5_combout\ : std_logic;
SIGNAL \Shift|ll4[5]~2_combout\ : std_logic;
SIGNAL \Shift|rl3[21]~9_combout\ : std_logic;
SIGNAL \Shift|ra3[29]~4_combout\ : std_logic;
SIGNAL \Shift|ra4[21]~4_combout\ : std_logic;
SIGNAL \Shift|rl3[29]~8_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~7_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~6_combout\ : std_logic;
SIGNAL \Shift|ll4[6]~3_combout\ : std_logic;
SIGNAL \Shift|rl3[22]~10_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~8_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~9_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Shift|ra3[30]~5_combout\ : std_logic;
SIGNAL \Shift|ra4[22]~5_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Shift|rl3[23]~11_combout\ : std_logic;
SIGNAL \Shift|Y_RL[31]~1_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~10_combout\ : std_logic;
SIGNAL \Shift|ra4[23]~6_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[7]~4_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~5_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~11_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~9_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~6_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~10_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~7_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~11_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~8_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \Mux20~11_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~10_combout\ : std_logic;
SIGNAL \B_adder[12]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~12_combout\ : std_logic;
SIGNAL \Shift|ll4[12]~9_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~13_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~10_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~14_combout\ : std_logic;
SIGNAL \Shift|ll4[14]~11_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Shift|rl5[15]~0_combout\ : std_logic;
SIGNAL \Shift|rl5[15]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~15_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~12_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~0_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~0_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[15]~1_combout\ : std_logic;
SIGNAL \Logic|Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~16_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~13_combout\ : std_logic;
SIGNAL \Shift|Y_LL[16]~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~11_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~2_combout\ : std_logic;
SIGNAL \Shift|Y_RL[16]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[16]~2_combout\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~17_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~18_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~19_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~12_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~20_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~21_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~10_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux10~11_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~22_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~23_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~13_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~24_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~25_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~26_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~27_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[1]~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ll2[31]~28_combout\ : std_logic;
SIGNAL \Shift|ll4[31]~14_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|P\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Add|G\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Add|S\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Add|S_internal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Shift|ALT_INV_ll2[18]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(23 DOWNTO 1);
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_P\ : std_logic_vector(31 DOWNTO 4);
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[17]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[16]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[4]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[16]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[16]~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_RL[16]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_RA[15]~2_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[15]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_RA[15]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_RA[15]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl5[15]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl5[15]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[15]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[15]~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[15]~15_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[14]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[14]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[13]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[13]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[12]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[12]~12_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[3]~10_combout\ : std_logic;
SIGNAL \ALT_INV_B_adder[12]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[11]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[10]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[9]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[9]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[24]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[8]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[7]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[23]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[23]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[23]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_RL[31]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[22]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[30]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[22]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[22]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[22]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[6]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[5]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[5]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[21]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[29]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[21]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[21]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[29]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[20]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[20]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[20]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[4]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[4]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[1]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[19]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[27]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[19]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[19]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[19]~25_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[23]~24_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[27]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[27]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[15]~22_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[11]~21_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[7]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[3]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[18]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[26]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[18]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[18]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[18]~19_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[22]~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[26]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[26]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[14]~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[10]~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[6]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[17]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[25]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[29]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[17]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[17]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[17]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[21]~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[25]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[29]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[25]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[13]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[9]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_G\ : std_logic_vector(29 DOWNTO 4);
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[7]~8_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[7]~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[6]~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[5]~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[4]~4_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[3]~3_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[2]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B_adder[31]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_RL[31]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[22]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[16]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[24]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[16]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[28]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[20]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[8]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~7_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[5]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[16]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[31]~3_combout\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddnSub~input_o\ : std_logic;
SIGNAL \ALT_INV_B[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[31]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[31]~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[31]~28_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S_internal\ : std_logic_vector(31 DOWNTO 31);
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[27]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_C\ : std_logic_vector(3 DOWNTO 3);
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[26]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[25]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[24]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[6]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[23]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[22]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[21]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[20]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[5]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[19]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_FuncClass <= FuncClass;
ww_LogicFN <= LogicFN;
ww_ShiftFN <= ShiftFN;
ww_AddnSub <= AddnSub;
ww_ExtWord <= ExtWord;
Y <= ww_Y;
Zero <= ww_Zero;
AltB <= ww_AltB;
AltBu <= ww_AltBu;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Shift|ALT_INV_ll2[18]~18_combout\ <= NOT \Shift|ll2[18]~18_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\Add|ALT_INV_S\(18) <= NOT \Add|S\(18);
\Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\;
\Add|ALT_INV_P\(18) <= NOT \Add|P\(18);
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\Shift|ALT_INV_ll2[17]~17_combout\ <= NOT \Shift|ll2[17]~17_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux10~5_combout\ <= NOT \Mux10~5_combout\;
\ALT_INV_Mux10~4_combout\ <= NOT \Mux10~4_combout\;
\Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_C[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\;
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Y_ShiftOrArith[16]~2_combout\ <= NOT \Y_ShiftOrArith[16]~2_combout\;
\Add|ALT_INV_S\(16) <= NOT \Add|S\(16);
\Add|ALT_INV_block_carry_in[4]~11_combout\ <= NOT \Add|block_carry_in[4]~11_combout\;
\Shift|ALT_INV_ll4[16]~13_combout\ <= NOT \Shift|ll4[16]~13_combout\;
\Shift|ALT_INV_ll2[16]~16_combout\ <= NOT \Shift|ll2[16]~16_combout\;
\Shift|ALT_INV_Y_RL[16]~2_combout\ <= NOT \Shift|Y_RL[16]~2_combout\;
\Shift|ALT_INV_Y_RA[15]~2_combout\ <= NOT \Shift|Y_RA[15]~2_combout\;
\Logic|ALT_INV_Mux15~0_combout\ <= NOT \Logic|Mux15~0_combout\;
\ALT_INV_Y_ShiftOrArith[15]~1_combout\ <= NOT \Y_ShiftOrArith[15]~1_combout\;
\Shift|ALT_INV_Y_RA[15]~1_combout\ <= NOT \Shift|Y_RA[15]~1_combout\;
\Shift|ALT_INV_Y_RA[15]~0_combout\ <= NOT \Shift|Y_RA[15]~0_combout\;
\Shift|ALT_INV_rl5[15]~1_combout\ <= NOT \Shift|rl5[15]~1_combout\;
\Shift|ALT_INV_rl5[15]~0_combout\ <= NOT \Shift|rl5[15]~0_combout\;
\Shift|ALT_INV_Y_LL[15]~0_combout\ <= NOT \Shift|Y_LL[15]~0_combout\;
\Shift|ALT_INV_ll4[15]~12_combout\ <= NOT \Shift|ll4[15]~12_combout\;
\Shift|ALT_INV_ll2[15]~15_combout\ <= NOT \Shift|ll2[15]~15_combout\;
\Add|ALT_INV_S\(15) <= NOT \Add|S\(15);
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\;
\Add|ALT_INV_P\(15) <= NOT \Add|P\(15);
\Logic|ALT_INV_Mux16~0_combout\ <= NOT \Logic|Mux16~0_combout\;
\ALT_INV_Mux17~4_combout\ <= NOT \Mux17~4_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\Shift|ALT_INV_ll4[14]~11_combout\ <= NOT \Shift|ll4[14]~11_combout\;
\Shift|ALT_INV_ll2[14]~14_combout\ <= NOT \Shift|ll2[14]~14_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\;
\Add|ALT_INV_P\(14) <= NOT \Add|P\(14);
\ALT_INV_Mux18~4_combout\ <= NOT \Mux18~4_combout\;
\ALT_INV_Mux18~3_combout\ <= NOT \Mux18~3_combout\;
\ALT_INV_Mux18~2_combout\ <= NOT \Mux18~2_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\Shift|ALT_INV_ll4[13]~10_combout\ <= NOT \Shift|ll4[13]~10_combout\;
\Shift|ALT_INV_ll2[13]~13_combout\ <= NOT \Shift|ll2[13]~13_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\;
\ALT_INV_Mux19~6_combout\ <= NOT \Mux19~6_combout\;
\ALT_INV_Mux19~5_combout\ <= NOT \Mux19~5_combout\;
\ALT_INV_Mux19~4_combout\ <= NOT \Mux19~4_combout\;
\ALT_INV_Mux19~3_combout\ <= NOT \Mux19~3_combout\;
\ALT_INV_Mux19~2_combout\ <= NOT \Mux19~2_combout\;
\Shift|ALT_INV_ll4[12]~9_combout\ <= NOT \Shift|ll4[12]~9_combout\;
\Shift|ALT_INV_ll2[12]~12_combout\ <= NOT \Shift|ll2[12]~12_combout\;
\Add|ALT_INV_block_carry_in[3]~10_combout\ <= NOT \Add|block_carry_in[3]~10_combout\;
\ALT_INV_B_adder[12]~1_combout\ <= NOT \B_adder[12]~1_combout\;
\ALT_INV_Mux20~10_combout\ <= NOT \Mux20~10_combout\;
\ALT_INV_Mux20~9_combout\ <= NOT \Mux20~9_combout\;
\ALT_INV_Mux20~8_combout\ <= NOT \Mux20~8_combout\;
\ALT_INV_Mux20~7_combout\ <= NOT \Mux20~7_combout\;
\Add|ALT_INV_S\(11) <= NOT \Add|S\(11);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~2_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\;
\Shift|ALT_INV_ll4[11]~8_combout\ <= NOT \Shift|ll4[11]~8_combout\;
\Shift|ALT_INV_ll2[11]~11_combout\ <= NOT \Shift|ll2[11]~11_combout\;
\ALT_INV_Mux21~4_combout\ <= NOT \Mux21~4_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\;
\Add|ALT_INV_P\(10) <= NOT \Add|P\(10);
\Shift|ALT_INV_ll4[10]~7_combout\ <= NOT \Shift|ll4[10]~7_combout\;
\Shift|ALT_INV_ll2[10]~10_combout\ <= NOT \Shift|ll2[10]~10_combout\;
\ALT_INV_Mux22~4_combout\ <= NOT \Mux22~4_combout\;
\ALT_INV_Mux22~3_combout\ <= NOT \Mux22~3_combout\;
\ALT_INV_Mux22~2_combout\ <= NOT \Mux22~2_combout\;
\ALT_INV_Mux20~6_combout\ <= NOT \Mux20~6_combout\;
\ALT_INV_Mux20~5_combout\ <= NOT \Mux20~5_combout\;
\ALT_INV_Mux20~4_combout\ <= NOT \Mux20~4_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\Shift|ALT_INV_ll4[9]~6_combout\ <= NOT \Shift|ll4[9]~6_combout\;
\Shift|ALT_INV_ll2[9]~9_combout\ <= NOT \Shift|ll2[9]~9_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux23~2_combout\ <= NOT \Mux23~2_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\Shift|ALT_INV_rl4[24]~11_combout\ <= NOT \Shift|rl4[24]~11_combout\;
\Shift|ALT_INV_ll4[8]~5_combout\ <= NOT \Shift|ll4[8]~5_combout\;
\Shift|ALT_INV_ll2[8]~8_combout\ <= NOT \Shift|ll2[8]~8_combout\;
\ALT_INV_Mux24~5_combout\ <= NOT \Mux24~5_combout\;
\ALT_INV_Mux24~4_combout\ <= NOT \Mux24~4_combout\;
\ALT_INV_Mux24~3_combout\ <= NOT \Mux24~3_combout\;
\Shift|ALT_INV_ll4[7]~4_combout\ <= NOT \Shift|ll4[7]~4_combout\;
\Shift|ALT_INV_ll2[7]~7_combout\ <= NOT \Shift|ll2[7]~7_combout\;
\ALT_INV_Mux24~2_combout\ <= NOT \Mux24~2_combout\;
\Shift|ALT_INV_ra4[23]~6_combout\ <= NOT \Shift|ra4[23]~6_combout\;
\Shift|ALT_INV_rl4[23]~10_combout\ <= NOT \Shift|rl4[23]~10_combout\;
\Shift|ALT_INV_rl3[23]~11_combout\ <= NOT \Shift|rl3[23]~11_combout\;
\Shift|ALT_INV_Y_RL[31]~1_combout\ <= NOT \Shift|Y_RL[31]~1_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~2_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\;
\Add|ALT_INV_P\(7) <= NOT \Add|P\(7);
\ALT_INV_Mux25~4_combout\ <= NOT \Mux25~4_combout\;
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\;
\Add|ALT_INV_P\(6) <= NOT \Add|P\(6);
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\Shift|ALT_INV_ra4[22]~5_combout\ <= NOT \Shift|ra4[22]~5_combout\;
\Shift|ALT_INV_ra3[30]~5_combout\ <= NOT \Shift|ra3[30]~5_combout\;
\Shift|ALT_INV_rl4[22]~9_combout\ <= NOT \Shift|rl4[22]~9_combout\;
\Shift|ALT_INV_rl3[22]~10_combout\ <= NOT \Shift|rl3[22]~10_combout\;
\Shift|ALT_INV_rl4[22]~8_combout\ <= NOT \Shift|rl4[22]~8_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\Shift|ALT_INV_ll4[6]~3_combout\ <= NOT \Shift|ll4[6]~3_combout\;
\Shift|ALT_INV_ll2[6]~6_combout\ <= NOT \Shift|ll2[6]~6_combout\;
\ALT_INV_Mux26~5_combout\ <= NOT \Mux26~5_combout\;
\ALT_INV_Mux26~4_combout\ <= NOT \Mux26~4_combout\;
\ALT_INV_Mux26~3_combout\ <= NOT \Mux26~3_combout\;
\Shift|ALT_INV_ll4[5]~2_combout\ <= NOT \Shift|ll4[5]~2_combout\;
\Shift|ALT_INV_ll2[5]~5_combout\ <= NOT \Shift|ll2[5]~5_combout\;
\Shift|ALT_INV_ll2[1]~4_combout\ <= NOT \Shift|ll2[1]~4_combout\;
\ALT_INV_Mux26~2_combout\ <= NOT \Mux26~2_combout\;
\Shift|ALT_INV_ra4[21]~4_combout\ <= NOT \Shift|ra4[21]~4_combout\;
\Shift|ALT_INV_ra3[29]~4_combout\ <= NOT \Shift|ra3[29]~4_combout\;
\Shift|ALT_INV_rl4[21]~7_combout\ <= NOT \Shift|rl4[21]~7_combout\;
\Shift|ALT_INV_rl3[21]~9_combout\ <= NOT \Shift|rl3[21]~9_combout\;
\Shift|ALT_INV_rl3[29]~8_combout\ <= NOT \Shift|rl3[29]~8_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\;
\ALT_INV_Mux27~3_combout\ <= NOT \Mux27~3_combout\;
\ALT_INV_Mux27~2_combout\ <= NOT \Mux27~2_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\Shift|ALT_INV_ra4[20]~3_combout\ <= NOT \Shift|ra4[20]~3_combout\;
\Shift|ALT_INV_rl4[20]~6_combout\ <= NOT \Shift|rl4[20]~6_combout\;
\Shift|ALT_INV_rl3[20]~7_combout\ <= NOT \Shift|rl3[20]~7_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\Shift|ALT_INV_ll4[4]~1_combout\ <= NOT \Shift|ll4[4]~1_combout\;
\Shift|ALT_INV_ll2[4]~3_combout\ <= NOT \Shift|ll2[4]~3_combout\;
\Shift|ALT_INV_ll2[0]~2_combout\ <= NOT \Shift|ll2[0]~2_combout\;
\Add|ALT_INV_block_carry_in[1]~9_combout\ <= NOT \Add|block_carry_in[1]~9_combout\;
\Add|ALT_INV_P\(4) <= NOT \Add|P\(4);
\ALT_INV_Mux28~4_combout\ <= NOT \Mux28~4_combout\;
\ALT_INV_Mux28~3_combout\ <= NOT \Mux28~3_combout\;
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\;
\ALT_INV_Mux28~2_combout\ <= NOT \Mux28~2_combout\;
\Shift|ALT_INV_ra4[19]~2_combout\ <= NOT \Shift|ra4[19]~2_combout\;
\Shift|ALT_INV_ra3[27]~3_combout\ <= NOT \Shift|ra3[27]~3_combout\;
\Shift|ALT_INV_rl4[19]~5_combout\ <= NOT \Shift|rl4[19]~5_combout\;
\Shift|ALT_INV_rl3[19]~6_combout\ <= NOT \Shift|rl3[19]~6_combout\;
\Shift|ALT_INV_rl2[19]~25_combout\ <= NOT \Shift|rl2[19]~25_combout\;
\Shift|ALT_INV_rl2[23]~24_combout\ <= NOT \Shift|rl2[23]~24_combout\;
\Shift|ALT_INV_rl3[27]~5_combout\ <= NOT \Shift|rl3[27]~5_combout\;
\Shift|ALT_INV_rl2[27]~23_combout\ <= NOT \Shift|rl2[27]~23_combout\;
\ALT_INV_Mux28~1_combout\ <= NOT \Mux28~1_combout\;
\Shift|ALT_INV_rl2[15]~22_combout\ <= NOT \Shift|rl2[15]~22_combout\;
\Shift|ALT_INV_rl2[11]~21_combout\ <= NOT \Shift|rl2[11]~21_combout\;
\Shift|ALT_INV_rl2[7]~20_combout\ <= NOT \Shift|rl2[7]~20_combout\;
\ALT_INV_Mux28~0_combout\ <= NOT \Mux28~0_combout\;
\Shift|ALT_INV_ll2[3]~1_combout\ <= NOT \Shift|ll2[3]~1_combout\;
\ALT_INV_Mux29~8_combout\ <= NOT \Mux29~8_combout\;
\ALT_INV_Mux29~7_combout\ <= NOT \Mux29~7_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\ALT_INV_Mux29~6_combout\ <= NOT \Mux29~6_combout\;
\Shift|ALT_INV_ra4[18]~1_combout\ <= NOT \Shift|ra4[18]~1_combout\;
\Shift|ALT_INV_ra3[26]~2_combout\ <= NOT \Shift|ra3[26]~2_combout\;
\Shift|ALT_INV_rl4[18]~4_combout\ <= NOT \Shift|rl4[18]~4_combout\;
\Shift|ALT_INV_rl3[18]~4_combout\ <= NOT \Shift|rl3[18]~4_combout\;
\Shift|ALT_INV_rl2[18]~19_combout\ <= NOT \Shift|rl2[18]~19_combout\;
\Shift|ALT_INV_rl2[22]~18_combout\ <= NOT \Shift|rl2[22]~18_combout\;
\Shift|ALT_INV_rl3[26]~3_combout\ <= NOT \Shift|rl3[26]~3_combout\;
\Shift|ALT_INV_rl2[26]~17_combout\ <= NOT \Shift|rl2[26]~17_combout\;
\ALT_INV_Mux29~5_combout\ <= NOT \Mux29~5_combout\;
\Shift|ALT_INV_rl2[14]~16_combout\ <= NOT \Shift|rl2[14]~16_combout\;
\Shift|ALT_INV_rl2[10]~15_combout\ <= NOT \Shift|rl2[10]~15_combout\;
\Shift|ALT_INV_rl2[6]~14_combout\ <= NOT \Shift|rl2[6]~14_combout\;
\ALT_INV_Mux29~4_combout\ <= NOT \Mux29~4_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\Shift|ALT_INV_ll2[2]~0_combout\ <= NOT \Shift|ll2[2]~0_combout\;
\ALT_INV_Mux30~4_combout\ <= NOT \Mux30~4_combout\;
\ALT_INV_Mux30~3_combout\ <= NOT \Mux30~3_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\ALT_INV_Mux30~2_combout\ <= NOT \Mux30~2_combout\;
\ALT_INV_Mux29~3_combout\ <= NOT \Mux29~3_combout\;
\ALT_INV_Mux29~2_combout\ <= NOT \Mux29~2_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\Shift|ALT_INV_ra4[17]~0_combout\ <= NOT \Shift|ra4[17]~0_combout\;
\Shift|ALT_INV_ra3[25]~1_combout\ <= NOT \Shift|ra3[25]~1_combout\;
\Shift|ALT_INV_ra3[29]~0_combout\ <= NOT \Shift|ra3[29]~0_combout\;
\Shift|ALT_INV_rl4[17]~3_combout\ <= NOT \Shift|rl4[17]~3_combout\;
\Shift|ALT_INV_rl3[17]~2_combout\ <= NOT \Shift|rl3[17]~2_combout\;
\Shift|ALT_INV_rl2[17]~13_combout\ <= NOT \Shift|rl2[17]~13_combout\;
\Shift|ALT_INV_rl2[21]~12_combout\ <= NOT \Shift|rl2[21]~12_combout\;
\Shift|ALT_INV_rl3[25]~1_combout\ <= NOT \Shift|rl3[25]~1_combout\;
\Shift|ALT_INV_rl3[29]~0_combout\ <= NOT \Shift|rl3[29]~0_combout\;
\Shift|ALT_INV_rl2[25]~11_combout\ <= NOT \Shift|rl2[25]~11_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\Shift|ALT_INV_rl2[13]~10_combout\ <= NOT \Shift|rl2[13]~10_combout\;
\Shift|ALT_INV_rl2[9]~9_combout\ <= NOT \Shift|rl2[9]~9_combout\;
\Shift|ALT_INV_rl2[5]~8_combout\ <= NOT \Shift|rl2[5]~8_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\Shift|ALT_INV_ll4[1]~0_combout\ <= NOT \Shift|ll4[1]~0_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\Add|ALT_INV_Cout~1_combout\ <= NOT \Add|Cout~1_combout\;
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\;
\Add|ALT_INV_P\(31) <= NOT \Add|P\(31);
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
\Add|ALT_INV_G\(28) <= NOT \Add|G\(28);
\Add|ALT_INV_G\(29) <= NOT \Add|G\(29);
\Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C~0_combout\ <= NOT \Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\;
\Add|ALT_INV_P\(29) <= NOT \Add|P\(29);
\Add|ALT_INV_P\(28) <= NOT \Add|P\(28);
\Add|ALT_INV_block_carry_in[7]~8_combout\ <= NOT \Add|block_carry_in[7]~8_combout\;
\Add|ALT_INV_block_carry_in[7]~7_combout\ <= NOT \Add|block_carry_in[7]~7_combout\;
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~0_combout\ <= NOT \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\;
\Add|ALT_INV_G\(24) <= NOT \Add|G\(24);
\Add|ALT_INV_G\(25) <= NOT \Add|G\(25);
\Add|ALT_INV_block_carry_in[6]~6_combout\ <= NOT \Add|block_carry_in[6]~6_combout\;
\Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~0_combout\ <= NOT \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\;
\Add|ALT_INV_G\(20) <= NOT \Add|G\(20);
\Add|ALT_INV_G\(21) <= NOT \Add|G\(21);
\Add|ALT_INV_block_carry_in[5]~5_combout\ <= NOT \Add|block_carry_in[5]~5_combout\;
\Add|ALT_INV_G\(16) <= NOT \Add|G\(16);
\Add|ALT_INV_G\(17) <= NOT \Add|G\(17);
\Add|ALT_INV_P\(17) <= NOT \Add|P\(17);
\Add|ALT_INV_block_carry_in[4]~4_combout\ <= NOT \Add|block_carry_in[4]~4_combout\;
\Add|ALT_INV_G\(12) <= NOT \Add|G\(12);
\Add|ALT_INV_block_carry_in[3]~3_combout\ <= NOT \Add|block_carry_in[3]~3_combout\;
\Add|ALT_INV_G\(8) <= NOT \Add|G\(8);
\Add|ALT_INV_block_carry_in[2]~2_combout\ <= NOT \Add|block_carry_in[2]~2_combout\;
\Add|ALT_INV_block_carry_in[2]~1_combout\ <= NOT \Add|block_carry_in[2]~1_combout\;
\Add|ALT_INV_G\(4) <= NOT \Add|G\(4);
\Add|ALT_INV_block_carry_in[1]~0_combout\ <= NOT \Add|block_carry_in[1]~0_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\;
\Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\;
\Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\;
\Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\;
\Add|ALT_INV_P\(23) <= NOT \Add|P\(23);
\Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\;
\Add|ALT_INV_P\(21) <= NOT \Add|P\(21);
\Add|ALT_INV_P\(20) <= NOT \Add|P\(20);
\Add|ALT_INV_P\(22) <= NOT \Add|P\(22);
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\;
\Add|ALT_INV_P\(27) <= NOT \Add|P\(27);
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\;
\Add|ALT_INV_P\(25) <= NOT \Add|P\(25);
\Add|ALT_INV_P\(24) <= NOT \Add|P\(24);
\Add|ALT_INV_P\(26) <= NOT \Add|P\(26);
\Add|ALT_INV_P\(30) <= NOT \Add|P\(30);
\ALT_INV_B_adder[31]~0_combout\ <= NOT \B_adder[31]~0_combout\;
\Logic|ALT_INV_Mux31~0_combout\ <= NOT \Logic|Mux31~0_combout\;
\ALT_INV_Y_ShiftOrArith[0]~0_combout\ <= NOT \Y_ShiftOrArith[0]~0_combout\;
\Shift|ALT_INV_Y_RL[31]~0_combout\ <= NOT \Shift|Y_RL[31]~0_combout\;
\Shift|ALT_INV_rl4[22]~2_combout\ <= NOT \Shift|rl4[22]~2_combout\;
\Shift|ALT_INV_rl4[16]~1_combout\ <= NOT \Shift|rl4[16]~1_combout\;
\Shift|ALT_INV_rl2[24]~7_combout\ <= NOT \Shift|rl2[24]~7_combout\;
\Shift|ALT_INV_rl2[16]~6_combout\ <= NOT \Shift|rl2[16]~6_combout\;
\Shift|ALT_INV_rl2[28]~5_combout\ <= NOT \Shift|rl2[28]~5_combout\;
\Shift|ALT_INV_rl2[20]~4_combout\ <= NOT \Shift|rl2[20]~4_combout\;
\Shift|ALT_INV_rl4[0]~0_combout\ <= NOT \Shift|rl4[0]~0_combout\;
\Shift|ALT_INV_rl2[12]~3_combout\ <= NOT \Shift|rl2[12]~3_combout\;
\Shift|ALT_INV_rl2[8]~2_combout\ <= NOT \Shift|rl2[8]~2_combout\;
\Shift|ALT_INV_rl2[4]~1_combout\ <= NOT \Shift|rl2[4]~1_combout\;
\Shift|ALT_INV_rl2[0]~0_combout\ <= NOT \Shift|rl2[0]~0_combout\;
\ALT_INV_Y_R[0]~0_combout\ <= NOT \Y_R[0]~0_combout\;
\ALT_INV_Y_ShiftOrArith[0]~7_combout\ <= NOT \Y_ShiftOrArith[0]~7_combout\;
\Add|ALT_INV_block_carry_in[5]~14_combout\ <= NOT \Add|block_carry_in[5]~14_combout\;
\ALT_INV_Mux29~10_combout\ <= NOT \Mux29~10_combout\;
\ALT_INV_Mux23~4_combout\ <= NOT \Mux23~4_combout\;
\Shift|ALT_INV_Y_LL[16]~2_combout\ <= NOT \Shift|Y_LL[16]~2_combout\;
\ALT_INV_Y_ShiftOrArith[31]~3_combout\ <= NOT \Y_ShiftOrArith[31]~3_combout\;
\ALT_INV_FuncClass[1]~input_o\ <= NOT \FuncClass[1]~input_o\;
\ALT_INV_FuncClass[0]~input_o\ <= NOT \FuncClass[0]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_B[30]~input_o\ <= NOT \B[30]~input_o\;
\ALT_INV_AddnSub~input_o\ <= NOT \AddnSub~input_o\;
\ALT_INV_B[31]~input_o\ <= NOT \B[31]~input_o\;
\ALT_INV_LogicFN[0]~input_o\ <= NOT \LogicFN[0]~input_o\;
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_A[27]~input_o\ <= NOT \A[27]~input_o\;
\ALT_INV_A[26]~input_o\ <= NOT \A[26]~input_o\;
\ALT_INV_A[25]~input_o\ <= NOT \A[25]~input_o\;
\ALT_INV_A[24]~input_o\ <= NOT \A[24]~input_o\;
\ALT_INV_A[19]~input_o\ <= NOT \A[19]~input_o\;
\ALT_INV_A[18]~input_o\ <= NOT \A[18]~input_o\;
\ALT_INV_A[17]~input_o\ <= NOT \A[17]~input_o\;
\ALT_INV_A[16]~input_o\ <= NOT \A[16]~input_o\;
\ALT_INV_A[29]~input_o\ <= NOT \A[29]~input_o\;
\ALT_INV_A[30]~input_o\ <= NOT \A[30]~input_o\;
\ALT_INV_A[28]~input_o\ <= NOT \A[28]~input_o\;
\ALT_INV_A[23]~input_o\ <= NOT \A[23]~input_o\;
\ALT_INV_A[22]~input_o\ <= NOT \A[22]~input_o\;
\ALT_INV_A[21]~input_o\ <= NOT \A[21]~input_o\;
\ALT_INV_A[20]~input_o\ <= NOT \A[20]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~3_combout\ <= NOT \Add|GEN_BLOCKS:5:LACG_INST|g_int~3_combout\;
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~3_combout\ <= NOT \Add|GEN_BLOCKS:6:LACG_INST|g_int~3_combout\;
\Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~2_combout\ <= NOT \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\;
\Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\;
\Shift|ALT_INV_Y_LL[31]~1_combout\ <= NOT \Shift|Y_LL[31]~1_combout\;
\Shift|ALT_INV_ll4[31]~14_combout\ <= NOT \Shift|ll4[31]~14_combout\;
\Shift|ALT_INV_ll2[31]~28_combout\ <= NOT \Shift|ll2[31]~28_combout\;
\Add|ALT_INV_S_internal\(31) <= NOT \Add|S_internal\(31);
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~5_combout\ <= NOT \Mux2~5_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:7:LACG_INST|C[1]~1_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~4_combout\ <= NOT \Mux4~4_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\Shift|ALT_INV_ll2[27]~27_combout\ <= NOT \Shift|ll2[27]~27_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_C\(3) <= NOT \Add|GEN_BLOCKS:6:LACG_INST|C\(3);
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\;
\ALT_INV_Mux5~4_combout\ <= NOT \Mux5~4_combout\;
\Shift|ALT_INV_ll2[26]~26_combout\ <= NOT \Shift|ll2[26]~26_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\;
\ALT_INV_Mux6~6_combout\ <= NOT \Mux6~6_combout\;
\ALT_INV_Mux6~5_combout\ <= NOT \Mux6~5_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\Shift|ALT_INV_ll2[25]~25_combout\ <= NOT \Shift|ll2[25]~25_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_C[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\;
\ALT_INV_Mux7~3_combout\ <= NOT \Mux7~3_combout\;
\Shift|ALT_INV_ll2[24]~24_combout\ <= NOT \Shift|ll2[24]~24_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Add|ALT_INV_block_carry_in[6]~13_combout\ <= NOT \Add|block_carry_in[6]~13_combout\;
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\Shift|ALT_INV_ll2[23]~23_combout\ <= NOT \Shift|ll2[23]~23_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\Add|ALT_INV_S\(23) <= NOT \Add|S\(23);
\Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\;
\ALT_INV_Mux9~4_combout\ <= NOT \Mux9~4_combout\;
\Shift|ALT_INV_ll2[22]~22_combout\ <= NOT \Shift|ll2[22]~22_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\;
\ALT_INV_Mux10~10_combout\ <= NOT \Mux10~10_combout\;
\ALT_INV_Mux10~9_combout\ <= NOT \Mux10~9_combout\;
\Shift|ALT_INV_ll2[21]~21_combout\ <= NOT \Shift|ll2[21]~21_combout\;
\ALT_INV_Mux10~8_combout\ <= NOT \Mux10~8_combout\;
\ALT_INV_Mux10~7_combout\ <= NOT \Mux10~7_combout\;
\ALT_INV_Mux10~6_combout\ <= NOT \Mux10~6_combout\;
\Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_C[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\;
\ALT_INV_Mux14~6_combout\ <= NOT \Mux14~6_combout\;
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;
\Shift|ALT_INV_ll2[20]~20_combout\ <= NOT \Shift|ll2[20]~20_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\Add|ALT_INV_block_carry_in[5]~12_combout\ <= NOT \Add|block_carry_in[5]~12_combout\;
\ALT_INV_Mux12~4_combout\ <= NOT \Mux12~4_combout\;
\Shift|ALT_INV_ll2[19]~19_combout\ <= NOT \Shift|ll2[19]~19_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\;
\Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:4:LACG_INST|g_int~1_combout\;
\ALT_INV_Mux14~5_combout\ <= NOT \Mux14~5_combout\;
\Add|ALT_INV_P\(19) <= NOT \Add|P\(19);
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;

-- Location: IOOBUF_X42_Y56_N98
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X44_Y56_N67
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~5_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X25_Y56_N67
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~9_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X23_Y56_N67
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~5_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X56_Y56_N95
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~6_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~5_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X53_Y56_N67
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~6_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X56_Y56_N33
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~3_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X59_Y51_N98
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~5_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X59_Y49_N36
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~5_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X55_Y56_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~11_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X59_Y36_N98
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~7_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~5_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X33_Y56_N5
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~5_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X35_Y56_N36
\Y[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X31_Y56_N98
\Y[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X30_Y56_N67
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X30_Y56_N36
\Y[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~5_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X33_Y56_N98
\Y[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X59_Y48_N2
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~11_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X53_Y56_N36
\Y[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X40_Y56_N5
\Y[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X14_Y56_N67
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~7_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X48_Y56_N5
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X31_Y56_N2
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~5_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X35_Y56_N98
\Y[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~5_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X59_Y39_N67
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~6_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X59_Y49_N98
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~5_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X35_Y56_N2
\Y[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X54_Y0_N67
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X53_Y56_N98
\AltB~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_AltB~0_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X51_Y56_N36
\AltBu~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~1_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X19_Y56_N1
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X36_Y56_N32
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: MLABCELL_X39_Y52_N24
\B_adder[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \B_adder[31]~0_combout\ = ( \AddnSub~input_o\ & ( !\B[31]~input_o\ ) ) # ( !\AddnSub~input_o\ & ( \B[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111111110000000000000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[31]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	combout => \B_adder[31]~0_combout\);

-- Location: IOIBUF_X38_Y56_N1
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y46_N63
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LABCELL_X40_Y46_N2
\Add|P[29]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(29) = ( \B[29]~input_o\ & ( !\AddnSub~input_o\ $ (\A[29]~input_o\) ) ) # ( !\B[29]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Add|P\(29));

-- Location: IOIBUF_X21_Y56_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X28_Y56_N63
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LABCELL_X40_Y47_N20
\Add|P[28]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(28) = ( \A[28]~input_o\ & ( !\B[28]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[28]~input_o\ & ( !\B[28]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Add|P\(28));

-- Location: LABCELL_X40_Y46_N26
\Add|GEN_BLOCKS:7:LACG_INST|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\ = ( \Add|P\(28) & ( \Add|P\(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|ALT_INV_P\(29),
	dataf => \Add|ALT_INV_P\(28),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\);

-- Location: IOIBUF_X21_Y56_N32
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X25_Y56_N94
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X59_Y37_N32
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: MLABCELL_X39_Y49_N8
\Add|GEN_BLOCKS:4:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ = ( \B[19]~input_o\ & ( (!\AddnSub~input_o\ & (!\A[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\)))) # (\AddnSub~input_o\ & (\A[19]~input_o\ & (!\B[18]~input_o\ $ (\A[18]~input_o\)))) ) ) # ( 
-- !\B[19]~input_o\ & ( (!\AddnSub~input_o\ & (\A[19]~input_o\ & (!\B[18]~input_o\ $ (!\A[18]~input_o\)))) # (\AddnSub~input_o\ & (!\A[19]~input_o\ & (!\B[18]~input_o\ $ (\A[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[18]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X51_Y56_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X42_Y56_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X51_Y56_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X43_Y49_N4
\Add|GEN_BLOCKS:3:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (!\AddnSub~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\)))) # (\B[15]~input_o\ & (\AddnSub~input_o\ & (!\B[14]~input_o\ $ (\A[14]~input_o\)))) ) ) # ( 
-- !\A[15]~input_o\ & ( (!\B[15]~input_o\ & (\AddnSub~input_o\ & (!\B[14]~input_o\ $ (\A[14]~input_o\)))) # (\B[15]~input_o\ & (!\AddnSub~input_o\ & (!\B[14]~input_o\ $ (!\A[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000100100000110000010010001000010100000010100001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X55_Y56_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X59_Y34_N63
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y39_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X43_Y49_N0
\Add|GEN_BLOCKS:3:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ = ( \AddnSub~input_o\ & ( (!\A[13]~input_o\ & (!\B[13]~input_o\ & (!\A[12]~input_o\ $ (\B[12]~input_o\)))) # (\A[13]~input_o\ & (\B[13]~input_o\ & (!\A[12]~input_o\ $ (\B[12]~input_o\)))) ) ) # ( 
-- !\AddnSub~input_o\ & ( (!\A[13]~input_o\ & (\B[13]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\)))) # (\A[13]~input_o\ & (!\B[13]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\);

-- Location: MLABCELL_X39_Y49_N14
\Add|GEN_BLOCKS:3:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\ = ( \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & ( \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\);

-- Location: IOIBUF_X38_Y56_N32
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X55_Y56_N32
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X46_Y56_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y51_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X45_Y49_N6
\Add|GEN_BLOCKS:0:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = ( \A[3]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\)))) # (\AddnSub~input_o\ & (\B[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\)))) ) ) # ( !\A[3]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\)))) # (\AddnSub~input_o\ & (!\B[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000100100010000100010010000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X46_Y56_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X48_Y56_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X42_Y56_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: MLABCELL_X42_Y52_N4
\Add|GEN_BLOCKS:0:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = ( \B[1]~input_o\ & ( (!\A[1]~input_o\ & (!\AddnSub~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (\A[1]~input_o\ & (\AddnSub~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\)))) ) ) # ( !\B[1]~input_o\ & ( 
-- (!\A[1]~input_o\ & (\AddnSub~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\)))) # (\A[1]~input_o\ & (!\AddnSub~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001010000100000100101000010001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X43_Y52_N12
\Add|GEN_BLOCKS:0:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ = ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\);

-- Location: IOIBUF_X59_Y51_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X49_Y56_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X35_Y56_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X43_Y52_N4
\Add|GEN_BLOCKS:1:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ = ( \AddnSub~input_o\ & ( (!\A[7]~input_o\ & (!\B[7]~input_o\ & (!\A[6]~input_o\ $ (\B[6]~input_o\)))) # (\A[7]~input_o\ & (\B[7]~input_o\ & (!\A[6]~input_o\ $ (\B[6]~input_o\)))) ) ) # ( !\AddnSub~input_o\ & ( 
-- (!\A[7]~input_o\ & (\B[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) # (\A[7]~input_o\ & (!\B[7]~input_o\ & (!\A[6]~input_o\ $ (!\B[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X49_Y56_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X40_Y56_N63
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X44_Y56_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X43_Y52_N2
\Add|GEN_BLOCKS:1:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = ( \A[5]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (\AddnSub~input_o\ & (\B[5]~input_o\ & (!\A[4]~input_o\ $ (\B[4]~input_o\)))) ) ) # ( !\A[5]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[5]~input_o\ & (!\A[4]~input_o\ $ (!\B[4]~input_o\)))) # (\AddnSub~input_o\ & (!\B[5]~input_o\ & (!\A[4]~input_o\ $ (\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[4]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X43_Y52_N30
\Add|GEN_BLOCKS:1:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ = ( \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & ( \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\);

-- Location: LABCELL_X43_Y52_N14
\Add|GEN_BLOCKS:0:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\ & \A[2]~input_o\)) # (\AddnSub~input_o\))) # (\B[3]~input_o\ & ((!\AddnSub~input_o\) # ((!\B[2]~input_o\ & \A[2]~input_o\)))) ) ) # ( !\A[3]~input_o\ 
-- & ( (\A[2]~input_o\ & ((!\B[2]~input_o\ & (!\B[3]~input_o\ & \AddnSub~input_o\)) # (\B[2]~input_o\ & (\B[3]~input_o\ & !\AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011000000000000001100000111100011111100011110001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X43_Y52_N18
\Add|block_carry_in[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~0_combout\ = ( \B[1]~input_o\ & ( \A[0]~input_o\ & ( (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (((!\AddnSub~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[0]~input_o\ & ( 
-- (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (((\A[1]~input_o\ & \B[0]~input_o\)) # (\AddnSub~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( !\A[0]~input_o\ & ( (\A[1]~input_o\ & (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & ((!\AddnSub~input_o\) # 
-- (!\B[0]~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[0]~input_o\ & ( (\AddnSub~input_o\ & (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & ((!\B[0]~input_o\) # (\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110001000000000101010000000000001101110000000001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|block_carry_in[1]~0_combout\);

-- Location: LABCELL_X43_Y52_N22
\Add|G[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(4) = ( \B[4]~input_o\ & ( (!\AddnSub~input_o\ & \A[4]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (\AddnSub~input_o\ & \A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Add|G\(4));

-- Location: LABCELL_X43_Y52_N28
\Add|block_carry_in[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~1_combout\ = ( \A[5]~input_o\ & ( (\Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ & ((!\AddnSub~input_o\ $ (!\B[5]~input_o\)) # (\Add|G\(4)))) ) ) # ( !\A[5]~input_o\ & ( (\Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ & (\Add|G\(4) & 
-- (!\AddnSub~input_o\ $ (!\B[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000010100010101010001010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~1_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Add|ALT_INV_G\(4),
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|block_carry_in[2]~1_combout\);

-- Location: LABCELL_X43_Y52_N6
\Add|GEN_BLOCKS:1:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ = ( \B[7]~input_o\ & ( (!\A[6]~input_o\ & (\A[7]~input_o\ & (!\AddnSub~input_o\))) # (\A[6]~input_o\ & ((!\B[6]~input_o\ & (\A[7]~input_o\)) # (\B[6]~input_o\ & ((!\AddnSub~input_o\))))) ) ) # ( !\B[7]~input_o\ 
-- & ( (!\A[6]~input_o\ & (\A[7]~input_o\ & (\AddnSub~input_o\))) # (\A[6]~input_o\ & ((!\B[6]~input_o\ & ((\AddnSub~input_o\))) # (\B[6]~input_o\ & (\A[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100010101000001110001010101010001011100000101000101110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X43_Y52_N26
\Add|block_carry_in[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~2_combout\ = ( \Add|block_carry_in[2]~1_combout\ & ( \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ & ( (!\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\) # (((!\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & 
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\)) # (\Add|block_carry_in[1]~0_combout\)) ) ) ) # ( !\Add|block_carry_in[2]~1_combout\ & ( \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ & ( (!\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\) # 
-- (((!\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\)) # (\Add|block_carry_in[1]~0_combout\)) ) ) ) # ( \Add|block_carry_in[2]~1_combout\ & ( !\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ & ( 
-- (!\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\) # (((!\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\)) # (\Add|block_carry_in[1]~0_combout\)) ) ) ) # ( !\Add|block_carry_in[2]~1_combout\ & ( 
-- !\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ & ( (\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & (((!\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\)) # (\Add|block_carry_in[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000110011110011101111111111001110111111111100111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\,
	datab => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \Add|ALT_INV_block_carry_in[1]~0_combout\,
	datae => \Add|ALT_INV_block_carry_in[2]~1_combout\,
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\,
	combout => \Add|block_carry_in[2]~2_combout\);

-- Location: IOIBUF_X38_Y56_N63
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X21_Y56_N63
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X23_Y56_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X46_Y56_N63
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: MLABCELL_X39_Y49_N6
\Add|GEN_BLOCKS:4:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ = ( \A[16]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[16]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\)))) # (\AddnSub~input_o\ & (\B[16]~input_o\ & (!\A[17]~input_o\ $ (\B[17]~input_o\)))) ) ) # ( 
-- !\A[16]~input_o\ & ( (!\AddnSub~input_o\ & (\B[16]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\)))) # (\AddnSub~input_o\ & (!\B[16]~input_o\ & (!\A[17]~input_o\ $ (\B[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000011000001001000001100001000010100000010100001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X44_Y56_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X30_Y56_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X56_Y56_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LABCELL_X43_Y50_N22
\Add|GEN_BLOCKS:2:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = ( \A[8]~input_o\ & ( (!\B[8]~input_o\ & (!\AddnSub~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) # (\B[8]~input_o\ & (\AddnSub~input_o\ & (!\A[9]~input_o\ $ (\B[9]~input_o\)))) ) ) # ( !\A[8]~input_o\ & ( 
-- (!\B[8]~input_o\ & (\AddnSub~input_o\ & (!\A[9]~input_o\ $ (\B[9]~input_o\)))) # (\B[8]~input_o\ & (!\AddnSub~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010010000000001101001000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X59_Y46_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y49_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X42_Y56_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y51_N32
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LABCELL_X43_Y50_N24
\Add|GEN_BLOCKS:2:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ = ( \B[10]~input_o\ & ( (!\A[10]~input_o\ & (!\AddnSub~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) # (\A[10]~input_o\ & (\AddnSub~input_o\ & (!\B[11]~input_o\ $ (\A[11]~input_o\)))) ) ) # ( 
-- !\B[10]~input_o\ & ( (!\A[10]~input_o\ & (\AddnSub~input_o\ & (!\B[11]~input_o\ $ (\A[11]~input_o\)))) # (\A[10]~input_o\ & (!\AddnSub~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010010000000001101001000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X43_Y50_N8
\Add|GEN_BLOCKS:2:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ = ( \Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & ( \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\);

-- Location: LABCELL_X43_Y49_N6
\Add|GEN_BLOCKS:3:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ = ( \AddnSub~input_o\ & ( (!\B[15]~input_o\ & (((!\B[14]~input_o\ & \A[14]~input_o\)) # (\A[15]~input_o\))) # (\B[15]~input_o\ & (!\B[14]~input_o\ & (\A[15]~input_o\ & \A[14]~input_o\))) ) ) # ( 
-- !\AddnSub~input_o\ & ( (!\B[15]~input_o\ & (\B[14]~input_o\ & (\A[15]~input_o\ & \A[14]~input_o\))) # (\B[15]~input_o\ & (((\B[14]~input_o\ & \A[14]~input_o\)) # (\A[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010111000000110001011100001100100011100000110010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X43_Y49_N8
\Add|G[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(12) = (\A[12]~input_o\ & (!\B[12]~input_o\ $ (!\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Add|G\(12));

-- Location: LABCELL_X43_Y49_N14
\Add|block_carry_in[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~4_combout\ = ( \A[13]~input_o\ & ( \Add|G\(12) & ( (\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\) # (\Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\) ) ) ) # ( !\A[13]~input_o\ & ( \Add|G\(12) & ( 
-- ((\Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & (!\B[13]~input_o\ $ (!\AddnSub~input_o\)))) # (\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\) ) ) ) # ( \A[13]~input_o\ & ( !\Add|G\(12) & ( ((\Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & (!\B[13]~input_o\ $ 
-- (!\AddnSub~input_o\)))) # (\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\) ) ) ) # ( !\A[13]~input_o\ & ( !\Add|G\(12) & ( \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101110111001100110111011100110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~1_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \Add|ALT_INV_G\(12),
	combout => \Add|block_carry_in[4]~4_combout\);

-- Location: LABCELL_X43_Y50_N26
\Add|GEN_BLOCKS:2:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ = ( \B[10]~input_o\ & ( (!\B[11]~input_o\ & (\A[11]~input_o\ & ((\A[10]~input_o\) # (\AddnSub~input_o\)))) # (\B[11]~input_o\ & (!\AddnSub~input_o\ & ((\A[10]~input_o\) # (\A[11]~input_o\)))) ) ) # ( 
-- !\B[10]~input_o\ & ( (!\B[11]~input_o\ & (\AddnSub~input_o\ & ((\A[10]~input_o\) # (\A[11]~input_o\)))) # (\B[11]~input_o\ & (\A[11]~input_o\ & ((!\AddnSub~input_o\) # (\A[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000011011000100100001101100010010011100100001001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X43_Y50_N12
\Add|G[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(8) = ( \B[8]~input_o\ & ( (\A[8]~input_o\ & !\AddnSub~input_o\) ) ) # ( !\B[8]~input_o\ & ( (\A[8]~input_o\ & \AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Add|G\(8));

-- Location: LABCELL_X43_Y50_N36
\Add|block_carry_in[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~3_combout\ = ( \A[9]~input_o\ & ( \AddnSub~input_o\ & ( ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & ((!\B[9]~input_o\) # (\Add|G\(8))))) # (\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\) ) ) ) # ( !\A[9]~input_o\ & ( 
-- \AddnSub~input_o\ & ( ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & (\Add|G\(8) & !\B[9]~input_o\))) # (\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\) ) ) ) # ( \A[9]~input_o\ & ( !\AddnSub~input_o\ & ( ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & 
-- ((\B[9]~input_o\) # (\Add|G\(8))))) # (\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\) ) ) ) # ( !\A[9]~input_o\ & ( !\AddnSub~input_o\ & ( ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~1_combout\ & (\Add|G\(8) & \B[9]~input_o\))) # 
-- (\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001101110111011100110111001100110111011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~1_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\,
	datac => \Add|ALT_INV_G\(8),
	datad => \ALT_INV_B[9]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|block_carry_in[3]~3_combout\);

-- Location: MLABCELL_X39_Y49_N20
\Add|block_carry_in[5]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~14_combout\ = ( !\Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ & ( (\Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & (\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & ((!\Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\ & 
-- ((\Add|block_carry_in[4]~4_combout\))) # (\Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\ & (\Add|block_carry_in[3]~3_combout\))))) ) ) # ( \Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ & ( (\Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & 
-- (\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & ((!\Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[4]~4_combout\))) # (\Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\ & (\Add|block_carry_in[2]~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000001000000000000000100000000010001010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~combout\,
	datac => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datad => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\,
	datae => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \Add|ALT_INV_block_carry_in[4]~4_combout\,
	datag => \Add|ALT_INV_block_carry_in[3]~3_combout\,
	combout => \Add|block_carry_in[5]~14_combout\);

-- Location: IOIBUF_X56_Y56_N1
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X25_Y56_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: MLABCELL_X44_Y48_N20
\Add|P[22]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(22) = !\B[22]~input_o\ $ (!\AddnSub~input_o\ $ (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	combout => \Add|P\(22));

-- Location: IOIBUF_X59_Y48_N32
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: MLABCELL_X44_Y48_N14
\Add|P[23]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(23) = ( \A[23]~input_o\ & ( !\B[23]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[23]~input_o\ & ( !\B[23]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Add|P\(23));

-- Location: MLABCELL_X44_Y48_N12
\Add|GEN_BLOCKS:5:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~3_combout\ = ( \A[23]~input_o\ & ( (!\B[23]~input_o\ & (((\A[22]~input_o\ & \B[22]~input_o\)) # (\AddnSub~input_o\))) # (\B[23]~input_o\ & ((!\AddnSub~input_o\) # ((\A[22]~input_o\ & !\B[22]~input_o\)))) ) ) # ( 
-- !\A[23]~input_o\ & ( (\A[22]~input_o\ & ((!\B[23]~input_o\ & (\AddnSub~input_o\ & !\B[22]~input_o\)) # (\B[23]~input_o\ & (!\AddnSub~input_o\ & \B[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000100000000100000010001100111011011100110011101101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~3_combout\);

-- Location: IOIBUF_X49_Y56_N63
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X31_Y56_N32
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: MLABCELL_X44_Y48_N6
\Add|P[21]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(21) = !\B[21]~input_o\ $ (!\A[21]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	combout => \Add|P\(21));

-- Location: IOIBUF_X25_Y56_N32
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X28_Y56_N32
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: MLABCELL_X39_Y48_N26
\Add|G[20]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(20) = ( !\B[20]~input_o\ & ( \AddnSub~input_o\ & ( \A[20]~input_o\ ) ) ) # ( \B[20]~input_o\ & ( !\AddnSub~input_o\ & ( \A[20]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[20]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|G\(20));

-- Location: MLABCELL_X44_Y48_N30
\Add|GEN_BLOCKS:5:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\ = (\Add|P\(21) & \Add|G\(20))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_P\(21),
	datac => \Add|ALT_INV_G\(20),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\);

-- Location: MLABCELL_X44_Y48_N2
\Add|G[21]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(21) = ( \A[21]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[21]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[21]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Add|G\(21));

-- Location: MLABCELL_X44_Y48_N16
\Add|block_carry_in[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~6_combout\ = ( \Add|G\(21) & ( (!\Add|GEN_BLOCKS:5:LACG_INST|g_int~3_combout\ & ((!\Add|P\(22)) # (!\Add|P\(23)))) ) ) # ( !\Add|G\(21) & ( (!\Add|GEN_BLOCKS:5:LACG_INST|g_int~3_combout\ & ((!\Add|P\(22)) # ((!\Add|P\(23)) # 
-- (!\Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(22),
	datab => \Add|ALT_INV_P\(23),
	datac => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~3_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~0_combout\,
	dataf => \Add|ALT_INV_G\(21),
	combout => \Add|block_carry_in[6]~6_combout\);

-- Location: IOIBUF_X23_Y56_N94
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X28_Y56_N94
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LABCELL_X40_Y49_N34
\Add|P[27]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(27) = ( \A[27]~input_o\ & ( !\B[27]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[27]~input_o\ & ( !\B[27]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[27]~input_o\,
	combout => \Add|P\(27));

-- Location: IOIBUF_X40_Y56_N32
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X59_Y39_N1
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LABCELL_X40_Y49_N22
\Add|GEN_BLOCKS:6:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int~3_combout\ = ( \A[26]~input_o\ & ( (!\B[27]~input_o\ & ((!\B[26]~input_o\ & (\AddnSub~input_o\)) # (\B[26]~input_o\ & ((\A[27]~input_o\))))) # (\B[27]~input_o\ & ((!\B[26]~input_o\ & ((\A[27]~input_o\))) # 
-- (\B[26]~input_o\ & (!\AddnSub~input_o\)))) ) ) # ( !\A[26]~input_o\ & ( (\A[27]~input_o\ & (!\AddnSub~input_o\ $ (!\B[27]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001010011001110100101001100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[27]~input_o\,
	datad => \ALT_INV_B[26]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int~3_combout\);

-- Location: IOIBUF_X28_Y56_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LABCELL_X40_Y49_N20
\Add|G[25]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(25) = ( \A[25]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Add|G\(25));

-- Location: IOIBUF_X30_Y56_N1
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X59_Y46_N94
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LABCELL_X40_Y49_N24
\Add|G[24]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(24) = ( \A[24]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \Add|G\(24));

-- Location: LABCELL_X40_Y49_N10
\Add|P[25]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(25) = ( \B[25]~input_o\ & ( !\A[25]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[25]~input_o\ & ( !\A[25]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[25]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Add|P\(25));

-- Location: LABCELL_X40_Y49_N30
\Add|GEN_BLOCKS:6:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\ = ( \Add|P\(25) & ( \Add|G\(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|ALT_INV_G\(24),
	dataf => \Add|ALT_INV_P\(25),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\);

-- Location: LABCELL_X40_Y49_N2
\Add|P[26]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(26) = !\B[26]~input_o\ $ (!\A[26]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Add|P\(26));

-- Location: LABCELL_X40_Y49_N32
\Add|block_carry_in[7]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~7_combout\ = ( \Add|P\(26) & ( (!\Add|GEN_BLOCKS:6:LACG_INST|g_int~3_combout\ & ((!\Add|P\(27)) # ((!\Add|G\(25) & !\Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\)))) ) ) # ( !\Add|P\(26) & ( 
-- !\Add|GEN_BLOCKS:6:LACG_INST|g_int~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001000100010001100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(27),
	datab => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~3_combout\,
	datac => \Add|ALT_INV_G\(25),
	datad => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~0_combout\,
	dataf => \Add|ALT_INV_P\(26),
	combout => \Add|block_carry_in[7]~7_combout\);

-- Location: MLABCELL_X39_Y49_N38
\Add|P[17]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(17) = ( \A[17]~input_o\ & ( !\AddnSub~input_o\ $ (\B[17]~input_o\) ) ) # ( !\A[17]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Add|P\(17));

-- Location: MLABCELL_X39_Y49_N2
\Add|GEN_BLOCKS:4:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ = ( \B[19]~input_o\ & ( (!\A[18]~input_o\ & (!\AddnSub~input_o\ & (\A[19]~input_o\))) # (\A[18]~input_o\ & ((!\B[18]~input_o\ & ((\A[19]~input_o\))) # (\B[18]~input_o\ & (!\AddnSub~input_o\)))) ) ) # ( 
-- !\B[19]~input_o\ & ( (!\A[18]~input_o\ & (\AddnSub~input_o\ & (\A[19]~input_o\))) # (\A[18]~input_o\ & ((!\B[18]~input_o\ & (\AddnSub~input_o\)) # (\B[18]~input_o\ & ((\A[19]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000111000100110000011100001101010011000000110101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_B[19]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\);

-- Location: MLABCELL_X39_Y49_N0
\Add|G[16]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(16) = ( \A[16]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[16]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|G\(16));

-- Location: MLABCELL_X39_Y49_N10
\Add|G[17]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(17) = ( \A[17]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Add|G\(17));

-- Location: MLABCELL_X39_Y49_N24
\Add|block_carry_in[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~5_combout\ = ( \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & ( \Add|G\(17) & ( !\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ ) ) ) # ( !\Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & ( \Add|G\(17) & ( 
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ ) ) ) # ( \Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & ( !\Add|G\(17) & ( (!\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & (((\Add|P\(17) & \Add|G\(16))) # (\Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\))) ) ) ) 
-- # ( !\Add|GEN_BLOCKS:4:LACG_INST|Pout~1_combout\ & ( !\Add|G\(17) & ( \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101110000000000110011001100111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(17),
	datab => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~2_combout\,
	datac => \Add|ALT_INV_G\(16),
	datad => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\,
	datae => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \Add|ALT_INV_G\(17),
	combout => \Add|block_carry_in[5]~5_combout\);

-- Location: MLABCELL_X39_Y48_N20
\Add|P[20]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(20) = ( \A[20]~input_o\ & ( !\B[20]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[20]~input_o\ & ( !\B[20]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[20]~input_o\,
	combout => \Add|P\(20));

-- Location: MLABCELL_X44_Y48_N28
\Add|GEN_BLOCKS:5:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ = ( \Add|P\(20) & ( \Add|P\(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_P\(21),
	dataf => \Add|ALT_INV_P\(20),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\);

-- Location: MLABCELL_X44_Y48_N18
\Add|GEN_BLOCKS:5:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ = ( \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & ( (\Add|P\(22) & \Add|P\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(22),
	datab => \Add|ALT_INV_P\(23),
	dataf => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\);

-- Location: LABCELL_X40_Y49_N6
\Add|P[24]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(24) = ( \A[24]~input_o\ & ( !\AddnSub~input_o\ $ (\B[24]~input_o\) ) ) # ( !\A[24]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_A[24]~input_o\,
	combout => \Add|P\(24));

-- Location: LABCELL_X40_Y49_N4
\Add|GEN_BLOCKS:6:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ = ( \Add|P\(24) & ( \Add|P\(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_P\(25),
	dataf => \Add|ALT_INV_P\(24),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X40_Y49_N36
\Add|GEN_BLOCKS:6:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & (\Add|P\(26) & \Add|P\(27)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \Add|ALT_INV_P\(26),
	datad => \Add|ALT_INV_P\(27),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\);

-- Location: MLABCELL_X39_Y49_N30
\Add|block_carry_in[7]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~8_combout\ = ( \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( (!\Add|block_carry_in[5]~14_combout\ & !\Add|block_carry_in[5]~5_combout\) ) ) ) # ( 
-- !\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( \Add|block_carry_in[6]~6_combout\ ) ) ) # ( \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( !\Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( 
-- \Add|block_carry_in[7]~7_combout\ ) ) ) # ( !\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ( !\Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ( \Add|block_carry_in[7]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100111010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[5]~14_combout\,
	datab => \Add|ALT_INV_block_carry_in[6]~6_combout\,
	datac => \Add|ALT_INV_block_carry_in[7]~7_combout\,
	datad => \Add|ALT_INV_block_carry_in[5]~5_combout\,
	datae => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~combout\,
	combout => \Add|block_carry_in[7]~8_combout\);

-- Location: IOIBUF_X33_Y56_N63
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LABCELL_X40_Y46_N0
\Add|G[28]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(28) = ( \B[28]~input_o\ & ( (!\AddnSub~input_o\ & \A[28]~input_o\) ) ) # ( !\B[28]~input_o\ & ( (\AddnSub~input_o\ & \A[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Add|G\(28));

-- Location: IOIBUF_X59_Y37_N94
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LABCELL_X40_Y46_N36
\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ = ( \AddnSub~input_o\ & ( \B[29]~input_o\ & ( (!\A[30]~input_o\ & (\A[29]~input_o\ & (\Add|G\(28) & !\B[30]~input_o\))) # (\A[30]~input_o\ & ((!\B[30]~input_o\) # ((\A[29]~input_o\ & \Add|G\(28))))) ) ) ) # ( 
-- !\AddnSub~input_o\ & ( \B[29]~input_o\ & ( (!\A[30]~input_o\ & (\B[30]~input_o\ & ((\Add|G\(28)) # (\A[29]~input_o\)))) # (\A[30]~input_o\ & (((\B[30]~input_o\) # (\Add|G\(28))) # (\A[29]~input_o\))) ) ) ) # ( \AddnSub~input_o\ & ( !\B[29]~input_o\ & ( 
-- (!\A[30]~input_o\ & (!\B[30]~input_o\ & ((\Add|G\(28)) # (\A[29]~input_o\)))) # (\A[30]~input_o\ & (((!\B[30]~input_o\) # (\Add|G\(28))) # (\A[29]~input_o\))) ) ) ) # ( !\AddnSub~input_o\ & ( !\B[29]~input_o\ & ( (!\A[30]~input_o\ & (\A[29]~input_o\ & 
-- (\Add|G\(28) & \B[30]~input_o\))) # (\A[30]~input_o\ & (((\A[29]~input_o\ & \Add|G\(28))) # (\B[30]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111011111110001001100010011011111110011011100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \Add|ALT_INV_G\(28),
	datad => \ALT_INV_B[30]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\);

-- Location: MLABCELL_X44_Y49_N26
\Add|P[30]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(30) = ( \B[30]~input_o\ & ( !\A[30]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[30]~input_o\ & ( !\A[30]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \Add|P\(30));

-- Location: LABCELL_X40_Y46_N34
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ & ( \Add|P\(30) & ( (!\B_adder[31]~0_combout\) # (!\A[31]~input_o\) ) ) ) # ( !\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ & ( \Add|P\(30) & ( (!\B_adder[31]~0_combout\ & ((!\A[31]~input_o\) 
-- # ((\Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\ & !\Add|block_carry_in[7]~8_combout\)))) # (\B_adder[31]~0_combout\ & (!\A[31]~input_o\ & (\Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\ & !\Add|block_carry_in[7]~8_combout\))) ) ) ) # ( 
-- \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ & ( !\Add|P\(30) & ( (!\B_adder[31]~0_combout\) # (!\A[31]~input_o\) ) ) ) # ( !\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ & ( !\Add|P\(30) & ( (!\B_adder[31]~0_combout\ & !\A[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000111011101110111010001110100010001110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B_adder[31]~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C~0_combout\,
	datad => \Add|ALT_INV_block_carry_in[7]~8_combout\,
	datae => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~2_combout\,
	dataf => \Add|ALT_INV_P\(30),
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X38_Y56_N94
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X43_Y48_N8
\Y_R[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[0]~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R[0]~0_combout\);

-- Location: MLABCELL_X42_Y46_N0
\Shift|rl4[22]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~2_combout\ = (!\B[1]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[22]~2_combout\);

-- Location: LABCELL_X43_Y48_N12
\Shift|Y_RL[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[31]~0_combout\ = ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Shift|Y_RL[31]~0_combout\);

-- Location: MLABCELL_X42_Y48_N14
\Y_ShiftOrArith[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = ( \A[0]~input_o\ & ( (!\B[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Shift|rl4[22]~2_combout\ & \Shift|Y_RL[31]~0_combout\)))) ) ) # ( !\A[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010001000100011001000100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Shift|ALT_INV_rl4[22]~2_combout\,
	datad => \Shift|ALT_INV_Y_RL[31]~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: LABCELL_X40_Y45_N22
\Shift|rl2[24]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~7_combout\ = ( \A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[26]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\B[1]~input_o\ & (\A[26]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[27]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[26]~input_o\)))) # (\B[0]~input_o\ & (\B[1]~input_o\ & 
-- ((\A[27]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[25]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[26]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shift|rl2[24]~7_combout\);

-- Location: MLABCELL_X46_Y46_N22
\Shift|rl2[16]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~6_combout\ = ( \B[1]~input_o\ & ( \A[19]~input_o\ & ( (\A[18]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & \A[18]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[17]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|rl2[16]~6_combout\);

-- Location: MLABCELL_X39_Y45_N22
\Shift|rl2[20]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~4_combout\ = ( \B[0]~input_o\ & ( \A[23]~input_o\ & ( (\A[21]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & \A[21]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|rl2[20]~4_combout\);

-- Location: MLABCELL_X44_Y46_N22
\Shift|rl2[28]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~5_combout\ = ( \B[0]~input_o\ & ( \A[29]~input_o\ & ( (!\B[1]~input_o\) # (\A[31]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[29]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[29]~input_o\ & ( (\B[1]~input_o\ & \A[31]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[29]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[30]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000001010000010100010001101110111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Shift|rl2[28]~5_combout\);

-- Location: MLABCELL_X42_Y48_N28
\Shift|rl4[16]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[16]~1_combout\ = ( \Shift|rl2[28]~5_combout\ & ( \B[2]~input_o\ & ( (\Shift|rl2[20]~4_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|rl2[28]~5_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|rl2[20]~4_combout\) ) ) ) # ( 
-- \Shift|rl2[28]~5_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[16]~6_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[24]~7_combout\)) ) ) ) # ( !\Shift|rl2[28]~5_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|rl2[16]~6_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[24]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[24]~7_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[16]~6_combout\,
	datad => \Shift|ALT_INV_rl2[20]~4_combout\,
	datae => \Shift|ALT_INV_rl2[28]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[16]~1_combout\);

-- Location: IOIBUF_X33_Y56_N32
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LABCELL_X45_Y49_N2
\Shift|rl2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[0]~0_combout\ = ( \A[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[3]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\A[0]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[3]~input_o\)))) ) ) ) # ( \A[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & 
-- \A[3]~input_o\)))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[0]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001010100010111101110000011101010111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Shift|rl2[0]~0_combout\);

-- Location: LABCELL_X43_Y47_N22
\Shift|rl2[12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~3_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ 
-- & (\A[15]~input_o\)) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[12]~3_combout\);

-- Location: LABCELL_X45_Y46_N20
\Shift|rl2[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~1_combout\ = ( \A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[5]~input_o\))) # (\B[1]~input_o\ & (((\A[6]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((!\B[0]~input_o\)) # (\A[5]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[6]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((\A[6]~input_o\) # 
-- (\B[0]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001110011011111000100111101001100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Shift|rl2[4]~1_combout\);

-- Location: LABCELL_X45_Y46_N26
\Shift|rl2[8]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~2_combout\ = ( \A[9]~input_o\ & ( \A[11]~input_o\ & ( ((!\B[1]~input_o\ & (\A[8]~input_o\)) # (\B[1]~input_o\ & ((\A[10]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[8]~input_o\)) # (\B[1]~input_o\ & ((\A[10]~input_o\))))) # (\B[0]~input_o\ & (\B[1]~input_o\)) ) ) ) # ( \A[9]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[8]~input_o\)) # (\B[1]~input_o\ & ((\A[10]~input_o\))))) # 
-- (\B[0]~input_o\ & (!\B[1]~input_o\)) ) ) ) # ( !\A[9]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[8]~input_o\)) # (\B[1]~input_o\ & ((\A[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|rl2[8]~2_combout\);

-- Location: MLABCELL_X42_Y48_N26
\Shift|rl4[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[0]~0_combout\ = ( \Shift|rl2[8]~2_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[4]~1_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|rl2[4]~1_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) ) # ( \Shift|rl2[8]~2_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|rl2[0]~0_combout\) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( !\B[2]~input_o\ & ( 
-- (\Shift|rl2[0]~0_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[0]~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[12]~3_combout\,
	datad => \Shift|ALT_INV_rl2[4]~1_combout\,
	datae => \Shift|ALT_INV_rl2[8]~2_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[0]~0_combout\);

-- Location: MLABCELL_X42_Y48_N20
\Y_ShiftOrArith[0]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~7_combout\ = ( !\B[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[0]~0_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\B[5]~input_o\ & ((\Shift|rl4[0]~0_combout\))) # (\B[5]~input_o\ & (\Y_R[0]~0_combout\))))) ) ) # ( 
-- \B[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[0]~0_combout\)))) # (\ShiftFN[1]~input_o\ & (((!\B[5]~input_o\ & ((\Shift|rl4[16]~1_combout\))) # (\B[5]~input_o\ & (\Y_R[0]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100001111001100110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[0]~0_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[0]~0_combout\,
	datac => \Shift|ALT_INV_rl4[16]~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	datag => \Shift|ALT_INV_rl4[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~7_combout\);

-- Location: LABCELL_X40_Y46_N12
\Add|GEN_BLOCKS:7:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ = ( \B[30]~input_o\ & ( (!\B[31]~input_o\ & (\A[31]~input_o\ & ((\A[30]~input_o\) # (\AddnSub~input_o\)))) # (\B[31]~input_o\ & (!\AddnSub~input_o\ & ((\A[31]~input_o\) # (\A[30]~input_o\)))) ) ) # ( 
-- !\B[30]~input_o\ & ( (!\B[31]~input_o\ & (\AddnSub~input_o\ & ((\A[31]~input_o\) # (\A[30]~input_o\)))) # (\B[31]~input_o\ & (\A[31]~input_o\ & ((!\AddnSub~input_o\) # (\A[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001100111000000100110011100000100011011100000010001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X40_Y46_N28
\Add|P[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(31) = ( \B_adder[31]~0_combout\ & ( !\A[31]~input_o\ ) ) # ( !\B_adder[31]~0_combout\ & ( \A[31]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B_adder[31]~0_combout\,
	combout => \Add|P\(31));

-- Location: LABCELL_X40_Y46_N30
\Add|G[29]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(29) = ( \B[29]~input_o\ & ( (\A[29]~input_o\ & !\AddnSub~input_o\) ) ) # ( !\B[29]~input_o\ & ( (\A[29]~input_o\ & \AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Add|G\(29));

-- Location: LABCELL_X40_Y46_N18
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( \Add|P\(30) & ( (\Add|P\(31) & (((\Add|P\(29) & \Add|G\(28))) # (\Add|G\(29)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000101010000010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(31),
	datab => \Add|ALT_INV_P\(29),
	datac => \Add|ALT_INV_G\(29),
	datad => \Add|ALT_INV_G\(28),
	dataf => \Add|ALT_INV_P\(30),
	combout => \Add|Cout~0_combout\);

-- Location: LABCELL_X40_Y46_N16
\Add|GEN_BLOCKS:7:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ = ( \Add|P\(30) & ( (\Add|P\(31) & (\Add|P\(29) & \Add|P\(28))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(31),
	datab => \Add|ALT_INV_P\(29),
	datac => \Add|ALT_INV_P\(28),
	dataf => \Add|ALT_INV_P\(30),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\);

-- Location: LABCELL_X40_Y46_N22
\Add|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~1_combout\ = ( \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ & ( !\Add|block_carry_in[7]~8_combout\ ) ) # ( !\Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ & ( (\Add|Cout~0_combout\) # (\Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[7]~8_combout\,
	datac => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int~1_combout\,
	datad => \Add|ALT_INV_Cout~0_combout\,
	dataf => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_Pout~combout\,
	combout => \Add|Cout~1_combout\);

-- Location: IOIBUF_X36_Y56_N94
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X36_Y56_N63
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: MLABCELL_X42_Y52_N2
\Logic|Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[0]~input_o\ & (!\LogicFN[0]~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (\LogicFN[0]~input_o\ & (!\B[0]~input_o\ 
-- $ (!\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: IOIBUF_X40_Y56_N94
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X55_Y56_N1
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: MLABCELL_X42_Y52_N8
\Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \FuncClass[1]~input_o\ & ( \FuncClass[0]~input_o\ & ( !\Add|Cout~1_combout\ ) ) ) # ( !\FuncClass[1]~input_o\ & ( \FuncClass[0]~input_o\ & ( \Logic|Mux31~0_combout\ ) ) ) # ( \FuncClass[1]~input_o\ & ( !\FuncClass[0]~input_o\ & ( 
-- !\AltB~0_combout\ ) ) ) # ( !\FuncClass[1]~input_o\ & ( !\FuncClass[0]~input_o\ & ( \Y_ShiftOrArith[0]~7_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101010101010101000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AltB~0_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[0]~7_combout\,
	datac => \Add|ALT_INV_Cout~1_combout\,
	datad => \Logic|ALT_INV_Mux31~0_combout\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X44_Y52_N6
\Mux29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \ShiftFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (\FuncClass[0]~input_o\ & !\LogicFN[1]~input_o\)) ) ) # ( !\ShiftFN[1]~input_o\ & ( ((!\LogicFN[0]~input_o\ & (\FuncClass[0]~input_o\ & !\LogicFN[1]~input_o\))) # 
-- (\ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111001011110000111100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: MLABCELL_X44_Y52_N20
\Mux29~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = ( !\FuncClass[0]~input_o\ & ( ((!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\B[4]~input_o\) # (\B[5]~input_o\))))) ) ) # ( \FuncClass[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # ((!\ShiftFN[0]~input_o\ 
-- & (!\ShiftFN[1]~input_o\))))) # (\LogicFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1100111100000000111011001010000011111111000000001110110010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	datag => \ALT_INV_B[5]~input_o\,
	combout => \Mux29~10_combout\);

-- Location: MLABCELL_X42_Y52_N34
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = ( \B[1]~input_o\ & ( !\A[1]~input_o\ $ (((\B[0]~input_o\ & (!\AddnSub~input_o\ $ (!\A[0]~input_o\))))) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ $ (((!\B[0]~input_o\) # (!\AddnSub~input_o\ $ (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100011001101100110001111001001100111001100100110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Add|S\(1));

-- Location: MLABCELL_X46_Y46_N34
\Shift|rl2[17]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~13_combout\ = ( \A[17]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[18]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[18]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\)))) ) ) ) # ( \A[17]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[18]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\)))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[19]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[18]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011110001000100000101101110111010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|rl2[17]~13_combout\);

-- Location: MLABCELL_X39_Y45_N6
\Shift|rl2[21]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~12_combout\ = ( \A[24]~input_o\ & ( \A[23]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[21]~input_o\))) # (\B[0]~input_o\ & (\A[22]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & ((\A[21]~input_o\))) # (\B[0]~input_o\ & (\A[22]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[21]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[22]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[21]~input_o\))) # (\B[0]~input_o\ & (\A[22]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|rl2[21]~12_combout\);

-- Location: MLABCELL_X42_Y46_N16
\Shift|rl3[17]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[17]~2_combout\ = ( \Shift|rl2[21]~12_combout\ & ( (\Shift|rl2[17]~13_combout\) # (\B[2]~input_o\) ) ) # ( !\Shift|rl2[21]~12_combout\ & ( (!\B[2]~input_o\ & \Shift|rl2[17]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[17]~13_combout\,
	dataf => \Shift|ALT_INV_rl2[21]~12_combout\,
	combout => \Shift|rl3[17]~2_combout\);

-- Location: MLABCELL_X42_Y46_N22
\Shift|ra3[29]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[29]~0_combout\ = ( \A[29]~input_o\ & ( (!\B[0]~input_o\) # (\A[30]~input_o\) ) ) # ( !\A[29]~input_o\ & ( (\A[30]~input_o\ & \B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Shift|ra3[29]~0_combout\);

-- Location: LABCELL_X40_Y45_N26
\Shift|rl2[25]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~11_combout\ = ( \A[28]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[26]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[27]~input_o\))) ) ) ) # ( !\A[28]~input_o\ & ( \A[25]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[26]~input_o\)))) # (\B[1]~input_o\ & (\A[27]~input_o\ & ((!\B[0]~input_o\)))) ) ) ) # ( \A[28]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & (((\A[26]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\B[0]~input_o\)) # (\A[27]~input_o\))) ) ) ) # ( !\A[28]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & (((\A[26]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[27]~input_o\ & ((!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100000100010011111111011101000011001101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shift|rl2[25]~11_combout\);

-- Location: MLABCELL_X42_Y46_N18
\Shift|ra3[25]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[25]~1_combout\ = ( \A[31]~input_o\ & ( (!\B[2]~input_o\ & (((\Shift|rl2[25]~11_combout\)))) # (\B[2]~input_o\ & (((\B[1]~input_o\)) # (\Shift|ra3[29]~0_combout\))) ) ) # ( !\A[31]~input_o\ & ( (!\B[2]~input_o\ & 
-- (((\Shift|rl2[25]~11_combout\)))) # (\B[2]~input_o\ & (\Shift|ra3[29]~0_combout\ & ((!\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100001010000110110000101000011011010111110001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ra3[29]~0_combout\,
	datac => \Shift|ALT_INV_rl2[25]~11_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ra3[25]~1_combout\);

-- Location: LABCELL_X43_Y46_N20
\Shift|ra4[17]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[17]~0_combout\ = ( \Shift|ra3[25]~1_combout\ & ( (\B[3]~input_o\) # (\Shift|rl3[17]~2_combout\) ) ) # ( !\Shift|ra3[25]~1_combout\ & ( (\Shift|rl3[17]~2_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[17]~2_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ra3[25]~1_combout\,
	combout => \Shift|ra4[17]~0_combout\);

-- Location: MLABCELL_X42_Y46_N30
\Shift|rl3[29]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[29]~0_combout\ = ( \A[31]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[29]~input_o\)))) # (\B[0]~input_o\ & (\A[30]~input_o\ & ((!\B[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[29]~input_o\))) # (\B[0]~input_o\ & (\A[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100000000001101010000000000110101111100000011010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[30]~input_o\,
	datab => \ALT_INV_A[29]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|rl3[29]~0_combout\);

-- Location: MLABCELL_X42_Y46_N32
\Shift|rl3[25]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[25]~1_combout\ = ( \Shift|rl2[25]~11_combout\ & ( (!\B[2]~input_o\) # (\Shift|rl3[29]~0_combout\) ) ) # ( !\Shift|rl2[25]~11_combout\ & ( (\Shift|rl3[29]~0_combout\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl3[29]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[25]~11_combout\,
	combout => \Shift|rl3[25]~1_combout\);

-- Location: LABCELL_X43_Y46_N22
\Shift|rl4[17]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~3_combout\ = ( \Shift|rl3[25]~1_combout\ & ( (\B[3]~input_o\) # (\Shift|rl3[17]~2_combout\) ) ) # ( !\Shift|rl3[25]~1_combout\ & ( (\Shift|rl3[17]~2_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[17]~2_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl3[25]~1_combout\,
	combout => \Shift|rl4[17]~3_combout\);

-- Location: MLABCELL_X42_Y47_N2
\Mux29~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \B[4]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	combout => \Mux29~1_combout\);

-- Location: MLABCELL_X42_Y47_N24
\Mux29~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( !\Mux29~1_combout\ & ( !\B[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_Mux29~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: MLABCELL_X42_Y47_N26
\Mux29~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (!\B[5]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \Mux29~3_combout\);

-- Location: LABCELL_X45_Y46_N10
\Shift|rl2[9]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~9_combout\ = ( \A[9]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[10]~input_o\))) # (\B[1]~input_o\ & (\A[12]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\)) 
-- # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[10]~input_o\))) # (\B[1]~input_o\ & (\A[12]~input_o\)))) ) ) ) # ( \A[9]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\)) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[10]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[12]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( !\A[11]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[10]~input_o\))) # (\B[1]~input_o\ & (\A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|rl2[9]~9_combout\);

-- Location: MLABCELL_X42_Y46_N26
\Shift|rl2[13]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~10_combout\ = ( \A[15]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\))) ) ) ) # ( !\A[15]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\)))) ) ) ) # ( \A[15]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( !\A[13]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[14]~input_o\))) # (\B[1]~input_o\ & (\A[16]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000111101110111001111000100011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|rl2[13]~10_combout\);

-- Location: LABCELL_X45_Y49_N8
\Mux30~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[4]~input_o\))) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (\A[2]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X46_Y46_N24
\Shift|rl2[5]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~8_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[5]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[8]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((\B[0]~input_o\)) # (\A[5]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[8]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # 
-- (\A[8]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101011100000111010100101010001011110111101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|rl2[5]~8_combout\);

-- Location: MLABCELL_X46_Y46_N8
\Mux30~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[5]~8_combout\ & ( (!\B[3]~input_o\) # (\Shift|rl2[13]~10_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[5]~8_combout\ & ( (!\B[3]~input_o\ & ((\Mux30~0_combout\))) # (\B[3]~input_o\ & 
-- (\Shift|rl2[9]~9_combout\)) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|rl2[5]~8_combout\ & ( (\B[3]~input_o\ & \Shift|rl2[13]~10_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|rl2[5]~8_combout\ & ( (!\B[3]~input_o\ & ((\Mux30~0_combout\))) # (\B[3]~input_o\ & 
-- (\Shift|rl2[9]~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[9]~9_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[13]~10_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[5]~8_combout\,
	combout => \Mux30~1_combout\);

-- Location: LABCELL_X43_Y46_N26
\Mux30~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \Y_R[0]~0_combout\ & ( \Mux30~1_combout\ & ( (!\Mux29~3_combout\) # ((!\Mux29~2_combout\ & ((\Shift|rl4[17]~3_combout\))) # (\Mux29~2_combout\ & (\Shift|ra4[17]~0_combout\))) ) ) ) # ( !\Y_R[0]~0_combout\ & ( \Mux30~1_combout\ & ( 
-- (!\Mux29~2_combout\ & (((\Shift|rl4[17]~3_combout\ & \Mux29~3_combout\)))) # (\Mux29~2_combout\ & (((!\Mux29~3_combout\)) # (\Shift|ra4[17]~0_combout\))) ) ) ) # ( \Y_R[0]~0_combout\ & ( !\Mux30~1_combout\ & ( (!\Mux29~2_combout\ & (((!\Mux29~3_combout\) 
-- # (\Shift|rl4[17]~3_combout\)))) # (\Mux29~2_combout\ & (\Shift|ra4[17]~0_combout\ & ((\Mux29~3_combout\)))) ) ) ) # ( !\Y_R[0]~0_combout\ & ( !\Mux30~1_combout\ & ( (\Mux29~3_combout\ & ((!\Mux29~2_combout\ & ((\Shift|rl4[17]~3_combout\))) # 
-- (\Mux29~2_combout\ & (\Shift|ra4[17]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101111100000011010100001111001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[17]~0_combout\,
	datab => \Shift|ALT_INV_rl4[17]~3_combout\,
	datac => \ALT_INV_Mux29~2_combout\,
	datad => \ALT_INV_Mux29~3_combout\,
	datae => \ALT_INV_Y_R[0]~0_combout\,
	dataf => \ALT_INV_Mux30~1_combout\,
	combout => \Mux30~2_combout\);

-- Location: MLABCELL_X42_Y52_N32
\Shift|ll4[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[1]~0_combout\ = ( !\B[3]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & ((!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111000000000010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \Shift|ALT_INV_rl4[22]~2_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[1]~0_combout\);

-- Location: MLABCELL_X42_Y52_N18
\Mux30~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = ( \Shift|ll4[1]~0_combout\ & ( (!\Mux29~0_combout\ & ((!\Mux29~10_combout\ & ((\Mux30~2_combout\))) # (\Mux29~10_combout\ & (\Add|S\(1))))) # (\Mux29~0_combout\ & (!\Mux29~10_combout\)) ) ) # ( !\Shift|ll4[1]~0_combout\ & ( 
-- (!\Mux29~0_combout\ & ((!\Mux29~10_combout\ & ((\Mux30~2_combout\))) # (\Mux29~10_combout\ & (\Add|S\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_Mux29~10_combout\,
	datac => \Add|ALT_INV_S\(1),
	datad => \ALT_INV_Mux30~2_combout\,
	dataf => \Shift|ALT_INV_ll4[1]~0_combout\,
	combout => \Mux30~3_combout\);

-- Location: MLABCELL_X42_Y52_N22
\Mux30~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = ( \Mux30~3_combout\ & ( \LogicFN[1]~input_o\ & ( (!\FuncClass[0]~input_o\) # ((!\LogicFN[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\))) ) ) ) # ( !\Mux30~3_combout\ & 
-- ( \LogicFN[1]~input_o\ & ( (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\B[1]~input_o\) # (\A[1]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[1]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \Mux30~3_combout\ & ( !\LogicFN[1]~input_o\ & ( 
-- (!\FuncClass[0]~input_o\) # ((!\LogicFN[0]~input_o\) # (!\A[1]~input_o\ $ (!\B[1]~input_o\))) ) ) ) # ( !\Mux30~3_combout\ & ( !\LogicFN[1]~input_o\ & ( (\FuncClass[0]~input_o\ & (\LogicFN[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000111011111111111000000100010001011010111011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_Mux30~3_combout\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: MLABCELL_X42_Y52_N0
\Mux30~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux30~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Mux30~4_combout\,
	combout => \Mux30~5_combout\);

-- Location: MLABCELL_X42_Y52_N24
\Shift|ll2[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~0_combout\ = ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[0]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[2]~0_combout\);

-- Location: MLABCELL_X39_Y45_N8
\Shift|rl2[22]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~18_combout\ = ( \A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[22]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[25]~input_o\))) ) ) ) # ( !\A[24]~input_o\ & ( \A[23]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[22]~input_o\)))) # (\B[1]~input_o\ & (\A[25]~input_o\ & ((\B[0]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & (((\A[22]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)) # (\A[25]~input_o\))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & (((\A[22]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[25]~input_o\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001111110000010100110000111101010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|rl2[22]~18_combout\);

-- Location: MLABCELL_X39_Y45_N12
\Shift|rl2[18]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~19_combout\ = ( \B[1]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[19]~input_o\ & ( (\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ & (\A[21]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[19]~input_o\ & ( (\A[18]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|rl2[18]~19_combout\);

-- Location: MLABCELL_X42_Y45_N24
\Shift|rl3[18]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[18]~4_combout\ = ( \Shift|rl2[18]~19_combout\ & ( (!\B[2]~input_o\) # (\Shift|rl2[22]~18_combout\) ) ) # ( !\Shift|rl2[18]~19_combout\ & ( (\Shift|rl2[22]~18_combout\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[22]~18_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[18]~19_combout\,
	combout => \Shift|rl3[18]~4_combout\);

-- Location: LABCELL_X40_Y45_N30
\Shift|rl2[26]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~17_combout\ = ( \A[29]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \B[0]~input_o\ & ( (\A[27]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[29]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[26]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[26]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[26]~17_combout\);

-- Location: MLABCELL_X42_Y45_N2
\Shift|rl3[26]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[26]~3_combout\ = ( \B[0]~input_o\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \A[31]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & \A[30]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\B[2]~input_o\ & ( 
-- \Shift|rl2[26]~17_combout\ ) ) ) # ( !\B[0]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[26]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100010001000100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_rl2[26]~17_combout\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[26]~3_combout\);

-- Location: MLABCELL_X42_Y45_N30
\Shift|rl4[18]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~4_combout\ = ( \Shift|rl3[26]~3_combout\ & ( (\Shift|rl3[18]~4_combout\) # (\B[3]~input_o\) ) ) # ( !\Shift|rl3[26]~3_combout\ & ( (!\B[3]~input_o\ & \Shift|rl3[18]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl3[18]~4_combout\,
	dataf => \Shift|ALT_INV_rl3[26]~3_combout\,
	combout => \Shift|rl4[18]~4_combout\);

-- Location: MLABCELL_X42_Y45_N12
\Shift|ra3[26]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[26]~2_combout\ = ( \B[0]~input_o\ & ( \B[2]~input_o\ & ( \A[31]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( \B[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A[31]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\B[2]~input_o\ & ( \Shift|rl2[26]~17_combout\ ) ) ) # ( !\B[0]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[26]~17_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010011101110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \Shift|ALT_INV_rl2[26]~17_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ra3[26]~2_combout\);

-- Location: MLABCELL_X42_Y45_N28
\Shift|ra4[18]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[18]~1_combout\ = (!\B[3]~input_o\ & (\Shift|rl3[18]~4_combout\)) # (\B[3]~input_o\ & ((\Shift|ra3[26]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[18]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ra3[26]~2_combout\,
	combout => \Shift|ra4[18]~1_combout\);

-- Location: LABCELL_X45_Y46_N14
\Shift|rl2[6]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~14_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[6]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((\A[6]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[6]~input_o\)))) # (\B[1]~input_o\ & (\A[9]~input_o\ & 
-- ((\B[0]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\A[6]~input_o\ & !\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[9]~input_o\ & ((\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001000011001101110100111111000100010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|rl2[6]~14_combout\);

-- Location: LABCELL_X43_Y47_N6
\Shift|rl2[10]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~15_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (((\A[10]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( 
-- (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[10]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[13]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (((\A[10]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & 
-- (\B[1]~input_o\ & ((\A[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[10]~input_o\))) # (\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|rl2[10]~15_combout\);

-- Location: MLABCELL_X46_Y46_N36
\Mux29~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = ( \B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[3]~input_o\ & ( (\A[2]~input_o\) # (\B[0]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & \A[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000001101010011010100001111111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: LABCELL_X43_Y47_N8
\Shift|rl2[14]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~16_combout\ = ( \A[17]~input_o\ & ( \A[14]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[16]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[15]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[16]~input_o\)))) # (\B[0]~input_o\ & (\A[15]~input_o\ & ((!\B[1]~input_o\)))) ) ) ) # ( \A[17]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\A[16]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A[15]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (((\A[16]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[15]~input_o\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|rl2[14]~16_combout\);

-- Location: MLABCELL_X42_Y47_N10
\Mux29~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[14]~16_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[6]~14_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[10]~15_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Mux29~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[6]~14_combout\,
	datab => \Shift|ALT_INV_rl2[10]~15_combout\,
	datac => \ALT_INV_Mux29~4_combout\,
	datad => \Shift|ALT_INV_rl2[14]~16_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux29~5_combout\);

-- Location: LABCELL_X43_Y46_N30
\Mux29~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = ( \Y_R[0]~0_combout\ & ( \Mux29~3_combout\ & ( (!\Mux29~2_combout\ & (\Shift|rl4[18]~4_combout\)) # (\Mux29~2_combout\ & ((\Shift|ra4[18]~1_combout\))) ) ) ) # ( !\Y_R[0]~0_combout\ & ( \Mux29~3_combout\ & ( (!\Mux29~2_combout\ & 
-- (\Shift|rl4[18]~4_combout\)) # (\Mux29~2_combout\ & ((\Shift|ra4[18]~1_combout\))) ) ) ) # ( \Y_R[0]~0_combout\ & ( !\Mux29~3_combout\ & ( (!\Mux29~2_combout\) # (\Mux29~5_combout\) ) ) ) # ( !\Y_R[0]~0_combout\ & ( !\Mux29~3_combout\ & ( 
-- (\Mux29~2_combout\ & \Mux29~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011110011001111111101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[18]~4_combout\,
	datab => \ALT_INV_Mux29~2_combout\,
	datac => \Shift|ALT_INV_ra4[18]~1_combout\,
	datad => \ALT_INV_Mux29~5_combout\,
	datae => \ALT_INV_Y_R[0]~0_combout\,
	dataf => \ALT_INV_Mux29~3_combout\,
	combout => \Mux29~6_combout\);

-- Location: MLABCELL_X42_Y52_N6
\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ = ( \B[1]~input_o\ & ( (!\A[0]~input_o\ & (((\A[1]~input_o\ & !\AddnSub~input_o\)))) # (\A[0]~input_o\ & ((!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((!\AddnSub~input_o\))))) ) ) # ( 
-- !\B[1]~input_o\ & ( (!\A[0]~input_o\ & (((\A[1]~input_o\ & \AddnSub~input_o\)))) # (\A[0]~input_o\ & ((!\B[0]~input_o\ & ((\AddnSub~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100011011000000110001101100110000011100100011000001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\);

-- Location: MLABCELL_X42_Y52_N28
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ & ( !\AddnSub~input_o\ $ (!\B[2]~input_o\ $ (!\A[2]~input_o\)) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\AddnSub~input_o\ & 
-- !\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100100111100011010010011110010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	combout => \Add|S\(2));

-- Location: LABCELL_X38_Y49_N20
\Mux20~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\B[3]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X42_Y52_N12
\Mux29~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = ( \Mux29~0_combout\ & ( \Mux20~0_combout\ & ( (\Shift|ll2[2]~0_combout\ & !\Mux29~10_combout\) ) ) ) # ( !\Mux29~0_combout\ & ( \Mux20~0_combout\ & ( (!\Mux29~10_combout\ & (\Mux29~6_combout\)) # (\Mux29~10_combout\ & ((\Add|S\(2)))) ) 
-- ) ) # ( !\Mux29~0_combout\ & ( !\Mux20~0_combout\ & ( (!\Mux29~10_combout\ & (\Mux29~6_combout\)) # (\Mux29~10_combout\ & ((\Add|S\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000000000000110011000011110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[2]~0_combout\,
	datab => \ALT_INV_Mux29~6_combout\,
	datac => \Add|ALT_INV_S\(2),
	datad => \ALT_INV_Mux29~10_combout\,
	datae => \ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux29~7_combout\);

-- Location: MLABCELL_X42_Y52_N38
\Mux29~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = ( \A[2]~input_o\ & ( \LogicFN[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux29~7_combout\)))) # (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\) # ((\B[2]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( \LogicFN[1]~input_o\ & ( 
-- (!\FuncClass[0]~input_o\ & (((\Mux29~7_combout\)))) # (\FuncClass[0]~input_o\ & (!\LogicFN[0]~input_o\ & (\B[2]~input_o\))) ) ) ) # ( \A[2]~input_o\ & ( !\LogicFN[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux29~7_combout\)))) # 
-- (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\Mux29~7_combout\))) # (\LogicFN[0]~input_o\ & (!\B[2]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\LogicFN[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux29~7_combout\)))) # (\FuncClass[0]~input_o\ 
-- & ((!\LogicFN[0]~input_o\ & ((\Mux29~7_combout\))) # (\LogicFN[0]~input_o\ & (\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000100001111111000000100101011100100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Mux29~7_combout\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux29~8_combout\);

-- Location: MLABCELL_X42_Y52_N30
\Mux29~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = ( \Mux29~8_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux29~8_combout\,
	combout => \Mux29~9_combout\);

-- Location: LABCELL_X45_Y49_N20
\Add|GEN_BLOCKS:0:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ = ( \A[2]~input_o\ & ( (!\AddnSub~input_o\ & (((\B[1]~input_o\ & \A[1]~input_o\)) # (\B[2]~input_o\))) # (\AddnSub~input_o\ & ((!\B[2]~input_o\) # ((!\B[1]~input_o\ & \A[1]~input_o\)))) ) ) # ( !\A[2]~input_o\ 
-- & ( (\A[1]~input_o\ & ((!\AddnSub~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)) # (\AddnSub~input_o\ & (!\B[1]~input_o\ & !\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000010000001000000001001010111101011100101011110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\);

-- Location: LABCELL_X45_Y49_N22
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ = ( \A[0]~input_o\ & ( (!\AddnSub~input_o\ & (\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\)))) # (\AddnSub~input_o\ & (!\B[1]~input_o\ $ (((\A[1]~input_o\))))) ) ) # ( !\A[0]~input_o\ & ( 
-- (\AddnSub~input_o\ & (!\B[0]~input_o\ & (!\B[1]~input_o\ $ (\A[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000010000010000000001000001000110000110010100011000011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X45_Y49_N26
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ = ( \A[2]~input_o\ & ( (\Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ & (!\AddnSub~input_o\ $ (\B[2]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (\Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ & (!\AddnSub~input_o\ $ 
-- (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X45_Y49_N24
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = ( \A[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[3]~input_o\ $ (((!\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ & !\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\)))) ) ) # ( !\A[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[3]~input_o\ $ 
-- (((\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\) # (\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100110010110011001101001011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~0_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|S\(3));

-- Location: LABCELL_X40_Y45_N14
\Shift|rl2[27]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~23_combout\ = ( \A[29]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( !\A[29]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[30]~input_o\)) ) ) ) # ( \A[29]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( !\B[0]~input_o\ & ( (\A[27]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[27]~23_combout\);

-- Location: MLABCELL_X42_Y45_N16
\Shift|rl3[27]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[27]~5_combout\ = ( \B[2]~input_o\ & ( (\A[31]~input_o\ & (!\B[1]~input_o\ & !\B[0]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[27]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[27]~23_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[27]~5_combout\);

-- Location: LABCELL_X40_Y45_N36
\Shift|rl2[23]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~24_combout\ = ( \A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))))) ) ) ) # ( \A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[23]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[25]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|rl2[23]~24_combout\);

-- Location: MLABCELL_X39_Y45_N36
\Shift|rl2[19]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~25_combout\ = ( \B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & ((\A[20]~input_o\))) # (\B[1]~input_o\ & (\A[22]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[19]~input_o\ & ( (\B[1]~input_o\ & \A[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|rl2[19]~25_combout\);

-- Location: MLABCELL_X42_Y45_N22
\Shift|rl3[19]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[19]~6_combout\ = (!\B[2]~input_o\ & ((\Shift|rl2[19]~25_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[23]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[23]~24_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[19]~25_combout\,
	combout => \Shift|rl3[19]~6_combout\);

-- Location: MLABCELL_X42_Y45_N4
\Shift|rl4[19]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~5_combout\ = (!\B[3]~input_o\ & ((\Shift|rl3[19]~6_combout\))) # (\B[3]~input_o\ & (\Shift|rl3[27]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl3[27]~5_combout\,
	datad => \Shift|ALT_INV_rl3[19]~6_combout\,
	combout => \Shift|rl4[19]~5_combout\);

-- Location: MLABCELL_X42_Y45_N18
\Shift|ra3[27]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[27]~3_combout\ = ( \B[2]~input_o\ & ( \A[31]~input_o\ ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[27]~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[27]~23_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ra3[27]~3_combout\);

-- Location: MLABCELL_X42_Y45_N6
\Shift|ra4[19]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[19]~2_combout\ = (!\B[3]~input_o\ & ((\Shift|rl3[19]~6_combout\))) # (\B[3]~input_o\ & (\Shift|ra3[27]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[27]~3_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_rl3[19]~6_combout\,
	combout => \Shift|ra4[19]~2_combout\);

-- Location: LABCELL_X45_Y46_N38
\Shift|rl2[7]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~20_combout\ = ( \A[7]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[9]~input_o\)))) # (\B[0]~input_o\ & (((\A[8]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[10]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[9]~input_o\)))) # (\B[0]~input_o\ & (((\A[8]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[9]~input_o\)))) # (\B[0]~input_o\ & 
-- (!\B[1]~input_o\ & (\A[8]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[9]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|rl2[7]~20_combout\);

-- Location: LABCELL_X43_Y47_N32
\Shift|rl2[11]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~21_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|rl2[11]~21_combout\);

-- Location: LABCELL_X45_Y49_N16
\Mux28~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \B[0]~input_o\ & ( \A[3]~input_o\ & ( (!\B[1]~input_o\ & (\A[4]~input_o\)) # (\B[1]~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[3]~input_o\ & ( (!\B[1]~input_o\) # (\A[5]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\A[3]~input_o\ & ( (!\B[1]~input_o\ & (\A[4]~input_o\)) # (\B[1]~input_o\ & ((\A[6]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[3]~input_o\ & ( (\A[5]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: MLABCELL_X46_Y46_N0
\Shift|rl2[15]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~22_combout\ = ( \B[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[15]~input_o\ & ( (\B[0]~input_o\ & \A[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|rl2[15]~22_combout\);

-- Location: LABCELL_X43_Y45_N4
\Mux28~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \Shift|rl2[15]~22_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|rl2[7]~20_combout\) ) ) ) # ( !\Shift|rl2[15]~22_combout\ & ( \B[2]~input_o\ & ( (\Shift|rl2[7]~20_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \Shift|rl2[15]~22_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Mux28~0_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[11]~21_combout\)) ) ) ) # ( !\Shift|rl2[15]~22_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Mux28~0_combout\))) # 
-- (\B[3]~input_o\ & (\Shift|rl2[11]~21_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[7]~20_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[11]~21_combout\,
	datad => \ALT_INV_Mux28~0_combout\,
	datae => \Shift|ALT_INV_rl2[15]~22_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LABCELL_X43_Y45_N28
\Mux28~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \Mux28~1_combout\ & ( \Y_R[0]~0_combout\ & ( (!\Mux29~3_combout\) # ((!\Mux29~2_combout\ & (\Shift|rl4[19]~5_combout\)) # (\Mux29~2_combout\ & ((\Shift|ra4[19]~2_combout\)))) ) ) ) # ( !\Mux28~1_combout\ & ( \Y_R[0]~0_combout\ & ( 
-- (!\Mux29~3_combout\ & (((!\Mux29~2_combout\)))) # (\Mux29~3_combout\ & ((!\Mux29~2_combout\ & (\Shift|rl4[19]~5_combout\)) # (\Mux29~2_combout\ & ((\Shift|ra4[19]~2_combout\))))) ) ) ) # ( \Mux28~1_combout\ & ( !\Y_R[0]~0_combout\ & ( (!\Mux29~3_combout\ 
-- & (((\Mux29~2_combout\)))) # (\Mux29~3_combout\ & ((!\Mux29~2_combout\ & (\Shift|rl4[19]~5_combout\)) # (\Mux29~2_combout\ & ((\Shift|ra4[19]~2_combout\))))) ) ) ) # ( !\Mux28~1_combout\ & ( !\Y_R[0]~0_combout\ & ( (\Mux29~3_combout\ & 
-- ((!\Mux29~2_combout\ & (\Shift|rl4[19]~5_combout\)) # (\Mux29~2_combout\ & ((\Shift|ra4[19]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[19]~5_combout\,
	datab => \ALT_INV_Mux29~3_combout\,
	datac => \ALT_INV_Mux29~2_combout\,
	datad => \Shift|ALT_INV_ra4[19]~2_combout\,
	datae => \ALT_INV_Mux28~1_combout\,
	dataf => \ALT_INV_Y_R[0]~0_combout\,
	combout => \Mux28~2_combout\);

-- Location: LABCELL_X45_Y49_N14
\Shift|ll2[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~1_combout\ = ( \A[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & (((\A[3]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[0]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((\A[3]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\))) ) ) ) # ( \A[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[3]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # 
-- (\A[0]~input_o\))) ) ) ) # ( !\A[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[3]~input_o\)))) # (\B[1]~input_o\ & (\A[0]~input_o\ & (\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Shift|ll2[3]~1_combout\);

-- Location: LABCELL_X38_Y49_N6
\Mux28~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = ( \Mux28~2_combout\ & ( \Shift|ll2[3]~1_combout\ & ( (!\Mux29~10_combout\ & ((!\Mux29~0_combout\) # ((\Mux20~0_combout\)))) # (\Mux29~10_combout\ & (!\Mux29~0_combout\ & (\Add|S\(3)))) ) ) ) # ( !\Mux28~2_combout\ & ( 
-- \Shift|ll2[3]~1_combout\ & ( (!\Mux29~10_combout\ & (\Mux29~0_combout\ & ((\Mux20~0_combout\)))) # (\Mux29~10_combout\ & (!\Mux29~0_combout\ & (\Add|S\(3)))) ) ) ) # ( \Mux28~2_combout\ & ( !\Shift|ll2[3]~1_combout\ & ( (!\Mux29~0_combout\ & 
-- ((!\Mux29~10_combout\) # (\Add|S\(3)))) ) ) ) # ( !\Mux28~2_combout\ & ( !\Shift|ll2[3]~1_combout\ & ( (\Mux29~10_combout\ & (!\Mux29~0_combout\ & \Add|S\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100011001000110000000100001001101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~10_combout\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \Add|ALT_INV_S\(3),
	datad => \ALT_INV_Mux20~0_combout\,
	datae => \ALT_INV_Mux28~2_combout\,
	dataf => \Shift|ALT_INV_ll2[3]~1_combout\,
	combout => \Mux28~3_combout\);

-- Location: LABCELL_X38_Y49_N10
\Mux28~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = ( \Mux28~3_combout\ & ( \FuncClass[0]~input_o\ & ( (!\B[3]~input_o\ & ((!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[3]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[3]~input_o\ & !\LogicFN[0]~input_o\)))) # (\B[3]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[3]~input_o\)))) ) ) ) # ( !\Mux28~3_combout\ & ( \FuncClass[0]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[3]~input_o\ & 
-- (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[3]~input_o\))))) ) ) ) # ( \Mux28~3_combout\ & ( !\FuncClass[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010011010010011101111101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_Mux28~3_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LABCELL_X38_Y49_N34
\Mux28~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = ( !\FuncClass[1]~input_o\ & ( \Mux28~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux28~4_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LABCELL_X45_Y49_N4
\Shift|ll2[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~2_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ll2[0]~2_combout\);

-- Location: LABCELL_X45_Y49_N28
\Shift|ll2[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~3_combout\ = ( \A[1]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[1]~input_o\ & ( \B[1]~input_o\ & ( (\A[2]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[4]~3_combout\);

-- Location: LABCELL_X40_Y47_N24
\Shift|ll4[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[4]~1_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[4]~3_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[0]~2_combout\,
	datad => \Shift|ALT_INV_ll2[4]~3_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[4]~1_combout\);

-- Location: MLABCELL_X39_Y48_N30
\Add|P[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(4) = ( \A[4]~input_o\ & ( !\AddnSub~input_o\ $ (\B[4]~input_o\) ) ) # ( !\A[4]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|P\(4));

-- Location: MLABCELL_X42_Y48_N18
\Mux27~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \Shift|rl2[8]~2_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|rl2[16]~6_combout\) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( \B[2]~input_o\ & ( (\Shift|rl2[16]~6_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \Shift|rl2[8]~2_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[4]~1_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[4]~1_combout\))) 
-- # (\B[3]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[16]~6_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[12]~3_combout\,
	datad => \Shift|ALT_INV_rl2[4]~1_combout\,
	datae => \Shift|ALT_INV_rl2[8]~2_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: MLABCELL_X42_Y48_N2
\Shift|rl3[20]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[20]~7_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[24]~7_combout\ ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[20]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[20]~4_combout\,
	datad => \Shift|ALT_INV_rl2[24]~7_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[20]~7_combout\);

-- Location: MLABCELL_X42_Y48_N4
\Shift|ra4[20]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[20]~3_combout\ = ( \Shift|rl3[20]~7_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\Shift|rl2[28]~5_combout\)) # (\B[2]~input_o\ & ((\A[31]~input_o\)))) ) ) # ( !\Shift|rl3[20]~7_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & 
-- (\Shift|rl2[28]~5_combout\)) # (\B[2]~input_o\ & ((\A[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[28]~5_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \Shift|ALT_INV_rl3[20]~7_combout\,
	combout => \Shift|ra4[20]~3_combout\);

-- Location: LABCELL_X43_Y50_N0
\Shift|rl4[20]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~6_combout\ = ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[28]~5_combout\) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[20]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[20]~7_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[28]~5_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[20]~6_combout\);

-- Location: MLABCELL_X39_Y48_N38
\Mux27~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \Shift|ra4[20]~3_combout\ & ( \Shift|rl4[20]~6_combout\ & ( ((!\Mux29~2_combout\ & ((\Y_R[0]~0_combout\))) # (\Mux29~2_combout\ & (\Mux27~0_combout\))) # (\Mux29~3_combout\) ) ) ) # ( !\Shift|ra4[20]~3_combout\ & ( 
-- \Shift|rl4[20]~6_combout\ & ( (!\Mux29~2_combout\ & (((\Y_R[0]~0_combout\)) # (\Mux29~3_combout\))) # (\Mux29~2_combout\ & (!\Mux29~3_combout\ & (\Mux27~0_combout\))) ) ) ) # ( \Shift|ra4[20]~3_combout\ & ( !\Shift|rl4[20]~6_combout\ & ( 
-- (!\Mux29~2_combout\ & (!\Mux29~3_combout\ & ((\Y_R[0]~0_combout\)))) # (\Mux29~2_combout\ & (((\Mux27~0_combout\)) # (\Mux29~3_combout\))) ) ) ) # ( !\Shift|ra4[20]~3_combout\ & ( !\Shift|rl4[20]~6_combout\ & ( (!\Mux29~3_combout\ & ((!\Mux29~2_combout\ & 
-- ((\Y_R[0]~0_combout\))) # (\Mux29~2_combout\ & (\Mux27~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~2_combout\,
	datab => \ALT_INV_Mux29~3_combout\,
	datac => \ALT_INV_Mux27~0_combout\,
	datad => \ALT_INV_Y_R[0]~0_combout\,
	datae => \Shift|ALT_INV_ra4[20]~3_combout\,
	dataf => \Shift|ALT_INV_rl4[20]~6_combout\,
	combout => \Mux27~1_combout\);

-- Location: MLABCELL_X39_Y48_N34
\Add|block_carry_in[1]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~9_combout\ = ( \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ & ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & ( !\Add|block_carry_in[1]~0_combout\ ) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ & ( 
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & ( !\Add|block_carry_in[1]~0_combout\ ) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ & ( !\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & ( !\Add|block_carry_in[1]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|ALT_INV_block_carry_in[1]~0_combout\,
	datae => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\,
	combout => \Add|block_carry_in[1]~9_combout\);

-- Location: MLABCELL_X39_Y48_N0
\Mux27~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( !\Mux29~0_combout\ & ( \Mux29~10_combout\ & ( !\Add|P\(4) $ (\Add|block_carry_in[1]~9_combout\) ) ) ) # ( \Mux29~0_combout\ & ( !\Mux29~10_combout\ & ( \Shift|ll4[4]~1_combout\ ) ) ) # ( !\Mux29~0_combout\ & ( !\Mux29~10_combout\ & ( 
-- \Mux27~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010111001100001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[4]~1_combout\,
	datab => \Add|ALT_INV_P\(4),
	datac => \ALT_INV_Mux27~1_combout\,
	datad => \Add|ALT_INV_block_carry_in[1]~9_combout\,
	datae => \ALT_INV_Mux29~0_combout\,
	dataf => \ALT_INV_Mux29~10_combout\,
	combout => \Mux27~2_combout\);

-- Location: MLABCELL_X44_Y52_N28
\Mux27~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = ( \FuncClass[0]~input_o\ & ( \B[4]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\)) # (\Mux27~2_combout\))) # (\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\ $ (\A[4]~input_o\)))) ) ) ) # ( !\FuncClass[0]~input_o\ & ( 
-- \B[4]~input_o\ & ( \Mux27~2_combout\ ) ) ) # ( \FuncClass[0]~input_o\ & ( !\B[4]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & (\Mux27~2_combout\)) # (\LogicFN[0]~input_o\ & ((\A[4]~input_o\))))) # (\LogicFN[1]~input_o\ & 
-- (((!\LogicFN[0]~input_o\ & \A[4]~input_o\)))) ) ) ) # ( !\FuncClass[0]~input_o\ & ( !\B[4]~input_o\ & ( \Mux27~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010000000111110001010101010101010111110001110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~2_combout\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: MLABCELL_X44_Y52_N4
\Mux27~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = ( \Mux27~3_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux27~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: MLABCELL_X44_Y52_N0
\Mux26~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = ( \A[5]~input_o\ & ( (\LogicFN[1]~input_o\ & (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[5]~input_o\)))) ) ) # ( !\A[5]~input_o\ & ( (\LogicFN[1]~input_o\ & (\FuncClass[0]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- \B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000010000000100010001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Mux26~5_combout\);

-- Location: MLABCELL_X42_Y52_N26
\Shift|ll2[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[1]~4_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[1]~4_combout\);

-- Location: LABCELL_X45_Y49_N34
\Shift|ll2[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~5_combout\ = ( \B[0]~input_o\ & ( \A[3]~input_o\ & ( (!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[3]~input_o\ & ( (\B[1]~input_o\) # (\A[5]~input_o\) ) ) ) # ( \B[0]~input_o\ & 
-- ( !\A[3]~input_o\ & ( (!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[3]~input_o\ & ( (\A[5]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Shift|ll2[5]~5_combout\);

-- Location: MLABCELL_X39_Y46_N20
\Shift|ll4[5]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[5]~2_combout\ = ( \B[2]~input_o\ & ( (\Shift|ll2[1]~4_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[5]~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[1]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[5]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[5]~2_combout\);

-- Location: MLABCELL_X42_Y46_N6
\Shift|rl3[21]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[21]~9_combout\ = ( \Shift|rl2[21]~12_combout\ & ( (!\B[2]~input_o\) # (\Shift|rl2[25]~11_combout\) ) ) # ( !\Shift|rl2[21]~12_combout\ & ( (\Shift|rl2[25]~11_combout\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_rl2[25]~11_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[21]~12_combout\,
	combout => \Shift|rl3[21]~9_combout\);

-- Location: MLABCELL_X42_Y46_N4
\Shift|ra3[29]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[29]~4_combout\ = (!\Shift|rl4[22]~2_combout\ & (\A[31]~input_o\)) # (\Shift|rl4[22]~2_combout\ & ((\Shift|ra3[29]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~2_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_ra3[29]~0_combout\,
	combout => \Shift|ra3[29]~4_combout\);

-- Location: LABCELL_X43_Y46_N38
\Shift|ra4[21]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[21]~4_combout\ = ( \Shift|ra3[29]~4_combout\ & ( (\Shift|rl3[21]~9_combout\) # (\B[3]~input_o\) ) ) # ( !\Shift|ra3[29]~4_combout\ & ( (!\B[3]~input_o\ & \Shift|rl3[21]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_rl3[21]~9_combout\,
	dataf => \Shift|ALT_INV_ra3[29]~4_combout\,
	combout => \Shift|ra4[21]~4_combout\);

-- Location: MLABCELL_X42_Y46_N20
\Shift|rl3[29]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[29]~8_combout\ = (\Shift|rl3[29]~0_combout\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_rl3[29]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[29]~8_combout\);

-- Location: LABCELL_X43_Y46_N14
\Shift|rl4[21]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~7_combout\ = ( \B[3]~input_o\ & ( \Shift|rl3[29]~8_combout\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[21]~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl3[29]~8_combout\,
	datad => \Shift|ALT_INV_rl3[21]~9_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[21]~7_combout\);

-- Location: MLABCELL_X46_Y46_N4
\Mux26~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[5]~8_combout\ & ( (!\B[3]~input_o\ & (\Shift|rl2[9]~9_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[17]~13_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[5]~8_combout\ & ( (!\B[3]~input_o\) # 
-- (\Shift|rl2[13]~10_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|rl2[5]~8_combout\ & ( (!\B[3]~input_o\ & (\Shift|rl2[9]~9_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[17]~13_combout\))) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|rl2[5]~8_combout\ & ( 
-- (\B[3]~input_o\ & \Shift|rl2[13]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[9]~9_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[13]~10_combout\,
	datad => \Shift|ALT_INV_rl2[17]~13_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[5]~8_combout\,
	combout => \Mux26~1_combout\);

-- Location: LABCELL_X43_Y46_N0
\Mux26~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Y_R[0]~0_combout\ & ( \Mux26~1_combout\ & ( (!\Mux29~3_combout\) # ((!\Mux29~2_combout\ & ((\Shift|rl4[21]~7_combout\))) # (\Mux29~2_combout\ & (\Shift|ra4[21]~4_combout\))) ) ) ) # ( !\Y_R[0]~0_combout\ & ( \Mux26~1_combout\ & ( 
-- (!\Mux29~3_combout\ & (((\Mux29~2_combout\)))) # (\Mux29~3_combout\ & ((!\Mux29~2_combout\ & ((\Shift|rl4[21]~7_combout\))) # (\Mux29~2_combout\ & (\Shift|ra4[21]~4_combout\)))) ) ) ) # ( \Y_R[0]~0_combout\ & ( !\Mux26~1_combout\ & ( (!\Mux29~3_combout\ & 
-- (((!\Mux29~2_combout\)))) # (\Mux29~3_combout\ & ((!\Mux29~2_combout\ & ((\Shift|rl4[21]~7_combout\))) # (\Mux29~2_combout\ & (\Shift|ra4[21]~4_combout\)))) ) ) ) # ( !\Y_R[0]~0_combout\ & ( !\Mux26~1_combout\ & ( (\Mux29~3_combout\ & ((!\Mux29~2_combout\ 
-- & ((\Shift|rl4[21]~7_combout\))) # (\Mux29~2_combout\ & (\Shift|ra4[21]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101111100110000010100000011111101011111001111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[21]~4_combout\,
	datab => \Shift|ALT_INV_rl4[21]~7_combout\,
	datac => \ALT_INV_Mux29~3_combout\,
	datad => \ALT_INV_Mux29~2_combout\,
	datae => \ALT_INV_Y_R[0]~0_combout\,
	dataf => \ALT_INV_Mux26~1_combout\,
	combout => \Mux26~2_combout\);

-- Location: LABCELL_X43_Y46_N12
\Mux26~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = ( \Mux29~0_combout\ & ( (\Shift|ll4[5]~2_combout\ & !\Mux29~10_combout\) ) ) # ( !\Mux29~0_combout\ & ( (\Mux26~2_combout\ & !\Mux29~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[5]~2_combout\,
	datac => \ALT_INV_Mux26~2_combout\,
	datad => \ALT_INV_Mux29~10_combout\,
	dataf => \ALT_INV_Mux29~0_combout\,
	combout => \Mux26~3_combout\);

-- Location: LABCELL_X43_Y52_N0
\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ = ( \B[4]~input_o\ & ( (!\AddnSub~input_o\ & ((!\Add|block_carry_in[1]~9_combout\) # (\A[4]~input_o\))) # (\AddnSub~input_o\ & (\A[4]~input_o\ & !\Add|block_carry_in[1]~9_combout\)) ) ) # ( !\B[4]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\A[4]~input_o\ & !\Add|block_carry_in[1]~9_combout\)) # (\AddnSub~input_o\ & ((!\Add|block_carry_in[1]~9_combout\) # (\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001111001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \Add|ALT_INV_block_carry_in[1]~9_combout\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\);

-- Location: MLABCELL_X44_Y52_N34
\Mux26~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \B[5]~input_o\ & ( \A[5]~input_o\ & ( (\Mux29~10_combout\ & (!\Mux29~0_combout\ & (!\AddnSub~input_o\ $ (!\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\)))) ) ) ) # ( !\B[5]~input_o\ & ( \A[5]~input_o\ & ( (\Mux29~10_combout\ & 
-- (!\Mux29~0_combout\ & (!\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\)))) ) ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ & ( (\Mux29~10_combout\ & (!\Mux29~0_combout\ & (!\AddnSub~input_o\ $ 
-- (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ & ( (\Mux29~10_combout\ & (!\Mux29~0_combout\ & (!\AddnSub~input_o\ $ (!\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001000000010000000001000001000000000100000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~10_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_Mux29~0_combout\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[1]~0_combout\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: MLABCELL_X44_Y52_N38
\Mux26~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = ( \B[5]~input_o\ & ( \A[5]~input_o\ & ( (!\Mux26~3_combout\ & ((!\Mux26~0_combout\) # ((\FuncClass[0]~input_o\ & \LogicFN[0]~input_o\)))) # (\Mux26~3_combout\ & (\FuncClass[0]~input_o\ & ((\LogicFN[0]~input_o\)))) ) ) ) # ( 
-- !\B[5]~input_o\ & ( \A[5]~input_o\ & ( (!\Mux26~3_combout\ & (!\Mux26~0_combout\ & ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\)))) ) ) ) # ( \B[5]~input_o\ & ( !\A[5]~input_o\ & ( (!\Mux26~3_combout\ & (!\Mux26~0_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\)))) ) ) ) # ( !\B[5]~input_o\ & ( !\A[5]~input_o\ & ( (!\Mux26~3_combout\ & ((!\Mux26~0_combout\) # ((\FuncClass[0]~input_o\ & \LogicFN[0]~input_o\)))) # (\Mux26~3_combout\ & (\FuncClass[0]~input_o\ & 
-- ((\LogicFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010110011101000001000000010100000100000001010000010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux26~3_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux26~0_combout\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Mux26~4_combout\);

-- Location: MLABCELL_X44_Y52_N2
\Mux26~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = ( \Mux26~4_combout\ & ( (\Mux26~5_combout\ & !\FuncClass[1]~input_o\) ) ) # ( !\Mux26~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\LogicFN[1]~input_o\) # ((!\FuncClass[0]~input_o\) # (\Mux26~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111100000000111011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux26~5_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux26~4_combout\,
	combout => \Mux26~6_combout\);

-- Location: LABCELL_X43_Y52_N20
\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = ( \A[5]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[5]~input_o\)) # (\Add|G\(4)) ) ) # ( !\A[5]~input_o\ & ( (\Add|G\(4) & (!\AddnSub~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \Add|ALT_INV_G\(4),
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X43_Y52_N8
\Add|P[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(6) = ( \AddnSub~input_o\ & ( !\B[6]~input_o\ $ (\A[6]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( !\B[6]~input_o\ $ (!\A[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|P\(6));

-- Location: LABCELL_X43_Y52_N10
\Mux25~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & ( (\Mux29~10_combout\ & (!\Add|P\(6) $ (((!\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ & \Add|block_carry_in[1]~9_combout\))))) ) ) # ( !\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & 
-- ( (\Mux29~10_combout\ & (!\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ $ (!\Add|P\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000110001000000100011000100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datab => \ALT_INV_Mux29~10_combout\,
	datac => \Add|ALT_INV_block_carry_in[1]~9_combout\,
	datad => \Add|ALT_INV_P\(6),
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Mux25~2_combout\);

-- Location: LABCELL_X45_Y49_N36
\Shift|ll2[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~6_combout\ = ( \B[0]~input_o\ & ( \A[3]~input_o\ & ( (\B[1]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[3]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( \B[0]~input_o\ & 
-- ( !\A[3]~input_o\ & ( (\A[5]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[1]~input_o\ & ((\A[6]~input_o\))) # (\B[1]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111010001000100010000000011110011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Shift|ll2[6]~6_combout\);

-- Location: MLABCELL_X44_Y49_N8
\Shift|ll4[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[6]~3_combout\ = ( \Shift|ll2[6]~6_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ll2[2]~0_combout\))) ) ) # ( !\Shift|ll2[6]~6_combout\ & ( (!\B[3]~input_o\ & (\Shift|ll2[2]~0_combout\ & \B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[2]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[6]~6_combout\,
	combout => \Shift|ll4[6]~3_combout\);

-- Location: MLABCELL_X42_Y45_N26
\Shift|rl3[22]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[22]~10_combout\ = ( \Shift|rl2[26]~17_combout\ & ( (\B[2]~input_o\) # (\Shift|rl2[22]~18_combout\) ) ) # ( !\Shift|rl2[26]~17_combout\ & ( (\Shift|rl2[22]~18_combout\ & !\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[22]~18_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[26]~17_combout\,
	combout => \Shift|rl3[22]~10_combout\);

-- Location: MLABCELL_X42_Y45_N8
\Shift|rl4[22]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~8_combout\ = ( \A[30]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & ((!\B[0]~input_o\) # (\A[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & (\A[31]~input_o\ & \B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~2_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Shift|rl4[22]~8_combout\);

-- Location: MLABCELL_X42_Y47_N16
\Shift|rl4[22]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~9_combout\ = (!\B[3]~input_o\ & (\Shift|rl3[22]~10_combout\)) # (\B[3]~input_o\ & ((\Shift|rl4[22]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[22]~10_combout\,
	datab => \Shift|ALT_INV_rl4[22]~8_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[22]~9_combout\);

-- Location: MLABCELL_X42_Y47_N32
\Mux25~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[18]~19_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|rl2[10]~15_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[14]~16_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|rl2[6]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[6]~14_combout\,
	datab => \Shift|ALT_INV_rl2[18]~19_combout\,
	datac => \Shift|ALT_INV_rl2[14]~16_combout\,
	datad => \Shift|ALT_INV_rl2[10]~15_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux25~0_combout\);

-- Location: MLABCELL_X42_Y45_N10
\Shift|ra3[30]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[30]~5_combout\ = ( \A[30]~input_o\ & ( ((\Shift|rl4[22]~2_combout\ & !\B[0]~input_o\)) # (\A[31]~input_o\) ) ) # ( !\A[30]~input_o\ & ( (\A[31]~input_o\ & ((!\Shift|rl4[22]~2_combout\) # (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001101110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~2_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Shift|ra3[30]~5_combout\);

-- Location: MLABCELL_X42_Y47_N20
\Shift|ra4[22]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[22]~5_combout\ = ( \Shift|ra3[30]~5_combout\ & ( (\B[3]~input_o\) # (\Shift|rl3[22]~10_combout\) ) ) # ( !\Shift|ra3[30]~5_combout\ & ( (\Shift|rl3[22]~10_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl3[22]~10_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ra3[30]~5_combout\,
	combout => \Shift|ra4[22]~5_combout\);

-- Location: MLABCELL_X42_Y47_N6
\Mux25~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \Y_R[0]~0_combout\ & ( \Shift|ra4[22]~5_combout\ & ( (!\Mux29~2_combout\ & ((!\Mux29~3_combout\) # ((\Shift|rl4[22]~9_combout\)))) # (\Mux29~2_combout\ & (((\Mux25~0_combout\)) # (\Mux29~3_combout\))) ) ) ) # ( !\Y_R[0]~0_combout\ & 
-- ( \Shift|ra4[22]~5_combout\ & ( (!\Mux29~2_combout\ & (\Mux29~3_combout\ & (\Shift|rl4[22]~9_combout\))) # (\Mux29~2_combout\ & (((\Mux25~0_combout\)) # (\Mux29~3_combout\))) ) ) ) # ( \Y_R[0]~0_combout\ & ( !\Shift|ra4[22]~5_combout\ & ( 
-- (!\Mux29~2_combout\ & ((!\Mux29~3_combout\) # ((\Shift|rl4[22]~9_combout\)))) # (\Mux29~2_combout\ & (!\Mux29~3_combout\ & ((\Mux25~0_combout\)))) ) ) ) # ( !\Y_R[0]~0_combout\ & ( !\Shift|ra4[22]~5_combout\ & ( (!\Mux29~2_combout\ & (\Mux29~3_combout\ & 
-- (\Shift|rl4[22]~9_combout\))) # (\Mux29~2_combout\ & (!\Mux29~3_combout\ & ((\Mux25~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~2_combout\,
	datab => \ALT_INV_Mux29~3_combout\,
	datac => \Shift|ALT_INV_rl4[22]~9_combout\,
	datad => \ALT_INV_Mux25~0_combout\,
	datae => \ALT_INV_Y_R[0]~0_combout\,
	dataf => \Shift|ALT_INV_ra4[22]~5_combout\,
	combout => \Mux25~1_combout\);

-- Location: MLABCELL_X42_Y52_N16
\Mux25~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = ( \Mux25~1_combout\ & ( (!\Mux29~0_combout\ & ((!\Mux29~10_combout\) # ((\Mux25~2_combout\)))) # (\Mux29~0_combout\ & (!\Mux29~10_combout\ & ((\Shift|ll4[6]~3_combout\)))) ) ) # ( !\Mux25~1_combout\ & ( (!\Mux29~0_combout\ & 
-- (((\Mux25~2_combout\)))) # (\Mux29~0_combout\ & (!\Mux29~10_combout\ & ((\Shift|ll4[6]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001001110000010100100111010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \ALT_INV_Mux29~10_combout\,
	datac => \ALT_INV_Mux25~2_combout\,
	datad => \Shift|ALT_INV_ll4[6]~3_combout\,
	dataf => \ALT_INV_Mux25~1_combout\,
	combout => \Mux25~3_combout\);

-- Location: MLABCELL_X39_Y52_N28
\Mux25~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = ( \B[6]~input_o\ & ( \FuncClass[0]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\)) # (\Mux25~3_combout\))) # (\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\ $ (\A[6]~input_o\)))) ) ) ) # ( !\B[6]~input_o\ & ( 
-- \FuncClass[0]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\ & (\Mux25~3_combout\)) # (\LogicFN[1]~input_o\ & ((\A[6]~input_o\))))) # (\LogicFN[0]~input_o\ & (((!\LogicFN[1]~input_o\ & \A[6]~input_o\)))) ) ) ) # ( \B[6]~input_o\ & ( 
-- !\FuncClass[0]~input_o\ & ( \Mux25~3_combout\ ) ) ) # ( !\B[6]~input_o\ & ( !\FuncClass[0]~input_o\ & ( \Mux25~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100100000011110100111101000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_Mux25~3_combout\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: MLABCELL_X39_Y52_N12
\Mux25~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = ( \Mux25~4_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux25~4_combout\,
	combout => \Mux25~5_combout\);

-- Location: MLABCELL_X44_Y52_N14
\Mux24~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = ( \B[7]~input_o\ & ( (\LogicFN[1]~input_o\ & (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[7]~input_o\)))) ) ) # ( !\B[7]~input_o\ & ( (!\LogicFN[0]~input_o\ & (\LogicFN[1]~input_o\ & (\A[7]~input_o\ & 
-- \FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000001000110000000000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LABCELL_X43_Y45_N32
\Mux24~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \Shift|rl2[15]~22_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|rl2[11]~21_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[19]~25_combout\))) ) ) ) # ( !\Shift|rl2[15]~22_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|rl2[11]~21_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[19]~25_combout\))) ) ) ) # ( \Shift|rl2[15]~22_combout\ & ( !\B[2]~input_o\ & ( (\Shift|rl2[7]~20_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|rl2[15]~22_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & \Shift|rl2[7]~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[11]~21_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[7]~20_combout\,
	datad => \Shift|ALT_INV_rl2[19]~25_combout\,
	datae => \Shift|ALT_INV_rl2[15]~22_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: MLABCELL_X42_Y45_N20
\Shift|rl3[23]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[23]~11_combout\ = (!\B[2]~input_o\ & (\Shift|rl2[23]~24_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[27]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[23]~24_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[27]~23_combout\,
	combout => \Shift|rl3[23]~11_combout\);

-- Location: MLABCELL_X42_Y46_N2
\Shift|Y_RL[31]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[31]~1_combout\ = ( \A[31]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & !\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~2_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|Y_RL[31]~1_combout\);

-- Location: LABCELL_X43_Y45_N16
\Shift|rl4[23]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~10_combout\ = ( \Shift|Y_RL[31]~1_combout\ & ( (\B[3]~input_o\) # (\Shift|rl3[23]~11_combout\) ) ) # ( !\Shift|Y_RL[31]~1_combout\ & ( (\Shift|rl3[23]~11_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[23]~11_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_Y_RL[31]~1_combout\,
	combout => \Shift|rl4[23]~10_combout\);

-- Location: LABCELL_X43_Y45_N18
\Shift|ra4[23]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[23]~6_combout\ = ( \A[31]~input_o\ & ( (\B[3]~input_o\) # (\Shift|rl3[23]~11_combout\) ) ) # ( !\A[31]~input_o\ & ( (\Shift|rl3[23]~11_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[23]~11_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ra4[23]~6_combout\);

-- Location: LABCELL_X43_Y45_N22
\Mux24~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \Shift|ra4[23]~6_combout\ & ( \Y_R[0]~0_combout\ & ( (!\Mux29~3_combout\ & (((!\Mux29~2_combout\)) # (\Mux24~1_combout\))) # (\Mux29~3_combout\ & (((\Mux29~2_combout\) # (\Shift|rl4[23]~10_combout\)))) ) ) ) # ( 
-- !\Shift|ra4[23]~6_combout\ & ( \Y_R[0]~0_combout\ & ( (!\Mux29~3_combout\ & (((!\Mux29~2_combout\)) # (\Mux24~1_combout\))) # (\Mux29~3_combout\ & (((\Shift|rl4[23]~10_combout\ & !\Mux29~2_combout\)))) ) ) ) # ( \Shift|ra4[23]~6_combout\ & ( 
-- !\Y_R[0]~0_combout\ & ( (!\Mux29~3_combout\ & (\Mux24~1_combout\ & ((\Mux29~2_combout\)))) # (\Mux29~3_combout\ & (((\Mux29~2_combout\) # (\Shift|rl4[23]~10_combout\)))) ) ) ) # ( !\Shift|ra4[23]~6_combout\ & ( !\Y_R[0]~0_combout\ & ( (!\Mux29~3_combout\ 
-- & (\Mux24~1_combout\ & ((\Mux29~2_combout\)))) # (\Mux29~3_combout\ & (((\Shift|rl4[23]~10_combout\ & !\Mux29~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110111011111001111010001001100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux24~1_combout\,
	datab => \ALT_INV_Mux29~3_combout\,
	datac => \Shift|ALT_INV_rl4[23]~10_combout\,
	datad => \ALT_INV_Mux29~2_combout\,
	datae => \Shift|ALT_INV_ra4[23]~6_combout\,
	dataf => \ALT_INV_Y_R[0]~0_combout\,
	combout => \Mux24~2_combout\);

-- Location: LABCELL_X45_Y46_N0
\Shift|ll2[7]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~7_combout\ = ( \A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[6]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[5]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[4]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((\B[0]~input_o\ & \A[6]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[5]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[6]~input_o\)))) # (\B[1]~input_o\ & (\A[5]~input_o\ & 
-- (!\B[0]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[4]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[6]~input_o\)))) # (\B[1]~input_o\ & (\A[5]~input_o\ & (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Shift|ll2[7]~7_combout\);

-- Location: MLABCELL_X44_Y46_N6
\Shift|ll4[7]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[7]~4_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[3]~1_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[7]~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ll2[3]~1_combout\,
	datac => \Shift|ALT_INV_ll2[7]~7_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[7]~4_combout\);

-- Location: MLABCELL_X44_Y52_N26
\Mux24~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = ( \Shift|ll4[7]~4_combout\ & ( (!\Mux29~10_combout\ & ((\Mux24~2_combout\) # (\Mux29~0_combout\))) ) ) # ( !\Shift|ll4[7]~4_combout\ & ( (!\Mux29~10_combout\ & (!\Mux29~0_combout\ & \Mux24~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~10_combout\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \ALT_INV_Mux24~2_combout\,
	dataf => \Shift|ALT_INV_ll4[7]~4_combout\,
	combout => \Mux24~3_combout\);

-- Location: LABCELL_X43_Y52_N32
\Add|P[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(7) = ( \A[7]~input_o\ & ( !\AddnSub~input_o\ $ (\B[7]~input_o\) ) ) # ( !\A[7]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Add|P\(7));

-- Location: LABCELL_X43_Y52_N38
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ = ( \A[5]~input_o\ & ( (\Add|P\(6) & (!\AddnSub~input_o\ $ (\B[5]~input_o\))) ) ) # ( !\A[5]~input_o\ & ( (\Add|P\(6) & (!\AddnSub~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(6),
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X43_Y52_N36
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ = ( \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ & ( ((!\Add|block_carry_in[1]~9_combout\ & \Add|P\(4))) # (\Add|G\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_block_carry_in[1]~9_combout\,
	datac => \Add|ALT_INV_P\(4),
	datad => \Add|ALT_INV_G\(4),
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~1_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\);

-- Location: LABCELL_X43_Y52_N34
\Add|GEN_BLOCKS:1:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = ( \A[5]~input_o\ & ( (!\B[5]~input_o\ & ((!\B[6]~input_o\ & (\AddnSub~input_o\)) # (\B[6]~input_o\ & ((\A[6]~input_o\))))) # (\B[5]~input_o\ & ((!\B[6]~input_o\ & ((\A[6]~input_o\))) # (\B[6]~input_o\ & 
-- (!\AddnSub~input_o\)))) ) ) # ( !\A[5]~input_o\ & ( (\A[6]~input_o\ & (!\AddnSub~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000100111010011100010011101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: MLABCELL_X44_Y52_N24
\Mux24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ & ( (\Mux29~10_combout\ & (!\Mux29~0_combout\ & !\Add|P\(7))) ) ) # ( !\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ & ( (\Mux29~10_combout\ & (!\Mux29~0_combout\ & (!\Add|P\(7) $ 
-- (!\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000001000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~10_combout\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \Add|ALT_INV_P\(7),
	datad => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~2_combout\,
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\,
	combout => \Mux24~0_combout\);

-- Location: MLABCELL_X44_Y52_N10
\Mux24~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = ( \A[7]~input_o\ & ( \Mux24~0_combout\ & ( (\B[7]~input_o\ & (\FuncClass[0]~input_o\ & \LogicFN[0]~input_o\)) ) ) ) # ( !\A[7]~input_o\ & ( \Mux24~0_combout\ & ( (!\B[7]~input_o\ & (\FuncClass[0]~input_o\ & \LogicFN[0]~input_o\)) ) ) ) 
-- # ( \A[7]~input_o\ & ( !\Mux24~0_combout\ & ( (!\FuncClass[0]~input_o\ & (((!\Mux24~3_combout\)))) # (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\ & ((!\Mux24~3_combout\))) # (\LogicFN[0]~input_o\ & (\B[7]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( 
-- !\Mux24~0_combout\ & ( (!\FuncClass[0]~input_o\ & (((!\Mux24~3_combout\)))) # (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\ & ((!\Mux24~3_combout\))) # (\LogicFN[0]~input_o\ & (!\B[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001010110011001100010100000000000010100000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_Mux24~3_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux24~4_combout\);

-- Location: MLABCELL_X44_Y52_N18
\Mux24~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = ( \Mux24~4_combout\ & ( (!\FuncClass[1]~input_o\ & \Mux24~5_combout\) ) ) # ( !\Mux24~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\FuncClass[0]~input_o\) # ((!\LogicFN[1]~input_o\) # (\Mux24~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001010101010101000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux24~5_combout\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_Mux24~4_combout\,
	combout => \Mux24~6_combout\);

-- Location: LABCELL_X45_Y46_N6
\Shift|ll2[8]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~8_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # 
-- ((\A[6]~input_o\)))) # (\B[0]~input_o\ & (\B[1]~input_o\ & ((\A[5]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A[6]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[5]~input_o\)))) ) ) ) # 
-- ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ll2[8]~8_combout\);

-- Location: LABCELL_X40_Y47_N26
\Shift|ll4[8]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~5_combout\ = ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ll2[0]~2_combout\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[8]~8_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[4]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[0]~2_combout\,
	datac => \Shift|ALT_INV_ll2[4]~3_combout\,
	datad => \Shift|ALT_INV_ll2[8]~8_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[8]~5_combout\);

-- Location: MLABCELL_X42_Y48_N6
\Shift|rl4[24]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~11_combout\ = ( \Shift|rl2[24]~7_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|rl2[28]~5_combout\))) ) ) # ( !\Shift|rl2[24]~7_combout\ & ( (\B[2]~input_o\ & (\Shift|rl2[28]~5_combout\ & !\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000010110000101100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[28]~5_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[24]~7_combout\,
	combout => \Shift|rl4[24]~11_combout\);

-- Location: MLABCELL_X42_Y48_N10
\Mux23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \Shift|rl2[8]~2_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|rl2[12]~3_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[20]~4_combout\))) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|rl2[12]~3_combout\)) # (\B[3]~input_o\ & ((\Shift|rl2[20]~4_combout\))) ) ) ) # ( \Shift|rl2[8]~2_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|rl2[16]~6_combout\) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( !\B[2]~input_o\ & ( 
-- (\Shift|rl2[16]~6_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[16]~6_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl2[12]~3_combout\,
	datad => \Shift|ALT_INV_rl2[20]~4_combout\,
	datae => \Shift|ALT_INV_rl2[8]~2_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X43_Y48_N4
\Mux23~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = ( !\B[4]~input_o\ & ( ((!\B[5]~input_o\ & (((\Mux23~0_combout\)))) # (\B[5]~input_o\ & (\A[31]~input_o\ & ((\ShiftFN[0]~input_o\))))) ) ) # ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (((\A[31]~input_o\ & (\B[3]~input_o\ & 
-- \ShiftFN[0]~input_o\))) # (\Shift|rl4[24]~11_combout\))) # (\B[5]~input_o\ & (\A[31]~input_o\ & (((\ShiftFN[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000011110001111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl4[24]~11_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	datag => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~4_combout\);

-- Location: LABCELL_X43_Y50_N2
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = ( \A[8]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\ $ (!\Add|block_carry_in[2]~2_combout\)) ) ) # ( !\A[8]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\ $ (\Add|block_carry_in[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Add|S\(8));

-- Location: LABCELL_X43_Y50_N14
\Mux23~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \Mux29~10_combout\ & ( (!\Mux29~0_combout\ & \Add|S\(8)) ) ) # ( !\Mux29~10_combout\ & ( (!\Mux29~0_combout\ & ((\Mux23~4_combout\))) # (\Mux29~0_combout\ & (\Shift|ll4[8]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~0_combout\,
	datab => \Shift|ALT_INV_ll4[8]~5_combout\,
	datac => \ALT_INV_Mux23~4_combout\,
	datad => \Add|ALT_INV_S\(8),
	dataf => \ALT_INV_Mux29~10_combout\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X43_Y50_N6
\Mux23~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \LogicFN[1]~input_o\ & ( \A[8]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux23~1_combout\)))) # (\FuncClass[0]~input_o\ & (((!\LogicFN[0]~input_o\)) # (\B[8]~input_o\))) ) ) ) # ( !\LogicFN[1]~input_o\ & ( \A[8]~input_o\ & ( 
-- (!\FuncClass[0]~input_o\ & (((\Mux23~1_combout\)))) # (\FuncClass[0]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\Mux23~1_combout\))) # (\LogicFN[0]~input_o\ & (!\B[8]~input_o\)))) ) ) ) # ( \LogicFN[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\FuncClass[0]~input_o\ 
-- & (((\Mux23~1_combout\)))) # (\FuncClass[0]~input_o\ & (\B[8]~input_o\ & ((!\LogicFN[0]~input_o\)))) ) ) ) # ( !\LogicFN[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux23~1_combout\)))) # (\FuncClass[0]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\Mux23~1_combout\))) # (\LogicFN[0]~input_o\ & (\B[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011011000110110000101000001111010011100101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_Mux23~1_combout\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: MLABCELL_X42_Y46_N28
\Mux23~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = ( \Mux23~2_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux23~2_combout\,
	combout => \Mux23~3_combout\);

-- Location: LABCELL_X43_Y48_N38
\Mux20~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (\ShiftFN[1]~input_o\ & ((!\B[4]~input_o\) # ((!\B[3]~input_o\) # (!\ShiftFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000001111111000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux20~1_combout\);

-- Location: MLABCELL_X42_Y49_N0
\Mux20~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( !\FuncClass[1]~input_o\ & ( (\FuncClass[0]~input_o\) # (\Mux20~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: MLABCELL_X42_Y49_N2
\Mux20~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\Mux20~1_combout\) # (\FuncClass[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: MLABCELL_X42_Y47_N30
\Mux20~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = ( \B[2]~input_o\ & ( (!\B[4]~input_o\ & ((!\B[3]~input_o\) # ((!\ShiftFN[0]~input_o\ & \B[5]~input_o\)))) # (\B[4]~input_o\ & (!\ShiftFN[0]~input_o\ & (\B[5]~input_o\))) ) ) # ( !\B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- \B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110010101110000011001010111000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux20~5_combout\);

-- Location: MLABCELL_X42_Y47_N28
\Mux20~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\) # ((!\B[4]~input_o\ & \Mux20~0_combout\)) ) ) # ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & \Mux20~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101011001110110011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux20~0_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: MLABCELL_X42_Y47_N14
\Mux20~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ ) ) # ( !\B[3]~input_o\ & ( (\B[4]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010100000101000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	combout => \Mux20~6_combout\);

-- Location: MLABCELL_X42_Y46_N8
\Mux22~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \Shift|rl3[17]~2_combout\ & ( (!\Mux29~1_combout\ & ((!\Mux20~6_combout\) # ((\Shift|ra3[25]~1_combout\)))) # (\Mux29~1_combout\ & (!\Mux20~6_combout\ & ((\Shift|rl3[25]~1_combout\)))) ) ) # ( !\Shift|rl3[17]~2_combout\ & ( 
-- (!\Mux29~1_combout\ & (\Mux20~6_combout\ & (\Shift|ra3[25]~1_combout\))) # (\Mux29~1_combout\ & (!\Mux20~6_combout\ & ((\Shift|rl3[25]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~1_combout\,
	datab => \ALT_INV_Mux20~6_combout\,
	datac => \Shift|ALT_INV_ra3[25]~1_combout\,
	datad => \Shift|ALT_INV_rl3[25]~1_combout\,
	dataf => \Shift|ALT_INV_rl3[17]~2_combout\,
	combout => \Mux22~2_combout\);

-- Location: MLABCELL_X42_Y46_N12
\Mux22~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = ( \Shift|rl2[9]~9_combout\ & ( (!\Mux20~5_combout\ & (((\Mux22~2_combout\)) # (\Mux20~4_combout\))) # (\Mux20~5_combout\ & (!\Mux20~4_combout\ & (\Shift|rl2[13]~10_combout\))) ) ) # ( !\Shift|rl2[9]~9_combout\ & ( (!\Mux20~4_combout\ & 
-- ((!\Mux20~5_combout\ & ((\Mux22~2_combout\))) # (\Mux20~5_combout\ & (\Shift|rl2[13]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~5_combout\,
	datab => \ALT_INV_Mux20~4_combout\,
	datac => \Shift|ALT_INV_rl2[13]~10_combout\,
	datad => \ALT_INV_Mux22~2_combout\,
	dataf => \Shift|ALT_INV_rl2[9]~9_combout\,
	combout => \Mux22~3_combout\);

-- Location: MLABCELL_X42_Y49_N8
\Mux22~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = ( \B[9]~input_o\ & ( !\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[9]~input_o\))) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100101011001010110010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LABCELL_X43_Y48_N20
\Mux19~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( !\B[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & !\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X45_Y46_N28
\Shift|ll2[9]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~9_combout\ = ( \A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[9]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[6]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[8]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((\B[0]~input_o\)) # (\A[9]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[6]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # 
-- (\A[6]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\ & (!\B[0]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\ & \A[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ll2[9]~9_combout\);

-- Location: MLABCELL_X39_Y46_N22
\Shift|ll4[9]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~6_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[5]~5_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[9]~9_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[1]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[1]~4_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[9]~9_combout\,
	datad => \Shift|ALT_INV_ll2[5]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[9]~6_combout\);

-- Location: LABCELL_X43_Y48_N22
\Mux19~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LABCELL_X43_Y50_N30
\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ = ( \B[8]~input_o\ & ( (!\A[8]~input_o\ & (\Add|block_carry_in[2]~2_combout\ & !\AddnSub~input_o\)) # (\A[8]~input_o\ & ((!\AddnSub~input_o\) # (\Add|block_carry_in[2]~2_combout\))) ) ) # ( !\B[8]~input_o\ & ( 
-- (!\A[8]~input_o\ & (\Add|block_carry_in[2]~2_combout\ & \AddnSub~input_o\)) # (\A[8]~input_o\ & ((\AddnSub~input_o\) # (\Add|block_carry_in[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\);

-- Location: LABCELL_X43_Y50_N34
\Mux22~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \AddnSub~input_o\ & ( (\Mux19~1_combout\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\ $ (!\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\)))) ) ) # ( !\AddnSub~input_o\ & ( (\Mux19~1_combout\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\ $ 
-- (\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001000001100000100100001001000001100000100100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_Mux19~1_combout\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Mux22~0_combout\);

-- Location: MLABCELL_X42_Y49_N6
\Mux22~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( !\Mux22~0_combout\ & ( (!\Mux19~0_combout\ & ((!\A[31]~input_o\) # ((!\ShiftFN[1]~input_o\)))) # (\Mux19~0_combout\ & (!\Shift|ll4[9]~6_combout\ & ((!\A[31]~input_o\) # (!\ShiftFN[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Shift|ALT_INV_ll4[9]~6_combout\,
	dataf => \ALT_INV_Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: MLABCELL_X42_Y49_N32
\Mux22~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = ( \Mux22~1_combout\ & ( (\Mux20~3_combout\ & ((!\Mux20~2_combout\ & (\Mux22~3_combout\)) # (\Mux20~2_combout\ & ((\Mux22~4_combout\))))) ) ) # ( !\Mux22~1_combout\ & ( (!\Mux20~3_combout\ & (\Mux20~2_combout\)) # (\Mux20~3_combout\ & 
-- ((!\Mux20~2_combout\ & (\Mux22~3_combout\)) # (\Mux20~2_combout\ & ((\Mux22~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000110111001001100011011100000100000101010000010000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~3_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux22~3_combout\,
	datad => \ALT_INV_Mux22~4_combout\,
	dataf => \ALT_INV_Mux22~1_combout\,
	combout => \Mux22~5_combout\);

-- Location: MLABCELL_X42_Y45_N34
\Mux21~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Mux29~1_combout\ & ( (\Shift|rl3[26]~3_combout\ & !\Mux20~6_combout\) ) ) # ( !\Mux29~1_combout\ & ( (!\Mux20~6_combout\ & ((\Shift|rl3[18]~4_combout\))) # (\Mux20~6_combout\ & (\Shift|ra3[26]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[26]~2_combout\,
	datab => \Shift|ALT_INV_rl3[26]~3_combout\,
	datac => \ALT_INV_Mux20~6_combout\,
	datad => \Shift|ALT_INV_rl3[18]~4_combout\,
	dataf => \ALT_INV_Mux29~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: MLABCELL_X42_Y47_N36
\Mux21~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( \Shift|rl2[10]~15_combout\ & ( (!\Mux20~5_combout\ & (((\Mux20~4_combout\) # (\Mux21~2_combout\)))) # (\Mux20~5_combout\ & (\Shift|rl2[14]~16_combout\ & ((!\Mux20~4_combout\)))) ) ) # ( !\Shift|rl2[10]~15_combout\ & ( 
-- (!\Mux20~4_combout\ & ((!\Mux20~5_combout\ & ((\Mux21~2_combout\))) # (\Mux20~5_combout\ & (\Shift|rl2[14]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[14]~16_combout\,
	datab => \ALT_INV_Mux20~5_combout\,
	datac => \ALT_INV_Mux21~2_combout\,
	datad => \ALT_INV_Mux20~4_combout\,
	dataf => \Shift|ALT_INV_rl2[10]~15_combout\,
	combout => \Mux21~3_combout\);

-- Location: LABCELL_X43_Y50_N20
\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ = ( \AddnSub~input_o\ & ( (!\A[9]~input_o\ & (!\B[9]~input_o\ & \Add|G\(8))) # (\A[9]~input_o\ & ((!\B[9]~input_o\) # (\Add|G\(8)))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[9]~input_o\ & (\B[9]~input_o\ & 
-- \Add|G\(8))) # (\A[9]~input_o\ & ((\Add|G\(8)) # (\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datad => \Add|ALT_INV_G\(8),
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\);

-- Location: MLABCELL_X42_Y49_N18
\Add|P[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(10) = ( \B[10]~input_o\ & ( !\AddnSub~input_o\ $ (\A[10]~input_o\) ) ) # ( !\B[10]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Add|P\(10));

-- Location: LABCELL_X43_Y50_N10
\Mux21~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \Add|P\(10) & ( (!\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ & (\Mux19~1_combout\ & ((!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\) # (!\Add|block_carry_in[2]~2_combout\)))) ) ) # ( !\Add|P\(10) & ( (\Mux19~1_combout\ & 
-- (((\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[2]~2_combout\)) # (\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010111000000000101011100000000101010000000000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datad => \ALT_INV_Mux19~1_combout\,
	dataf => \Add|ALT_INV_P\(10),
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X45_Y46_N34
\Shift|ll2[10]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~10_combout\ = ( \A[7]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[8]~input_o\)))) # (\B[0]~input_o\ & (((\A[9]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[10]~input_o\ & ( 
-- (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[8]~input_o\)))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[9]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A[8]~input_o\))) # (\B[0]~input_o\ & 
-- (((\A[9]~input_o\)) # (\B[1]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\ & (\A[8]~input_o\))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|ll2[10]~10_combout\);

-- Location: MLABCELL_X44_Y49_N24
\Shift|ll4[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~7_combout\ = ( \Shift|ll2[6]~6_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ll2[10]~10_combout\))) # (\B[3]~input_o\ & (((\Shift|ll2[2]~0_combout\ & !\B[2]~input_o\)))) ) ) # ( !\Shift|ll2[6]~6_combout\ & ( (!\B[2]~input_o\ 
-- & ((!\B[3]~input_o\ & (\Shift|ll2[10]~10_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[2]~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110000000001000111110011000100011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[10]~10_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[2]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[6]~6_combout\,
	combout => \Shift|ll4[10]~7_combout\);

-- Location: MLABCELL_X42_Y49_N4
\Mux21~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \Shift|ll4[10]~7_combout\ & ( (!\Mux19~0_combout\ & (!\Mux21~0_combout\ & ((!\A[31]~input_o\) # (!\ShiftFN[1]~input_o\)))) ) ) # ( !\Shift|ll4[10]~7_combout\ & ( (!\Mux21~0_combout\ & ((!\A[31]~input_o\) # (!\ShiftFN[1]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011000000111100001100000010100000100000001010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_Mux21~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \Shift|ALT_INV_ll4[10]~7_combout\,
	combout => \Mux21~1_combout\);

-- Location: MLABCELL_X42_Y49_N22
\Mux21~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( \B[10]~input_o\ & ( !\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[10]~input_o\))) ) ) # ( !\B[10]~input_o\ & ( (\A[10]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: MLABCELL_X42_Y49_N24
\Mux21~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = ( \Mux21~4_combout\ & ( (!\Mux20~3_combout\ & (\Mux20~2_combout\ & ((!\Mux21~1_combout\)))) # (\Mux20~3_combout\ & (((\Mux21~3_combout\)) # (\Mux20~2_combout\))) ) ) # ( !\Mux21~4_combout\ & ( (!\Mux20~3_combout\ & (\Mux20~2_combout\ & 
-- ((!\Mux21~1_combout\)))) # (\Mux20~3_combout\ & (!\Mux20~2_combout\ & (\Mux21~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000100001001100000010000110111000101010011011100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~3_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux21~3_combout\,
	datad => \ALT_INV_Mux21~1_combout\,
	dataf => \ALT_INV_Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: MLABCELL_X42_Y49_N10
\Mux20~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = ( \A[11]~input_o\ & ( !\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\B[11]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001100101011001010110010101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Mux20~10_combout\);

-- Location: LABCELL_X43_Y50_N32
\Add|GEN_BLOCKS:2:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ = ( \B[10]~input_o\ & ( (!\A[9]~input_o\ & (((\A[10]~input_o\ & !\AddnSub~input_o\)))) # (\A[9]~input_o\ & ((!\B[9]~input_o\ & (\A[10]~input_o\)) # (\B[9]~input_o\ & ((!\AddnSub~input_o\))))) ) ) # ( 
-- !\B[10]~input_o\ & ( (!\A[9]~input_o\ & (((\A[10]~input_o\ & \AddnSub~input_o\)))) # (\A[9]~input_o\ & ((!\B[9]~input_o\ & ((\AddnSub~input_o\))) # (\B[9]~input_o\ & (\A[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101001111000000010100111100011111000001000001111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X43_Y50_N16
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ = ( \Add|P\(10) & ( !\AddnSub~input_o\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \Add|ALT_INV_P\(10),
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X43_Y50_N28
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ = ( \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ & ( (!\A[8]~input_o\ & (\Add|block_carry_in[2]~2_combout\ & (!\AddnSub~input_o\ $ (!\B[8]~input_o\)))) # (\A[8]~input_o\ & ((!\AddnSub~input_o\ $ 
-- (!\B[8]~input_o\)) # (\Add|block_carry_in[2]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010100011111010001010001111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	dataf => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~1_combout\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\);

-- Location: LABCELL_X43_Y50_N18
\Add|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(11) = ( \A[11]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[11]~input_o\ $ (((!\Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ & !\Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\)))) ) ) # ( !\A[11]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[11]~input_o\ $ 
-- (((\Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\) # (\Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011011011001001001110010011011011001001001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_C[3]~2_combout\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Add|S\(11));

-- Location: LABCELL_X45_Y46_N16
\Shift|ll2[11]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~11_combout\ = ( \A[9]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[8]~input_o\)))) ) ) ) # ( !\A[9]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & 
-- (!\B[1]~input_o\)) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[8]~input_o\))))) ) ) ) # ( \A[9]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (\B[1]~input_o\)) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[8]~input_o\))))) ) ) ) # ( !\A[9]~input_o\ & ( !\A[11]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ll2[11]~11_combout\);

-- Location: MLABCELL_X44_Y46_N4
\Shift|ll4[11]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~8_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[7]~7_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[11]~11_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[3]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ll2[3]~1_combout\,
	datac => \Shift|ALT_INV_ll2[11]~11_combout\,
	datad => \Shift|ALT_INV_ll2[7]~7_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[11]~8_combout\);

-- Location: MLABCELL_X42_Y49_N30
\Mux20~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = ( !\Shift|ll4[11]~8_combout\ & ( \Mux19~0_combout\ & ( (!\Mux19~1_combout\ & ((!\ShiftFN[1]~input_o\) # ((!\A[31]~input_o\)))) # (\Mux19~1_combout\ & (!\Add|S\(11) & ((!\ShiftFN[1]~input_o\) # (!\A[31]~input_o\)))) ) ) ) # ( 
-- \Shift|ll4[11]~8_combout\ & ( !\Mux19~0_combout\ & ( (!\Mux19~1_combout\ & ((!\ShiftFN[1]~input_o\) # ((!\A[31]~input_o\)))) # (\Mux19~1_combout\ & (!\Add|S\(11) & ((!\ShiftFN[1]~input_o\) # (!\A[31]~input_o\)))) ) ) ) # ( !\Shift|ll4[11]~8_combout\ & ( 
-- !\Mux19~0_combout\ & ( (!\Mux19~1_combout\ & ((!\ShiftFN[1]~input_o\) # ((!\A[31]~input_o\)))) # (\Mux19~1_combout\ & (!\Add|S\(11) & ((!\ShiftFN[1]~input_o\) # (!\A[31]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110010101000111111001010100011111100101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~1_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Add|ALT_INV_S\(11),
	datae => \Shift|ALT_INV_ll4[11]~8_combout\,
	dataf => \ALT_INV_Mux19~0_combout\,
	combout => \Mux20~7_combout\);

-- Location: MLABCELL_X42_Y45_N36
\Mux20~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = ( \Mux29~1_combout\ & ( (\Shift|rl3[27]~5_combout\ & !\Mux20~6_combout\) ) ) # ( !\Mux29~1_combout\ & ( (!\Mux20~6_combout\ & ((\Shift|rl3[19]~6_combout\))) # (\Mux20~6_combout\ & (\Shift|ra3[27]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[27]~3_combout\,
	datab => \Shift|ALT_INV_rl3[27]~5_combout\,
	datac => \ALT_INV_Mux20~6_combout\,
	datad => \Shift|ALT_INV_rl3[19]~6_combout\,
	dataf => \ALT_INV_Mux29~1_combout\,
	combout => \Mux20~8_combout\);

-- Location: MLABCELL_X42_Y49_N16
\Mux20~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = ( \Shift|rl2[15]~22_combout\ & ( (!\Mux20~5_combout\ & ((!\Mux20~4_combout\ & (\Mux20~8_combout\)) # (\Mux20~4_combout\ & ((\Shift|rl2[11]~21_combout\))))) # (\Mux20~5_combout\ & (((!\Mux20~4_combout\)))) ) ) # ( 
-- !\Shift|rl2[15]~22_combout\ & ( (!\Mux20~5_combout\ & ((!\Mux20~4_combout\ & (\Mux20~8_combout\)) # (\Mux20~4_combout\ & ((\Shift|rl2[11]~21_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001110111000011000111011100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~8_combout\,
	datab => \ALT_INV_Mux20~5_combout\,
	datac => \Shift|ALT_INV_rl2[11]~21_combout\,
	datad => \ALT_INV_Mux20~4_combout\,
	dataf => \Shift|ALT_INV_rl2[15]~22_combout\,
	combout => \Mux20~9_combout\);

-- Location: MLABCELL_X42_Y49_N26
\Mux20~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~11_combout\ = ( \Mux20~9_combout\ & ( (!\Mux20~3_combout\ & (\Mux20~2_combout\ & ((!\Mux20~7_combout\)))) # (\Mux20~3_combout\ & ((!\Mux20~2_combout\) # ((\Mux20~10_combout\)))) ) ) # ( !\Mux20~9_combout\ & ( (\Mux20~2_combout\ & 
-- ((!\Mux20~3_combout\ & ((!\Mux20~7_combout\))) # (\Mux20~3_combout\ & (\Mux20~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100000001001000110000000101100111010001010110011101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~3_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux20~10_combout\,
	datad => \ALT_INV_Mux20~7_combout\,
	dataf => \ALT_INV_Mux20~9_combout\,
	combout => \Mux20~11_combout\);

-- Location: MLABCELL_X42_Y48_N32
\Mux19~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = ( \Shift|rl2[28]~5_combout\ & ( \B[2]~input_o\ & ( (!\Mux29~1_combout\ & ((!\Mux20~6_combout\ & ((\Shift|rl3[20]~7_combout\))) # (\Mux20~6_combout\ & (\A[31]~input_o\)))) ) ) ) # ( !\Shift|rl2[28]~5_combout\ & ( \B[2]~input_o\ & ( 
-- (!\Mux29~1_combout\ & ((!\Mux20~6_combout\ & ((\Shift|rl3[20]~7_combout\))) # (\Mux20~6_combout\ & (\A[31]~input_o\)))) ) ) ) # ( \Shift|rl2[28]~5_combout\ & ( !\B[2]~input_o\ & ( (!\Mux20~6_combout\ & ((\Shift|rl3[20]~7_combout\) # (\Mux29~1_combout\))) 
-- # (\Mux20~6_combout\ & (!\Mux29~1_combout\)) ) ) ) # ( !\Shift|rl2[28]~5_combout\ & ( !\B[2]~input_o\ & ( (!\Mux20~6_combout\ & (!\Mux29~1_combout\ & \Shift|rl3[20]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000010110101111101000010000101100000001000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~6_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_Mux29~1_combout\,
	datad => \Shift|ALT_INV_rl3[20]~7_combout\,
	datae => \Shift|ALT_INV_rl2[28]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux19~5_combout\);

-- Location: MLABCELL_X42_Y48_N36
\Mux19~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = ( \Shift|rl2[12]~3_combout\ & ( \Shift|rl2[16]~6_combout\ & ( (!\Mux20~5_combout\ & ((\Mux20~4_combout\) # (\Mux19~5_combout\))) # (\Mux20~5_combout\ & ((!\Mux20~4_combout\))) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( 
-- \Shift|rl2[16]~6_combout\ & ( (!\Mux20~4_combout\ & ((\Mux20~5_combout\) # (\Mux19~5_combout\))) ) ) ) # ( \Shift|rl2[12]~3_combout\ & ( !\Shift|rl2[16]~6_combout\ & ( (!\Mux20~5_combout\ & ((\Mux20~4_combout\) # (\Mux19~5_combout\))) ) ) ) # ( 
-- !\Shift|rl2[12]~3_combout\ & ( !\Shift|rl2[16]~6_combout\ & ( (\Mux19~5_combout\ & (!\Mux20~5_combout\ & !\Mux20~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010011000100110001110000011100000111110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~5_combout\,
	datab => \ALT_INV_Mux20~5_combout\,
	datac => \ALT_INV_Mux20~4_combout\,
	datae => \Shift|ALT_INV_rl2[12]~3_combout\,
	dataf => \Shift|ALT_INV_rl2[16]~6_combout\,
	combout => \Mux19~6_combout\);

-- Location: MLABCELL_X39_Y49_N32
\Add|block_carry_in[3]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~10_combout\ = (!\Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[3]~3_combout\))) # (\Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ & (\Add|block_carry_in[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~combout\,
	datad => \Add|ALT_INV_block_carry_in[3]~3_combout\,
	combout => \Add|block_carry_in[3]~10_combout\);

-- Location: LABCELL_X43_Y49_N16
\B_adder[12]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \B_adder[12]~1_combout\ = !\AddnSub~input_o\ $ (!\B[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	combout => \B_adder[12]~1_combout\);

-- Location: LABCELL_X43_Y47_N38
\Shift|ll2[12]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~12_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ll2[12]~12_combout\);

-- Location: LABCELL_X40_Y47_N8
\Shift|ll4[12]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[12]~9_combout\ = ( \Shift|ll2[12]~12_combout\ & ( \Shift|ll2[0]~2_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\Shift|ll2[4]~3_combout\)))) # (\B[2]~input_o\ & (((\Shift|ll2[8]~8_combout\)) # (\B[3]~input_o\))) ) ) ) # ( 
-- !\Shift|ll2[12]~12_combout\ & ( \Shift|ll2[0]~2_combout\ & ( (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\Shift|ll2[4]~3_combout\)))) # (\B[2]~input_o\ & (((\Shift|ll2[8]~8_combout\)) # (\B[3]~input_o\))) ) ) ) # ( \Shift|ll2[12]~12_combout\ & ( 
-- !\Shift|ll2[0]~2_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\Shift|ll2[4]~3_combout\)))) # (\B[2]~input_o\ & (!\B[3]~input_o\ & (\Shift|ll2[8]~8_combout\))) ) ) ) # ( !\Shift|ll2[12]~12_combout\ & ( !\Shift|ll2[0]~2_combout\ & ( 
-- (!\B[2]~input_o\ & (\B[3]~input_o\ & ((\Shift|ll2[4]~3_combout\)))) # (\B[2]~input_o\ & (!\B[3]~input_o\ & (\Shift|ll2[8]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[8]~8_combout\,
	datad => \Shift|ALT_INV_ll2[4]~3_combout\,
	datae => \Shift|ALT_INV_ll2[12]~12_combout\,
	dataf => \Shift|ALT_INV_ll2[0]~2_combout\,
	combout => \Shift|ll4[12]~9_combout\);

-- Location: LABCELL_X40_Y47_N14
\Mux19~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \Mux19~0_combout\ & ( ((\A[31]~input_o\ & \ShiftFN[1]~input_o\)) # (\Shift|ll4[12]~9_combout\) ) ) # ( !\Mux19~0_combout\ & ( (\A[31]~input_o\ & \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Shift|ALT_INV_ll4[12]~9_combout\,
	dataf => \ALT_INV_Mux19~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: LABCELL_X43_Y49_N22
\Mux19~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = ( !\Mux19~2_combout\ & ( (!\Mux19~1_combout\) # (!\Add|block_carry_in[3]~10_combout\ $ (!\B_adder[12]~1_combout\ $ (!\A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101110111110111010111011111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~1_combout\,
	datab => \Add|ALT_INV_block_carry_in[3]~10_combout\,
	datac => \ALT_INV_B_adder[12]~1_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: LABCELL_X43_Y49_N10
\Mux19~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[12]~input_o\ & (\B[12]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[12]~input_o\ & (!\B[12]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[0]~input_o\)))) # (\LogicFN[1]~input_o\ & (((\B[12]~input_o\)) # (\A[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000001111111011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: MLABCELL_X42_Y49_N34
\Mux19~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = ( \Mux19~4_combout\ & ( (!\Mux20~3_combout\ & (\Mux20~2_combout\ & ((!\Mux19~3_combout\)))) # (\Mux20~3_combout\ & (((\Mux19~6_combout\)) # (\Mux20~2_combout\))) ) ) # ( !\Mux19~4_combout\ & ( (!\Mux20~3_combout\ & (\Mux20~2_combout\ & 
-- ((!\Mux19~3_combout\)))) # (\Mux20~3_combout\ & (!\Mux20~2_combout\ & (\Mux19~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000000100001001100000010000110111000101010011011100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~3_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux19~6_combout\,
	datad => \ALT_INV_Mux19~3_combout\,
	dataf => \ALT_INV_Mux19~4_combout\,
	combout => \Mux19~7_combout\);

-- Location: MLABCELL_X42_Y46_N10
\Mux18~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = ( \Shift|rl3[29]~8_combout\ & ( (!\Mux29~1_combout\ & ((!\Mux20~6_combout\ & (\Shift|rl3[21]~9_combout\)) # (\Mux20~6_combout\ & ((\Shift|ra3[29]~4_combout\))))) # (\Mux29~1_combout\ & (!\Mux20~6_combout\)) ) ) # ( 
-- !\Shift|rl3[29]~8_combout\ & ( (!\Mux29~1_combout\ & ((!\Mux20~6_combout\ & (\Shift|rl3[21]~9_combout\)) # (\Mux20~6_combout\ & ((\Shift|ra3[29]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~1_combout\,
	datab => \ALT_INV_Mux20~6_combout\,
	datac => \Shift|ALT_INV_rl3[21]~9_combout\,
	datad => \Shift|ALT_INV_ra3[29]~4_combout\,
	dataf => \Shift|ALT_INV_rl3[29]~8_combout\,
	combout => \Mux18~3_combout\);

-- Location: MLABCELL_X42_Y46_N14
\Mux18~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = ( \Shift|rl2[13]~10_combout\ & ( (!\Mux20~5_combout\ & (((\Mux18~3_combout\)) # (\Mux20~4_combout\))) # (\Mux20~5_combout\ & (!\Mux20~4_combout\ & ((\Shift|rl2[17]~13_combout\)))) ) ) # ( !\Shift|rl2[13]~10_combout\ & ( 
-- (!\Mux20~4_combout\ & ((!\Mux20~5_combout\ & (\Mux18~3_combout\)) # (\Mux20~5_combout\ & ((\Shift|rl2[17]~13_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~5_combout\,
	datab => \ALT_INV_Mux20~4_combout\,
	datac => \ALT_INV_Mux18~3_combout\,
	datad => \Shift|ALT_INV_rl2[17]~13_combout\,
	dataf => \Shift|ALT_INV_rl2[13]~10_combout\,
	combout => \Mux18~4_combout\);

-- Location: LABCELL_X43_Y49_N30
\Mux18~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[13]~input_o\ $ (!\A[13]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[13]~input_o\ & \A[13]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (\B[1]~input_o\)) # 
-- (\LogicFN[1]~input_o\ & (((\A[13]~input_o\) # (\B[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101110111010001110111011100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X43_Y49_N24
\Add|GEN_BLOCKS:3:LACG_INST|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ = ( \Add|block_carry_in[3]~10_combout\ & ( (!\AddnSub~input_o\ $ (!\B[12]~input_o\)) # (\A[12]~input_o\) ) ) # ( !\Add|block_carry_in[3]~10_combout\ & ( (\A[12]~input_o\ & (!\AddnSub~input_o\ $ 
-- (!\B[12]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[3]~10_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\);

-- Location: LABCELL_X43_Y49_N26
\Mux18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \Mux19~1_combout\ & ( !\A[13]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[13]~input_o\ $ (!\Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_Mux19~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X43_Y47_N2
\Shift|ll2[13]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~13_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (((\A[13]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[10]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\A[13]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & (\B[1]~input_o\ & (\A[10]~input_o\))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[13]~input_o\)))) # (\B[0]~input_o\ & 
-- ((!\B[1]~input_o\) # ((\A[10]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[13]~input_o\)))) # (\B[0]~input_o\ & (\B[1]~input_o\ & (\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ll2[13]~13_combout\);

-- Location: MLABCELL_X39_Y46_N26
\Shift|ll4[13]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~10_combout\ = ( \Shift|ll2[9]~9_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[1]~4_combout\) ) ) ) # ( !\Shift|ll2[9]~9_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ll2[1]~4_combout\) ) ) ) # ( 
-- \Shift|ll2[9]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[13]~13_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[5]~5_combout\))) ) ) ) # ( !\Shift|ll2[9]~9_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[13]~13_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[5]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[13]~13_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[5]~5_combout\,
	datad => \Shift|ALT_INV_ll2[1]~4_combout\,
	datae => \Shift|ALT_INV_ll2[9]~9_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[13]~10_combout\);

-- Location: MLABCELL_X42_Y49_N20
\Mux18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \ShiftFN[1]~input_o\ & ( ((\Mux19~0_combout\ & \Shift|ll4[13]~10_combout\)) # (\A[31]~input_o\) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\Mux19~0_combout\ & \Shift|ll4[13]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110011001111110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_Mux19~0_combout\,
	datad => \Shift|ALT_INV_ll4[13]~10_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: MLABCELL_X42_Y49_N12
\Mux18~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = ( \Mux18~0_combout\ & ( \Mux18~1_combout\ & ( (!\Mux20~3_combout\ & (((\Mux20~2_combout\)))) # (\Mux20~3_combout\ & ((!\Mux20~2_combout\ & (\Mux18~4_combout\)) # (\Mux20~2_combout\ & ((\Mux18~2_combout\))))) ) ) ) # ( 
-- !\Mux18~0_combout\ & ( \Mux18~1_combout\ & ( (!\Mux20~3_combout\ & (((\Mux20~2_combout\)))) # (\Mux20~3_combout\ & ((!\Mux20~2_combout\ & (\Mux18~4_combout\)) # (\Mux20~2_combout\ & ((\Mux18~2_combout\))))) ) ) ) # ( \Mux18~0_combout\ & ( 
-- !\Mux18~1_combout\ & ( (!\Mux20~3_combout\ & (((\Mux20~2_combout\)))) # (\Mux20~3_combout\ & ((!\Mux20~2_combout\ & (\Mux18~4_combout\)) # (\Mux20~2_combout\ & ((\Mux18~2_combout\))))) ) ) ) # ( !\Mux18~0_combout\ & ( !\Mux18~1_combout\ & ( 
-- (\Mux20~3_combout\ & ((!\Mux20~2_combout\ & (\Mux18~4_combout\)) # (\Mux20~2_combout\ & ((\Mux18~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011000001011111001100000101111100110000010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux18~4_combout\,
	datab => \ALT_INV_Mux18~2_combout\,
	datac => \ALT_INV_Mux20~3_combout\,
	datad => \ALT_INV_Mux20~2_combout\,
	datae => \ALT_INV_Mux18~0_combout\,
	dataf => \ALT_INV_Mux18~1_combout\,
	combout => \Mux18~5_combout\);

-- Location: MLABCELL_X44_Y48_N26
\Mux17~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \B[2]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\B[14]~input_o\ $ (!\A[14]~input_o\)))) # (\LogicFN[1]~input_o\ & ((!\B[14]~input_o\ & (!\LogicFN[0]~input_o\ & \A[14]~input_o\)) # (\B[14]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (\A[14]~input_o\))))) ) ) # ( !\B[2]~input_o\ & ( (!\B[14]~input_o\ & (\A[14]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[14]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[14]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001011001000100100101100110110010111110011011001011111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: MLABCELL_X42_Y47_N18
\Mux17~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \Mux29~1_combout\ & ( (\Shift|rl4[22]~8_combout\ & !\Mux20~6_combout\) ) ) # ( !\Mux29~1_combout\ & ( (!\Mux20~6_combout\ & (\Shift|rl3[22]~10_combout\)) # (\Mux20~6_combout\ & ((\Shift|ra3[30]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[22]~10_combout\,
	datab => \Shift|ALT_INV_rl4[22]~8_combout\,
	datac => \ALT_INV_Mux20~6_combout\,
	datad => \Shift|ALT_INV_ra3[30]~5_combout\,
	dataf => \ALT_INV_Mux29~1_combout\,
	combout => \Mux17~3_combout\);

-- Location: MLABCELL_X42_Y47_N38
\Mux17~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = ( \Shift|rl2[18]~19_combout\ & ( (!\Mux20~5_combout\ & ((!\Mux20~4_combout\ & ((\Mux17~3_combout\))) # (\Mux20~4_combout\ & (\Shift|rl2[14]~16_combout\)))) # (\Mux20~5_combout\ & (((!\Mux20~4_combout\)))) ) ) # ( 
-- !\Shift|rl2[18]~19_combout\ & ( (!\Mux20~5_combout\ & ((!\Mux20~4_combout\ & ((\Mux17~3_combout\))) # (\Mux20~4_combout\ & (\Shift|rl2[14]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000110100111101000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[14]~16_combout\,
	datab => \ALT_INV_Mux20~5_combout\,
	datac => \ALT_INV_Mux20~4_combout\,
	datad => \ALT_INV_Mux17~3_combout\,
	dataf => \Shift|ALT_INV_rl2[18]~19_combout\,
	combout => \Mux17~4_combout\);

-- Location: LABCELL_X43_Y49_N28
\Add|P[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(14) = ( \A[14]~input_o\ & ( !\AddnSub~input_o\ $ (\B[14]~input_o\) ) ) # ( !\A[14]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Add|P\(14));

-- Location: LABCELL_X43_Y49_N2
\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ = ( \Add|G\(12) & ( (!\B[13]~input_o\ $ (!\AddnSub~input_o\)) # (\A[13]~input_o\) ) ) # ( !\Add|G\(12) & ( (\A[13]~input_o\ & (!\B[13]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \Add|ALT_INV_G\(12),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X43_Y49_N20
\Mux17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ & ( (\Mux19~1_combout\ & !\Add|P\(14)) ) ) # ( !\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ & ( (\Mux19~1_combout\ & (!\Add|P\(14) $ (((!\Add|block_carry_in[3]~10_combout\) # 
-- (!\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010100000001010001010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~1_combout\,
	datab => \Add|ALT_INV_block_carry_in[3]~10_combout\,
	datac => \Add|ALT_INV_P\(14),
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X43_Y47_N26
\Shift|ll2[14]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~14_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[13]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ll2[14]~14_combout\);

-- Location: MLABCELL_X44_Y49_N12
\Shift|ll4[14]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[14]~11_combout\ = ( \Shift|ll2[2]~0_combout\ & ( \Shift|ll2[6]~6_combout\ & ( ((!\B[2]~input_o\ & ((\Shift|ll2[14]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\))) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[2]~0_combout\ & ( 
-- \Shift|ll2[6]~6_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[14]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\)) ) ) ) # ( \Shift|ll2[2]~0_combout\ & ( !\Shift|ll2[6]~6_combout\ 
-- & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[14]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\)))) # (\B[3]~input_o\ & (\B[2]~input_o\)) ) ) ) # ( !\Shift|ll2[2]~0_combout\ & ( !\Shift|ll2[6]~6_combout\ & ( (!\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & ((\Shift|ll2[14]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[10]~10_combout\,
	datad => \Shift|ALT_INV_ll2[14]~14_combout\,
	datae => \Shift|ALT_INV_ll2[2]~0_combout\,
	dataf => \Shift|ALT_INV_ll2[6]~6_combout\,
	combout => \Shift|ll4[14]~11_combout\);

-- Location: MLABCELL_X44_Y49_N10
\Mux17~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \ShiftFN[1]~input_o\ & ( ((\Mux19~0_combout\ & \Shift|ll4[14]~11_combout\)) # (\A[31]~input_o\) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\Mux19~0_combout\ & \Shift|ll4[14]~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux19~0_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_ll4[14]~11_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X42_Y49_N36
\Mux17~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = ( \Mux20~3_combout\ & ( \Mux17~1_combout\ & ( (!\Mux20~2_combout\ & ((\Mux17~4_combout\))) # (\Mux20~2_combout\ & (\Mux17~2_combout\)) ) ) ) # ( !\Mux20~3_combout\ & ( \Mux17~1_combout\ & ( \Mux20~2_combout\ ) ) ) # ( \Mux20~3_combout\ 
-- & ( !\Mux17~1_combout\ & ( (!\Mux20~2_combout\ & ((\Mux17~4_combout\))) # (\Mux20~2_combout\ & (\Mux17~2_combout\)) ) ) ) # ( !\Mux20~3_combout\ & ( !\Mux17~1_combout\ & ( (\Mux20~2_combout\ & \Mux17~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110100110011001100110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux17~2_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux17~4_combout\,
	datad => \ALT_INV_Mux17~0_combout\,
	datae => \ALT_INV_Mux20~3_combout\,
	dataf => \ALT_INV_Mux17~1_combout\,
	combout => \Mux17~5_combout\);

-- Location: LABCELL_X43_Y45_N26
\Shift|rl5[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl5[15]~0_combout\ = ( \B[2]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|rl2[19]~25_combout\)) # (\B[4]~input_o\ & ((\Shift|Y_RL[31]~1_combout\))) ) ) # ( !\B[2]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|rl2[15]~22_combout\)) # (\B[4]~input_o\ & 
-- ((\Shift|Y_RL[31]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[15]~22_combout\,
	datab => \Shift|ALT_INV_rl2[19]~25_combout\,
	datac => \Shift|ALT_INV_Y_RL[31]~1_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl5[15]~0_combout\);

-- Location: LABCELL_X43_Y45_N10
\Shift|rl5[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl5[15]~1_combout\ = ( \Shift|rl3[23]~11_combout\ & ( (!\B[5]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|rl5[15]~0_combout\))) # (\B[3]~input_o\ & (!\B[4]~input_o\)))) ) ) # ( !\Shift|rl3[23]~11_combout\ & ( (!\B[3]~input_o\ & 
-- (\Shift|rl5[15]~0_combout\ & !\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000101110000000000010111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_rl5[15]~0_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_rl3[23]~11_combout\,
	combout => \Shift|rl5[15]~1_combout\);

-- Location: LABCELL_X43_Y47_N28
\Shift|ll2[15]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~15_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (\A[14]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[14]~input_o\) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[15]~input_o\)) # (\B[1]~input_o\ & ((\A[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[15]~15_combout\);

-- Location: MLABCELL_X44_Y46_N10
\Shift|ll4[15]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~12_combout\ = ( \Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[11]~11_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[3]~1_combout\))) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & (\Shift|ll2[11]~11_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[3]~1_combout\))) ) ) ) # ( \Shift|ll2[15]~15_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[7]~7_combout\) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( 
-- !\B[2]~input_o\ & ( (\Shift|ll2[7]~7_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[11]~11_combout\,
	datab => \Shift|ALT_INV_ll2[7]~7_combout\,
	datac => \Shift|ALT_INV_ll2[3]~1_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[15]~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[15]~12_combout\);

-- Location: MLABCELL_X44_Y46_N32
\Shift|Y_LL[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~0_combout\ = ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & \Shift|ll4[15]~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \Shift|ALT_INV_ll4[15]~12_combout\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Shift|Y_LL[15]~0_combout\);

-- Location: LABCELL_X43_Y45_N24
\Shift|Y_RA[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~0_combout\ = ( \B[3]~input_o\ & ( \Shift|rl3[23]~11_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[15]~22_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[19]~25_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[15]~22_combout\,
	datab => \Shift|ALT_INV_rl2[19]~25_combout\,
	datac => \Shift|ALT_INV_rl3[23]~11_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|Y_RA[15]~0_combout\);

-- Location: LABCELL_X43_Y45_N8
\Shift|Y_RA[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~1_combout\ = ( \Shift|Y_RA[15]~0_combout\ & ( ((!\B[4]~input_o\ & !\B[5]~input_o\)) # (\A[31]~input_o\) ) ) # ( !\Shift|Y_RA[15]~0_combout\ & ( (\A[31]~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111110101111000011111010111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \Shift|ALT_INV_Y_RA[15]~0_combout\,
	combout => \Shift|Y_RA[15]~1_combout\);

-- Location: LABCELL_X43_Y49_N18
\Add|P[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(15) = ( \A[15]~input_o\ & ( !\AddnSub~input_o\ $ (\B[15]~input_o\) ) ) # ( !\A[15]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Add|P\(15));

-- Location: LABCELL_X43_Y49_N34
\Add|GEN_BLOCKS:3:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ = ( \AddnSub~input_o\ & ( (!\A[14]~input_o\ & (\A[13]~input_o\ & (!\B[13]~input_o\ & !\B[14]~input_o\))) # (\A[14]~input_o\ & ((!\B[14]~input_o\) # ((\A[13]~input_o\ & !\B[13]~input_o\)))) ) ) # ( 
-- !\AddnSub~input_o\ & ( (!\A[14]~input_o\ & (\A[13]~input_o\ & (\B[13]~input_o\ & \B[14]~input_o\))) # (\A[14]~input_o\ & (((\A[13]~input_o\ & \B[13]~input_o\)) # (\B[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111101001111000001000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X43_Y49_N32
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = ( \AddnSub~input_o\ & ( (\Add|P\(14) & (!\A[13]~input_o\ $ (\B[13]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (\Add|P\(14) & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datad => \Add|ALT_INV_P\(14),
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X43_Y49_N38
\Add|S[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(15) = ( \A[12]~input_o\ & ( \Add|block_carry_in[3]~10_combout\ & ( !\Add|P\(15) $ (((!\Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ & !\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\))) ) ) ) # ( !\A[12]~input_o\ & ( \Add|block_carry_in[3]~10_combout\ 
-- & ( !\Add|P\(15) $ (((!\Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ & ((!\B_adder[12]~1_combout\) # (!\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\))))) ) ) ) # ( \A[12]~input_o\ & ( !\Add|block_carry_in[3]~10_combout\ & ( !\Add|P\(15) $ 
-- (((!\Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ & ((!\B_adder[12]~1_combout\) # (!\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\))))) ) ) ) # ( !\A[12]~input_o\ & ( !\Add|block_carry_in[3]~10_combout\ & ( !\Add|P\(15) $ 
-- (!\Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100110101001011010011010100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(15),
	datab => \ALT_INV_B_adder[12]~1_combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~1_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[3]~10_combout\,
	combout => \Add|S\(15));

-- Location: LABCELL_X43_Y45_N12
\Y_ShiftOrArith[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[15]~1_combout\ = ( \Shift|Y_RA[15]~1_combout\ & ( \Add|S\(15) & ( (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)) # (\Shift|rl5[15]~1_combout\))) # (\ShiftFN[0]~input_o\ & (((\Shift|Y_LL[15]~0_combout\) # (\ShiftFN[1]~input_o\)))) ) ) 
-- ) # ( !\Shift|Y_RA[15]~1_combout\ & ( \Add|S\(15) & ( (!\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\)) # (\Shift|rl5[15]~1_combout\))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\ & \Shift|Y_LL[15]~0_combout\)))) ) ) ) # ( 
-- \Shift|Y_RA[15]~1_combout\ & ( !\Add|S\(15) & ( (!\ShiftFN[0]~input_o\ & (\Shift|rl5[15]~1_combout\ & (\ShiftFN[1]~input_o\))) # (\ShiftFN[0]~input_o\ & (((\Shift|Y_LL[15]~0_combout\) # (\ShiftFN[1]~input_o\)))) ) ) ) # ( !\Shift|Y_RA[15]~1_combout\ & ( 
-- !\Add|S\(15) & ( (!\ShiftFN[0]~input_o\ & (\Shift|rl5[15]~1_combout\ & (\ShiftFN[1]~input_o\))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\ & \Shift|Y_LL[15]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000001110101011110100010111100101010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_rl5[15]~1_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Shift|ALT_INV_Y_LL[15]~0_combout\,
	datae => \Shift|ALT_INV_Y_RA[15]~1_combout\,
	dataf => \Add|ALT_INV_S\(15),
	combout => \Y_ShiftOrArith[15]~1_combout\);

-- Location: MLABCELL_X44_Y52_N12
\Logic|Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux16~0_combout\ = ( \B[15]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[3]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\A[15]~input_o\)))) ) ) # ( !\B[15]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\ & ((\B[3]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[15]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & (\A[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111001100011111010110110001111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Logic|Mux16~0_combout\);

-- Location: MLABCELL_X44_Y52_N16
\Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\FuncClass[1]~input_o\ & ((!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[15]~1_combout\)) # (\FuncClass[0]~input_o\ & ((\Logic|Mux16~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Y_ShiftOrArith[15]~1_combout\,
	datad => \Logic|ALT_INV_Mux16~0_combout\,
	combout => \Mux16~0_combout\);

-- Location: LABCELL_X43_Y47_N14
\Shift|ll2[16]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~16_combout\ = ( \A[14]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[15]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( !\A[14]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[15]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( \A[14]~input_o\ & ( !\B[0]~input_o\ & ( (\A[16]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[14]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[16]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[16]~16_combout\);

-- Location: LABCELL_X40_Y47_N38
\Shift|ll4[16]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~13_combout\ = ( \Shift|ll2[16]~16_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[12]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[4]~3_combout\)) ) ) ) # ( !\Shift|ll2[16]~16_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\Shift|ll2[12]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[4]~3_combout\)) ) ) ) # ( \Shift|ll2[16]~16_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[8]~8_combout\) ) ) ) # ( !\Shift|ll2[16]~16_combout\ & ( 
-- !\B[2]~input_o\ & ( (\Shift|ll2[8]~8_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[8]~8_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[4]~3_combout\,
	datad => \Shift|ALT_INV_ll2[12]~12_combout\,
	datae => \Shift|ALT_INV_ll2[16]~16_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[16]~13_combout\);

-- Location: MLABCELL_X39_Y52_N20
\Shift|Y_LL[16]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[16]~2_combout\ = ( !\B[4]~input_o\ & ( ((!\B[5]~input_o\ & (\Shift|ll4[16]~13_combout\))) ) ) # ( \B[4]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & (!\B[5]~input_o\ & (!\B[3]~input_o\ & (\A[0]~input_o\ & !\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000000000100000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~2_combout\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	datag => \Shift|ALT_INV_ll4[16]~13_combout\,
	combout => \Shift|Y_LL[16]~2_combout\);

-- Location: MLABCELL_X39_Y49_N34
\Add|block_carry_in[4]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~11_combout\ = ( \Add|block_carry_in[4]~4_combout\ & ( (!\Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\) # ((!\Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[3]~3_combout\))) # (\Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ 
-- & (\Add|block_carry_in[2]~2_combout\))) ) ) # ( !\Add|block_carry_in[4]~4_combout\ & ( (\Add|GEN_BLOCKS:3:LACG_INST|Pout~combout\ & ((!\Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[3]~3_combout\))) # 
-- (\Add|GEN_BLOCKS:2:LACG_INST|Pout~combout\ & (\Add|block_carry_in[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_Pout~combout\,
	datad => \Add|ALT_INV_block_carry_in[3]~3_combout\,
	dataf => \Add|ALT_INV_block_carry_in[4]~4_combout\,
	combout => \Add|block_carry_in[4]~11_combout\);

-- Location: MLABCELL_X39_Y52_N0
\Add|S[16]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(16) = ( \A[16]~input_o\ & ( !\Add|block_carry_in[4]~11_combout\ $ (!\AddnSub~input_o\ $ (!\B[16]~input_o\)) ) ) # ( !\A[16]~input_o\ & ( !\Add|block_carry_in[4]~11_combout\ $ (!\AddnSub~input_o\ $ (\B[16]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[4]~11_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|S\(16));

-- Location: MLABCELL_X39_Y52_N2
\Shift|Y_RA[15]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~2_combout\ = ( \A[31]~input_o\ & ( (\B[4]~input_o\) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|Y_RA[15]~2_combout\);

-- Location: MLABCELL_X42_Y48_N12
\Shift|Y_RL[16]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[16]~2_combout\ = ( !\B[5]~input_o\ & ( (\Shift|rl4[16]~1_combout\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl4[16]~1_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Shift|Y_RL[16]~2_combout\);

-- Location: MLABCELL_X39_Y52_N4
\Y_ShiftOrArith[16]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[16]~2_combout\ = ( !\ShiftFN[1]~input_o\ & ( \Shift|Y_RL[16]~2_combout\ & ( (!\ShiftFN[0]~input_o\ & ((!\Add|S\(16)))) # (\ShiftFN[0]~input_o\ & (!\Shift|Y_LL[16]~2_combout\)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Shift|Y_RL[16]~2_combout\ 
-- & ( (!\ShiftFN[0]~input_o\) # (!\Shift|Y_RA[15]~2_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Shift|Y_RL[16]~2_combout\ & ( (!\ShiftFN[0]~input_o\ & ((!\Add|S\(16)))) # (\ShiftFN[0]~input_o\ & (!\Shift|Y_LL[16]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110001011100010111111111100110011100010111000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_Y_LL[16]~2_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Add|ALT_INV_S\(16),
	datad => \Shift|ALT_INV_Y_RA[15]~2_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \Shift|ALT_INV_Y_RL[16]~2_combout\,
	combout => \Y_ShiftOrArith[16]~2_combout\);

-- Location: MLABCELL_X39_Y52_N38
\Logic|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[16]~input_o\ & (\B[16]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[16]~input_o\ & (!\B[16]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[4]~input_o\)))) # (\LogicFN[1]~input_o\ & (((\B[16]~input_o\)) # (\A[16]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101110111000011110111011101100110000100010110011000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: MLABCELL_X39_Y52_N8
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \FuncClass[0]~input_o\ & ( (\Logic|Mux15~0_combout\ & !\FuncClass[1]~input_o\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\Y_ShiftOrArith[16]~2_combout\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[16]~2_combout\,
	datac => \Logic|ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X43_Y48_N26
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100000000110011110000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X43_Y48_N28
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X38_Y49_N38
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \FuncClass[0]~input_o\ & ( \FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( ((!\Mux10~0_combout\ & \Mux10~1_combout\)) # (\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101011101010111010101110101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_Mux10~1_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X38_Y49_N36
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \FuncClass[0]~input_o\ & ( \FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( ((!\Mux10~1_combout\) # (\Mux10~0_combout\)) # (\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101110111111111110111011101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LABCELL_X38_Y49_N26
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \B[5]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\) # ((\B[17]~input_o\) # (\A[17]~input_o\)))) # (\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\ & (!\A[17]~input_o\ $ (!\B[17]~input_o\))) # (\LogicFN[1]~input_o\ & 
-- (\A[17]~input_o\ & \B[17]~input_o\)))) ) ) # ( !\B[5]~input_o\ & ( (!\A[17]~input_o\ & (\B[17]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\A[17]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\B[17]~input_o\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100011000001100110001110001110111010111000111011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_B[17]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LABCELL_X43_Y48_N32
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = ( \B[5]~input_o\ & ( !\ShiftFN[0]~input_o\ $ (!\ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\ShiftFN[0]~input_o\)) # (\B[4]~input_o\ & (!\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001100110001000100110011000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LABCELL_X43_Y48_N34
\Mux10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = ( \B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\B[4]~input_o\) # ((!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LABCELL_X43_Y46_N6
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \Shift|ra4[17]~0_combout\ & ( (!\Mux10~4_combout\ & ((!\Mux10~5_combout\ & (\A[31]~input_o\)) # (\Mux10~5_combout\ & ((\Shift|rl4[17]~3_combout\))))) # (\Mux10~4_combout\ & (((\Mux10~5_combout\)))) ) ) # ( !\Shift|ra4[17]~0_combout\ 
-- & ( (!\Mux10~4_combout\ & ((!\Mux10~5_combout\ & (\A[31]~input_o\)) # (\Mux10~5_combout\ & ((\Shift|rl4[17]~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000110001000100001111110100010000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_Mux10~4_combout\,
	datac => \Shift|ALT_INV_rl4[17]~3_combout\,
	datad => \ALT_INV_Mux10~5_combout\,
	dataf => \Shift|ALT_INV_ra4[17]~0_combout\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X39_Y52_N36
\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ = ( \Add|block_carry_in[4]~11_combout\ & ( (!\B[16]~input_o\ $ (!\AddnSub~input_o\)) # (\A[16]~input_o\) ) ) # ( !\Add|block_carry_in[4]~11_combout\ & ( (\A[16]~input_o\ & (!\B[16]~input_o\ $ 
-- (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[4]~11_combout\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\);

-- Location: LABCELL_X38_Y49_N0
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \Mux10~0_combout\ & ( \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ & ( (!\Mux10~1_combout\ & (!\Add|P\(17))) # (\Mux10~1_combout\ & ((\Shift|ll4[1]~0_combout\))) ) ) ) # ( !\Mux10~0_combout\ & ( 
-- \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ & ( (!\Mux10~1_combout\ & (\Mux14~0_combout\)) # (\Mux10~1_combout\ & ((\Shift|ll4[1]~0_combout\))) ) ) ) # ( \Mux10~0_combout\ & ( !\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ & ( (!\Mux10~1_combout\ & 
-- (\Add|P\(17))) # (\Mux10~1_combout\ & ((\Shift|ll4[1]~0_combout\))) ) ) ) # ( !\Mux10~0_combout\ & ( !\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ & ( (!\Mux10~1_combout\ & (\Mux14~0_combout\)) # (\Mux10~1_combout\ & ((\Shift|ll4[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000111101010101000011111100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~0_combout\,
	datab => \Add|ALT_INV_P\(17),
	datac => \Shift|ALT_INV_ll4[1]~0_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	datae => \ALT_INV_Mux10~0_combout\,
	dataf => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_C[1]~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X43_Y47_N18
\Shift|ll2[17]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~17_combout\ = ( \A[17]~input_o\ & ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[16]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[15]~input_o\))) ) ) ) # ( !\A[17]~input_o\ & ( \A[14]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\A[16]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[15]~input_o\))) ) ) ) # ( \A[17]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[16]~input_o\)))) # (\B[1]~input_o\ & 
-- (\A[15]~input_o\ & ((!\B[0]~input_o\)))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[14]~input_o\ & ( (!\B[1]~input_o\ & (((\A[16]~input_o\ & \B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[15]~input_o\ & ((!\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000111101010011000000000101001111111111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Shift|ll2[17]~17_combout\);

-- Location: MLABCELL_X39_Y46_N8
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \Shift|ll2[5]~5_combout\ & ( \B[2]~input_o\ & ( (\Shift|ll2[13]~13_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[5]~5_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[13]~13_combout\) ) ) ) # ( 
-- \Shift|ll2[5]~5_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[17]~17_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[9]~9_combout\))) ) ) ) # ( !\Shift|ll2[5]~5_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[17]~17_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[9]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[17]~17_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[13]~13_combout\,
	datad => \Shift|ALT_INV_ll2[9]~9_combout\,
	datae => \Shift|ALT_INV_ll2[5]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LABCELL_X38_Y49_N30
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( \Mux14~3_combout\ & ( (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & (\Mux14~2_combout\)) # (\Mux10~3_combout\ & ((\Mux14~1_combout\))))) # (\Mux10~2_combout\ & (!\Mux10~3_combout\)) ) ) # ( !\Mux14~3_combout\ & ( (!\Mux10~2_combout\ & 
-- ((!\Mux10~3_combout\ & (\Mux14~2_combout\)) # (\Mux10~3_combout\ & ((\Mux14~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_Mux10~3_combout\,
	datac => \ALT_INV_Mux14~2_combout\,
	datad => \ALT_INV_Mux14~1_combout\,
	dataf => \ALT_INV_Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: LABCELL_X43_Y46_N4
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Shift|rl4[18]~4_combout\ & ( (!\Mux10~4_combout\ & (((\Mux10~5_combout\)) # (\A[31]~input_o\))) # (\Mux10~4_combout\ & (((\Shift|ra4[18]~1_combout\ & \Mux10~5_combout\)))) ) ) # ( !\Shift|rl4[18]~4_combout\ & ( (!\Mux10~4_combout\ & 
-- (\A[31]~input_o\ & ((!\Mux10~5_combout\)))) # (\Mux10~4_combout\ & (((\Shift|ra4[18]~1_combout\ & \Mux10~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001000000001101000100110011110100010011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_Mux10~4_combout\,
	datac => \Shift|ALT_INV_ra4[18]~1_combout\,
	datad => \ALT_INV_Mux10~5_combout\,
	dataf => \Shift|ALT_INV_rl4[18]~4_combout\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X39_Y49_N36
\Add|P[18]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(18) = ( \A[18]~input_o\ & ( !\AddnSub~input_o\ $ (\B[18]~input_o\) ) ) # ( !\A[18]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_A[18]~input_o\,
	combout => \Add|P\(18));

-- Location: MLABCELL_X39_Y49_N4
\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ = (!\A[17]~input_o\ & (\Add|G\(16) & (!\AddnSub~input_o\ $ (!\B[17]~input_o\)))) # (\A[17]~input_o\ & ((!\AddnSub~input_o\ $ (!\B[17]~input_o\)) # (\Add|G\(16))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101001101000101110100110100010111010011010001011101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_G\(16),
	datad => \ALT_INV_B[17]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\);

-- Location: MLABCELL_X39_Y52_N10
\Add|S[18]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(18) = ( \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & ( !\Add|P\(18) $ (((!\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ & !\Add|block_carry_in[4]~11_combout\))) ) ) # ( !\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & ( !\Add|P\(18) $ 
-- (!\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100110011000011110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_P\(18),
	datac => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datad => \Add|ALT_INV_block_carry_in[4]~11_combout\,
	dataf => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|S\(18));

-- Location: LABCELL_X38_Y49_N14
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \Mux10~0_combout\ & ( \Mux20~0_combout\ & ( (!\Mux10~1_combout\ & (\Add|S\(18))) # (\Mux10~1_combout\ & ((\Shift|ll2[2]~0_combout\))) ) ) ) # ( !\Mux10~0_combout\ & ( \Mux20~0_combout\ & ( (!\Mux10~1_combout\ & (\Mux13~0_combout\)) # 
-- (\Mux10~1_combout\ & ((\Shift|ll2[2]~0_combout\))) ) ) ) # ( \Mux10~0_combout\ & ( !\Mux20~0_combout\ & ( (\Add|S\(18) & !\Mux10~1_combout\) ) ) ) # ( !\Mux10~0_combout\ & ( !\Mux20~0_combout\ & ( (\Mux13~0_combout\ & !\Mux10~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011000001010000010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~0_combout\,
	datab => \Add|ALT_INV_S\(18),
	datac => \ALT_INV_Mux10~1_combout\,
	datad => \Shift|ALT_INV_ll2[2]~0_combout\,
	datae => \ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X44_Y49_N16
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \B[6]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\B[18]~input_o\ $ (!\A[18]~input_o\)))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\A[18]~input_o\) # (\B[18]~input_o\))) # (\LogicFN[0]~input_o\ & 
-- (\B[18]~input_o\ & \A[18]~input_o\)))) ) ) # ( !\B[6]~input_o\ & ( (!\B[18]~input_o\ & (\A[18]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[18]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[18]~input_o\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100101000001100110010110001110111011011000111011101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X46_Y46_N30
\Shift|ll2[18]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~18_combout\ = ( \B[1]~input_o\ & ( \A[15]~input_o\ & ( (\A[16]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & \A[16]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[17]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[17]~input_o\,
	datad => \ALT_INV_A[16]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ll2[18]~18_combout\);

-- Location: MLABCELL_X44_Y49_N22
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \B[2]~input_o\ & ( \Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[14]~14_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[6]~6_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\) # 
-- (\Shift|ll2[10]~10_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[14]~14_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[6]~6_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ll2[18]~18_combout\ & ( 
-- (\B[3]~input_o\ & \Shift|ll2[10]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[6]~6_combout\,
	datab => \Shift|ALT_INV_ll2[14]~14_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[10]~10_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[18]~18_combout\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X38_Y49_N18
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \Mux13~3_combout\ & ( (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & ((\Mux13~2_combout\))) # (\Mux10~3_combout\ & (\Mux13~1_combout\)))) # (\Mux10~2_combout\ & (((!\Mux10~3_combout\)))) ) ) # ( !\Mux13~3_combout\ & ( 
-- (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & ((\Mux13~2_combout\))) # (\Mux10~3_combout\ & (\Mux13~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010010111100100101001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_Mux13~1_combout\,
	datac => \ALT_INV_Mux10~3_combout\,
	datad => \ALT_INV_Mux13~2_combout\,
	dataf => \ALT_INV_Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: LABCELL_X38_Y49_N24
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \A[19]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[7]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\B[19]~input_o\))))) ) ) # ( !\A[19]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\ & (\B[7]~input_o\)) # (\LogicFN[1]~input_o\ & ((\B[19]~input_o\))))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & ((\B[19]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001101110000010000110111001101110001110110110111000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X43_Y45_N38
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Shift|rl4[19]~5_combout\ & ( (!\Mux10~4_combout\ & (((\A[31]~input_o\)) # (\Mux10~5_combout\))) # (\Mux10~4_combout\ & (\Mux10~5_combout\ & (\Shift|ra4[19]~2_combout\))) ) ) # ( !\Shift|rl4[19]~5_combout\ & ( (!\Mux10~4_combout\ & 
-- (!\Mux10~5_combout\ & ((\A[31]~input_o\)))) # (\Mux10~4_combout\ & (\Mux10~5_combout\ & (\Shift|ra4[19]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100100100011101010110010001110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~4_combout\,
	datab => \ALT_INV_Mux10~5_combout\,
	datac => \Shift|ALT_INV_ra4[19]~2_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \Shift|ALT_INV_rl4[19]~5_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X38_Y49_N32
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \Shift|ll2[3]~1_combout\ & ( (!\Mux10~1_combout\ & (\Mux12~0_combout\ & (!\Mux10~0_combout\))) # (\Mux10~1_combout\ & (((\Mux20~0_combout\)))) ) ) # ( !\Shift|ll2[3]~1_combout\ & ( (\Mux12~0_combout\ & (!\Mux10~0_combout\ & 
-- !\Mux10~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000011110100010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \ALT_INV_Mux20~0_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	dataf => \Shift|ALT_INV_ll2[3]~1_combout\,
	combout => \Mux12~1_combout\);

-- Location: MLABCELL_X39_Y49_N12
\Add|GEN_BLOCKS:4:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~1_combout\ = ( \Add|G\(17) & ( (!\AddnSub~input_o\ $ (!\B[18]~input_o\)) # (\A[18]~input_o\) ) ) # ( !\Add|G\(17) & ( (\A[18]~input_o\ & (!\AddnSub~input_o\ $ (!\B[18]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	dataf => \Add|ALT_INV_G\(17),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X38_Y49_N16
\Add|P[19]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(19) = ( \A[19]~input_o\ & ( !\AddnSub~input_o\ $ (\B[19]~input_o\) ) ) # ( !\A[19]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Add|P\(19));

-- Location: MLABCELL_X39_Y52_N32
\Add|GEN_BLOCKS:4:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ = ( \AddnSub~input_o\ & ( \A[16]~input_o\ & ( (\Add|P\(17) & (\Add|P\(18) & ((!\B[16]~input_o\) # (\Add|block_carry_in[4]~11_combout\)))) ) ) ) # ( !\AddnSub~input_o\ & ( \A[16]~input_o\ & ( (\Add|P\(17) & 
-- (\Add|P\(18) & ((\B[16]~input_o\) # (\Add|block_carry_in[4]~11_combout\)))) ) ) ) # ( \AddnSub~input_o\ & ( !\A[16]~input_o\ & ( (\Add|P\(17) & (\Add|P\(18) & (\Add|block_carry_in[4]~11_combout\ & !\B[16]~input_o\))) ) ) ) # ( !\AddnSub~input_o\ & ( 
-- !\A[16]~input_o\ & ( (\Add|P\(17) & (\Add|P\(18) & (\Add|block_carry_in[4]~11_combout\ & \B[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000010000000000000001000100010001000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(17),
	datab => \Add|ALT_INV_P\(18),
	datac => \Add|ALT_INV_block_carry_in[4]~11_combout\,
	datad => \ALT_INV_B[16]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X43_Y46_N10
\Mux14~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = ( !\Mux10~1_combout\ & ( \Mux10~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux14~5_combout\);

-- Location: LABCELL_X38_Y49_N22
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Mux14~5_combout\ & ( (!\Mux12~1_combout\ & (!\Add|P\(19) $ (((\Add|GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\) # (\Add|GEN_BLOCKS:4:LACG_INST|g_int~1_combout\))))) ) ) # ( !\Mux14~5_combout\ & ( !\Mux12~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010000010000010101000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_g_int~1_combout\,
	datac => \Add|ALT_INV_P\(19),
	datad => \Add|GEN_BLOCKS:4:LACG_INST|ALT_INV_C[3]~1_combout\,
	dataf => \ALT_INV_Mux14~5_combout\,
	combout => \Mux12~2_combout\);

-- Location: MLABCELL_X46_Y46_N12
\Shift|ll2[19]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~19_combout\ = ( \B[1]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[16]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & ((\A[17]~input_o\))) # (\B[0]~input_o\ & (\A[16]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[19]~input_o\ & ( (\B[0]~input_o\ & \A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_A[16]~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ll2[19]~19_combout\);

-- Location: MLABCELL_X44_Y46_N38
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[7]~7_combout\) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( (\Shift|ll2[7]~7_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \Shift|ll2[15]~15_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[19]~19_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[11]~11_combout\)) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[19]~19_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[11]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[11]~11_combout\,
	datab => \Shift|ALT_INV_ll2[7]~7_combout\,
	datac => \Shift|ALT_INV_ll2[19]~19_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[15]~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LABCELL_X38_Y49_N28
\Mux12~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = ( \Mux12~4_combout\ & ( (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & (\Mux12~3_combout\)) # (\Mux10~3_combout\ & ((!\Mux12~2_combout\))))) # (\Mux10~2_combout\ & (!\Mux10~3_combout\)) ) ) # ( !\Mux12~4_combout\ & ( (!\Mux10~2_combout\ 
-- & ((!\Mux10~3_combout\ & (\Mux12~3_combout\)) # (\Mux10~3_combout\ & ((!\Mux12~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001000001010100000100001101110010011000110111001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_Mux10~3_combout\,
	datac => \ALT_INV_Mux12~3_combout\,
	datad => \ALT_INV_Mux12~2_combout\,
	dataf => \ALT_INV_Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: MLABCELL_X39_Y48_N6
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \A[31]~input_o\ & ( \Shift|rl4[20]~6_combout\ & ( (!\Mux10~4_combout\) # ((\Mux10~5_combout\ & \Shift|ra4[20]~3_combout\)) ) ) ) # ( !\A[31]~input_o\ & ( \Shift|rl4[20]~6_combout\ & ( (\Mux10~5_combout\ & ((!\Mux10~4_combout\) # 
-- (\Shift|ra4[20]~3_combout\))) ) ) ) # ( \A[31]~input_o\ & ( !\Shift|rl4[20]~6_combout\ & ( (!\Mux10~5_combout\ & (!\Mux10~4_combout\)) # (\Mux10~5_combout\ & (\Mux10~4_combout\ & \Shift|ra4[20]~3_combout\)) ) ) ) # ( !\A[31]~input_o\ & ( 
-- !\Shift|rl4[20]~6_combout\ & ( (\Mux10~5_combout\ & (\Mux10~4_combout\ & \Shift|ra4[20]~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001100010001001100101000100010101011100110011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~5_combout\,
	datab => \ALT_INV_Mux10~4_combout\,
	datad => \Shift|ALT_INV_ra4[20]~3_combout\,
	datae => \ALT_INV_A[31]~input_o\,
	dataf => \Shift|ALT_INV_rl4[20]~6_combout\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X39_Y49_N18
\Add|block_carry_in[5]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~12_combout\ = ( !\Add|block_carry_in[5]~5_combout\ & ( !\Add|block_carry_in[5]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[5]~14_combout\,
	dataf => \Add|ALT_INV_block_carry_in[5]~5_combout\,
	combout => \Add|block_carry_in[5]~12_combout\);

-- Location: MLABCELL_X39_Y48_N10
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \Mux10~0_combout\ & ( \Add|P\(20) & ( (!\Mux10~1_combout\ & ((\Add|block_carry_in[5]~12_combout\))) # (\Mux10~1_combout\ & (\Shift|ll4[4]~1_combout\)) ) ) ) # ( !\Mux10~0_combout\ & ( \Add|P\(20) & ( (!\Mux10~1_combout\ & 
-- ((\Mux11~0_combout\))) # (\Mux10~1_combout\ & (\Shift|ll4[4]~1_combout\)) ) ) ) # ( \Mux10~0_combout\ & ( !\Add|P\(20) & ( (!\Mux10~1_combout\ & ((!\Add|block_carry_in[5]~12_combout\))) # (\Mux10~1_combout\ & (\Shift|ll4[4]~1_combout\)) ) ) ) # ( 
-- !\Mux10~0_combout\ & ( !\Add|P\(20) & ( (!\Mux10~1_combout\ & ((\Mux11~0_combout\))) # (\Mux10~1_combout\ & (\Shift|ll4[4]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101110111010001000100011101000111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[4]~1_combout\,
	datab => \ALT_INV_Mux10~1_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \Add|ALT_INV_block_carry_in[5]~12_combout\,
	datae => \ALT_INV_Mux10~0_combout\,
	dataf => \Add|ALT_INV_P\(20),
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X39_Y48_N12
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \LogicFN[0]~input_o\ & ( \LogicFN[1]~input_o\ & ( (\B[20]~input_o\ & \A[20]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( \LogicFN[1]~input_o\ & ( (\A[20]~input_o\) # (\B[20]~input_o\) ) ) ) # ( \LogicFN[0]~input_o\ & ( 
-- !\LogicFN[1]~input_o\ & ( !\B[20]~input_o\ $ (!\A[20]~input_o\) ) ) ) # ( !\LogicFN[0]~input_o\ & ( !\LogicFN[1]~input_o\ & ( \B[8]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101011010101001010101111111110000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[20]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: MLABCELL_X46_Y46_N16
\Shift|ll2[20]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~20_combout\ = ( \A[17]~input_o\ & ( \A[19]~input_o\ & ( ((!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[18]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[17]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[18]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[17]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[18]~input_o\))))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[17]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[18]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001001010010111101110000011110100111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_A[17]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ll2[20]~20_combout\);

-- Location: LABCELL_X40_Y47_N0
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \Shift|ll2[12]~12_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[16]~16_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[8]~8_combout\))) ) ) ) # ( !\Shift|ll2[12]~12_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[16]~16_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[8]~8_combout\))) ) ) ) # ( \Shift|ll2[12]~12_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ll2[20]~20_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[12]~12_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & \Shift|ll2[20]~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[16]~16_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[20]~20_combout\,
	datad => \Shift|ALT_INV_ll2[8]~8_combout\,
	datae => \Shift|ALT_INV_ll2[12]~12_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: MLABCELL_X39_Y48_N22
\Mux11~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ( \Mux11~3_combout\ & ( (!\Mux10~3_combout\ & (((\Mux11~2_combout\)) # (\Mux10~2_combout\))) # (\Mux10~3_combout\ & (!\Mux10~2_combout\ & (\Mux11~1_combout\))) ) ) # ( !\Mux11~3_combout\ & ( (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & 
-- ((\Mux11~2_combout\))) # (\Mux10~3_combout\ & (\Mux11~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~3_combout\,
	datab => \ALT_INV_Mux10~2_combout\,
	datac => \ALT_INV_Mux11~1_combout\,
	datad => \ALT_INV_Mux11~2_combout\,
	dataf => \ALT_INV_Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: MLABCELL_X39_Y45_N2
\Shift|ll2[21]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~21_combout\ = ( \B[1]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[19]~input_o\ & ( (!\B[0]~input_o\ & (\A[21]~input_o\)) # (\B[0]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[19]~input_o\ & ( (\B[0]~input_o\ & \A[18]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[0]~input_o\ & (\A[21]~input_o\)) # (\B[0]~input_o\ & ((\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[21]~input_o\,
	datab => \ALT_INV_A[20]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ll2[21]~21_combout\);

-- Location: MLABCELL_X39_Y46_N12
\Mux10~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = ( \Shift|ll2[21]~21_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[17]~17_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[9]~9_combout\))) ) ) ) # ( !\Shift|ll2[21]~21_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[17]~17_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[9]~9_combout\))) ) ) ) # ( \Shift|ll2[21]~21_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[13]~13_combout\) ) ) ) # ( !\Shift|ll2[21]~21_combout\ & ( !\B[2]~input_o\ & ( 
-- (\Shift|ll2[13]~13_combout\ & \B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[13]~13_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[17]~17_combout\,
	datad => \Shift|ALT_INV_ll2[9]~9_combout\,
	datae => \Shift|ALT_INV_ll2[21]~21_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux10~9_combout\);

-- Location: MLABCELL_X44_Y48_N4
\Mux10~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[21]~input_o\ & (\A[21]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[21]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[21]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- (((\B[9]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\B[21]~input_o\ $ ((!\A[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101100110000011110110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[21]~input_o\,
	datab => \ALT_INV_A[21]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux10~8_combout\);

-- Location: LABCELL_X43_Y46_N32
\Mux10~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~10_combout\ = ( \Mux10~8_combout\ & ( (!\Mux10~3_combout\ & ((!\Mux10~2_combout\) # (\Mux10~9_combout\))) ) ) # ( !\Mux10~8_combout\ & ( (\Mux10~9_combout\ & (!\Mux10~3_combout\ & \Mux10~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~9_combout\,
	datac => \ALT_INV_Mux10~3_combout\,
	datad => \ALT_INV_Mux10~2_combout\,
	dataf => \ALT_INV_Mux10~8_combout\,
	combout => \Mux10~10_combout\);

-- Location: MLABCELL_X39_Y48_N18
\Add|GEN_BLOCKS:5:LACG_INST|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\ = ( \Add|block_carry_in[5]~12_combout\ & ( \AddnSub~input_o\ & ( (\A[20]~input_o\ & !\B[20]~input_o\) ) ) ) # ( !\Add|block_carry_in[5]~12_combout\ & ( \AddnSub~input_o\ & ( (!\B[20]~input_o\) # 
-- (\A[20]~input_o\) ) ) ) # ( \Add|block_carry_in[5]~12_combout\ & ( !\AddnSub~input_o\ & ( (\A[20]~input_o\ & \B[20]~input_o\) ) ) ) # ( !\Add|block_carry_in[5]~12_combout\ & ( !\AddnSub~input_o\ & ( (\B[20]~input_o\) # (\A[20]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111000000000011001111111111001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[20]~input_o\,
	datae => \Add|ALT_INV_block_carry_in[5]~12_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\);

-- Location: LABCELL_X43_Y46_N36
\Mux10~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = ( \Shift|rl4[21]~7_combout\ & ( (!\Mux10~4_combout\ & (((\Mux10~5_combout\)) # (\A[31]~input_o\))) # (\Mux10~4_combout\ & (((\Shift|ra4[21]~4_combout\ & \Mux10~5_combout\)))) ) ) # ( !\Shift|rl4[21]~7_combout\ & ( (!\Mux10~4_combout\ & 
-- (\A[31]~input_o\ & ((!\Mux10~5_combout\)))) # (\Mux10~4_combout\ & (((\Shift|ra4[21]~4_combout\ & \Mux10~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001000000001101000100110011110100010011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_Mux10~4_combout\,
	datac => \Shift|ALT_INV_ra4[21]~4_combout\,
	datad => \ALT_INV_Mux10~5_combout\,
	dataf => \Shift|ALT_INV_rl4[21]~7_combout\,
	combout => \Mux10~6_combout\);

-- Location: LABCELL_X43_Y46_N34
\Mux10~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = ( \Mux10~1_combout\ & ( \Shift|ll4[5]~2_combout\ ) ) # ( !\Mux10~1_combout\ & ( (\Mux10~6_combout\ & !\Mux10~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux10~6_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \Shift|ALT_INV_ll4[5]~2_combout\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux10~7_combout\);

-- Location: LABCELL_X43_Y46_N8
\Mux14~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = ( \Mux10~3_combout\ & ( !\Mux10~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux10~2_combout\,
	dataf => \ALT_INV_Mux10~3_combout\,
	combout => \Mux14~6_combout\);

-- Location: LABCELL_X43_Y46_N16
\Mux10~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~11_combout\ = ( \Mux14~6_combout\ & ( \Add|P\(21) & ( (((\Mux14~5_combout\ & !\Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\)) # (\Mux10~7_combout\)) # (\Mux10~10_combout\) ) ) ) # ( !\Mux14~6_combout\ & ( \Add|P\(21) & ( \Mux10~10_combout\ ) ) ) # ( 
-- \Mux14~6_combout\ & ( !\Add|P\(21) & ( (((\Mux14~5_combout\ & \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\)) # (\Mux10~7_combout\)) # (\Mux10~10_combout\) ) ) ) # ( !\Mux14~6_combout\ & ( !\Add|P\(21) & ( \Mux10~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101111111111101010101010101010111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~10_combout\,
	datab => \ALT_INV_Mux14~5_combout\,
	datac => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_C[1]~0_combout\,
	datad => \ALT_INV_Mux10~7_combout\,
	datae => \ALT_INV_Mux14~6_combout\,
	dataf => \Add|ALT_INV_P\(21),
	combout => \Mux10~11_combout\);

-- Location: MLABCELL_X42_Y47_N22
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \A[31]~input_o\ & ( (!\Mux10~4_combout\ & (((!\Mux10~5_combout\) # (\Shift|rl4[22]~9_combout\)))) # (\Mux10~4_combout\ & (\Shift|ra4[22]~5_combout\ & ((\Mux10~5_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (\Mux10~5_combout\ & 
-- ((!\Mux10~4_combout\ & ((\Shift|rl4[22]~9_combout\))) # (\Mux10~4_combout\ & (\Shift|ra4[22]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110111001100000111011100110000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra4[22]~5_combout\,
	datab => \ALT_INV_Mux10~4_combout\,
	datac => \Shift|ALT_INV_rl4[22]~9_combout\,
	datad => \ALT_INV_Mux10~5_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X44_Y48_N10
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \Shift|ll4[6]~3_combout\ & ( ((\Mux9~0_combout\ & !\Mux10~0_combout\)) # (\Mux10~1_combout\) ) ) # ( !\Shift|ll4[6]~3_combout\ & ( (\Mux9~0_combout\ & (!\Mux10~1_combout\ & !\Mux10~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux10~1_combout\,
	datad => \ALT_INV_Mux10~0_combout\,
	dataf => \Shift|ALT_INV_ll4[6]~3_combout\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X44_Y48_N8
\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\ = ( \A[21]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[21]~input_o\)) # (\Add|G\(20)) ) ) # ( !\A[21]~input_o\ & ( (\Add|G\(20) & (!\AddnSub~input_o\ $ (!\B[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \Add|ALT_INV_G\(20),
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\);

-- Location: MLABCELL_X44_Y48_N34
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \Mux14~5_combout\ & ( \Add|P\(22) & ( (!\Mux9~1_combout\ & (((\Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & !\Add|block_carry_in[5]~12_combout\)) # (\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\))) ) ) ) # ( !\Mux14~5_combout\ & ( 
-- \Add|P\(22) & ( !\Mux9~1_combout\ ) ) ) # ( \Mux14~5_combout\ & ( !\Add|P\(22) & ( (!\Mux9~1_combout\ & (!\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\ & ((!\Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\) # (\Add|block_carry_in[5]~12_combout\)))) ) ) ) # ( 
-- !\Mux14~5_combout\ & ( !\Add|P\(22) & ( !\Mux9~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000101100000000000011110000111100000100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \Add|ALT_INV_block_carry_in[5]~12_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	datae => \ALT_INV_Mux14~5_combout\,
	dataf => \Add|ALT_INV_P\(22),
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X44_Y48_N0
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \B[10]~input_o\ & ( (!\B[22]~input_o\ & ((!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[22]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[22]~input_o\ & !\LogicFN[0]~input_o\)))) # (\B[22]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\ $ (\A[22]~input_o\)))) ) ) # ( !\B[10]~input_o\ & ( (!\B[22]~input_o\ & (\A[22]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[22]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[22]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001101001001000100110100100111011111010010011101111101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X39_Y45_N26
\Shift|ll2[22]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~22_combout\ = ( \B[0]~input_o\ & ( \A[19]~input_o\ & ( (\A[21]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & \A[21]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[19]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000000001010101000100111001001110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[19]~input_o\,
	combout => \Shift|ll2[22]~22_combout\);

-- Location: MLABCELL_X44_Y49_N6
\Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( \Shift|ll2[22]~22_combout\ & ( \Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\Shift|ll2[14]~14_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[10]~10_combout\)))) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( 
-- \Shift|ll2[18]~18_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[14]~14_combout\ & (\B[3]~input_o\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ll2[10]~10_combout\)))) ) ) ) # ( \Shift|ll2[22]~22_combout\ & ( !\Shift|ll2[18]~18_combout\ & ( 
-- (!\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ll2[14]~14_combout\))) # (\B[2]~input_o\ & (((\B[3]~input_o\ & \Shift|ll2[10]~10_combout\)))) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( !\Shift|ll2[18]~18_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & 
-- (\Shift|ll2[14]~14_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[10]~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111110001001100011100110100001101111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[14]~14_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[10]~10_combout\,
	datae => \Shift|ALT_INV_ll2[22]~22_combout\,
	dataf => \Shift|ALT_INV_ll2[18]~18_combout\,
	combout => \Mux9~4_combout\);

-- Location: LABCELL_X43_Y48_N14
\Mux9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = ( \Mux10~2_combout\ & ( (\Mux9~4_combout\ & !\Mux10~3_combout\) ) ) # ( !\Mux10~2_combout\ & ( (!\Mux10~3_combout\ & ((\Mux9~3_combout\))) # (\Mux10~3_combout\ & (!\Mux9~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110101010001100111010101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~2_combout\,
	datab => \ALT_INV_Mux9~3_combout\,
	datac => \ALT_INV_Mux9~4_combout\,
	datad => \ALT_INV_Mux10~3_combout\,
	dataf => \ALT_INV_Mux10~2_combout\,
	combout => \Mux9~5_combout\);

-- Location: MLABCELL_X39_Y45_N28
\Shift|ll2[23]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~23_combout\ = ( \B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\) # (\A[21]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & (\A[22]~input_o\)) # (\B[1]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[23]~input_o\ & ( (\B[1]~input_o\ & \A[21]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[21]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|ll2[23]~23_combout\);

-- Location: MLABCELL_X44_Y46_N2
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[19]~19_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[11]~11_combout\)) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[19]~19_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[11]~11_combout\)) ) ) ) # ( \Shift|ll2[15]~15_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ll2[23]~23_combout\) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( !\B[2]~input_o\ & ( 
-- (\Shift|ll2[23]~23_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[11]~11_combout\,
	datab => \Shift|ALT_INV_ll2[23]~23_combout\,
	datac => \Shift|ALT_INV_ll2[19]~19_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[15]~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: MLABCELL_X44_Y46_N34
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \A[23]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\)) # (\B[11]~input_o\))) # (\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\ $ (\B[23]~input_o\)))) ) ) # ( !\A[23]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & (\B[11]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[23]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\B[23]~input_o\ & !\LogicFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100001100010001110000110001110111110000110111011111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[23]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X44_Y46_N24
\Mux8~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( !\Mux10~3_combout\ & ( (!\Mux10~2_combout\ & ((\Mux8~1_combout\))) # (\Mux10~2_combout\ & (\Mux8~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux8~2_combout\,
	datac => \ALT_INV_Mux10~2_combout\,
	datad => \ALT_INV_Mux8~1_combout\,
	dataf => \ALT_INV_Mux10~3_combout\,
	combout => \Mux8~3_combout\);

-- Location: LABCELL_X43_Y45_N36
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \A[31]~input_o\ & ( (!\Mux10~4_combout\ & ((!\Mux10~5_combout\) # ((\Shift|rl4[23]~10_combout\)))) # (\Mux10~4_combout\ & (\Mux10~5_combout\ & (\Shift|ra4[23]~6_combout\))) ) ) # ( !\A[31]~input_o\ & ( (\Mux10~5_combout\ & 
-- ((!\Mux10~4_combout\ & ((\Shift|rl4[23]~10_combout\))) # (\Mux10~4_combout\ & (\Shift|ra4[23]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001110001001101010111000100110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~4_combout\,
	datab => \ALT_INV_Mux10~5_combout\,
	datac => \Shift|ALT_INV_ra4[23]~6_combout\,
	datad => \Shift|ALT_INV_rl4[23]~10_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X44_Y48_N22
\Add|GEN_BLOCKS:5:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ = ( \Add|G\(21) & ( (!\B[22]~input_o\ $ (!\AddnSub~input_o\)) # (\A[22]~input_o\) ) ) # ( !\Add|G\(21) & ( (\A[22]~input_o\ & (!\B[22]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	dataf => \Add|ALT_INV_G\(21),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\);

-- Location: MLABCELL_X44_Y48_N38
\Add|S[23]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(23) = ( !\Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ & ( \Add|P\(23) & ( (!\Add|P\(22)) # ((!\Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\ & ((!\Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\) # (\Add|block_carry_in[5]~12_combout\)))) ) ) ) # ( 
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ & ( !\Add|P\(23) ) ) # ( !\Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ & ( !\Add|P\(23) & ( (\Add|P\(22) & (((!\Add|block_carry_in[5]~12_combout\ & \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\)) # 
-- (\Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000101111111111111111111111010101110100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(22),
	datab => \Add|ALT_INV_block_carry_in[5]~12_combout\,
	datac => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~0_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~0_combout\,
	datae => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_g_int~2_combout\,
	dataf => \Add|ALT_INV_P\(23),
	combout => \Add|S\(23));

-- Location: LABCELL_X43_Y45_N0
\Mux8~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( !\Mux10~1_combout\ & ( ((\Mux14~6_combout\ & ((!\Mux10~0_combout\ & (\Mux8~0_combout\)) # (\Mux10~0_combout\ & ((\Add|S\(23))))))) # (\Mux8~3_combout\) ) ) # ( \Mux10~1_combout\ & ( (((\Shift|ll4[7]~4_combout\ & (\Mux14~6_combout\)))) 
-- # (\Mux8~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0101010101110101010101010101111101010101011111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~3_combout\,
	datab => \ALT_INV_Mux8~0_combout\,
	datac => \Shift|ALT_INV_ll4[7]~4_combout\,
	datad => \ALT_INV_Mux14~6_combout\,
	datae => \ALT_INV_Mux10~1_combout\,
	dataf => \Add|ALT_INV_S\(23),
	datag => \ALT_INV_Mux10~0_combout\,
	combout => \Mux8~4_combout\);

-- Location: LABCELL_X40_Y46_N8
\Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \B[12]~input_o\ & ( (!\B[24]~input_o\ & ((!\A[24]~input_o\ & (!\LogicFN[1]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[24]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))))) # (\B[24]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\A[24]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[12]~input_o\ & ( (!\B[24]~input_o\ & (\A[24]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[24]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[24]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101100001000001110110000111110111011000011111011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X43_Y48_N10
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Mux10~4_combout\ & ( (\Mux10~5_combout\ & (((\A[31]~input_o\ & \B[3]~input_o\)) # (\Shift|rl4[24]~11_combout\))) ) ) # ( !\Mux10~4_combout\ & ( (!\Mux10~5_combout\ & (\A[31]~input_o\)) # (\Mux10~5_combout\ & 
-- ((\Shift|rl4[24]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000001000011110000000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux10~5_combout\,
	datad => \Shift|ALT_INV_rl4[24]~11_combout\,
	dataf => \ALT_INV_Mux10~4_combout\,
	combout => \Mux7~0_combout\);

-- Location: MLABCELL_X39_Y49_N16
\Add|block_carry_in[6]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~13_combout\ = (!\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[6]~6_combout\)))) # (\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & (!\Add|block_carry_in[5]~14_combout\ & ((!\Add|block_carry_in[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110100000001100111010000000110011101000000011001110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[5]~14_combout\,
	datab => \Add|ALT_INV_block_carry_in[6]~6_combout\,
	datac => \Add|ALT_INV_block_carry_in[5]~5_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|ALT_INV_Pout~combout\,
	combout => \Add|block_carry_in[6]~13_combout\);

-- Location: LABCELL_X40_Y46_N6
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Shift|ll4[8]~5_combout\ & ( \Mux10~1_combout\ ) ) # ( \Shift|ll4[8]~5_combout\ & ( !\Mux10~1_combout\ & ( (!\Mux10~0_combout\ & (\Mux7~0_combout\)) # (\Mux10~0_combout\ & ((!\Add|block_carry_in[6]~13_combout\ $ (\Add|P\(24))))) ) ) ) 
-- # ( !\Shift|ll4[8]~5_combout\ & ( !\Mux10~1_combout\ & ( (!\Mux10~0_combout\ & (\Mux7~0_combout\)) # (\Mux10~0_combout\ & ((!\Add|block_carry_in[6]~13_combout\ $ (\Add|P\(24))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001010011010111000101001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~0_combout\,
	datab => \Add|ALT_INV_block_carry_in[6]~13_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \Add|ALT_INV_P\(24),
	datae => \Shift|ALT_INV_ll4[8]~5_combout\,
	dataf => \ALT_INV_Mux10~1_combout\,
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X39_Y45_N34
\Shift|ll2[24]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~24_combout\ = ( \A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[22]~input_o\)) # (\B[0]~input_o\ & ((\A[21]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[22]~input_o\)) # (\B[0]~input_o\ & ((\A[21]~input_o\))))) ) ) ) # ( \A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & (\A[22]~input_o\)) # (\B[0]~input_o\ & ((\A[21]~input_o\))))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[23]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[22]~input_o\)) # (\B[0]~input_o\ & ((\A[21]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|ll2[24]~24_combout\);

-- Location: LABCELL_X40_Y47_N6
\Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \Shift|ll2[16]~16_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[20]~20_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[12]~12_combout\)) ) ) ) # ( !\Shift|ll2[16]~16_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[20]~20_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[12]~12_combout\)) ) ) ) # ( \Shift|ll2[16]~16_combout\ & ( !\B[2]~input_o\ & ( (\Shift|ll2[24]~24_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[16]~16_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & \Shift|ll2[24]~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[12]~12_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[24]~24_combout\,
	datad => \Shift|ALT_INV_ll2[20]~20_combout\,
	datae => \Shift|ALT_INV_ll2[16]~16_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LABCELL_X40_Y46_N24
\Mux7~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = ( \Mux7~3_combout\ & ( (!\Mux10~3_combout\ & (((\Mux10~2_combout\)) # (\Mux7~2_combout\))) # (\Mux10~3_combout\ & (((\Mux7~1_combout\ & !\Mux10~2_combout\)))) ) ) # ( !\Mux7~3_combout\ & ( (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & 
-- (\Mux7~2_combout\)) # (\Mux10~3_combout\ & ((\Mux7~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100000000010100110000000001010011111100000101001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux7~2_combout\,
	datab => \ALT_INV_Mux7~1_combout\,
	datac => \ALT_INV_Mux10~3_combout\,
	datad => \ALT_INV_Mux10~2_combout\,
	dataf => \ALT_INV_Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: LABCELL_X40_Y46_N10
\Add|GEN_BLOCKS:6:LACG_INST|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\ = ( \Add|block_carry_in[6]~13_combout\ & ( (\A[24]~input_o\ & (!\B[24]~input_o\ $ (!\AddnSub~input_o\))) ) ) # ( !\Add|block_carry_in[6]~13_combout\ & ( (!\B[24]~input_o\ $ (!\AddnSub~input_o\)) # 
-- (\A[24]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011110111011011101111011101100010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[24]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[6]~13_combout\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\);

-- Location: MLABCELL_X39_Y46_N18
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \A[25]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[13]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\B[25]~input_o\)))) ) ) # ( !\A[25]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\ & ((\B[13]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[25]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & (\B[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111001100011111010110110001111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X43_Y48_N36
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\B[4]~input_o\ & (!\B[3]~input_o\ & !\B[5]~input_o\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # ((!\B[4]~input_o\ & (!\B[3]~input_o\ & !\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110000000111111111000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X43_Y48_N24
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \B[5]~input_o\ & ( !\ShiftFN[0]~input_o\ $ (!\ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & ((\B[3]~input_o\) # (\B[4]~input_o\)))) # (\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & 
-- ((!\B[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011000001100001001100000110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X42_Y46_N38
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \A[31]~input_o\ & ( (!\Mux6~2_combout\ & (!\Mux6~3_combout\)) # (\Mux6~2_combout\ & ((!\Mux6~3_combout\ & (\Shift|rl3[25]~1_combout\)) # (\Mux6~3_combout\ & ((\Shift|ra3[25]~1_combout\))))) ) ) # ( !\A[31]~input_o\ & ( 
-- (\Mux6~2_combout\ & ((!\Mux6~3_combout\ & (\Shift|rl3[25]~1_combout\)) # (\Mux6~3_combout\ & ((\Shift|ra3[25]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110001100100111011000110010011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~2_combout\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \Shift|ALT_INV_rl3[25]~1_combout\,
	datad => \Shift|ALT_INV_ra3[25]~1_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: MLABCELL_X39_Y46_N4
\Mux6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = ( \Mux10~0_combout\ & ( (\Mux10~1_combout\ & (\Mux14~6_combout\ & \Shift|ll4[9]~6_combout\)) ) ) # ( !\Mux10~0_combout\ & ( (\Mux14~6_combout\ & ((!\Mux10~1_combout\ & ((\Mux6~4_combout\))) # (\Mux10~1_combout\ & 
-- (\Shift|ll4[9]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~1_combout\,
	datab => \ALT_INV_Mux14~6_combout\,
	datac => \Shift|ALT_INV_ll4[9]~6_combout\,
	datad => \ALT_INV_Mux6~4_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux6~5_combout\);

-- Location: MLABCELL_X39_Y45_N18
\Shift|ll2[25]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~25_combout\ = ( \A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[25]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[22]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( \A[23]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[25]~input_o\))) # (\B[0]~input_o\ & (((\A[22]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[0]~input_o\ & (\A[25]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\) # (\A[22]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[0]~input_o\ & (\A[25]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[22]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|ll2[25]~25_combout\);

-- Location: MLABCELL_X39_Y46_N0
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Shift|ll2[21]~21_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[13]~13_combout\) ) ) ) # ( !\Shift|ll2[21]~21_combout\ & ( \B[2]~input_o\ & ( (\Shift|ll2[13]~13_combout\ & \B[3]~input_o\) ) ) ) # ( 
-- \Shift|ll2[21]~21_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[25]~25_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[17]~17_combout\)) ) ) ) # ( !\Shift|ll2[21]~21_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[25]~25_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[17]~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100010001000100011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[13]~13_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[17]~17_combout\,
	datad => \Shift|ALT_INV_ll2[25]~25_combout\,
	datae => \Shift|ALT_INV_ll2[21]~21_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X39_Y46_N28
\Mux6~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = ( \Mux6~1_combout\ & ( (!\Mux6~5_combout\ & (((!\Mux10~2_combout\ & !\Mux6~0_combout\)) # (\Mux10~3_combout\))) ) ) # ( !\Mux6~1_combout\ & ( (!\Mux6~5_combout\ & (((!\Mux6~0_combout\) # (\Mux10~2_combout\)) # (\Mux10~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011100000000111101110000000011010101000000001101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~3_combout\,
	datab => \ALT_INV_Mux10~2_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_Mux6~5_combout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~6_combout\);

-- Location: MLABCELL_X39_Y46_N34
\Mux6~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = ( \Mux6~6_combout\ & ( (\Mux14~5_combout\ & (\Mux14~6_combout\ & (!\Add|P\(25) $ (!\Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\)))) ) ) # ( !\Mux6~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~5_combout\,
	datab => \ALT_INV_Mux14~6_combout\,
	datac => \Add|ALT_INV_P\(25),
	datad => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_Mux6~6_combout\,
	combout => \Mux6~7_combout\);

-- Location: LABCELL_X40_Y49_N26
\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\ = ( \B[25]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|G\(24)) # (\A[25]~input_o\))) # (\AddnSub~input_o\ & (\A[25]~input_o\ & \Add|G\(24))) ) ) # ( !\B[25]~input_o\ & ( (!\AddnSub~input_o\ & (\A[25]~input_o\ 
-- & \Add|G\(24))) # (\AddnSub~input_o\ & ((\Add|G\(24)) # (\A[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[25]~input_o\,
	datad => \Add|ALT_INV_G\(24),
	dataf => \ALT_INV_B[25]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\);

-- Location: LABCELL_X40_Y49_N28
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Add|block_carry_in[6]~13_combout\ & ( (\Mux14~5_combout\ & (!\Add|P\(26) $ (!\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\))) ) ) # ( !\Add|block_carry_in[6]~13_combout\ & ( (\Mux14~5_combout\ & (!\Add|P\(26) $ 
-- (((!\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & !\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001100000001100000110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \Add|ALT_INV_P\(26),
	datac => \ALT_INV_Mux14~5_combout\,
	datad => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	dataf => \Add|ALT_INV_block_carry_in[6]~13_combout\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X42_Y45_N32
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Mux6~2_combout\ & ( (!\Mux6~3_combout\ & ((\Shift|rl3[26]~3_combout\))) # (\Mux6~3_combout\ & (\Shift|ra3[26]~2_combout\)) ) ) # ( !\Mux6~2_combout\ & ( (!\Mux6~3_combout\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[26]~2_combout\,
	datab => \Shift|ALT_INV_rl3[26]~3_combout\,
	datac => \ALT_INV_Mux6~3_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X43_Y48_N30
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Mux5~1_combout\ & ( (!\Mux10~1_combout\ & ((!\Mux10~0_combout\))) # (\Mux10~1_combout\ & (\Shift|ll4[10]~7_combout\)) ) ) # ( !\Mux5~1_combout\ & ( (\Shift|ll4[10]~7_combout\ & \Mux10~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111110000001100111111000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ll4[10]~7_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X44_Y48_N24
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \A[26]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[14]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\B[26]~input_o\))))) ) ) # ( !\A[26]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & (\B[14]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[26]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\B[26]~input_o\ & !\LogicFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100001010001001110000101001110111101001010111011110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[26]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X40_Y45_N0
\Shift|ll2[26]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~26_combout\ = ( \A[24]~input_o\ & ( \A[23]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[25]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[24]~input_o\ & ( \A[23]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[25]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[25]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[23]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[25]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[25]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[23]~input_o\,
	combout => \Shift|ll2[26]~26_combout\);

-- Location: MLABCELL_X44_Y49_N28
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( \Shift|ll2[22]~22_combout\ & ( \Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\) # (\Shift|ll2[26]~26_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|ll2[14]~14_combout\))) ) ) ) # ( 
-- !\Shift|ll2[22]~22_combout\ & ( \Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ll2[26]~26_combout\ & !\B[2]~input_o\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|ll2[14]~14_combout\))) ) ) ) # ( \Shift|ll2[22]~22_combout\ & ( 
-- !\Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\) # (\Shift|ll2[26]~26_combout\)))) # (\B[3]~input_o\ & (\Shift|ll2[14]~14_combout\ & ((\B[2]~input_o\)))) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( !\Shift|ll2[18]~18_combout\ & ( 
-- (!\B[3]~input_o\ & (((\Shift|ll2[26]~26_combout\ & !\B[2]~input_o\)))) # (\B[3]~input_o\ & (\Shift|ll2[14]~14_combout\ & ((\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[14]~14_combout\,
	datab => \Shift|ALT_INV_ll2[26]~26_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[22]~22_combout\,
	dataf => \Shift|ALT_INV_ll2[18]~18_combout\,
	combout => \Mux5~4_combout\);

-- Location: LABCELL_X43_Y48_N18
\Mux5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = ( \Mux5~4_combout\ & ( \Mux10~2_combout\ & ( !\Mux10~3_combout\ ) ) ) # ( \Mux5~4_combout\ & ( !\Mux10~2_combout\ & ( (!\Mux10~3_combout\ & (((\Mux5~3_combout\)))) # (\Mux10~3_combout\ & (((\Mux5~2_combout\)) # (\Mux5~0_combout\))) ) ) 
-- ) # ( !\Mux5~4_combout\ & ( !\Mux10~2_combout\ & ( (!\Mux10~3_combout\ & (((\Mux5~3_combout\)))) # (\Mux10~3_combout\ & (((\Mux5~2_combout\)) # (\Mux5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101110111000011110111011100000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~0_combout\,
	datab => \ALT_INV_Mux5~2_combout\,
	datac => \ALT_INV_Mux5~3_combout\,
	datad => \ALT_INV_Mux10~3_combout\,
	datae => \ALT_INV_Mux5~4_combout\,
	dataf => \ALT_INV_Mux10~2_combout\,
	combout => \Mux5~5_combout\);

-- Location: LABCELL_X40_Y49_N0
\Add|GEN_BLOCKS:6:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ = ( \Add|G\(25) & ( (!\B[26]~input_o\ $ (!\AddnSub~input_o\)) # (\A[26]~input_o\) ) ) # ( !\Add|G\(25) & ( (\A[26]~input_o\ & (!\B[26]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[26]~input_o\,
	datab => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_G\(25),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X40_Y49_N38
\Add|GEN_BLOCKS:6:LACG_INST|C[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C\(3) = ( !\Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ & ( (!\Add|P\(26)) # ((!\Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\ & ((!\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\) # (\Add|block_carry_in[6]~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111001100111011111100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \Add|ALT_INV_P\(26),
	datac => \Add|ALT_INV_block_carry_in[6]~13_combout\,
	datad => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~0_combout\,
	dataf => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_g_int~2_combout\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C\(3));

-- Location: MLABCELL_X42_Y45_N38
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Mux6~2_combout\ & ( (!\Mux6~3_combout\ & ((\Shift|rl3[27]~5_combout\))) # (\Mux6~3_combout\ & (\Shift|ra3[27]~3_combout\)) ) ) # ( !\Mux6~2_combout\ & ( (\A[31]~input_o\ & !\Mux6~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[27]~3_combout\,
	datab => \Shift|ALT_INV_rl3[27]~5_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_Mux6~3_combout\,
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X40_Y49_N14
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Shift|ll4[11]~8_combout\ & ( ((!\Mux10~0_combout\ & \Mux4~0_combout\)) # (\Mux10~1_combout\) ) ) # ( !\Shift|ll4[11]~8_combout\ & ( (!\Mux10~1_combout\ & (!\Mux10~0_combout\ & \Mux4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux10~1_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_Mux4~0_combout\,
	dataf => \Shift|ALT_INV_ll4[11]~8_combout\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X40_Y49_N8
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \B[15]~input_o\ & ( (!\A[27]~input_o\ & ((!\B[27]~input_o\ & (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[27]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (\A[27]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\B[27]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[15]~input_o\ & ( (!\A[27]~input_o\ & (\B[27]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\A[27]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\B[27]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110001000001100111000111110110011100011111011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[27]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LABCELL_X40_Y45_N6
\Shift|ll2[27]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~27_combout\ = ( \A[24]~input_o\ & ( \A[25]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[27]~input_o\))) # (\B[0]~input_o\ & (\A[26]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[24]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\A[27]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[26]~input_o\))) ) ) ) # ( \A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[27]~input_o\)))) # (\B[0]~input_o\ & (((\A[26]~input_o\)) # 
-- (\B[1]~input_o\))) ) ) ) # ( !\A[24]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[27]~input_o\))) # (\B[0]~input_o\ & (\A[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000101011001110100100110101011100011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[27]~input_o\,
	datae => \ALT_INV_A[24]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shift|ll2[27]~27_combout\);

-- Location: MLABCELL_X44_Y46_N30
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ll2[23]~23_combout\) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( \B[2]~input_o\ & ( (\Shift|ll2[23]~23_combout\ & !\B[3]~input_o\) ) ) ) # ( 
-- \Shift|ll2[15]~15_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[27]~27_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[19]~19_combout\))) ) ) ) # ( !\Shift|ll2[15]~15_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[27]~27_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[19]~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[27]~27_combout\,
	datab => \Shift|ALT_INV_ll2[23]~23_combout\,
	datac => \Shift|ALT_INV_ll2[19]~19_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[15]~15_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LABCELL_X40_Y49_N12
\Mux4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = ( \Mux4~3_combout\ & ( (!\Mux10~3_combout\ & ((\Mux10~2_combout\) # (\Mux4~2_combout\))) ) ) # ( !\Mux4~3_combout\ & ( (\Mux4~2_combout\ & (!\Mux10~3_combout\ & !\Mux10~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~2_combout\,
	datac => \ALT_INV_Mux10~3_combout\,
	datad => \ALT_INV_Mux10~2_combout\,
	dataf => \ALT_INV_Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LABCELL_X40_Y49_N18
\Mux4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = ( \Add|P\(27) & ( \Mux14~5_combout\ & ( ((\Mux14~6_combout\ & ((\Mux4~1_combout\) # (\Add|GEN_BLOCKS:6:LACG_INST|C\(3))))) # (\Mux4~4_combout\) ) ) ) # ( !\Add|P\(27) & ( \Mux14~5_combout\ & ( ((\Mux14~6_combout\ & 
-- ((!\Add|GEN_BLOCKS:6:LACG_INST|C\(3)) # (\Mux4~1_combout\)))) # (\Mux4~4_combout\) ) ) ) # ( \Add|P\(27) & ( !\Mux14~5_combout\ & ( ((\Mux4~1_combout\ & \Mux14~6_combout\)) # (\Mux4~4_combout\) ) ) ) # ( !\Add|P\(27) & ( !\Mux14~5_combout\ & ( 
-- ((\Mux4~1_combout\ & \Mux14~6_combout\)) # (\Mux4~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100001011111111110000011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|ALT_INV_C\(3),
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_Mux14~6_combout\,
	datad => \ALT_INV_Mux4~4_combout\,
	datae => \Add|ALT_INV_P\(27),
	dataf => \ALT_INV_Mux14~5_combout\,
	combout => \Mux4~5_combout\);

-- Location: LABCELL_X40_Y47_N12
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \B[2]~input_o\ & ( (\A[31]~input_o\ & (!\Mux6~3_combout\ $ (\Mux6~2_combout\))) ) ) # ( !\B[2]~input_o\ & ( (!\Mux6~2_combout\ & (\A[31]~input_o\ & ((!\Mux6~3_combout\)))) # (\Mux6~2_combout\ & (((\Shift|rl2[28]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110011010100000011001101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \Shift|ALT_INV_rl2[28]~5_combout\,
	datac => \ALT_INV_Mux6~3_combout\,
	datad => \ALT_INV_Mux6~2_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X40_Y47_N28
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Shift|ll4[12]~9_combout\ & ( \Add|P\(28) & ( ((!\Mux10~0_combout\ & (\Mux3~0_combout\)) # (\Mux10~0_combout\ & ((\Add|block_carry_in[7]~8_combout\)))) # (\Mux10~1_combout\) ) ) ) # ( !\Shift|ll4[12]~9_combout\ & ( \Add|P\(28) & ( 
-- (!\Mux10~1_combout\ & ((!\Mux10~0_combout\ & (\Mux3~0_combout\)) # (\Mux10~0_combout\ & ((\Add|block_carry_in[7]~8_combout\))))) ) ) ) # ( \Shift|ll4[12]~9_combout\ & ( !\Add|P\(28) & ( ((!\Mux10~0_combout\ & (\Mux3~0_combout\)) # (\Mux10~0_combout\ & 
-- ((!\Add|block_carry_in[7]~8_combout\)))) # (\Mux10~1_combout\) ) ) ) # ( !\Shift|ll4[12]~9_combout\ & ( !\Add|P\(28) & ( (!\Mux10~1_combout\ & ((!\Mux10~0_combout\ & (\Mux3~0_combout\)) # (\Mux10~0_combout\ & ((!\Add|block_carry_in[7]~8_combout\))))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010000000000011101001111111101000111000000000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~0_combout\,
	datab => \ALT_INV_Mux10~0_combout\,
	datac => \Add|ALT_INV_block_carry_in[7]~8_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	datae => \Shift|ALT_INV_ll4[12]~9_combout\,
	dataf => \Add|ALT_INV_P\(28),
	combout => \Mux3~1_combout\);

-- Location: LABCELL_X40_Y45_N8
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \A[28]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[27]~input_o\))) # (\B[1]~input_o\ & (((\A[26]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[27]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((\A[26]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( \A[28]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[27]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & 
-- \A[26]~input_o\)))) ) ) ) # ( !\A[28]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & (\A[27]~input_o\ & (\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[26]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100110001001111010000000111001101111100011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[28]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X40_Y47_N16
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \Shift|ll2[24]~24_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[16]~16_combout\) ) ) ) # ( !\Shift|ll2[24]~24_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ll2[16]~16_combout\) ) ) ) # ( 
-- \Shift|ll2[24]~24_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Mux3~3_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[20]~20_combout\)) ) ) ) # ( !\Shift|ll2[24]~24_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Mux3~3_combout\))) # 
-- (\B[3]~input_o\ & (\Shift|ll2[20]~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[20]~20_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[16]~16_combout\,
	datad => \ALT_INV_Mux3~3_combout\,
	datae => \Shift|ALT_INV_ll2[24]~24_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LABCELL_X40_Y47_N32
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[28]~input_o\ & (\A[28]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[28]~input_o\ & (!\A[28]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- (((\B[16]~input_o\)))) # (\LogicFN[1]~input_o\ & (((\A[28]~input_o\)) # (\B[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111110111000001111111011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[16]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: LABCELL_X40_Y47_N22
\Mux3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = ( \Mux3~2_combout\ & ( (!\Mux10~2_combout\ & (((!\Mux10~3_combout\)) # (\Mux3~1_combout\))) # (\Mux10~2_combout\ & (((\Mux3~4_combout\ & !\Mux10~3_combout\)))) ) ) # ( !\Mux3~2_combout\ & ( (!\Mux10~2_combout\ & (\Mux3~1_combout\ & 
-- ((\Mux10~3_combout\)))) # (\Mux10~2_combout\ & (((\Mux3~4_combout\ & !\Mux10~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~1_combout\,
	datab => \ALT_INV_Mux3~4_combout\,
	datac => \ALT_INV_Mux10~2_combout\,
	datad => \ALT_INV_Mux10~3_combout\,
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \Mux3~5_combout\);

-- Location: LABCELL_X40_Y47_N34
\Add|GEN_BLOCKS:7:LACG_INST|C[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[1]~1_combout\ = ( \Add|block_carry_in[7]~8_combout\ & ( (\A[28]~input_o\ & (!\B[28]~input_o\ $ (!\AddnSub~input_o\))) ) ) # ( !\Add|block_carry_in[7]~8_combout\ & ( (!\B[28]~input_o\ $ (!\AddnSub~input_o\)) # 
-- (\A[28]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110101111010111111010111100000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[28]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[7]~8_combout\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~1_combout\);

-- Location: MLABCELL_X39_Y46_N16
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \B[17]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\) # ((\A[29]~input_o\) # (\B[29]~input_o\)))) # (\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\ & (!\B[29]~input_o\ $ (!\A[29]~input_o\))) # (\LogicFN[1]~input_o\ & 
-- (\B[29]~input_o\ & \A[29]~input_o\)))) ) ) # ( !\B[17]~input_o\ & ( (!\B[29]~input_o\ & (\A[29]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[29]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[29]~input_o\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100011000001100110001110001110111010111000111011101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[17]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X40_Y45_N34
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \A[29]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & (\A[26]~input_o\)) ) ) ) # ( !\A[29]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[28]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[26]~input_o\)) ) ) ) # ( \A[29]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( !\B[0]~input_o\ & ( (\A[27]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: MLABCELL_X39_Y46_N36
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Shift|ll2[21]~21_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[25]~25_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[17]~17_combout\)) ) ) ) # ( !\Shift|ll2[21]~21_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[25]~25_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[17]~17_combout\)) ) ) ) # ( \Shift|ll2[21]~21_combout\ & ( !\B[2]~input_o\ & ( (\Mux2~1_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[21]~21_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & \Mux2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[17]~17_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \Shift|ALT_INV_ll2[25]~25_combout\,
	datae => \Shift|ALT_INV_ll2[21]~21_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X42_Y46_N36
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \Shift|ra3[29]~4_combout\ & ( (!\Mux6~2_combout\ & (!\Mux6~3_combout\ & ((\A[31]~input_o\)))) # (\Mux6~2_combout\ & (((\Shift|rl3[29]~8_combout\)) # (\Mux6~3_combout\))) ) ) # ( !\Shift|ra3[29]~4_combout\ & ( (!\Mux6~3_combout\ & 
-- ((!\Mux6~2_combout\ & ((\A[31]~input_o\))) # (\Mux6~2_combout\ & (\Shift|rl3[29]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000010101100111010001010110011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~2_combout\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \Shift|ALT_INV_rl3[29]~8_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \Shift|ALT_INV_ra3[29]~4_combout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X39_Y46_N6
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Mux10~0_combout\ & ( (\Mux10~1_combout\ & (\Mux14~6_combout\ & \Shift|ll4[13]~10_combout\)) ) ) # ( !\Mux10~0_combout\ & ( (\Mux14~6_combout\ & ((!\Mux10~1_combout\ & ((\Mux2~3_combout\))) # (\Mux10~1_combout\ & 
-- (\Shift|ll4[13]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~1_combout\,
	datab => \ALT_INV_Mux14~6_combout\,
	datac => \Shift|ALT_INV_ll4[13]~10_combout\,
	datad => \ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: MLABCELL_X39_Y46_N30
\Mux2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( !\Mux2~4_combout\ & ( ((!\Mux10~2_combout\ & (!\Mux2~0_combout\)) # (\Mux10~2_combout\ & ((!\Mux2~2_combout\)))) # (\Mux10~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111010101111101111101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~3_combout\,
	datab => \ALT_INV_Mux10~2_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: MLABCELL_X39_Y46_N32
\Mux2~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ( \Mux2~5_combout\ & ( (\Mux14~5_combout\ & (\Mux14~6_combout\ & (!\Add|P\(29) $ (!\Add|GEN_BLOCKS:7:LACG_INST|C[1]~1_combout\)))) ) ) # ( !\Mux2~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~5_combout\,
	datab => \ALT_INV_Mux14~6_combout\,
	datac => \Add|ALT_INV_P\(29),
	datad => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C[1]~1_combout\,
	dataf => \ALT_INV_Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: MLABCELL_X42_Y46_N34
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \Shift|rl4[22]~8_combout\ & ( (!\Mux6~2_combout\ & (\A[31]~input_o\ & (!\Mux6~3_combout\))) # (\Mux6~2_combout\ & (((!\Mux6~3_combout\) # (\Shift|ra3[30]~5_combout\)))) ) ) # ( !\Shift|rl4[22]~8_combout\ & ( (!\Mux6~2_combout\ & 
-- (\A[31]~input_o\ & (!\Mux6~3_combout\))) # (\Mux6~2_combout\ & (((\Mux6~3_combout\ & \Shift|ra3[30]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100101001000000010010101110000011101010111000001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~2_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_Mux6~3_combout\,
	datad => \Shift|ALT_INV_ra3[30]~5_combout\,
	dataf => \Shift|ALT_INV_rl4[22]~8_combout\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X40_Y46_N14
\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ = ( \B[29]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[29]~input_o\) # (\Add|G\(28)))) # (\AddnSub~input_o\ & (\Add|G\(28) & \A[29]~input_o\)) ) ) # ( !\B[29]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|G\(28) & 
-- \A[29]~input_o\)) # (\AddnSub~input_o\ & ((\A[29]~input_o\) # (\Add|G\(28)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_G\(28),
	datad => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\);

-- Location: MLABCELL_X44_Y49_N36
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ & ( \Mux10~0_combout\ & ( !\Add|P\(30) ) ) ) # ( !\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ & ( \Mux10~0_combout\ & ( !\Add|P\(30) $ (((!\Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\) # 
-- (\Add|block_carry_in[7]~8_combout\))) ) ) ) # ( \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ & ( !\Mux10~0_combout\ & ( \Mux1~3_combout\ ) ) ) # ( !\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ & ( !\Mux10~0_combout\ & ( \Mux1~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010000101011111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C~0_combout\,
	datab => \ALT_INV_Mux1~3_combout\,
	datac => \Add|ALT_INV_block_carry_in[7]~8_combout\,
	datad => \Add|ALT_INV_P\(30),
	datae => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X40_Y45_N16
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \A[29]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[27]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \B[0]~input_o\ & ( (\A[27]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[29]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[27]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X44_Y49_N32
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Shift|ll2[22]~22_combout\ & ( \Shift|ll2[18]~18_combout\ & ( ((!\B[2]~input_o\ & (\Mux1~1_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[26]~26_combout\)))) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( 
-- \Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Mux1~1_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[26]~26_combout\))))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( \Shift|ll2[22]~22_combout\ & ( !\Shift|ll2[18]~18_combout\ 
-- & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Mux1~1_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[26]~26_combout\))))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( !\Shift|ll2[18]~18_combout\ & ( (!\B[3]~input_o\ & 
-- ((!\B[2]~input_o\ & (\Mux1~1_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[26]~26_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010111110011000001010000001111110101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \Shift|ALT_INV_ll2[26]~26_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[22]~22_combout\,
	dataf => \Shift|ALT_INV_ll2[18]~18_combout\,
	combout => \Mux1~2_combout\);

-- Location: MLABCELL_X44_Y49_N18
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \B[30]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[18]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\A[30]~input_o\)))) ) ) # ( !\B[30]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\B[18]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[30]~input_o\)))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & (\A[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010001110000001101000111001100101111011010110010111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[18]~input_o\,
	dataf => \ALT_INV_B[30]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X44_Y49_N0
\Mux1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( !\Mux10~3_combout\ & ( (!\Mux10~2_combout\ & (((\Mux1~0_combout\)))) # (\Mux10~2_combout\ & ((((\Mux1~2_combout\))))) ) ) # ( \Mux10~3_combout\ & ( (!\Mux10~2_combout\ & ((!\Mux10~1_combout\ & (((\Mux1~4_combout\)))) # 
-- (\Mux10~1_combout\ & (\Shift|ll4[14]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000101000001010000000101000101001011111010111110000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_Mux10~1_combout\,
	datac => \Shift|ALT_INV_ll4[14]~11_combout\,
	datad => \ALT_INV_Mux1~4_combout\,
	datae => \ALT_INV_Mux10~3_combout\,
	dataf => \ALT_INV_Mux1~2_combout\,
	datag => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~5_combout\);

-- Location: MLABCELL_X39_Y52_N16
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \B[19]~input_o\ & ( \A[31]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\B[31]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) ) # ( !\B[19]~input_o\ & ( \A[31]~input_o\ & ( !\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\B[31]~input_o\))) ) ) ) # ( \B[19]~input_o\ & ( !\A[31]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\) # (\B[31]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[31]~input_o\ & !\LogicFN[1]~input_o\)) ) ) ) # ( !\B[19]~input_o\ & ( 
-- !\A[31]~input_o\ & ( (\B[31]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010101100101011001001001011010010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[31]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_B[19]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: MLABCELL_X44_Y46_N12
\Shift|ll2[31]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[31]~28_combout\ = ( \B[0]~input_o\ & ( \A[29]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[29]~input_o\ & ( (\A[31]~input_o\) # (\B[1]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[29]~input_o\ & ( (!\B[1]~input_o\ & (\A[30]~input_o\)) # (\B[1]~input_o\ & ((\A[28]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[29]~input_o\ & ( (!\B[1]~input_o\ & \A[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001001110010011101010101111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[28]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Shift|ll2[31]~28_combout\);

-- Location: MLABCELL_X44_Y46_N16
\Shift|ll4[31]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[31]~14_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ll2[19]~19_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ll2[27]~27_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ll2[23]~23_combout\ ) ) ) # 
-- ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ll2[31]~28_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[31]~28_combout\,
	datab => \Shift|ALT_INV_ll2[23]~23_combout\,
	datac => \Shift|ALT_INV_ll2[27]~27_combout\,
	datad => \Shift|ALT_INV_ll2[19]~19_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[31]~14_combout\);

-- Location: MLABCELL_X44_Y46_N26
\Shift|Y_LL[31]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~1_combout\ = ( !\B[5]~input_o\ & ( (!\B[4]~input_o\ & (\Shift|ll4[31]~14_combout\)) # (\B[4]~input_o\ & ((\Shift|ll4[15]~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[31]~14_combout\,
	datac => \Shift|ALT_INV_ll4[15]~12_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Shift|Y_LL[31]~1_combout\);

-- Location: LABCELL_X40_Y46_N20
\Add|S_internal[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S_internal\(31) = ( \Add|P\(30) & ( !\Add|P\(31) $ (((!\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ & ((!\Add|GEN_BLOCKS:7:LACG_INST|C~0_combout\) # (\Add|block_carry_in[7]~8_combout\))))) ) ) # ( !\Add|P\(30) & ( 
-- !\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ $ (!\Add|P\(31)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100101101000011110010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[7]~8_combout\,
	datab => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C[3]~2_combout\,
	datac => \Add|ALT_INV_P\(31),
	datad => \Add|GEN_BLOCKS:7:LACG_INST|ALT_INV_C~0_combout\,
	dataf => \Add|ALT_INV_P\(30),
	combout => \Add|S_internal\(31));

-- Location: LABCELL_X43_Y48_N2
\Y_ShiftOrArith[31]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~3_combout\ = ( !\ShiftFN[1]~input_o\ & ( (((!\ShiftFN[0]~input_o\ & ((\Add|S_internal\(31)))) # (\ShiftFN[0]~input_o\ & (\Shift|Y_LL[31]~1_combout\)))) ) ) # ( \ShiftFN[1]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & 
-- (((\Shift|Y_RL[31]~0_combout\ & \Shift|Y_RL[31]~1_combout\)))) # (\ShiftFN[0]~input_o\ & (\A[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111000000000000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \Shift|ALT_INV_Y_LL[31]~1_combout\,
	datac => \Shift|ALT_INV_Y_RL[31]~0_combout\,
	datad => \Shift|ALT_INV_Y_RL[31]~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	datag => \Add|ALT_INV_S_internal\(31),
	combout => \Y_ShiftOrArith[31]~3_combout\);

-- Location: MLABCELL_X39_Y52_N14
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux0~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Y_ShiftOrArith[31]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Logic|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~3_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X33_Y0_N94
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;

ww_Y(8) <= \Y[8]~output_o\;

ww_Y(9) <= \Y[9]~output_o\;

ww_Y(10) <= \Y[10]~output_o\;

ww_Y(11) <= \Y[11]~output_o\;

ww_Y(12) <= \Y[12]~output_o\;

ww_Y(13) <= \Y[13]~output_o\;

ww_Y(14) <= \Y[14]~output_o\;

ww_Y(15) <= \Y[15]~output_o\;

ww_Y(16) <= \Y[16]~output_o\;

ww_Y(17) <= \Y[17]~output_o\;

ww_Y(18) <= \Y[18]~output_o\;

ww_Y(19) <= \Y[19]~output_o\;

ww_Y(20) <= \Y[20]~output_o\;

ww_Y(21) <= \Y[21]~output_o\;

ww_Y(22) <= \Y[22]~output_o\;

ww_Y(23) <= \Y[23]~output_o\;

ww_Y(24) <= \Y[24]~output_o\;

ww_Y(25) <= \Y[25]~output_o\;

ww_Y(26) <= \Y[26]~output_o\;

ww_Y(27) <= \Y[27]~output_o\;

ww_Y(28) <= \Y[28]~output_o\;

ww_Y(29) <= \Y[29]~output_o\;

ww_Y(30) <= \Y[30]~output_o\;

ww_Y(31) <= \Y[31]~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


