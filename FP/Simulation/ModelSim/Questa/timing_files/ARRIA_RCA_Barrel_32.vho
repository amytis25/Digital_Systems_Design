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

-- DATE "11/30/2025 22:29:51"

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
-- ExtWord	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Shift|rl2[28]~5_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Shift|rl2[24]~7_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \Shift|rl2[20]~4_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Shift|rl2[16]~6_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Shift|rl4[16]~1_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_R[0]~0_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Shift|Y_RL[31]~0_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Shift|rl2[4]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Shift|rl2[0]~0_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Shift|rl2[8]~2_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Shift|rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|rl4[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~7_combout\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add|C[16]~15_combout\ : std_logic;
SIGNAL \Add|C[17]~16_combout\ : std_logic;
SIGNAL \Add|C[18]~17_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Add|C[19]~18_combout\ : std_logic;
SIGNAL \Add|C[20]~19_combout\ : std_logic;
SIGNAL \Add|C[21]~20_combout\ : std_logic;
SIGNAL \Add|C[22]~21_combout\ : std_logic;
SIGNAL \Add|C[23]~22_combout\ : std_logic;
SIGNAL \Add|C[24]~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Add|C[25]~24_combout\ : std_logic;
SIGNAL \Add|C[26]~25_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Add|C[27]~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Add|C[28]~27_combout\ : std_logic;
SIGNAL \Add|C[29]~28_combout\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Add|C[30]~29_combout\ : std_logic;
SIGNAL \Add|C[31]~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Shift|ll4[1]~0_combout\ : std_logic;
SIGNAL \Mux30~10_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Shift|rl2[17]~13_combout\ : std_logic;
SIGNAL \Shift|rl2[21]~12_combout\ : std_logic;
SIGNAL \Shift|rl3[17]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[25]~11_combout\ : std_logic;
SIGNAL \Shift|ra3[29]~0_combout\ : std_logic;
SIGNAL \Shift|ra3[25]~1_combout\ : std_logic;
SIGNAL \Shift|ra4[17]~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~9_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~10_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Shift|rl3[29]~0_combout\ : std_logic;
SIGNAL \Shift|rl3[25]~1_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~3_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~18_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~19_combout\ : std_logic;
SIGNAL \Shift|rl3[18]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~17_combout\ : std_logic;
SIGNAL \Shift|ra3[26]~2_combout\ : std_logic;
SIGNAL \Shift|ra4[18]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~15_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~16_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~14_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Shift|rl3[26]~3_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~4_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~20_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~21_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~22_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~24_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~25_combout\ : std_logic;
SIGNAL \Shift|rl3[19]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~23_combout\ : std_logic;
SIGNAL \Shift|ra3[27]~3_combout\ : std_logic;
SIGNAL \Shift|ra4[19]~2_combout\ : std_logic;
SIGNAL \Shift|rl3[27]~5_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~5_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Shift|rl3[20]~7_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~6_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Shift|ra4[20]~3_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Shift|ll2[0]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~3_combout\ : std_logic;
SIGNAL \Shift|ll4[4]~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Shift|rl3[21]~9_combout\ : std_logic;
SIGNAL \Shift|ra3[29]~4_combout\ : std_logic;
SIGNAL \Shift|ra4[21]~4_combout\ : std_logic;
SIGNAL \Shift|rl3[29]~8_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~7_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[1]~4_combout\ : std_logic;
SIGNAL \Shift|ll4[5]~2_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~8_combout\ : std_logic;
SIGNAL \Shift|rl3[22]~10_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~9_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Shift|ra3[30]~5_combout\ : std_logic;
SIGNAL \Shift|ra4[22]~5_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~6_combout\ : std_logic;
SIGNAL \Shift|ll4[6]~3_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Shift|rl3[23]~11_combout\ : std_logic;
SIGNAL \Shift|ra4[23]~6_combout\ : std_logic;
SIGNAL \Shift|Y_RL[31]~1_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~10_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[7]~4_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~11_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~5_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~9_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~6_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~10_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~7_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux20~8_combout\ : std_logic;
SIGNAL \Mux20~9_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~11_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~8_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~10_combout\ : std_logic;
SIGNAL \Mux20~11_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~12_combout\ : std_logic;
SIGNAL \Shift|ll4[12]~9_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~13_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~10_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~14_combout\ : std_logic;
SIGNAL \Shift|ll4[14]~11_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Logic|Mux16~0_combout\ : std_logic;
SIGNAL \Shift|rl5[15]~0_combout\ : std_logic;
SIGNAL \Shift|rl5[15]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~15_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~12_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~0_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~0_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[15]~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~16_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~13_combout\ : std_logic;
SIGNAL \Shift|Y_LL[16]~2_combout\ : std_logic;
SIGNAL \Shift|Y_RL[16]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[16]~2_combout\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~17_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~18_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~19_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~20_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~21_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~22_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~10_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~23_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~24_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~25_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add|S[25]~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~26_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Add|S[26]~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~27_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add|S[27]~2_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add|S[28]~3_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add|S[29]~4_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Add|S[30]~5_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Shift|ll2[31]~28_combout\ : std_logic;
SIGNAL \Shift|ll4[31]~14_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~3_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[31]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[31]~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[31]~28_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(31 DOWNTO 1);
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[30]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[29]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[28]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[27]~27_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[27]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[26]~26_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[26]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[25]~25_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[25]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[24]~24_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[23]~23_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[22]~22_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[21]~21_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[20]~20_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[29]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[19]~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[18]~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[17]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[16]~2_combout\ : std_logic;
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
SIGNAL \Logic|ALT_INV_Mux16~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux17~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[14]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[14]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux18~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[13]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[13]~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[12]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[12]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[11]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[11]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[10]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[10]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux22~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[9]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[9]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux20~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[8]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[24]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[7]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[7]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[23]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[23]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[23]~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_RL[31]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux24~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[6]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[22]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[30]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[22]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[22]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[22]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux25~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[5]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[5]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[21]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[29]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[21]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[21]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[29]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux26~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[4]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[4]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[20]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[20]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[20]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~3_combout\ : std_logic;
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
SIGNAL \ALT_INV_Mux29~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[18]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[26]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[18]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[18]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[18]~19_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[22]~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[26]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[26]~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[14]~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[10]~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[6]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra4[17]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[25]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl4[17]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[17]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[17]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[21]~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[25]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl3[29]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ra3[29]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[25]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[13]~10_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[9]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[5]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll4[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux30~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[31]~30_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[30]~29_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[29]~28_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[28]~27_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[27]~26_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[26]~25_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[25]~24_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[24]~23_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[23]~22_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[22]~21_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[21]~20_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[20]~19_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[19]~18_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[18]~17_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[17]~16_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[16]~15_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[15]~14_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[14]~13_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[13]~12_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[12]~11_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[11]~10_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[10]~9_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[9]~8_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[8]~7_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[7]~6_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[6]~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[5]~4_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[4]~3_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[1]~0_combout\ : std_logic;
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
SIGNAL \ALT_INV_Mux30~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux29~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux28~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux23~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[16]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[31]~3_combout\ : std_logic;

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
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_A[31]~input_o\ <= NOT \A[31]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\Shift|ALT_INV_Y_LL[31]~1_combout\ <= NOT \Shift|Y_LL[31]~1_combout\;
\Shift|ALT_INV_ll4[31]~14_combout\ <= NOT \Shift|ll4[31]~14_combout\;
\Shift|ALT_INV_ll2[31]~28_combout\ <= NOT \Shift|ll2[31]~28_combout\;
\Add|ALT_INV_S\(31) <= NOT \Add|S\(31);
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\ALT_INV_Mux1~6_combout\ <= NOT \Mux1~6_combout\;
\ALT_INV_Mux1~5_combout\ <= NOT \Mux1~5_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\Add|ALT_INV_S[30]~5_combout\ <= NOT \Add|S[30]~5_combout\;
\ALT_INV_Mux14~5_combout\ <= NOT \Mux14~5_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\Add|ALT_INV_S[29]~4_combout\ <= NOT \Add|S[29]~4_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\Add|ALT_INV_S[28]~3_combout\ <= NOT \Add|S[28]~3_combout\;
\ALT_INV_Mux4~5_combout\ <= NOT \Mux4~5_combout\;
\Shift|ALT_INV_ll2[27]~27_combout\ <= NOT \Shift|ll2[27]~27_combout\;
\ALT_INV_Mux4~4_combout\ <= NOT \Mux4~4_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\Add|ALT_INV_S[27]~2_combout\ <= NOT \Add|S[27]~2_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\Shift|ALT_INV_ll2[26]~26_combout\ <= NOT \Shift|ll2[26]~26_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\Add|ALT_INV_S[26]~1_combout\ <= NOT \Add|S[26]~1_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\Shift|ALT_INV_ll2[25]~25_combout\ <= NOT \Shift|ll2[25]~25_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\Add|ALT_INV_S[25]~0_combout\ <= NOT \Add|S[25]~0_combout\;
\ALT_INV_Mux7~3_combout\ <= NOT \Mux7~3_combout\;
\Shift|ALT_INV_ll2[24]~24_combout\ <= NOT \Shift|ll2[24]~24_combout\;
\ALT_INV_Mux7~2_combout\ <= NOT \Mux7~2_combout\;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Add|ALT_INV_S\(24) <= NOT \Add|S\(24);
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\Shift|ALT_INV_ll2[23]~23_combout\ <= NOT \Shift|ll2[23]~23_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\Add|ALT_INV_S\(23) <= NOT \Add|S\(23);
\ALT_INV_Mux9~9_combout\ <= NOT \Mux9~9_combout\;
\Shift|ALT_INV_ll2[22]~22_combout\ <= NOT \Shift|ll2[22]~22_combout\;
\ALT_INV_Mux9~8_combout\ <= NOT \Mux9~8_combout\;
\ALT_INV_Mux9~7_combout\ <= NOT \Mux9~7_combout\;
\ALT_INV_Mux9~6_combout\ <= NOT \Mux9~6_combout\;
\Add|ALT_INV_S\(22) <= NOT \Add|S\(22);
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\Shift|ALT_INV_ll2[21]~21_combout\ <= NOT \Shift|ll2[21]~21_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\Add|ALT_INV_S\(21) <= NOT \Add|S\(21);
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;
\Shift|ALT_INV_ll2[20]~20_combout\ <= NOT \Shift|ll2[20]~20_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_FuncClass[1]~input_o\ <= NOT \FuncClass[1]~input_o\;
\ALT_INV_FuncClass[0]~input_o\ <= NOT \FuncClass[0]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_B[16]~input_o\ <= NOT \B[16]~input_o\;
\ALT_INV_B[17]~input_o\ <= NOT \B[17]~input_o\;
\ALT_INV_B[18]~input_o\ <= NOT \B[18]~input_o\;
\ALT_INV_B[19]~input_o\ <= NOT \B[19]~input_o\;
\ALT_INV_B[20]~input_o\ <= NOT \B[20]~input_o\;
\ALT_INV_B[21]~input_o\ <= NOT \B[21]~input_o\;
\ALT_INV_B[22]~input_o\ <= NOT \B[22]~input_o\;
\ALT_INV_B[23]~input_o\ <= NOT \B[23]~input_o\;
\ALT_INV_B[24]~input_o\ <= NOT \B[24]~input_o\;
\ALT_INV_B[25]~input_o\ <= NOT \B[25]~input_o\;
\ALT_INV_B[26]~input_o\ <= NOT \B[26]~input_o\;
\ALT_INV_B[27]~input_o\ <= NOT \B[27]~input_o\;
\ALT_INV_B[28]~input_o\ <= NOT \B[28]~input_o\;
\ALT_INV_B[29]~input_o\ <= NOT \B[29]~input_o\;
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
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\Add|ALT_INV_S\(20) <= NOT \Add|S\(20);
\ALT_INV_Mux12~4_combout\ <= NOT \Mux12~4_combout\;
\Shift|ALT_INV_ll2[19]~19_combout\ <= NOT \Shift|ll2[19]~19_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux13~4_combout\ <= NOT \Mux13~4_combout\;
\Shift|ALT_INV_ll2[18]~18_combout\ <= NOT \Shift|ll2[18]~18_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\Shift|ALT_INV_ll2[17]~17_combout\ <= NOT \Shift|ll2[17]~17_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux9~5_combout\ <= NOT \Mux9~5_combout\;
\ALT_INV_Mux9~4_combout\ <= NOT \Mux9~4_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\Add|ALT_INV_S\(17) <= NOT \Add|S\(17);
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Y_ShiftOrArith[16]~2_combout\ <= NOT \Y_ShiftOrArith[16]~2_combout\;
\Add|ALT_INV_S\(16) <= NOT \Add|S\(16);
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
\Logic|ALT_INV_Mux16~0_combout\ <= NOT \Logic|Mux16~0_combout\;
\ALT_INV_Mux17~4_combout\ <= NOT \Mux17~4_combout\;
\ALT_INV_Mux17~3_combout\ <= NOT \Mux17~3_combout\;
\ALT_INV_Mux17~2_combout\ <= NOT \Mux17~2_combout\;
\ALT_INV_Mux17~1_combout\ <= NOT \Mux17~1_combout\;
\ALT_INV_Mux17~0_combout\ <= NOT \Mux17~0_combout\;
\Shift|ALT_INV_ll4[14]~11_combout\ <= NOT \Shift|ll4[14]~11_combout\;
\Shift|ALT_INV_ll2[14]~14_combout\ <= NOT \Shift|ll2[14]~14_combout\;
\ALT_INV_Mux18~4_combout\ <= NOT \Mux18~4_combout\;
\ALT_INV_Mux18~3_combout\ <= NOT \Mux18~3_combout\;
\ALT_INV_Mux18~2_combout\ <= NOT \Mux18~2_combout\;
\ALT_INV_Mux18~1_combout\ <= NOT \Mux18~1_combout\;
\ALT_INV_Mux18~0_combout\ <= NOT \Mux18~0_combout\;
\Shift|ALT_INV_ll4[13]~10_combout\ <= NOT \Shift|ll4[13]~10_combout\;
\Shift|ALT_INV_ll2[13]~13_combout\ <= NOT \Shift|ll2[13]~13_combout\;
\ALT_INV_Mux19~6_combout\ <= NOT \Mux19~6_combout\;
\ALT_INV_Mux19~5_combout\ <= NOT \Mux19~5_combout\;
\ALT_INV_Mux19~4_combout\ <= NOT \Mux19~4_combout\;
\ALT_INV_Mux19~3_combout\ <= NOT \Mux19~3_combout\;
\ALT_INV_Mux19~2_combout\ <= NOT \Mux19~2_combout\;
\Shift|ALT_INV_ll4[12]~9_combout\ <= NOT \Shift|ll4[12]~9_combout\;
\Shift|ALT_INV_ll2[12]~12_combout\ <= NOT \Shift|ll2[12]~12_combout\;
\ALT_INV_Mux20~10_combout\ <= NOT \Mux20~10_combout\;
\ALT_INV_Mux20~9_combout\ <= NOT \Mux20~9_combout\;
\ALT_INV_Mux20~8_combout\ <= NOT \Mux20~8_combout\;
\ALT_INV_Mux20~7_combout\ <= NOT \Mux20~7_combout\;
\ALT_INV_Mux20~6_combout\ <= NOT \Mux20~6_combout\;
\Shift|ALT_INV_ll4[11]~8_combout\ <= NOT \Shift|ll4[11]~8_combout\;
\Shift|ALT_INV_ll2[11]~11_combout\ <= NOT \Shift|ll2[11]~11_combout\;
\ALT_INV_Mux21~4_combout\ <= NOT \Mux21~4_combout\;
\ALT_INV_Mux21~3_combout\ <= NOT \Mux21~3_combout\;
\ALT_INV_Mux21~2_combout\ <= NOT \Mux21~2_combout\;
\ALT_INV_Mux21~1_combout\ <= NOT \Mux21~1_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\Shift|ALT_INV_ll4[10]~7_combout\ <= NOT \Shift|ll4[10]~7_combout\;
\Shift|ALT_INV_ll2[10]~10_combout\ <= NOT \Shift|ll2[10]~10_combout\;
\ALT_INV_Mux22~4_combout\ <= NOT \Mux22~4_combout\;
\ALT_INV_Mux22~3_combout\ <= NOT \Mux22~3_combout\;
\ALT_INV_Mux22~2_combout\ <= NOT \Mux22~2_combout\;
\ALT_INV_Mux20~5_combout\ <= NOT \Mux20~5_combout\;
\ALT_INV_Mux20~4_combout\ <= NOT \Mux20~4_combout\;
\ALT_INV_Mux20~3_combout\ <= NOT \Mux20~3_combout\;
\ALT_INV_Mux22~1_combout\ <= NOT \Mux22~1_combout\;
\ALT_INV_Mux22~0_combout\ <= NOT \Mux22~0_combout\;
\ALT_INV_Mux19~1_combout\ <= NOT \Mux19~1_combout\;
\ALT_INV_Mux19~0_combout\ <= NOT \Mux19~0_combout\;
\Shift|ALT_INV_ll4[9]~6_combout\ <= NOT \Shift|ll4[9]~6_combout\;
\Shift|ALT_INV_ll2[9]~9_combout\ <= NOT \Shift|ll2[9]~9_combout\;
\ALT_INV_Mux20~2_combout\ <= NOT \Mux20~2_combout\;
\ALT_INV_Mux20~1_combout\ <= NOT \Mux20~1_combout\;
\ALT_INV_Mux20~0_combout\ <= NOT \Mux20~0_combout\;
\ALT_INV_Mux23~2_combout\ <= NOT \Mux23~2_combout\;
\ALT_INV_Mux23~1_combout\ <= NOT \Mux23~1_combout\;
\Shift|ALT_INV_ll4[8]~5_combout\ <= NOT \Shift|ll4[8]~5_combout\;
\Shift|ALT_INV_ll2[8]~8_combout\ <= NOT \Shift|ll2[8]~8_combout\;
\ALT_INV_Mux23~0_combout\ <= NOT \Mux23~0_combout\;
\Shift|ALT_INV_rl4[24]~11_combout\ <= NOT \Shift|rl4[24]~11_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Mux24~3_combout\ <= NOT \Mux24~3_combout\;
\ALT_INV_Mux24~2_combout\ <= NOT \Mux24~2_combout\;
\Shift|ALT_INV_ll4[7]~4_combout\ <= NOT \Shift|ll4[7]~4_combout\;
\Shift|ALT_INV_ll2[7]~7_combout\ <= NOT \Shift|ll2[7]~7_combout\;
\ALT_INV_Mux24~1_combout\ <= NOT \Mux24~1_combout\;
\Shift|ALT_INV_ra4[23]~6_combout\ <= NOT \Shift|ra4[23]~6_combout\;
\Shift|ALT_INV_rl4[23]~10_combout\ <= NOT \Shift|rl4[23]~10_combout\;
\Shift|ALT_INV_rl3[23]~11_combout\ <= NOT \Shift|rl3[23]~11_combout\;
\Shift|ALT_INV_Y_RL[31]~1_combout\ <= NOT \Shift|Y_RL[31]~1_combout\;
\ALT_INV_Mux24~0_combout\ <= NOT \Mux24~0_combout\;
\Add|ALT_INV_S\(7) <= NOT \Add|S\(7);
\ALT_INV_Mux25~3_combout\ <= NOT \Mux25~3_combout\;
\ALT_INV_Mux25~2_combout\ <= NOT \Mux25~2_combout\;
\Shift|ALT_INV_ll4[6]~3_combout\ <= NOT \Shift|ll4[6]~3_combout\;
\Shift|ALT_INV_ll2[6]~6_combout\ <= NOT \Shift|ll2[6]~6_combout\;
\ALT_INV_Mux25~1_combout\ <= NOT \Mux25~1_combout\;
\Shift|ALT_INV_ra4[22]~5_combout\ <= NOT \Shift|ra4[22]~5_combout\;
\Shift|ALT_INV_ra3[30]~5_combout\ <= NOT \Shift|ra3[30]~5_combout\;
\Shift|ALT_INV_rl4[22]~9_combout\ <= NOT \Shift|rl4[22]~9_combout\;
\Shift|ALT_INV_rl3[22]~10_combout\ <= NOT \Shift|rl3[22]~10_combout\;
\Shift|ALT_INV_rl4[22]~8_combout\ <= NOT \Shift|rl4[22]~8_combout\;
\ALT_INV_Mux25~0_combout\ <= NOT \Mux25~0_combout\;
\Add|ALT_INV_S\(6) <= NOT \Add|S\(6);
\ALT_INV_Mux26~3_combout\ <= NOT \Mux26~3_combout\;
\ALT_INV_Mux26~2_combout\ <= NOT \Mux26~2_combout\;
\Shift|ALT_INV_ll4[5]~2_combout\ <= NOT \Shift|ll4[5]~2_combout\;
\Shift|ALT_INV_ll2[5]~5_combout\ <= NOT \Shift|ll2[5]~5_combout\;
\Shift|ALT_INV_ll2[1]~4_combout\ <= NOT \Shift|ll2[1]~4_combout\;
\ALT_INV_Mux26~1_combout\ <= NOT \Mux26~1_combout\;
\Shift|ALT_INV_ra4[21]~4_combout\ <= NOT \Shift|ra4[21]~4_combout\;
\Shift|ALT_INV_ra3[29]~4_combout\ <= NOT \Shift|ra3[29]~4_combout\;
\Shift|ALT_INV_rl4[21]~7_combout\ <= NOT \Shift|rl4[21]~7_combout\;
\Shift|ALT_INV_rl3[21]~9_combout\ <= NOT \Shift|rl3[21]~9_combout\;
\Shift|ALT_INV_rl3[29]~8_combout\ <= NOT \Shift|rl3[29]~8_combout\;
\ALT_INV_Mux26~0_combout\ <= NOT \Mux26~0_combout\;
\Add|ALT_INV_S\(5) <= NOT \Add|S\(5);
\ALT_INV_Mux27~3_combout\ <= NOT \Mux27~3_combout\;
\ALT_INV_Mux27~2_combout\ <= NOT \Mux27~2_combout\;
\Shift|ALT_INV_ll4[4]~1_combout\ <= NOT \Shift|ll4[4]~1_combout\;
\Shift|ALT_INV_ll2[4]~3_combout\ <= NOT \Shift|ll2[4]~3_combout\;
\Shift|ALT_INV_ll2[0]~2_combout\ <= NOT \Shift|ll2[0]~2_combout\;
\ALT_INV_Mux27~1_combout\ <= NOT \Mux27~1_combout\;
\Shift|ALT_INV_ra4[20]~3_combout\ <= NOT \Shift|ra4[20]~3_combout\;
\Shift|ALT_INV_rl4[20]~6_combout\ <= NOT \Shift|rl4[20]~6_combout\;
\Shift|ALT_INV_rl3[20]~7_combout\ <= NOT \Shift|rl3[20]~7_combout\;
\ALT_INV_Mux27~0_combout\ <= NOT \Mux27~0_combout\;
\Add|ALT_INV_S\(4) <= NOT \Add|S\(4);
\ALT_INV_Mux28~3_combout\ <= NOT \Mux28~3_combout\;
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
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
\ALT_INV_Mux29~3_combout\ <= NOT \Mux29~3_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\ALT_INV_Mux29~2_combout\ <= NOT \Mux29~2_combout\;
\Shift|ALT_INV_ra4[18]~1_combout\ <= NOT \Shift|ra4[18]~1_combout\;
\Shift|ALT_INV_ra3[26]~2_combout\ <= NOT \Shift|ra3[26]~2_combout\;
\Shift|ALT_INV_rl4[18]~4_combout\ <= NOT \Shift|rl4[18]~4_combout\;
\Shift|ALT_INV_rl3[18]~4_combout\ <= NOT \Shift|rl3[18]~4_combout\;
\Shift|ALT_INV_rl2[18]~19_combout\ <= NOT \Shift|rl2[18]~19_combout\;
\Shift|ALT_INV_rl2[22]~18_combout\ <= NOT \Shift|rl2[22]~18_combout\;
\Shift|ALT_INV_rl3[26]~3_combout\ <= NOT \Shift|rl3[26]~3_combout\;
\Shift|ALT_INV_rl2[26]~17_combout\ <= NOT \Shift|rl2[26]~17_combout\;
\ALT_INV_Mux29~1_combout\ <= NOT \Mux29~1_combout\;
\Shift|ALT_INV_rl2[14]~16_combout\ <= NOT \Shift|rl2[14]~16_combout\;
\Shift|ALT_INV_rl2[10]~15_combout\ <= NOT \Shift|rl2[10]~15_combout\;
\Shift|ALT_INV_rl2[6]~14_combout\ <= NOT \Shift|rl2[6]~14_combout\;
\ALT_INV_Mux29~0_combout\ <= NOT \Mux29~0_combout\;
\Shift|ALT_INV_ll2[2]~0_combout\ <= NOT \Shift|ll2[2]~0_combout\;
\ALT_INV_Mux30~8_combout\ <= NOT \Mux30~8_combout\;
\ALT_INV_Mux30~7_combout\ <= NOT \Mux30~7_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\ALT_INV_Mux30~6_combout\ <= NOT \Mux30~6_combout\;
\ALT_INV_Mux30~5_combout\ <= NOT \Mux30~5_combout\;
\ALT_INV_Mux30~4_combout\ <= NOT \Mux30~4_combout\;
\ALT_INV_Mux30~3_combout\ <= NOT \Mux30~3_combout\;
\Shift|ALT_INV_ra4[17]~0_combout\ <= NOT \Shift|ra4[17]~0_combout\;
\Shift|ALT_INV_ra3[25]~1_combout\ <= NOT \Shift|ra3[25]~1_combout\;
\Shift|ALT_INV_rl4[17]~3_combout\ <= NOT \Shift|rl4[17]~3_combout\;
\Shift|ALT_INV_rl3[17]~2_combout\ <= NOT \Shift|rl3[17]~2_combout\;
\Shift|ALT_INV_rl2[17]~13_combout\ <= NOT \Shift|rl2[17]~13_combout\;
\Shift|ALT_INV_rl2[21]~12_combout\ <= NOT \Shift|rl2[21]~12_combout\;
\Shift|ALT_INV_rl3[25]~1_combout\ <= NOT \Shift|rl3[25]~1_combout\;
\Shift|ALT_INV_rl3[29]~0_combout\ <= NOT \Shift|rl3[29]~0_combout\;
\Shift|ALT_INV_ra3[29]~0_combout\ <= NOT \Shift|ra3[29]~0_combout\;
\Shift|ALT_INV_rl2[25]~11_combout\ <= NOT \Shift|rl2[25]~11_combout\;
\ALT_INV_Mux30~2_combout\ <= NOT \Mux30~2_combout\;
\Shift|ALT_INV_rl2[13]~10_combout\ <= NOT \Shift|rl2[13]~10_combout\;
\Shift|ALT_INV_rl2[9]~9_combout\ <= NOT \Shift|rl2[9]~9_combout\;
\Shift|ALT_INV_rl2[5]~8_combout\ <= NOT \Shift|rl2[5]~8_combout\;
\ALT_INV_Mux30~1_combout\ <= NOT \Mux30~1_combout\;
\Shift|ALT_INV_ll4[1]~0_combout\ <= NOT \Shift|ll4[1]~0_combout\;
\ALT_INV_Mux30~0_combout\ <= NOT \Mux30~0_combout\;
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
\Add|ALT_INV_C[31]~30_combout\ <= NOT \Add|C[31]~30_combout\;
\Add|ALT_INV_C[30]~29_combout\ <= NOT \Add|C[30]~29_combout\;
\Add|ALT_INV_C[29]~28_combout\ <= NOT \Add|C[29]~28_combout\;
\Add|ALT_INV_C[28]~27_combout\ <= NOT \Add|C[28]~27_combout\;
\Add|ALT_INV_C[27]~26_combout\ <= NOT \Add|C[27]~26_combout\;
\Add|ALT_INV_C[26]~25_combout\ <= NOT \Add|C[26]~25_combout\;
\Add|ALT_INV_C[25]~24_combout\ <= NOT \Add|C[25]~24_combout\;
\Add|ALT_INV_C[24]~23_combout\ <= NOT \Add|C[24]~23_combout\;
\Add|ALT_INV_C[23]~22_combout\ <= NOT \Add|C[23]~22_combout\;
\Add|ALT_INV_C[22]~21_combout\ <= NOT \Add|C[22]~21_combout\;
\Add|ALT_INV_C[21]~20_combout\ <= NOT \Add|C[21]~20_combout\;
\Add|ALT_INV_C[20]~19_combout\ <= NOT \Add|C[20]~19_combout\;
\Add|ALT_INV_C[19]~18_combout\ <= NOT \Add|C[19]~18_combout\;
\Add|ALT_INV_C[18]~17_combout\ <= NOT \Add|C[18]~17_combout\;
\Add|ALT_INV_C[17]~16_combout\ <= NOT \Add|C[17]~16_combout\;
\Add|ALT_INV_C[16]~15_combout\ <= NOT \Add|C[16]~15_combout\;
\Add|ALT_INV_C[15]~14_combout\ <= NOT \Add|C[15]~14_combout\;
\Add|ALT_INV_C[14]~13_combout\ <= NOT \Add|C[14]~13_combout\;
\Add|ALT_INV_C[13]~12_combout\ <= NOT \Add|C[13]~12_combout\;
\Add|ALT_INV_C[12]~11_combout\ <= NOT \Add|C[12]~11_combout\;
\Add|ALT_INV_C[11]~10_combout\ <= NOT \Add|C[11]~10_combout\;
\Add|ALT_INV_C[10]~9_combout\ <= NOT \Add|C[10]~9_combout\;
\Add|ALT_INV_C[9]~8_combout\ <= NOT \Add|C[9]~8_combout\;
\Add|ALT_INV_C[8]~7_combout\ <= NOT \Add|C[8]~7_combout\;
\Add|ALT_INV_C[7]~6_combout\ <= NOT \Add|C[7]~6_combout\;
\Add|ALT_INV_C[6]~5_combout\ <= NOT \Add|C[6]~5_combout\;
\Add|ALT_INV_C[5]~4_combout\ <= NOT \Add|C[5]~4_combout\;
\Add|ALT_INV_C[4]~3_combout\ <= NOT \Add|C[4]~3_combout\;
\Add|ALT_INV_C[3]~2_combout\ <= NOT \Add|C[3]~2_combout\;
\Add|ALT_INV_C[2]~1_combout\ <= NOT \Add|C[2]~1_combout\;
\Add|ALT_INV_C[1]~0_combout\ <= NOT \Add|C[1]~0_combout\;
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
\ALT_INV_Mux30~10_combout\ <= NOT \Mux30~10_combout\;
\ALT_INV_Mux29~5_combout\ <= NOT \Mux29~5_combout\;
\ALT_INV_Mux28~5_combout\ <= NOT \Mux28~5_combout\;
\ALT_INV_Mux23~4_combout\ <= NOT \Mux23~4_combout\;
\Shift|ALT_INV_Y_LL[16]~2_combout\ <= NOT \Shift|Y_LL[16]~2_combout\;
\ALT_INV_Y_ShiftOrArith[31]~3_combout\ <= NOT \Y_ShiftOrArith[31]~3_combout\;

-- Location: IOOBUF_X59_Y30_N67
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

-- Location: IOOBUF_X55_Y56_N67
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~9_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X55_Y56_N33
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~4_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y26_N67
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

-- Location: IOOBUF_X59_Y30_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X59_Y22_N2
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X59_Y33_N5
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X59_Y34_N2
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

-- Location: IOOBUF_X44_Y56_N36
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

-- Location: IOOBUF_X44_Y56_N98
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

-- Location: IOOBUF_X49_Y56_N98
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

-- Location: IOOBUF_X48_Y56_N98
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

-- Location: IOOBUF_X44_Y56_N67
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

-- Location: IOOBUF_X42_Y56_N2
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

-- Location: IOOBUF_X53_Y56_N98
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

-- Location: IOOBUF_X36_Y56_N98
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

-- Location: IOOBUF_X59_Y26_N33
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

-- Location: IOOBUF_X53_Y56_N67
\Y[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~5_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X40_Y56_N67
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

-- Location: IOOBUF_X59_Y22_N36
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

-- Location: IOOBUF_X59_Y51_N5
\Y[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X59_Y28_N67
\Y[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~10_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X44_Y56_N2
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

-- Location: IOOBUF_X59_Y25_N36
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

-- Location: IOOBUF_X59_Y23_N36
\Y[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X59_Y25_N67
\Y[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X40_Y56_N98
\Y[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~6_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
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

-- Location: IOOBUF_X59_Y28_N2
\Y[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~5_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X59_Y33_N67
\Y[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~7_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X59_Y31_N67
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

-- Location: IOOBUF_X33_Y0_N67
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

-- Location: IOOBUF_X42_Y56_N67
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

-- Location: IOOBUF_X51_Y56_N98
\AltBu~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X59_Y39_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y36_N32
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X59_Y34_N32
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y37_N63
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LABCELL_X47_Y38_N0
\Logic|Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[0]~input_o\ & (!\LogicFN[1]~input_o\ & \A[0]~input_o\)) # (\B[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\A[0]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (\LogicFN[1]~input_o\ & ((\A[0]~input_o\) # 
-- (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011010001001001100100010001001100110100010010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: IOIBUF_X59_Y36_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X59_Y36_N94
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X59_Y39_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y48_N1
\A[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X59_Y46_N63
\A[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X59_Y33_N32
\A[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X59_Y49_N32
\A[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: MLABCELL_X44_Y42_N20
\Shift|rl2[28]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~5_combout\ = ( \B[0]~input_o\ & ( \A[28]~input_o\ & ( (!\B[1]~input_o\ & ((\A[29]~input_o\))) # (\B[1]~input_o\ & (\A[31]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[28]~input_o\ & ( (!\B[1]~input_o\) # (\A[30]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[1]~input_o\ & ((\A[29]~input_o\))) # (\B[1]~input_o\ & (\A[31]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[28]~input_o\ & ( (\B[1]~input_o\ & \A[30]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_A[29]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Shift|rl2[28]~5_combout\);

-- Location: IOIBUF_X38_Y56_N94
\A[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X42_Y56_N94
\A[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X48_Y56_N32
\A[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X59_Y46_N32
\A[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: MLABCELL_X44_Y42_N6
\Shift|rl2[24]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~7_combout\ = ( \A[25]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)) ) ) ) # ( !\A[25]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ 
-- & (\A[27]~input_o\)) ) ) ) # ( \A[25]~input_o\ & ( !\B[1]~input_o\ & ( (\A[24]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[24]~7_combout\);

-- Location: IOIBUF_X38_Y56_N1
\A[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X51_Y56_N1
\A[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X36_Y56_N1
\A[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\A[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LABCELL_X47_Y40_N0
\Shift|rl2[20]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~4_combout\ = ( \B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\B[1]~input_o\) # (\A[23]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\))) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[21]~input_o\ & ( (\A[23]~input_o\ & \B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[1]~input_o\ & (\A[20]~input_o\)) # (\B[1]~input_o\ & ((\A[22]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|rl2[20]~4_combout\);

-- Location: IOIBUF_X38_Y56_N32
\A[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X40_Y56_N1
\A[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X53_Y56_N1
\A[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X59_Y48_N32
\A[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: MLABCELL_X42_Y39_N2
\Shift|rl2[16]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~6_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & (\A[19]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[18]~input_o\))) # (\B[0]~input_o\ & (\A[19]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\A[16]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|rl2[16]~6_combout\);

-- Location: IOIBUF_X59_Y37_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X43_Y38_N12
\Shift|rl4[16]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[16]~1_combout\ = ( \Shift|rl2[16]~6_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|rl2[20]~4_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[28]~5_combout\)) ) ) ) # ( !\Shift|rl2[16]~6_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ 
-- & ((\Shift|rl2[20]~4_combout\))) # (\B[3]~input_o\ & (\Shift|rl2[28]~5_combout\)) ) ) ) # ( \Shift|rl2[16]~6_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|rl2[24]~7_combout\) ) ) ) # ( !\Shift|rl2[16]~6_combout\ & ( !\B[2]~input_o\ & ( 
-- (\B[3]~input_o\ & \Shift|rl2[24]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_rl2[28]~5_combout\,
	datac => \Shift|ALT_INV_rl2[24]~7_combout\,
	datad => \Shift|ALT_INV_rl2[20]~4_combout\,
	datae => \Shift|ALT_INV_rl2[16]~6_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl4[16]~1_combout\);

-- Location: IOIBUF_X59_Y34_N63
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LABCELL_X43_Y39_N2
\Y_R[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[0]~0_combout\ = (\A[31]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R[0]~0_combout\);

-- Location: IOIBUF_X59_Y37_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X44_Y40_N22
\Shift|Y_RL[31]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[31]~0_combout\ = ( !\B[4]~input_o\ & ( (!\B[3]~input_o\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Shift|Y_RL[31]~0_combout\);

-- Location: LABCELL_X45_Y38_N24
\Shift|rl4[22]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~2_combout\ = ( !\B[1]~input_o\ & ( !\B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl4[22]~2_combout\);

-- Location: LABCELL_X43_Y38_N16
\Y_ShiftOrArith[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = ( \B[0]~input_o\ & ( (!\A[0]~input_o\ & !\ShiftFN[0]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Shift|Y_RL[31]~0_combout\ & \Shift|rl4[22]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000001001100110000000111001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_Y_RL[31]~0_combout\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \Shift|ALT_INV_rl4[22]~2_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: IOIBUF_X59_Y49_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y26_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X59_Y28_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y49_N1
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: MLABCELL_X49_Y40_N6
\Shift|rl2[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~1_combout\ = ( \B[0]~input_o\ & ( \A[7]~input_o\ & ( (\B[1]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[7]~input_o\ & ( (!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( \B[0]~input_o\ & 
-- ( !\A[7]~input_o\ & ( (\A[5]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101001100110000000000001111010101010011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Shift|rl2[4]~1_combout\);

-- Location: IOIBUF_X49_Y56_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y51_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X49_Y40_N2
\Shift|rl2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[0]~0_combout\ = ( \A[3]~input_o\ & ( \A[1]~input_o\ & ( ((!\B[1]~input_o\ & (\A[0]~input_o\)) # (\B[1]~input_o\ & ((\A[2]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (((\A[0]~input_o\)) # 
-- (\B[0]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[2]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[0]~input_o\))) # (\B[1]~input_o\ & (((\A[2]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( 
-- !\A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[0]~input_o\)) # (\B[1]~input_o\ & ((\A[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|rl2[0]~0_combout\);

-- Location: IOIBUF_X53_Y56_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X48_Y56_N1
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X48_Y56_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X49_Y56_N32
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LABCELL_X47_Y42_N0
\Shift|rl2[8]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~2_combout\ = ( \B[1]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\) # (\A[11]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[10]~input_o\ & ( (\A[11]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|rl2[8]~2_combout\);

-- Location: IOIBUF_X42_Y56_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X46_Y56_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X38_Y56_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X46_Y56_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X45_Y41_N0
\Shift|rl2[12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~3_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (\B[0]~input_o\) # (\A[12]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\A[12]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000000011110101010100110011111111110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|rl2[12]~3_combout\);

-- Location: LABCELL_X43_Y38_N30
\Shift|rl4[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[0]~0_combout\ = ( \Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[8]~2_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[8]~2_combout\) ) ) ) # ( 
-- \Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[0]~0_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[4]~1_combout\)) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[0]~0_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[4]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[4]~1_combout\,
	datab => \Shift|ALT_INV_rl2[0]~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[8]~2_combout\,
	datae => \Shift|ALT_INV_rl2[12]~3_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[0]~0_combout\);

-- Location: LABCELL_X43_Y38_N24
\Y_ShiftOrArith[0]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~7_combout\ = ( !\B[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((((\Y_ShiftOrArith[0]~0_combout\))))) # (\ShiftFN[1]~input_o\ & ((!\B[5]~input_o\ & (\Shift|rl4[0]~0_combout\)) # (\B[5]~input_o\ & (((\Y_R[0]~0_combout\)))))) ) ) # ( 
-- \B[4]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((((\Y_ShiftOrArith[0]~0_combout\))))) # (\ShiftFN[1]~input_o\ & ((!\B[5]~input_o\ & (\Shift|rl4[16]~1_combout\)) # (\B[5]~input_o\ & (((\Y_R[0]~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000010011000000100001001111001110110111111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \Shift|ALT_INV_rl4[16]~1_combout\,
	datad => \ALT_INV_Y_R[0]~0_combout\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_Y_ShiftOrArith[0]~0_combout\,
	datag => \Shift|ALT_INV_rl4[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~7_combout\);

-- Location: IOIBUF_X59_Y37_N1
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\B[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\B[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X59_Y31_N1
\B[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X59_Y25_N1
\B[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X59_Y31_N94
\B[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X59_Y51_N94
\B[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X59_Y19_N1
\B[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X51_Y56_N63
\B[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\B[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X59_Y30_N1
\B[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: IOIBUF_X59_Y30_N32
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y51_N32
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X46_Y56_N94
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y25_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y23_N94
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X59_Y33_N94
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X46_Y41_N24
\Add|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ ) ) # ( !\B[0]~input_o\ & ( \AddnSub~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: MLABCELL_X46_Y41_N28
\Add|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[1]~0_combout\) ) ) # ( !\A[1]~input_o\ & ( (\Add|C[1]~0_combout\ & (!\B[1]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \Add|ALT_INV_C[1]~0_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: LABCELL_X47_Y41_N24
\Add|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = ( \A[2]~input_o\ & ( (!\B[2]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[2]~1_combout\) ) ) # ( !\A[2]~input_o\ & ( (\Add|C[2]~1_combout\ & (!\B[2]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Add|ALT_INV_C[2]~1_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Add|C[3]~2_combout\);

-- Location: LABCELL_X47_Y41_N10
\Add|C[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[3]~2_combout\) ) ) # ( !\A[3]~input_o\ & ( (\Add|C[3]~2_combout\ & (!\B[3]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[3]~2_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|C[4]~3_combout\);

-- Location: MLABCELL_X46_Y38_N0
\Add|C[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = ( \Add|C[4]~3_combout\ & ( (!\AddnSub~input_o\ $ (!\B[4]~input_o\)) # (\A[4]~input_o\) ) ) # ( !\Add|C[4]~3_combout\ & ( (\A[4]~input_o\ & (!\AddnSub~input_o\ $ (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Add|ALT_INV_C[4]~3_combout\,
	combout => \Add|C[5]~4_combout\);

-- Location: MLABCELL_X49_Y37_N26
\Add|C[6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = ( \AddnSub~input_o\ & ( (!\A[5]~input_o\ & (\Add|C[5]~4_combout\ & !\B[5]~input_o\)) # (\A[5]~input_o\ & ((!\B[5]~input_o\) # (\Add|C[5]~4_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[5]~input_o\ & (\Add|C[5]~4_combout\ & 
-- \B[5]~input_o\)) # (\A[5]~input_o\ & ((\B[5]~input_o\) # (\Add|C[5]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \Add|ALT_INV_C[5]~4_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[6]~5_combout\);

-- Location: MLABCELL_X49_Y37_N10
\Add|C[7]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = ( \AddnSub~input_o\ & ( (!\A[6]~input_o\ & (!\B[6]~input_o\ & \Add|C[6]~5_combout\)) # (\A[6]~input_o\ & ((!\B[6]~input_o\) # (\Add|C[6]~5_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[6]~input_o\ & (\B[6]~input_o\ & 
-- \Add|C[6]~5_combout\)) # (\A[6]~input_o\ & ((\Add|C[6]~5_combout\) # (\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datad => \Add|ALT_INV_C[6]~5_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[7]~6_combout\);

-- Location: IOIBUF_X59_Y26_N1
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X49_Y37_N32
\Add|C[8]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = ( \B[7]~input_o\ & ( (!\A[7]~input_o\ & (!\AddnSub~input_o\ & \Add|C[7]~6_combout\)) # (\A[7]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[7]~6_combout\))) ) ) # ( !\B[7]~input_o\ & ( (!\A[7]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|C[7]~6_combout\)) # (\A[7]~input_o\ & ((\Add|C[7]~6_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101001101010011010100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[7]~6_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|C[8]~7_combout\);

-- Location: LABCELL_X47_Y38_N6
\Add|C[9]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = ( \A[8]~input_o\ & ( \Add|C[8]~7_combout\ ) ) # ( !\A[8]~input_o\ & ( \Add|C[8]~7_combout\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\Add|C[8]~7_combout\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011001100110011001101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \Add|ALT_INV_C[8]~7_combout\,
	combout => \Add|C[9]~8_combout\);

-- Location: IOIBUF_X51_Y56_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X46_Y40_N20
\Add|C[10]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = ( \B[9]~input_o\ & ( (!\Add|C[9]~8_combout\ & (!\AddnSub~input_o\ & \A[9]~input_o\)) # (\Add|C[9]~8_combout\ & ((!\AddnSub~input_o\) # (\A[9]~input_o\))) ) ) # ( !\B[9]~input_o\ & ( (!\Add|C[9]~8_combout\ & (\AddnSub~input_o\ & 
-- \A[9]~input_o\)) # (\Add|C[9]~8_combout\ & ((\A[9]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[9]~8_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \Add|C[10]~9_combout\);

-- Location: MLABCELL_X46_Y40_N6
\Add|C[11]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = ( \A[10]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[10]~input_o\)) # (\Add|C[10]~9_combout\) ) ) # ( !\A[10]~input_o\ & ( (\Add|C[10]~9_combout\ & (!\AddnSub~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011001101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \Add|ALT_INV_C[10]~9_combout\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Add|C[11]~10_combout\);

-- Location: MLABCELL_X46_Y40_N30
\Add|C[12]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[11]~10_combout\) ) ) # ( !\A[11]~input_o\ & ( (\Add|C[11]~10_combout\ & (!\B[11]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \Add|ALT_INV_C[11]~10_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: MLABCELL_X46_Y40_N14
\Add|C[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = (!\A[12]~input_o\ & (\Add|C[12]~11_combout\ & (!\B[12]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[12]~input_o\ & ((!\B[12]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[12]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011101001101000101110100110100010111010011010001011101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \Add|ALT_INV_C[12]~11_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[13]~12_combout\);

-- Location: MLABCELL_X46_Y40_N38
\Add|C[14]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = ( \Add|C[13]~12_combout\ & ( (!\AddnSub~input_o\ $ (!\B[13]~input_o\)) # (\A[13]~input_o\) ) ) # ( !\Add|C[13]~12_combout\ & ( (\A[13]~input_o\ & (!\AddnSub~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111101011110101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	dataf => \Add|ALT_INV_C[13]~12_combout\,
	combout => \Add|C[14]~13_combout\);

-- Location: LABCELL_X45_Y38_N10
\Add|C[15]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = ( \A[14]~input_o\ & ( (!\B[14]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[14]~13_combout\) ) ) # ( !\A[14]~input_o\ & ( (\Add|C[14]~13_combout\ & (!\B[14]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[14]~input_o\,
	datac => \Add|ALT_INV_C[14]~13_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X59_Y46_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X46_Y41_N34
\Add|C[16]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[16]~15_combout\ = ( \B[15]~input_o\ & ( (!\A[15]~input_o\ & (\Add|C[15]~14_combout\ & !\AddnSub~input_o\)) # (\A[15]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[15]~14_combout\))) ) ) # ( !\B[15]~input_o\ & ( (!\A[15]~input_o\ & 
-- (\Add|C[15]~14_combout\ & \AddnSub~input_o\)) # (\A[15]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[15]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[15]~input_o\,
	datac => \Add|ALT_INV_C[15]~14_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Add|C[16]~15_combout\);

-- Location: MLABCELL_X44_Y38_N26
\Add|C[17]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[17]~16_combout\ = ( \A[16]~input_o\ & ( (!\B[16]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[16]~15_combout\) ) ) # ( !\A[16]~input_o\ & ( (\Add|C[16]~15_combout\ & (!\B[16]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[16]~input_o\,
	datac => \Add|ALT_INV_C[16]~15_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|C[17]~16_combout\);

-- Location: MLABCELL_X52_Y39_N0
\Add|C[18]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[18]~17_combout\ = ( \Add|C[17]~16_combout\ & ( (!\B[17]~input_o\ $ (!\AddnSub~input_o\)) # (\A[17]~input_o\) ) ) # ( !\Add|C[17]~16_combout\ & ( (\A[17]~input_o\ & (!\B[17]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[17]~16_combout\,
	combout => \Add|C[18]~17_combout\);

-- Location: IOIBUF_X59_Y49_N63
\B[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: MLABCELL_X52_Y39_N24
\Add|C[19]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[19]~18_combout\ = ( \B[18]~input_o\ & ( (!\A[18]~input_o\ & (\Add|C[18]~17_combout\ & !\AddnSub~input_o\)) # (\A[18]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[18]~17_combout\))) ) ) # ( !\B[18]~input_o\ & ( (!\A[18]~input_o\ & 
-- (\Add|C[18]~17_combout\ & \AddnSub~input_o\)) # (\A[18]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[18]~17_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[18]~input_o\,
	datac => \Add|ALT_INV_C[18]~17_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Add|C[19]~18_combout\);

-- Location: LABCELL_X47_Y41_N32
\Add|C[20]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[20]~19_combout\ = ( \AddnSub~input_o\ & ( (!\A[19]~input_o\ & (!\B[19]~input_o\ & \Add|C[19]~18_combout\)) # (\A[19]~input_o\ & ((!\B[19]~input_o\) # (\Add|C[19]~18_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[19]~input_o\ & (\B[19]~input_o\ & 
-- \Add|C[19]~18_combout\)) # (\A[19]~input_o\ & ((\Add|C[19]~18_combout\) # (\B[19]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111010001001101110100010001011101110100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datad => \Add|ALT_INV_C[19]~18_combout\,
	datae => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[20]~19_combout\);

-- Location: MLABCELL_X46_Y38_N26
\Add|C[21]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[21]~20_combout\ = ( \Add|C[20]~19_combout\ & ( (!\B[20]~input_o\ $ (!\AddnSub~input_o\)) # (\A[20]~input_o\) ) ) # ( !\Add|C[20]~19_combout\ & ( (\A[20]~input_o\ & (!\B[20]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001110111110111010111011111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[20]~19_combout\,
	combout => \Add|C[21]~20_combout\);

-- Location: MLABCELL_X49_Y39_N20
\Add|C[22]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[22]~21_combout\ = ( \Add|C[21]~20_combout\ & ( (!\AddnSub~input_o\ $ (!\B[21]~input_o\)) # (\A[21]~input_o\) ) ) # ( !\Add|C[21]~20_combout\ & ( (\A[21]~input_o\ & (!\AddnSub~input_o\ $ (!\B[21]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \Add|ALT_INV_C[21]~20_combout\,
	combout => \Add|C[22]~21_combout\);

-- Location: LABCELL_X50_Y39_N22
\Add|C[23]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[23]~22_combout\ = ( \Add|C[22]~21_combout\ & ( (!\B[22]~input_o\ $ (!\AddnSub~input_o\)) # (\A[22]~input_o\) ) ) # ( !\Add|C[22]~21_combout\ & ( (\A[22]~input_o\ & (!\B[22]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[22]~21_combout\,
	combout => \Add|C[23]~22_combout\);

-- Location: LABCELL_X47_Y40_N24
\Add|C[24]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[24]~23_combout\ = ( \AddnSub~input_o\ & ( (!\B[23]~input_o\ & ((\A[23]~input_o\) # (\Add|C[23]~22_combout\))) # (\B[23]~input_o\ & (\Add|C[23]~22_combout\ & \A[23]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\B[23]~input_o\ & 
-- (\Add|C[23]~22_combout\ & \A[23]~input_o\)) # (\B[23]~input_o\ & ((\A[23]~input_o\) # (\Add|C[23]~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \Add|ALT_INV_C[23]~22_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[24]~23_combout\);

-- Location: IOIBUF_X49_Y56_N63
\B[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LABCELL_X47_Y40_N28
\Add|C[25]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[25]~24_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[24]~23_combout\ & (\A[24]~input_o\ & !\B[24]~input_o\)) # (\Add|C[24]~23_combout\ & ((!\B[24]~input_o\) # (\A[24]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[24]~23_combout\ & 
-- (\A[24]~input_o\ & \B[24]~input_o\)) # (\Add|C[24]~23_combout\ & ((\B[24]~input_o\) # (\A[24]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[24]~23_combout\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[25]~24_combout\);

-- Location: LABCELL_X47_Y38_N8
\Add|C[26]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[26]~25_combout\ = ( \Add|C[25]~24_combout\ & ( (!\B[25]~input_o\ $ (!\AddnSub~input_o\)) # (\A[25]~input_o\) ) ) # ( !\Add|C[25]~24_combout\ & ( (\A[25]~input_o\ & (!\B[25]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100001111001111111100000000001111000011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[25]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	datae => \Add|ALT_INV_C[25]~24_combout\,
	combout => \Add|C[26]~25_combout\);

-- Location: IOIBUF_X59_Y22_N63
\B[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LABCELL_X45_Y38_N32
\Add|C[27]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[27]~26_combout\ = ( \B[26]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[26]~25_combout\) # (\A[26]~input_o\))) # (\AddnSub~input_o\ & (\A[26]~input_o\ & \Add|C[26]~25_combout\)) ) ) # ( !\B[26]~input_o\ & ( (!\AddnSub~input_o\ & (\A[26]~input_o\ & 
-- \Add|C[26]~25_combout\)) # (\AddnSub~input_o\ & ((\Add|C[26]~25_combout\) # (\A[26]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \Add|ALT_INV_C[26]~25_combout\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \Add|C[27]~26_combout\);

-- Location: IOIBUF_X40_Y56_N32
\B[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: MLABCELL_X44_Y40_N26
\Add|C[28]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[28]~27_combout\ = ( \B[27]~input_o\ & ( (!\A[27]~input_o\ & (\Add|C[27]~26_combout\ & !\AddnSub~input_o\)) # (\A[27]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[27]~26_combout\))) ) ) # ( !\B[27]~input_o\ & ( (!\A[27]~input_o\ & 
-- (\Add|C[27]~26_combout\ & \AddnSub~input_o\)) # (\A[27]~input_o\ & ((\AddnSub~input_o\) # (\Add|C[27]~26_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[27]~input_o\,
	datac => \Add|ALT_INV_C[27]~26_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \Add|C[28]~27_combout\);

-- Location: MLABCELL_X46_Y41_N38
\Add|C[29]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[29]~28_combout\ = ( \Add|C[28]~27_combout\ & ( (!\AddnSub~input_o\ $ (!\B[28]~input_o\)) # (\A[28]~input_o\) ) ) # ( !\Add|C[28]~27_combout\ & ( (\A[28]~input_o\ & (!\AddnSub~input_o\ $ (!\B[28]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[28]~input_o\,
	datad => \ALT_INV_A[28]~input_o\,
	dataf => \Add|ALT_INV_C[28]~27_combout\,
	combout => \Add|C[29]~28_combout\);

-- Location: IOIBUF_X59_Y39_N1
\B[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: MLABCELL_X52_Y39_N28
\Add|C[30]~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[30]~29_combout\ = ( \B[29]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[29]~input_o\) # (\Add|C[29]~28_combout\))) # (\AddnSub~input_o\ & (\Add|C[29]~28_combout\ & \A[29]~input_o\)) ) ) # ( !\B[29]~input_o\ & ( (!\AddnSub~input_o\ & 
-- (\Add|C[29]~28_combout\ & \A[29]~input_o\)) # (\AddnSub~input_o\ & ((\A[29]~input_o\) # (\Add|C[29]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011100101011001010110010101100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[29]~28_combout\,
	datac => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Add|C[30]~29_combout\);

-- Location: MLABCELL_X52_Y39_N12
\Add|C[31]~30\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[31]~30_combout\ = ( \Add|C[30]~29_combout\ & ( (!\B[30]~input_o\ $ (!\AddnSub~input_o\)) # (\A[30]~input_o\) ) ) # ( !\Add|C[30]~29_combout\ & ( (\A[30]~input_o\ & (!\B[30]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[30]~29_combout\,
	combout => \Add|C[31]~30_combout\);

-- Location: IOIBUF_X59_Y48_N63
\B[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: MLABCELL_X44_Y40_N10
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( \A[31]~input_o\ & ( (\Add|C[31]~30_combout\ & (!\AddnSub~input_o\ $ (\B[31]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (!\AddnSub~input_o\ $ (\B[31]~input_o\)) # (\Add|C[31]~30_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101101110111101110110111011100100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[31]~30_combout\,
	datad => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X59_Y36_N63
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: MLABCELL_X44_Y40_N8
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( \A[31]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[31]~input_o\)) # (\Add|C[31]~30_combout\) ) ) # ( !\A[31]~input_o\ & ( (\Add|C[31]~30_combout\ & (!\AddnSub~input_o\ $ (!\B[31]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001001111011011110110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[31]~30_combout\,
	datac => \ALT_INV_B[31]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X59_Y34_N94
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: LABCELL_X47_Y38_N32
\Mux31~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = ( \Add|Cout~0_combout\ & ( \FuncClass[0]~input_o\ & ( (\Logic|Mux31~0_combout\ & !\FuncClass[1]~input_o\) ) ) ) # ( !\Add|Cout~0_combout\ & ( \FuncClass[0]~input_o\ & ( (\FuncClass[1]~input_o\) # (\Logic|Mux31~0_combout\) ) ) ) # ( 
-- \Add|Cout~0_combout\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~7_combout\)) # (\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) ) ) ) # ( !\Add|Cout~0_combout\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & 
-- (\Y_ShiftOrArith[0]~7_combout\)) # (\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000001100111111000001010101111111110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|ALT_INV_Mux31~0_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[0]~7_combout\,
	datac => \ALT_INV_AltB~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \Add|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: MLABCELL_X46_Y41_N20
\Shift|ll4[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[1]~0_combout\ = ( \B[0]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & (!\B[3]~input_o\ & \A[0]~input_o\)) ) ) # ( !\B[0]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & (\A[1]~input_o\ & !\B[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~2_combout\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll4[1]~0_combout\);

-- Location: MLABCELL_X49_Y37_N20
\Mux30~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~10_combout\ = ( !\FuncClass[0]~input_o\ & ( ((!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\B[5]~input_o\)) # (\B[4]~input_o\)))) ) ) # ( \FuncClass[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (((!\LogicFN[0]~input_o\) # 
-- ((!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))))) # (\LogicFN[1]~input_o\ & ((((!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111111100111111111111111010000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	datag => \ALT_INV_B[5]~input_o\,
	combout => \Mux30~10_combout\);

-- Location: LABCELL_X45_Y38_N38
\Mux30~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = ( \FuncClass[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))) # (\LogicFN[1]~input_o\ & (((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))) ) ) # ( 
-- !\FuncClass[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010001000111110001000100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: MLABCELL_X46_Y41_N22
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = ( \Add|C[1]~0_combout\ & ( !\A[1]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[1]~input_o\)) ) ) # ( !\Add|C[1]~0_combout\ & ( !\A[1]~input_o\ $ (!\AddnSub~input_o\ $ (\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \Add|ALT_INV_C[1]~0_combout\,
	combout => \Add|S\(1));

-- Location: LABCELL_X43_Y39_N24
\Mux30~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (!\B[5]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	combout => \Mux30~5_combout\);

-- Location: MLABCELL_X42_Y39_N26
\Shift|rl2[17]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~13_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[20]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[20]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\B[0]~input_o\ & \A[18]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|rl2[17]~13_combout\);

-- Location: LABCELL_X47_Y40_N14
\Shift|rl2[21]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~12_combout\ = ( \B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & ((\A[23]~input_o\))) # (\B[0]~input_o\ & (\A[24]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & ((\A[23]~input_o\))) # (\B[0]~input_o\ & (\A[24]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[21]~input_o\ & ( (\B[0]~input_o\ & \A[22]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000100011011101110101111101011110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|rl2[21]~12_combout\);

-- Location: LABCELL_X47_Y39_N28
\Shift|rl3[17]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[17]~2_combout\ = ( \Shift|rl2[21]~12_combout\ & ( (\Shift|rl2[17]~13_combout\) # (\B[2]~input_o\) ) ) # ( !\Shift|rl2[21]~12_combout\ & ( (!\B[2]~input_o\ & \Shift|rl2[17]~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[17]~13_combout\,
	dataf => \Shift|ALT_INV_rl2[21]~12_combout\,
	combout => \Shift|rl3[17]~2_combout\);

-- Location: MLABCELL_X44_Y42_N28
\Shift|rl2[25]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~11_combout\ = ( \A[25]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[27]~input_o\))) # (\B[0]~input_o\ & (\A[28]~input_o\)) ) ) ) # ( !\A[25]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[27]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[28]~input_o\)) ) ) ) # ( \A[25]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[26]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( !\B[1]~input_o\ & ( (\B[0]~input_o\ & \A[26]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[25]~11_combout\);

-- Location: LABCELL_X47_Y39_N20
\Shift|ra3[29]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[29]~0_combout\ = ( \A[30]~input_o\ & ( (\A[29]~input_o\) # (\B[0]~input_o\) ) ) # ( !\A[30]~input_o\ & ( (!\B[0]~input_o\ & \A[29]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Shift|ra3[29]~0_combout\);

-- Location: LABCELL_X47_Y39_N4
\Shift|ra3[25]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[25]~1_combout\ = ( \Shift|ra3[29]~0_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[25]~11_combout\)) # (\B[2]~input_o\ & (((!\B[1]~input_o\) # (\A[31]~input_o\)))) ) ) # ( !\Shift|ra3[29]~0_combout\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[25]~11_combout\)) # (\B[2]~input_o\ & (((\B[1]~input_o\ & \A[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000111010001000100011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[25]~11_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \Shift|ALT_INV_ra3[29]~0_combout\,
	combout => \Shift|ra3[25]~1_combout\);

-- Location: LABCELL_X47_Y39_N12
\Shift|ra4[17]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[17]~0_combout\ = ( \B[3]~input_o\ & ( \Shift|ra3[25]~1_combout\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[17]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[17]~2_combout\,
	datac => \Shift|ALT_INV_ra3[25]~1_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ra4[17]~0_combout\);

-- Location: MLABCELL_X49_Y40_N10
\Mux30~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = ( \A[2]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # 
-- (\A[3]~input_o\))) # (\B[0]~input_o\ & (((\A[4]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[4]~input_o\)))) ) ) ) # 
-- ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000011110101001111110000010100111111111101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LABCELL_X47_Y42_N10
\Shift|rl2[9]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~9_combout\ = ( \B[1]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & ((\A[11]~input_o\))) # (\B[0]~input_o\ & (\A[12]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[10]~input_o\ & ( (\B[0]~input_o\) # (\A[9]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & ((\A[11]~input_o\))) # (\B[0]~input_o\ & (\A[12]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[10]~input_o\ & ( (\A[9]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|rl2[9]~9_combout\);

-- Location: LABCELL_X47_Y42_N24
\Shift|rl2[5]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~8_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[5]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ 
-- & (((\A[5]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[5]~input_o\)))) # (\B[0]~input_o\ & (\A[8]~input_o\ & 
-- ((\B[1]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (((\A[5]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[8]~input_o\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|rl2[5]~8_combout\);

-- Location: LABCELL_X45_Y41_N24
\Shift|rl2[13]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~10_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[14]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\A[14]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|rl2[13]~10_combout\);

-- Location: MLABCELL_X46_Y39_N2
\Mux30~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[13]~10_combout\ & ( (\Shift|rl2[5]~8_combout\) # (\B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[13]~10_combout\ & ( (!\B[3]~input_o\ & (\Mux30~1_combout\)) # (\B[3]~input_o\ & 
-- ((\Shift|rl2[9]~9_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|rl2[13]~10_combout\ & ( (!\B[3]~input_o\ & \Shift|rl2[5]~8_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|rl2[13]~10_combout\ & ( (!\B[3]~input_o\ & (\Mux30~1_combout\)) # (\B[3]~input_o\ 
-- & ((\Shift|rl2[9]~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~1_combout\,
	datab => \Shift|ALT_INV_rl2[9]~9_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_rl2[5]~8_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[13]~10_combout\,
	combout => \Mux30~2_combout\);

-- Location: LABCELL_X47_Y39_N22
\Shift|rl3[29]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[29]~0_combout\ = ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[31]~input_o\) ) ) # ( !\B[1]~input_o\ & ( \Shift|ra3[29]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_ra3[29]~0_combout\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl3[29]~0_combout\);

-- Location: LABCELL_X47_Y39_N6
\Shift|rl3[25]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[25]~1_combout\ = (!\B[2]~input_o\ & (\Shift|rl2[25]~11_combout\)) # (\B[2]~input_o\ & ((\Shift|rl3[29]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[25]~11_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl3[29]~0_combout\,
	combout => \Shift|rl3[25]~1_combout\);

-- Location: LABCELL_X47_Y39_N14
\Shift|rl4[17]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~3_combout\ = ( \B[3]~input_o\ & ( \Shift|rl3[25]~1_combout\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[17]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[17]~2_combout\,
	datac => \Shift|ALT_INV_rl3[25]~1_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[17]~3_combout\);

-- Location: LABCELL_X47_Y39_N38
\Mux30~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (!\ShiftFN[0]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LABCELL_X45_Y38_N20
\Mux30~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\B[5]~input_o\ & !\Mux30~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_Mux30~3_combout\,
	combout => \Mux30~4_combout\);

-- Location: MLABCELL_X46_Y38_N8
\Mux30~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = ( \Shift|rl4[17]~3_combout\ & ( \Mux30~4_combout\ & ( (!\Mux30~5_combout\ & ((\Mux30~2_combout\))) # (\Mux30~5_combout\ & (\Shift|ra4[17]~0_combout\)) ) ) ) # ( !\Shift|rl4[17]~3_combout\ & ( \Mux30~4_combout\ & ( (!\Mux30~5_combout\ & 
-- ((\Mux30~2_combout\))) # (\Mux30~5_combout\ & (\Shift|ra4[17]~0_combout\)) ) ) ) # ( \Shift|rl4[17]~3_combout\ & ( !\Mux30~4_combout\ & ( (\Y_R[0]~0_combout\) # (\Mux30~5_combout\) ) ) ) # ( !\Shift|rl4[17]~3_combout\ & ( !\Mux30~4_combout\ & ( 
-- (!\Mux30~5_combout\ & \Y_R[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~5_combout\,
	datab => \Shift|ALT_INV_ra4[17]~0_combout\,
	datac => \ALT_INV_Mux30~2_combout\,
	datad => \ALT_INV_Y_R[0]~0_combout\,
	datae => \Shift|ALT_INV_rl4[17]~3_combout\,
	dataf => \ALT_INV_Mux30~4_combout\,
	combout => \Mux30~6_combout\);

-- Location: MLABCELL_X46_Y41_N26
\Mux30~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = ( \Mux30~6_combout\ & ( (!\Mux30~10_combout\ & (((!\Mux30~0_combout\)) # (\Shift|ll4[1]~0_combout\))) # (\Mux30~10_combout\ & (((!\Mux30~0_combout\ & \Add|S\(1))))) ) ) # ( !\Mux30~6_combout\ & ( (!\Mux30~10_combout\ & 
-- (\Shift|ll4[1]~0_combout\ & (\Mux30~0_combout\))) # (\Mux30~10_combout\ & (((!\Mux30~0_combout\ & \Add|S\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll4[1]~0_combout\,
	datab => \ALT_INV_Mux30~10_combout\,
	datac => \ALT_INV_Mux30~0_combout\,
	datad => \Add|ALT_INV_S\(1),
	dataf => \ALT_INV_Mux30~6_combout\,
	combout => \Mux30~7_combout\);

-- Location: MLABCELL_X46_Y41_N4
\Mux30~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = ( \Mux30~7_combout\ & ( \A[1]~input_o\ & ( (!\LogicFN[0]~input_o\) # ((!\FuncClass[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\B[1]~input_o\))) ) ) ) # ( !\Mux30~7_combout\ & ( \A[1]~input_o\ & ( (\FuncClass[0]~input_o\ & 
-- (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\B[1]~input_o\))))) ) ) ) # ( \Mux30~7_combout\ & ( !\A[1]~input_o\ & ( (!\FuncClass[0]~input_o\) # ((!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[1]~input_o\))) # (\LogicFN[1]~input_o\ & 
-- (!\LogicFN[0]~input_o\ & \B[1]~input_o\))) ) ) ) # ( !\Mux30~7_combout\ & ( !\A[1]~input_o\ & ( (\FuncClass[0]~input_o\ & (\B[1]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000110111110001111111000000110000001011111111011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_Mux30~7_combout\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux30~8_combout\);

-- Location: MLABCELL_X46_Y41_N10
\Mux30~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (!\FuncClass[1]~input_o\ & \Mux30~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Mux30~8_combout\,
	combout => \Mux30~9_combout\);

-- Location: MLABCELL_X46_Y41_N30
\Shift|ll2[2]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~0_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (((\A[2]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[0]~input_o\ & (!\B[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[2]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011100110111000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ll2[2]~0_combout\);

-- Location: LABCELL_X47_Y41_N18
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \B[2]~input_o\ & ( !\Add|C[2]~1_combout\ $ (!\A[2]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\B[2]~input_o\ & ( !\Add|C[2]~1_combout\ $ (!\A[2]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[2]~1_combout\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Add|S\(2));

-- Location: LABCELL_X47_Y40_N36
\Shift|rl2[22]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~18_combout\ = ( \B[1]~input_o\ & ( \A[25]~input_o\ & ( (\A[24]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & \A[24]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((\A[22]~input_o\))) # (\B[0]~input_o\ & (\A[23]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shift|rl2[22]~18_combout\);

-- Location: MLABCELL_X42_Y39_N10
\Shift|rl2[18]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~19_combout\ = ( \B[1]~input_o\ & ( \A[21]~input_o\ & ( (\A[20]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & \A[20]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & (\A[18]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|rl2[18]~19_combout\);

-- Location: LABCELL_X45_Y39_N4
\Shift|rl3[18]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[18]~4_combout\ = ( \Shift|rl2[18]~19_combout\ & ( (!\B[2]~input_o\) # (\Shift|rl2[22]~18_combout\) ) ) # ( !\Shift|rl2[18]~19_combout\ & ( (\Shift|rl2[22]~18_combout\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl2[22]~18_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[18]~19_combout\,
	combout => \Shift|rl3[18]~4_combout\);

-- Location: MLABCELL_X44_Y42_N32
\Shift|rl2[26]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~17_combout\ = ( \A[29]~input_o\ & ( \A[28]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[29]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\A[26]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[27]~input_o\ & (!\B[1]~input_o\))) ) ) ) # ( \A[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[26]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # 
-- (\A[27]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[26]~input_o\))) # (\B[0]~input_o\ & (\A[27]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Shift|rl2[26]~17_combout\);

-- Location: MLABCELL_X44_Y39_N24
\Shift|ra3[26]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[26]~2_combout\ = ( \Shift|rl2[26]~17_combout\ & ( \A[30]~input_o\ & ( (!\B[2]~input_o\) # (((!\B[0]~input_o\ & !\B[1]~input_o\)) # (\A[31]~input_o\)) ) ) ) # ( !\Shift|rl2[26]~17_combout\ & ( \A[30]~input_o\ & ( (\B[2]~input_o\ & 
-- (((!\B[0]~input_o\ & !\B[1]~input_o\)) # (\A[31]~input_o\))) ) ) ) # ( \Shift|rl2[26]~17_combout\ & ( !\A[30]~input_o\ & ( (!\B[2]~input_o\) # ((\A[31]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\)))) ) ) ) # ( !\Shift|rl2[26]~17_combout\ & ( 
-- !\A[30]~input_o\ & ( (\B[2]~input_o\ & (\A[31]~input_o\ & ((\B[1]~input_o\) # (\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111111100001111011100001000000011111111100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \Shift|ALT_INV_rl2[26]~17_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Shift|ra3[26]~2_combout\);

-- Location: LABCELL_X45_Y39_N14
\Shift|ra4[18]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[18]~1_combout\ = ( \Shift|ra3[26]~2_combout\ & ( (\Shift|rl3[18]~4_combout\) # (\B[3]~input_o\) ) ) # ( !\Shift|ra3[26]~2_combout\ & ( (!\B[3]~input_o\ & \Shift|rl3[18]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_rl3[18]~4_combout\,
	dataf => \Shift|ALT_INV_ra3[26]~2_combout\,
	combout => \Shift|ra4[18]~1_combout\);

-- Location: LABCELL_X45_Y41_N10
\Shift|rl2[10]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~15_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[12]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[10]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[10]~15_combout\);

-- Location: MLABCELL_X49_Y40_N14
\Mux29~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (\A[4]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LABCELL_X45_Y41_N14
\Shift|rl2[14]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~16_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\A[16]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[14]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101001100000011000000000101111101010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|rl2[14]~16_combout\);

-- Location: LABCELL_X47_Y42_N14
\Shift|rl2[6]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~14_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[8]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) 
-- # (\A[8]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & \A[9]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\ & (\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[9]~input_o\)))) ) ) ) # 
-- ( !\A[7]~input_o\ & ( !\A[6]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[8]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|rl2[6]~14_combout\);

-- Location: LABCELL_X45_Y39_N0
\Mux29~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[6]~14_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[10]~15_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[14]~16_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[6]~14_combout\ & ( (\B[2]~input_o\) # 
-- (\Mux29~0_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[6]~14_combout\ & ( (!\B[2]~input_o\ & (\Shift|rl2[10]~15_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[14]~16_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|rl2[6]~14_combout\ & ( 
-- (\Mux29~0_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000010101010000111100110011111111110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[10]~15_combout\,
	datab => \ALT_INV_Mux29~0_combout\,
	datac => \Shift|ALT_INV_rl2[14]~16_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[6]~14_combout\,
	combout => \Mux29~1_combout\);

-- Location: MLABCELL_X44_Y39_N2
\Shift|rl3[26]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[26]~3_combout\ = ( \Shift|rl2[26]~17_combout\ & ( \A[30]~input_o\ & ( (!\B[2]~input_o\) # ((!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[31]~input_o\)))) ) ) ) # ( !\Shift|rl2[26]~17_combout\ & ( \A[30]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\B[2]~input_o\ & ((!\B[0]~input_o\) # (\A[31]~input_o\)))) ) ) ) # ( \Shift|rl2[26]~17_combout\ & ( !\A[30]~input_o\ & ( (!\B[2]~input_o\) # ((\B[0]~input_o\ & (!\B[1]~input_o\ & \A[31]~input_o\))) ) ) ) # ( !\Shift|rl2[26]~17_combout\ & ( 
-- !\A[30]~input_o\ & ( (\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[31]~input_o\ & \B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111110000010000000000100011001111111110001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[26]~17_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Shift|rl3[26]~3_combout\);

-- Location: LABCELL_X45_Y39_N28
\Shift|rl4[18]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~4_combout\ = (!\B[3]~input_o\ & (\Shift|rl3[18]~4_combout\)) # (\B[3]~input_o\ & ((\Shift|rl3[26]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[18]~4_combout\,
	datab => \Shift|ALT_INV_rl3[26]~3_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[18]~4_combout\);

-- Location: LABCELL_X45_Y39_N36
\Mux29~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = ( \Mux30~5_combout\ & ( \Shift|rl4[18]~4_combout\ & ( (!\Mux30~4_combout\) # (\Shift|ra4[18]~1_combout\) ) ) ) # ( !\Mux30~5_combout\ & ( \Shift|rl4[18]~4_combout\ & ( (!\Mux30~4_combout\ & (\Y_R[0]~0_combout\)) # (\Mux30~4_combout\ & 
-- ((\Mux29~1_combout\))) ) ) ) # ( \Mux30~5_combout\ & ( !\Shift|rl4[18]~4_combout\ & ( (\Shift|ra4[18]~1_combout\ & \Mux30~4_combout\) ) ) ) # ( !\Mux30~5_combout\ & ( !\Shift|rl4[18]~4_combout\ & ( (!\Mux30~4_combout\ & (\Y_R[0]~0_combout\)) # 
-- (\Mux30~4_combout\ & ((\Mux29~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[0]~0_combout\,
	datab => \Shift|ALT_INV_ra4[18]~1_combout\,
	datac => \ALT_INV_Mux29~1_combout\,
	datad => \ALT_INV_Mux30~4_combout\,
	datae => \ALT_INV_Mux30~5_combout\,
	dataf => \Shift|ALT_INV_rl4[18]~4_combout\,
	combout => \Mux29~2_combout\);

-- Location: MLABCELL_X46_Y41_N0
\Mux29~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = ( !\Mux30~10_combout\ & ( (!\Mux30~0_combout\ & ((((\Mux29~2_combout\))))) # (\Mux30~0_combout\ & (!\B[2]~input_o\ & (\Shift|ll2[2]~0_combout\ & ((!\B[3]~input_o\))))) ) ) # ( \Mux30~10_combout\ & ( (((\Add|S\(2) & 
-- (!\Mux30~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100100010000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[2]~0_combout\,
	datac => \Add|ALT_INV_S\(2),
	datad => \ALT_INV_Mux30~0_combout\,
	datae => \ALT_INV_Mux30~10_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	datag => \ALT_INV_Mux29~2_combout\,
	combout => \Mux29~5_combout\);

-- Location: MLABCELL_X46_Y41_N14
\Mux29~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = ( \LogicFN[1]~input_o\ & ( \FuncClass[0]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\)) ) ) ) # ( !\LogicFN[1]~input_o\ & ( 
-- \FuncClass[0]~input_o\ & ( (!\LogicFN[0]~input_o\ & (\Mux29~5_combout\)) # (\LogicFN[0]~input_o\ & ((!\A[2]~input_o\ $ (!\B[2]~input_o\)))) ) ) ) # ( \LogicFN[1]~input_o\ & ( !\FuncClass[0]~input_o\ & ( \Mux29~5_combout\ ) ) ) # ( !\LogicFN[1]~input_o\ & 
-- ( !\FuncClass[0]~input_o\ & ( \Mux29~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101000111011101000000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux29~5_combout\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux29~3_combout\);

-- Location: MLABCELL_X46_Y41_N8
\Mux29~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = ( \Mux29~3_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: LABCELL_X47_Y41_N8
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = ( \A[3]~input_o\ & ( !\B[3]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[3]~2_combout\)) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ $ (!\AddnSub~input_o\ $ (\Add|C[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[3]~2_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|S\(3));

-- Location: MLABCELL_X49_Y40_N16
\Shift|ll2[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~1_combout\ = ( \A[3]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & 
-- (\A[2]~input_o\))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[0]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[2]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[0]~input_o\)))) ) ) ) 
-- # ( !\A[3]~input_o\ & ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & ((\A[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ll2[3]~1_combout\);

-- Location: MLABCELL_X49_Y40_N20
\Mux28~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[6]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[6]~input_o\) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LABCELL_X47_Y42_N36
\Shift|rl2[7]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~20_combout\ = ( \A[7]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[9]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[8]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[10]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[9]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[8]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[9]~input_o\))) # (\B[0]~input_o\ & 
-- (((\A[8]~input_o\ & !\B[1]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\ & ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[8]~input_o\ & !\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000111100110101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|rl2[7]~20_combout\);

-- Location: LABCELL_X45_Y41_N36
\Shift|rl2[11]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~21_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[14]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[12]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[11]~21_combout\);

-- Location: MLABCELL_X42_Y39_N34
\Shift|rl2[15]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~22_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\B[0]~input_o\ & \A[18]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[16]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[18]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|rl2[15]~22_combout\);

-- Location: LABCELL_X43_Y39_N8
\Mux28~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = ( \Shift|rl2[15]~22_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|rl2[11]~21_combout\) ) ) ) # ( !\Shift|rl2[15]~22_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[11]~21_combout\ & !\B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[15]~22_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Mux28~0_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[7]~20_combout\))) ) ) ) # ( !\Shift|rl2[15]~22_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Mux28~0_combout\)) # 
-- (\B[2]~input_o\ & ((\Shift|rl2[7]~20_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux28~0_combout\,
	datab => \Shift|ALT_INV_rl2[7]~20_combout\,
	datac => \Shift|ALT_INV_rl2[11]~21_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_rl2[15]~22_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LABCELL_X47_Y40_N20
\Shift|rl2[23]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~24_combout\ = ( \A[26]~input_o\ & ( \A[25]~input_o\ & ( ((!\B[0]~input_o\ & (\A[23]~input_o\)) # (\B[0]~input_o\ & ((\A[24]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[26]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\A[23]~input_o\)) # (\B[1]~input_o\))) # (\B[0]~input_o\ & (!\B[1]~input_o\ & ((\A[24]~input_o\)))) ) ) ) # ( \A[26]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (!\B[1]~input_o\ & (\A[23]~input_o\))) # (\B[0]~input_o\ & (((\A[24]~input_o\)) # 
-- (\B[1]~input_o\))) ) ) ) # ( !\A[26]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[23]~input_o\)) # (\B[0]~input_o\ & ((\A[24]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shift|rl2[23]~24_combout\);

-- Location: MLABCELL_X42_Y39_N16
\Shift|rl2[19]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~25_combout\ = ( \B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & (\A[19]~input_o\)) # (\B[0]~input_o\ & ((\A[20]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[21]~input_o\ & ( (\A[22]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & (\A[19]~input_o\)) # (\B[0]~input_o\ & ((\A[20]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|rl2[19]~25_combout\);

-- Location: MLABCELL_X44_Y39_N12
\Shift|rl3[19]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[19]~6_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[23]~24_combout\ ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[19]~25_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[23]~24_combout\,
	datac => \Shift|ALT_INV_rl2[19]~25_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[19]~6_combout\);

-- Location: MLABCELL_X44_Y42_N38
\Shift|rl2[27]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~23_combout\ = ( \A[29]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[27]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[30]~input_o\)))) ) ) ) # ( !\A[29]~input_o\ & ( \A[28]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[27]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[30]~input_o\)))) ) ) ) # ( \A[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[27]~input_o\))) # (\B[0]~input_o\ & 
-- (((\A[30]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( !\A[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[30]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Shift|rl2[27]~23_combout\);

-- Location: MLABCELL_X44_Y39_N10
\Shift|ra3[27]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[27]~3_combout\ = (!\B[2]~input_o\ & (\Shift|rl2[27]~23_combout\)) # (\B[2]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[27]~23_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ra3[27]~3_combout\);

-- Location: MLABCELL_X44_Y39_N22
\Shift|ra4[19]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[19]~2_combout\ = ( \B[3]~input_o\ & ( \Shift|ra3[27]~3_combout\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[19]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[19]~6_combout\,
	datab => \Shift|ALT_INV_ra3[27]~3_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ra4[19]~2_combout\);

-- Location: MLABCELL_X44_Y39_N8
\Shift|rl3[27]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[27]~5_combout\ = ( \A[31]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[27]~23_combout\)) # (\B[2]~input_o\ & (((!\B[0]~input_o\ & !\B[1]~input_o\)))) ) ) # ( !\A[31]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[27]~23_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110010001000100111001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_rl2[27]~23_combout\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|rl3[27]~5_combout\);

-- Location: MLABCELL_X44_Y39_N16
\Shift|rl4[19]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~5_combout\ = ( \B[3]~input_o\ & ( \Shift|rl3[27]~5_combout\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[19]~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl3[19]~6_combout\,
	datad => \Shift|ALT_INV_rl3[27]~5_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[19]~5_combout\);

-- Location: LABCELL_X47_Y41_N0
\Mux28~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = ( \Shift|rl4[19]~5_combout\ & ( \Mux30~4_combout\ & ( (!\Mux30~5_combout\ & (\Mux28~1_combout\)) # (\Mux30~5_combout\ & ((\Shift|ra4[19]~2_combout\))) ) ) ) # ( !\Shift|rl4[19]~5_combout\ & ( \Mux30~4_combout\ & ( (!\Mux30~5_combout\ & 
-- (\Mux28~1_combout\)) # (\Mux30~5_combout\ & ((\Shift|ra4[19]~2_combout\))) ) ) ) # ( \Shift|rl4[19]~5_combout\ & ( !\Mux30~4_combout\ & ( (\Y_R[0]~0_combout\) # (\Mux30~5_combout\) ) ) ) # ( !\Shift|rl4[19]~5_combout\ & ( !\Mux30~4_combout\ & ( 
-- (!\Mux30~5_combout\ & \Y_R[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux28~1_combout\,
	datab => \ALT_INV_Mux30~5_combout\,
	datac => \ALT_INV_Y_R[0]~0_combout\,
	datad => \Shift|ALT_INV_ra4[19]~2_combout\,
	datae => \Shift|ALT_INV_rl4[19]~5_combout\,
	dataf => \ALT_INV_Mux30~4_combout\,
	combout => \Mux28~2_combout\);

-- Location: LABCELL_X47_Y41_N20
\Mux28~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = ( !\Mux30~10_combout\ & ( (!\Mux30~0_combout\ & (((\Mux28~2_combout\)))) # (\Mux30~0_combout\ & (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \Shift|ll2[3]~1_combout\))))) ) ) # ( \Mux30~10_combout\ & ( ((!\Mux30~0_combout\ & (\Add|S\(3)))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000101110000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \Add|ALT_INV_S\(3),
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_Mux30~10_combout\,
	dataf => \Shift|ALT_INV_ll2[3]~1_combout\,
	datag => \ALT_INV_Mux28~2_combout\,
	combout => \Mux28~5_combout\);

-- Location: LABCELL_X47_Y41_N6
\Mux28~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = ( \LogicFN[1]~input_o\ & ( \A[3]~input_o\ & ( (!\FuncClass[0]~input_o\ & (\Mux28~5_combout\)) # (\FuncClass[0]~input_o\ & (((!\LogicFN[0]~input_o\) # (\B[3]~input_o\)))) ) ) ) # ( !\LogicFN[1]~input_o\ & ( \A[3]~input_o\ & ( 
-- (!\LogicFN[0]~input_o\ & (\Mux28~5_combout\)) # (\LogicFN[0]~input_o\ & ((!\FuncClass[0]~input_o\ & (\Mux28~5_combout\)) # (\FuncClass[0]~input_o\ & ((!\B[3]~input_o\))))) ) ) ) # ( \LogicFN[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\FuncClass[0]~input_o\ & 
-- (\Mux28~5_combout\)) # (\FuncClass[0]~input_o\ & (((!\LogicFN[0]~input_o\ & \B[3]~input_o\)))) ) ) ) # ( !\LogicFN[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\LogicFN[0]~input_o\ & (\Mux28~5_combout\)) # (\LogicFN[0]~input_o\ & ((!\FuncClass[0]~input_o\ & 
-- (\Mux28~5_combout\)) # (\FuncClass[0]~input_o\ & ((\B[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010111010100000101110001010111010101000101110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux28~5_combout\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LABCELL_X47_Y38_N36
\Mux28~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = ( !\FuncClass[1]~input_o\ & ( \Mux28~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux28~3_combout\,
	combout => \Mux28~4_combout\);

-- Location: LABCELL_X43_Y38_N18
\Shift|rl3[20]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[20]~7_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[24]~7_combout\ ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[20]~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl2[20]~4_combout\,
	datad => \Shift|ALT_INV_rl2[24]~7_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[20]~7_combout\);

-- Location: MLABCELL_X46_Y38_N2
\Shift|rl4[20]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~6_combout\ = ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[28]~5_combout\) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[20]~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[28]~5_combout\,
	datad => \Shift|ALT_INV_rl3[20]~7_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[20]~6_combout\);

-- Location: LABCELL_X43_Y38_N0
\Mux27~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \Shift|rl2[4]~1_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[12]~3_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[16]~6_combout\)) ) ) ) # ( !\Shift|rl2[4]~1_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|rl2[12]~3_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[16]~6_combout\)) ) ) ) # ( \Shift|rl2[4]~1_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[8]~2_combout\) ) ) ) # ( !\Shift|rl2[4]~1_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|rl2[8]~2_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001110111011101110100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[8]~2_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[16]~6_combout\,
	datad => \Shift|ALT_INV_rl2[12]~3_combout\,
	datae => \Shift|ALT_INV_rl2[4]~1_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X43_Y38_N6
\Shift|ra4[20]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[20]~3_combout\ = ( \A[31]~input_o\ & ( (!\B[3]~input_o\ & (((\Shift|rl3[20]~7_combout\)))) # (\B[3]~input_o\ & (((\Shift|rl2[28]~5_combout\)) # (\B[2]~input_o\))) ) ) # ( !\A[31]~input_o\ & ( (!\B[3]~input_o\ & (((\Shift|rl3[20]~7_combout\)))) 
-- # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\Shift|rl2[28]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000001001010111000010101101111110001010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[28]~5_combout\,
	datad => \Shift|ALT_INV_rl3[20]~7_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|ra4[20]~3_combout\);

-- Location: MLABCELL_X46_Y38_N18
\Mux27~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = ( \Shift|ra4[20]~3_combout\ & ( \Mux30~5_combout\ & ( (\Shift|rl4[20]~6_combout\) # (\Mux30~4_combout\) ) ) ) # ( !\Shift|ra4[20]~3_combout\ & ( \Mux30~5_combout\ & ( (!\Mux30~4_combout\ & \Shift|rl4[20]~6_combout\) ) ) ) # ( 
-- \Shift|ra4[20]~3_combout\ & ( !\Mux30~5_combout\ & ( (!\Mux30~4_combout\ & ((\Y_R[0]~0_combout\))) # (\Mux30~4_combout\ & (\Mux27~0_combout\)) ) ) ) # ( !\Shift|ra4[20]~3_combout\ & ( !\Mux30~5_combout\ & ( (!\Mux30~4_combout\ & ((\Y_R[0]~0_combout\))) # 
-- (\Mux30~4_combout\ & (\Mux27~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~4_combout\,
	datab => \Shift|ALT_INV_rl4[20]~6_combout\,
	datac => \ALT_INV_Mux27~0_combout\,
	datad => \ALT_INV_Y_R[0]~0_combout\,
	datae => \Shift|ALT_INV_ra4[20]~3_combout\,
	dataf => \ALT_INV_Mux30~5_combout\,
	combout => \Mux27~1_combout\);

-- Location: MLABCELL_X46_Y38_N14
\Add|S[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(4) = ( \Add|C[4]~3_combout\ & ( !\AddnSub~input_o\ $ (!\A[4]~input_o\ $ (!\B[4]~input_o\)) ) ) # ( !\Add|C[4]~3_combout\ & ( !\AddnSub~input_o\ $ (!\A[4]~input_o\ $ (\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Add|ALT_INV_C[4]~3_combout\,
	combout => \Add|S\(4));

-- Location: MLABCELL_X44_Y38_N10
\Shift|ll2[0]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~2_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[0]~2_combout\);

-- Location: MLABCELL_X49_Y40_N24
\Shift|ll2[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~3_combout\ = ( \A[2]~input_o\ & ( \A[1]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[2]~input_o\ & ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) # 
-- (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001111110101000000110000010111110011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ll2[4]~3_combout\);

-- Location: MLABCELL_X44_Y38_N12
\Shift|ll4[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[4]~1_combout\ = ( \B[2]~input_o\ & ( (\Shift|ll2[0]~2_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[4]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ll2[0]~2_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[4]~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[4]~1_combout\);

-- Location: MLABCELL_X46_Y38_N20
\Mux27~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = ( \Shift|ll4[4]~1_combout\ & ( (!\Mux30~0_combout\ & ((!\Mux30~10_combout\ & (\Mux27~1_combout\)) # (\Mux30~10_combout\ & ((\Add|S\(4)))))) # (\Mux30~0_combout\ & (((!\Mux30~10_combout\)))) ) ) # ( !\Shift|ll4[4]~1_combout\ & ( 
-- (!\Mux30~0_combout\ & ((!\Mux30~10_combout\ & (\Mux27~1_combout\)) # (\Mux30~10_combout\ & ((\Add|S\(4)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000000100110001110000011111000111000001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux27~1_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Mux30~10_combout\,
	datad => \Add|ALT_INV_S\(4),
	dataf => \Shift|ALT_INV_ll4[4]~1_combout\,
	combout => \Mux27~2_combout\);

-- Location: MLABCELL_X46_Y38_N6
\Mux27~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = ( \A[4]~input_o\ & ( \LogicFN[0]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux27~2_combout\)))) # (\FuncClass[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\B[4]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( \LogicFN[0]~input_o\ & ( 
-- (!\FuncClass[0]~input_o\ & (((\Mux27~2_combout\)))) # (\FuncClass[0]~input_o\ & (!\LogicFN[1]~input_o\ & (\B[4]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\LogicFN[0]~input_o\ & ( ((\FuncClass[0]~input_o\ & \LogicFN[1]~input_o\)) # (\Mux27~2_combout\) ) ) 
-- ) # ( !\A[4]~input_o\ & ( !\LogicFN[0]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux27~2_combout\)))) # (\FuncClass[0]~input_o\ & ((!\LogicFN[1]~input_o\ & ((\Mux27~2_combout\))) # (\LogicFN[1]~input_o\ & (\B[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000100011111111100000100101011100100000111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_Mux27~2_combout\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: MLABCELL_X46_Y38_N22
\Mux27~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = ( \Mux27~3_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux27~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: MLABCELL_X49_Y37_N24
\Add|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(5) = ( \AddnSub~input_o\ & ( !\A[5]~input_o\ $ (!\Add|C[5]~4_combout\ $ (!\B[5]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[5]~input_o\ $ (!\Add|C[5]~4_combout\ $ (\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \Add|ALT_INV_C[5]~4_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(5));

-- Location: MLABCELL_X46_Y39_N4
\Mux26~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[17]~13_combout\ & ( (\B[3]~input_o\) # (\Shift|rl2[9]~9_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[17]~13_combout\ & ( (!\B[3]~input_o\ & (\Shift|rl2[5]~8_combout\)) # (\B[3]~input_o\ & 
-- ((\Shift|rl2[13]~10_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|rl2[17]~13_combout\ & ( (\Shift|rl2[9]~9_combout\ & !\B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|rl2[17]~13_combout\ & ( (!\B[3]~input_o\ & (\Shift|rl2[5]~8_combout\)) # 
-- (\B[3]~input_o\ & ((\Shift|rl2[13]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[5]~8_combout\,
	datab => \Shift|ALT_INV_rl2[9]~9_combout\,
	datac => \Shift|ALT_INV_rl2[13]~10_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[17]~13_combout\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X47_Y39_N30
\Shift|rl3[21]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[21]~9_combout\ = ( \Shift|rl2[21]~12_combout\ & ( (!\B[2]~input_o\) # (\Shift|rl2[25]~11_combout\) ) ) # ( !\Shift|rl2[21]~12_combout\ & ( (\Shift|rl2[25]~11_combout\ & \B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[25]~11_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_rl2[21]~12_combout\,
	combout => \Shift|rl3[21]~9_combout\);

-- Location: LABCELL_X47_Y39_N0
\Shift|ra3[29]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[29]~4_combout\ = ( \Shift|ra3[29]~0_combout\ & ( (\A[31]~input_o\) # (\Shift|rl4[22]~2_combout\) ) ) # ( !\Shift|ra3[29]~0_combout\ & ( (!\Shift|rl4[22]~2_combout\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_rl4[22]~2_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \Shift|ALT_INV_ra3[29]~0_combout\,
	combout => \Shift|ra3[29]~4_combout\);

-- Location: LABCELL_X47_Y39_N26
\Shift|ra4[21]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[21]~4_combout\ = (!\B[3]~input_o\ & (\Shift|rl3[21]~9_combout\)) # (\B[3]~input_o\ & ((\Shift|ra3[29]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_rl3[21]~9_combout\,
	datad => \Shift|ALT_INV_ra3[29]~4_combout\,
	combout => \Shift|ra4[21]~4_combout\);

-- Location: LABCELL_X47_Y39_N2
\Shift|rl3[29]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[29]~8_combout\ = ( !\B[2]~input_o\ & ( \Shift|rl3[29]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl3[29]~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[29]~8_combout\);

-- Location: LABCELL_X47_Y39_N24
\Shift|rl4[21]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~7_combout\ = ( \Shift|rl3[29]~8_combout\ & ( (\Shift|rl3[21]~9_combout\) # (\B[3]~input_o\) ) ) # ( !\Shift|rl3[29]~8_combout\ & ( (!\B[3]~input_o\ & \Shift|rl3[21]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_rl3[21]~9_combout\,
	dataf => \Shift|ALT_INV_rl3[29]~8_combout\,
	combout => \Shift|rl4[21]~7_combout\);

-- Location: LABCELL_X45_Y39_N20
\Mux26~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = ( \Mux30~5_combout\ & ( \Shift|rl4[21]~7_combout\ & ( (!\Mux30~4_combout\) # (\Shift|ra4[21]~4_combout\) ) ) ) # ( !\Mux30~5_combout\ & ( \Shift|rl4[21]~7_combout\ & ( (!\Mux30~4_combout\ & (\Y_R[0]~0_combout\)) # (\Mux30~4_combout\ & 
-- ((\Mux26~0_combout\))) ) ) ) # ( \Mux30~5_combout\ & ( !\Shift|rl4[21]~7_combout\ & ( (\Shift|ra4[21]~4_combout\ & \Mux30~4_combout\) ) ) ) # ( !\Mux30~5_combout\ & ( !\Shift|rl4[21]~7_combout\ & ( (!\Mux30~4_combout\ & (\Y_R[0]~0_combout\)) # 
-- (\Mux30~4_combout\ & ((\Mux26~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000000000000111101010101001100111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[0]~0_combout\,
	datab => \ALT_INV_Mux26~0_combout\,
	datac => \Shift|ALT_INV_ra4[21]~4_combout\,
	datad => \ALT_INV_Mux30~4_combout\,
	datae => \ALT_INV_Mux30~5_combout\,
	dataf => \Shift|ALT_INV_rl4[21]~7_combout\,
	combout => \Mux26~1_combout\);

-- Location: MLABCELL_X49_Y40_N28
\Shift|ll2[5]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~5_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[2]~input_o\)) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (\A[4]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[5]~5_combout\);

-- Location: MLABCELL_X49_Y39_N22
\Shift|ll2[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[1]~4_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[1]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & \A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ll2[1]~4_combout\);

-- Location: MLABCELL_X49_Y39_N6
\Shift|ll4[5]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[5]~2_combout\ = ( \B[2]~input_o\ & ( (\Shift|ll2[1]~4_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (\Shift|ll2[5]~5_combout\ & !\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[5]~5_combout\,
	datac => \Shift|ALT_INV_ll2[1]~4_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[5]~2_combout\);

-- Location: MLABCELL_X49_Y37_N16
\Mux26~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = ( \Mux30~10_combout\ & ( (\Add|S\(5) & !\Mux30~0_combout\) ) ) # ( !\Mux30~10_combout\ & ( (!\Mux30~0_combout\ & (\Mux26~1_combout\)) # (\Mux30~0_combout\ & ((\Shift|ll4[5]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(5),
	datab => \ALT_INV_Mux26~1_combout\,
	datac => \Shift|ALT_INV_ll4[5]~2_combout\,
	datad => \ALT_INV_Mux30~0_combout\,
	dataf => \ALT_INV_Mux30~10_combout\,
	combout => \Mux26~2_combout\);

-- Location: MLABCELL_X49_Y37_N0
\Mux26~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = ( \LogicFN[1]~input_o\ & ( \Mux26~2_combout\ & ( (!\FuncClass[0]~input_o\) # ((!\B[5]~input_o\ & (\A[5]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[5]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[5]~input_o\)))) ) ) ) # ( 
-- !\LogicFN[1]~input_o\ & ( \Mux26~2_combout\ & ( (!\FuncClass[0]~input_o\) # ((!\LogicFN[0]~input_o\) # (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) ) ) # ( \LogicFN[1]~input_o\ & ( !\Mux26~2_combout\ & ( (\FuncClass[0]~input_o\ & ((!\B[5]~input_o\ & 
-- (\A[5]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[5]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[5]~input_o\))))) ) ) ) # ( !\LogicFN[1]~input_o\ & ( !\Mux26~2_combout\ & ( (\FuncClass[0]~input_o\ & (\LogicFN[0]~input_o\ & (!\B[5]~input_o\ $ 
-- (!\A[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100110000000111111111110111101101111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: MLABCELL_X49_Y37_N18
\Mux26~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = ( !\FuncClass[1]~input_o\ & ( \Mux26~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux26~3_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux26~4_combout\);

-- Location: MLABCELL_X49_Y37_N8
\Add|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(6) = ( \AddnSub~input_o\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (!\Add|C[6]~5_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[6]~input_o\ $ (!\B[6]~input_o\ $ (\Add|C[6]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[6]~input_o\,
	datad => \Add|ALT_INV_C[6]~5_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(6));

-- Location: MLABCELL_X44_Y39_N6
\Shift|rl4[22]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~8_combout\ = ( \A[30]~input_o\ & ( (\Shift|rl4[22]~2_combout\ & ((!\B[0]~input_o\) # (\A[31]~input_o\))) ) ) # ( !\A[30]~input_o\ & ( (\B[0]~input_o\ & (\A[31]~input_o\ & \Shift|rl4[22]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100001011000010110000101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \Shift|ALT_INV_rl4[22]~2_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Shift|rl4[22]~8_combout\);

-- Location: MLABCELL_X44_Y39_N28
\Shift|rl3[22]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[22]~10_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[26]~17_combout\ ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[22]~18_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl2[22]~18_combout\,
	datad => \Shift|ALT_INV_rl2[26]~17_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[22]~10_combout\);

-- Location: MLABCELL_X44_Y39_N30
\Shift|rl4[22]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~9_combout\ = ( \B[3]~input_o\ & ( \Shift|rl4[22]~8_combout\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[22]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_rl4[22]~8_combout\,
	datad => \Shift|ALT_INV_rl3[22]~10_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[22]~9_combout\);

-- Location: LABCELL_X45_Y39_N26
\Mux25~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[18]~19_combout\ & ( (\Shift|rl2[14]~16_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[18]~19_combout\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[6]~14_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|rl2[10]~15_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[18]~19_combout\ & ( (!\B[2]~input_o\ & \Shift|rl2[14]~16_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|rl2[18]~19_combout\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[6]~14_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|rl2[10]~15_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[10]~15_combout\,
	datab => \Shift|ALT_INV_rl2[6]~14_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[14]~16_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[18]~19_combout\,
	combout => \Mux25~0_combout\);

-- Location: MLABCELL_X44_Y39_N4
\Shift|ra3[30]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra3[30]~5_combout\ = ( \A[30]~input_o\ & ( ((!\B[0]~input_o\ & \Shift|rl4[22]~2_combout\)) # (\A[31]~input_o\) ) ) # ( !\A[30]~input_o\ & ( (\A[31]~input_o\ & ((!\Shift|rl4[22]~2_combout\) # (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100010001001100110001000100110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_rl4[22]~2_combout\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Shift|ra3[30]~5_combout\);

-- Location: LABCELL_X45_Y39_N10
\Shift|ra4[22]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[22]~5_combout\ = ( \Shift|rl3[22]~10_combout\ & ( (!\B[3]~input_o\) # (\Shift|ra3[30]~5_combout\) ) ) # ( !\Shift|rl3[22]~10_combout\ & ( (\Shift|ra3[30]~5_combout\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ra3[30]~5_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl3[22]~10_combout\,
	combout => \Shift|ra4[22]~5_combout\);

-- Location: LABCELL_X45_Y39_N32
\Mux25~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = ( \Mux25~0_combout\ & ( \Shift|ra4[22]~5_combout\ & ( ((!\Mux30~5_combout\ & ((\Y_R[0]~0_combout\))) # (\Mux30~5_combout\ & (\Shift|rl4[22]~9_combout\))) # (\Mux30~4_combout\) ) ) ) # ( !\Mux25~0_combout\ & ( \Shift|ra4[22]~5_combout\ 
-- & ( (!\Mux30~5_combout\ & (((\Y_R[0]~0_combout\ & !\Mux30~4_combout\)))) # (\Mux30~5_combout\ & (((\Mux30~4_combout\)) # (\Shift|rl4[22]~9_combout\))) ) ) ) # ( \Mux25~0_combout\ & ( !\Shift|ra4[22]~5_combout\ & ( (!\Mux30~5_combout\ & 
-- (((\Mux30~4_combout\) # (\Y_R[0]~0_combout\)))) # (\Mux30~5_combout\ & (\Shift|rl4[22]~9_combout\ & ((!\Mux30~4_combout\)))) ) ) ) # ( !\Mux25~0_combout\ & ( !\Shift|ra4[22]~5_combout\ & ( (!\Mux30~4_combout\ & ((!\Mux30~5_combout\ & 
-- ((\Y_R[0]~0_combout\))) # (\Mux30~5_combout\ & (\Shift|rl4[22]~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~9_combout\,
	datab => \ALT_INV_Mux30~5_combout\,
	datac => \ALT_INV_Y_R[0]~0_combout\,
	datad => \ALT_INV_Mux30~4_combout\,
	datae => \ALT_INV_Mux25~0_combout\,
	dataf => \Shift|ALT_INV_ra4[22]~5_combout\,
	combout => \Mux25~1_combout\);

-- Location: MLABCELL_X49_Y40_N32
\Shift|ll2[6]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~6_combout\ = ( \A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\A[5]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[3]~input_o\)) ) ) ) # ( \A[5]~input_o\ & ( !\B[1]~input_o\ & ( (\A[6]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[5]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[6]~6_combout\);

-- Location: LABCELL_X50_Y39_N4
\Shift|ll4[6]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[6]~3_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[6]~6_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[2]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[2]~0_combout\,
	datad => \Shift|ALT_INV_ll2[6]~6_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[6]~3_combout\);

-- Location: MLABCELL_X49_Y37_N4
\Mux25~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = ( \Shift|ll4[6]~3_combout\ & ( (!\Mux30~10_combout\ & (((\Mux25~1_combout\)) # (\Mux30~0_combout\))) # (\Mux30~10_combout\ & (!\Mux30~0_combout\ & (\Add|S\(6)))) ) ) # ( !\Shift|ll4[6]~3_combout\ & ( (!\Mux30~0_combout\ & 
-- ((!\Mux30~10_combout\ & ((\Mux25~1_combout\))) # (\Mux30~10_combout\ & (\Add|S\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~10_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \Add|ALT_INV_S\(6),
	datad => \ALT_INV_Mux25~1_combout\,
	dataf => \Shift|ALT_INV_ll4[6]~3_combout\,
	combout => \Mux25~2_combout\);

-- Location: MLABCELL_X49_Y37_N30
\Mux25~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = ( \B[6]~input_o\ & ( \Mux25~2_combout\ & ( (!\FuncClass[0]~input_o\) # ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[6]~input_o\))) ) ) ) # ( !\B[6]~input_o\ & ( \Mux25~2_combout\ & ( (!\FuncClass[0]~input_o\) # 
-- ((!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[6]~input_o\))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[6]~input_o\))) ) ) ) # ( \B[6]~input_o\ & ( !\Mux25~2_combout\ & ( (\FuncClass[0]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\A[6]~input_o\))))) ) ) ) # ( !\B[6]~input_o\ & ( !\Mux25~2_combout\ & ( (\FuncClass[0]~input_o\ & (\A[6]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010010000100100001000111101100111111101111111011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: MLABCELL_X52_Y38_N20
\Mux25~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = ( !\FuncClass[1]~input_o\ & ( \Mux25~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux25~3_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: MLABCELL_X44_Y39_N14
\Shift|rl3[23]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl3[23]~11_combout\ = ( \B[2]~input_o\ & ( \Shift|rl2[27]~23_combout\ ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[23]~24_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[23]~24_combout\,
	datac => \Shift|ALT_INV_rl2[27]~23_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|rl3[23]~11_combout\);

-- Location: LABCELL_X43_Y39_N0
\Shift|ra4[23]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ra4[23]~6_combout\ = ( \B[3]~input_o\ & ( \A[31]~input_o\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[23]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_rl3[23]~11_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ra4[23]~6_combout\);

-- Location: MLABCELL_X44_Y38_N36
\Shift|Y_RL[31]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[31]~1_combout\ = ( !\B[0]~input_o\ & ( (\A[31]~input_o\ & \Shift|rl4[22]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_rl4[22]~2_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|Y_RL[31]~1_combout\);

-- Location: LABCELL_X43_Y39_N16
\Shift|rl4[23]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~10_combout\ = ( \B[3]~input_o\ & ( \Shift|Y_RL[31]~1_combout\ ) ) # ( !\B[3]~input_o\ & ( \Shift|rl3[23]~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_rl3[23]~11_combout\,
	datad => \Shift|ALT_INV_Y_RL[31]~1_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl4[23]~10_combout\);

-- Location: LABCELL_X43_Y39_N32
\Mux24~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[19]~25_combout\ ) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ & ( \Shift|rl2[15]~22_combout\ ) ) ) # ( \B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[11]~21_combout\ ) ) ) # ( 
-- !\B[2]~input_o\ & ( !\B[3]~input_o\ & ( \Shift|rl2[7]~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[19]~25_combout\,
	datab => \Shift|ALT_INV_rl2[15]~22_combout\,
	datac => \Shift|ALT_INV_rl2[11]~21_combout\,
	datad => \Shift|ALT_INV_rl2[7]~20_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X43_Y39_N20
\Mux24~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = ( \Mux30~4_combout\ & ( \Mux24~0_combout\ & ( (!\Mux30~5_combout\) # (\Shift|ra4[23]~6_combout\) ) ) ) # ( !\Mux30~4_combout\ & ( \Mux24~0_combout\ & ( (!\Mux30~5_combout\ & (\Y_R[0]~0_combout\)) # (\Mux30~5_combout\ & 
-- ((\Shift|rl4[23]~10_combout\))) ) ) ) # ( \Mux30~4_combout\ & ( !\Mux24~0_combout\ & ( (\Mux30~5_combout\ & \Shift|ra4[23]~6_combout\) ) ) ) # ( !\Mux30~4_combout\ & ( !\Mux24~0_combout\ & ( (!\Mux30~5_combout\ & (\Y_R[0]~0_combout\)) # (\Mux30~5_combout\ 
-- & ((\Shift|rl4[23]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~5_combout\,
	datab => \ALT_INV_Y_R[0]~0_combout\,
	datac => \Shift|ALT_INV_ra4[23]~6_combout\,
	datad => \Shift|ALT_INV_rl4[23]~10_combout\,
	datae => \ALT_INV_Mux30~4_combout\,
	dataf => \ALT_INV_Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: MLABCELL_X49_Y37_N34
\Add|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(7) = ( \Add|C[7]~6_combout\ & ( !\A[7]~input_o\ $ (!\AddnSub~input_o\ $ (!\B[7]~input_o\)) ) ) # ( !\Add|C[7]~6_combout\ & ( !\A[7]~input_o\ $ (!\AddnSub~input_o\ $ (\B[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[7]~input_o\,
	dataf => \Add|ALT_INV_C[7]~6_combout\,
	combout => \Add|S\(7));

-- Location: MLABCELL_X49_Y40_N38
\Shift|ll2[7]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~7_combout\ = ( \B[0]~input_o\ & ( \A[7]~input_o\ & ( (!\B[1]~input_o\ & (\A[6]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[7]~input_o\ & ( (!\B[1]~input_o\) # (\A[5]~input_o\) ) ) ) # ( \B[0]~input_o\ 
-- & ( !\A[7]~input_o\ & ( (!\B[1]~input_o\ & (\A[6]~input_o\)) # (\B[1]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[7]~input_o\ & ( (\A[5]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[7]~input_o\,
	combout => \Shift|ll2[7]~7_combout\);

-- Location: MLABCELL_X49_Y37_N14
\Shift|ll4[7]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[7]~4_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[7]~7_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[7]~7_combout\,
	datab => \Shift|ALT_INV_ll2[3]~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[7]~4_combout\);

-- Location: MLABCELL_X49_Y37_N6
\Mux24~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = ( \Shift|ll4[7]~4_combout\ & ( (!\Mux30~10_combout\ & (((\Mux24~1_combout\)) # (\Mux30~0_combout\))) # (\Mux30~10_combout\ & (!\Mux30~0_combout\ & ((\Add|S\(7))))) ) ) # ( !\Shift|ll4[7]~4_combout\ & ( (!\Mux30~0_combout\ & 
-- ((!\Mux30~10_combout\ & (\Mux24~1_combout\)) # (\Mux30~10_combout\ & ((\Add|S\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~10_combout\,
	datab => \ALT_INV_Mux30~0_combout\,
	datac => \ALT_INV_Mux24~1_combout\,
	datad => \Add|ALT_INV_S\(7),
	dataf => \Shift|ALT_INV_ll4[7]~4_combout\,
	combout => \Mux24~2_combout\);

-- Location: MLABCELL_X49_Y37_N38
\Mux24~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = ( \A[7]~input_o\ & ( \Mux24~2_combout\ & ( (!\LogicFN[0]~input_o\) # ((!\FuncClass[0]~input_o\) # (!\B[7]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \Mux24~2_combout\ & ( (!\FuncClass[0]~input_o\) # 
-- ((!\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\) # (\B[7]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[7]~input_o\ & !\LogicFN[1]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\Mux24~2_combout\ & ( (\FuncClass[0]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\B[7]~input_o\))))) ) ) ) # ( !\A[7]~input_o\ & ( !\Mux24~2_combout\ & ( (\B[7]~input_o\ & (\FuncClass[0]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000010000001000000101111111011111100101111111011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: MLABCELL_X49_Y37_N12
\Mux24~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = ( \Mux24~3_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux24~3_combout\,
	combout => \Mux24~4_combout\);

-- Location: LABCELL_X47_Y38_N22
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = ( \A[8]~input_o\ & ( \Add|C[8]~7_combout\ & ( !\B[8]~input_o\ $ (!\AddnSub~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \Add|C[8]~7_combout\ & ( !\B[8]~input_o\ $ (\AddnSub~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\Add|C[8]~7_combout\ & ( 
-- !\B[8]~input_o\ $ (\AddnSub~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( !\Add|C[8]~7_combout\ & ( !\B[8]~input_o\ $ (!\AddnSub~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000111100000000111111110000000011110000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \Add|ALT_INV_C[8]~7_combout\,
	combout => \Add|S\(8));

-- Location: LABCELL_X43_Y38_N4
\Shift|rl4[24]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~11_combout\ = (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|rl2[24]~7_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[28]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000001010100000100000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[24]~7_combout\,
	datad => \Shift|ALT_INV_rl2[28]~5_combout\,
	combout => \Shift|rl4[24]~11_combout\);

-- Location: LABCELL_X43_Y38_N10
\Mux23~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[16]~6_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[20]~4_combout\))) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[16]~6_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[20]~4_combout\))) ) ) ) # ( \Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( (\Shift|rl2[8]~2_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|rl2[12]~3_combout\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & \Shift|rl2[8]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[16]~6_combout\,
	datab => \Shift|ALT_INV_rl2[20]~4_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[8]~2_combout\,
	datae => \Shift|ALT_INV_rl2[12]~3_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X45_Y38_N0
\Mux23~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = ( !\B[4]~input_o\ & ( (!\B[5]~input_o\ & (((\Mux23~0_combout\)))) # (\B[5]~input_o\ & (\ShiftFN[0]~input_o\ & (((\A[31]~input_o\))))) ) ) # ( \B[4]~input_o\ & ( (!\B[5]~input_o\ & (((\ShiftFN[0]~input_o\ & (\B[3]~input_o\ & 
-- \A[31]~input_o\))) # (\Shift|rl4[24]~11_combout\))) # (\B[5]~input_o\ & (\ShiftFN[0]~input_o\ & (((\A[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000110000001100000011000000110000011101000111010001110101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \Shift|ALT_INV_rl4[24]~11_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	datag => \ALT_INV_Mux23~0_combout\,
	combout => \Mux23~4_combout\);

-- Location: LABCELL_X47_Y42_N20
\Shift|ll2[8]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~8_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[8]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[5]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ 
-- & (((\B[1]~input_o\)) # (\A[8]~input_o\))) # (\B[0]~input_o\ & (((\A[5]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # 
-- (\A[5]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[5]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ll2[8]~8_combout\);

-- Location: MLABCELL_X44_Y38_N8
\Shift|ll4[8]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~5_combout\ = ( \B[2]~input_o\ & ( (\Shift|ll2[4]~3_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[8]~8_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[0]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[0]~2_combout\,
	datab => \Shift|ALT_INV_ll2[4]~3_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[8]~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[8]~5_combout\);

-- Location: LABCELL_X47_Y38_N24
\Mux23~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ( \Shift|ll4[8]~5_combout\ & ( (!\Mux30~0_combout\ & ((!\Mux30~10_combout\ & ((\Mux23~4_combout\))) # (\Mux30~10_combout\ & (\Add|S\(8))))) # (\Mux30~0_combout\ & (((!\Mux30~10_combout\)))) ) ) # ( !\Shift|ll4[8]~5_combout\ & ( 
-- (!\Mux30~0_combout\ & ((!\Mux30~10_combout\ & ((\Mux23~4_combout\))) # (\Mux30~10_combout\ & (\Add|S\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010000010100010001001011111001000100101111100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~0_combout\,
	datab => \Add|ALT_INV_S\(8),
	datac => \ALT_INV_Mux23~4_combout\,
	datad => \ALT_INV_Mux30~10_combout\,
	dataf => \Shift|ALT_INV_ll4[8]~5_combout\,
	combout => \Mux23~1_combout\);

-- Location: LABCELL_X47_Y38_N30
\Mux23~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = ( \LogicFN[0]~input_o\ & ( \FuncClass[0]~input_o\ & ( (!\A[8]~input_o\ & (\B[8]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[8]~input_o\ & (!\B[8]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) ) # ( !\LogicFN[0]~input_o\ & ( 
-- \FuncClass[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (((\Mux23~1_combout\)))) # (\LogicFN[1]~input_o\ & (((\B[8]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( \LogicFN[0]~input_o\ & ( !\FuncClass[0]~input_o\ & ( \Mux23~1_combout\ ) ) ) # ( 
-- !\LogicFN[0]~input_o\ & ( !\FuncClass[0]~input_o\ & ( \Mux23~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000111111101110110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_Mux23~1_combout\,
	datae => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LABCELL_X47_Y38_N26
\Mux23~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux23~2_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: LABCELL_X45_Y38_N6
\Mux20~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( \B[3]~input_o\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((!\B[4]~input_o\ & !\B[5]~input_o\)))) ) ) # ( !\B[3]~input_o\ & ( (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000000111010100000000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux20~0_combout\);

-- Location: LABCELL_X47_Y38_N12
\Mux20~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = ( \Mux20~0_combout\ & ( (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) ) # ( !\Mux20~0_combout\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LABCELL_X47_Y38_N14
\Mux20~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = ( \Mux20~0_combout\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\Mux20~0_combout\ & ( (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux20~0_combout\,
	combout => \Mux20~2_combout\);

-- Location: LABCELL_X45_Y38_N22
\Mux19~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & \ShiftFN[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LABCELL_X45_Y38_N26
\Mux19~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: MLABCELL_X46_Y40_N22
\Mux22~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \Mux19~1_combout\ & ( !\AddnSub~input_o\ $ (!\Add|C[9]~8_combout\ $ (!\B[9]~input_o\ $ (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[9]~8_combout\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_Mux19~1_combout\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X47_Y42_N6
\Shift|ll2[9]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~9_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[8]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\ & 
-- \A[9]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (((\A[9]~input_o\) # (\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[8]~input_o\ & (!\B[1]~input_o\))) ) ) ) # 
-- ( !\A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[8]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ll2[9]~9_combout\);

-- Location: MLABCELL_X49_Y39_N8
\Shift|ll4[9]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~6_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[5]~5_combout\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[9]~9_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[1]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[9]~9_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[5]~5_combout\,
	datad => \Shift|ALT_INV_ll2[1]~4_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[9]~6_combout\);

-- Location: LABCELL_X45_Y40_N20
\Mux22~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = ( \A[31]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\Mux22~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[9]~6_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (!\Mux22~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[9]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux22~0_combout\,
	datad => \Shift|ALT_INV_ll4[9]~6_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LABCELL_X45_Y38_N30
\Mux20~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = ( \B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \B[5]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\B[2]~input_o\ & !\B[4]~input_o\)) # (\B[5]~input_o\))) # (\ShiftFN[0]~input_o\ & (\B[2]~input_o\ & 
-- (!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010111010001100001011101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: LABCELL_X45_Y38_N28
\Mux20~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = ( \B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & \B[5]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((!\B[2]~input_o\ & !\B[4]~input_o\)) # (\B[5]~input_o\))) # (\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & 
-- ((!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111000001010110011100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux20~3_combout\);

-- Location: LABCELL_X47_Y39_N36
\Mux20~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = ( \B[3]~input_o\ & ( \B[4]~input_o\ ) ) # ( !\B[3]~input_o\ & ( (\ShiftFN[0]~input_o\ & \B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux20~5_combout\);

-- Location: LABCELL_X47_Y39_N8
\Mux22~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = ( \Shift|rl3[25]~1_combout\ & ( (!\Mux30~3_combout\ & ((!\Mux20~5_combout\ & (\Shift|rl3[17]~2_combout\)) # (\Mux20~5_combout\ & ((\Shift|ra3[25]~1_combout\))))) # (\Mux30~3_combout\ & (!\Mux20~5_combout\)) ) ) # ( 
-- !\Shift|rl3[25]~1_combout\ & ( (!\Mux30~3_combout\ & ((!\Mux20~5_combout\ & (\Shift|rl3[17]~2_combout\)) # (\Mux20~5_combout\ & ((\Shift|ra3[25]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~3_combout\,
	datab => \ALT_INV_Mux20~5_combout\,
	datac => \Shift|ALT_INV_rl3[17]~2_combout\,
	datad => \Shift|ALT_INV_ra3[25]~1_combout\,
	dataf => \Shift|ALT_INV_rl3[25]~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: MLABCELL_X46_Y39_N10
\Mux22~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = ( \Shift|rl2[9]~9_combout\ & ( (!\Mux20~4_combout\ & (((\Mux22~2_combout\) # (\Mux20~3_combout\)))) # (\Mux20~4_combout\ & (\Shift|rl2[13]~10_combout\ & (!\Mux20~3_combout\))) ) ) # ( !\Shift|rl2[9]~9_combout\ & ( (!\Mux20~3_combout\ & 
-- ((!\Mux20~4_combout\ & ((\Mux22~2_combout\))) # (\Mux20~4_combout\ & (\Shift|rl2[13]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011100110111000001110011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[13]~10_combout\,
	datab => \ALT_INV_Mux20~4_combout\,
	datac => \ALT_INV_Mux20~3_combout\,
	datad => \ALT_INV_Mux22~2_combout\,
	dataf => \Shift|ALT_INV_rl2[9]~9_combout\,
	combout => \Mux22~3_combout\);

-- Location: MLABCELL_X46_Y40_N0
\Mux22~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\A[9]~input_o\) # (\B[9]~input_o\))) # (\LogicFN[0]~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( (\LogicFN[0]~input_o\ & (!\B[9]~input_o\ $ 
-- (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LABCELL_X45_Y40_N24
\Mux22~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = ( \Mux22~4_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & ((\Mux22~3_combout\)))) # (\Mux20~1_combout\ & (((!\Mux22~1_combout\)) # (\Mux20~2_combout\))) ) ) # ( !\Mux22~4_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & 
-- ((\Mux22~3_combout\)))) # (\Mux20~1_combout\ & (!\Mux20~2_combout\ & (!\Mux22~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001100010010000000110001001010001011100110101000101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux22~1_combout\,
	datad => \ALT_INV_Mux22~3_combout\,
	dataf => \ALT_INV_Mux22~4_combout\,
	combout => \Mux22~5_combout\);

-- Location: MLABCELL_X46_Y40_N4
\Mux21~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[10]~input_o\ & (!\LogicFN[1]~input_o\ & \A[10]~input_o\)) # (\B[10]~input_o\ & (!\LogicFN[1]~input_o\ $ (\A[10]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( (\LogicFN[1]~input_o\ & ((\A[10]~input_o\) # 
-- (\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100110000110000110011000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux21~4_combout\);

-- Location: LABCELL_X45_Y39_N30
\Mux21~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = ( \Mux20~5_combout\ & ( (!\Mux30~3_combout\ & \Shift|ra3[26]~2_combout\) ) ) # ( !\Mux20~5_combout\ & ( (!\Mux30~3_combout\ & (\Shift|rl3[18]~4_combout\)) # (\Mux30~3_combout\ & ((\Shift|rl3[26]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[18]~4_combout\,
	datab => \Shift|ALT_INV_rl3[26]~3_combout\,
	datac => \ALT_INV_Mux30~3_combout\,
	datad => \Shift|ALT_INV_ra3[26]~2_combout\,
	dataf => \ALT_INV_Mux20~5_combout\,
	combout => \Mux21~2_combout\);

-- Location: LABCELL_X45_Y39_N18
\Mux21~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = ( \Mux20~3_combout\ & ( (!\Mux20~4_combout\ & \Shift|rl2[10]~15_combout\) ) ) # ( !\Mux20~3_combout\ & ( (!\Mux20~4_combout\ & ((\Mux21~2_combout\))) # (\Mux20~4_combout\ & (\Shift|rl2[14]~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[14]~16_combout\,
	datab => \ALT_INV_Mux20~4_combout\,
	datac => \ALT_INV_Mux21~2_combout\,
	datad => \Shift|ALT_INV_rl2[10]~15_combout\,
	dataf => \ALT_INV_Mux20~3_combout\,
	combout => \Mux21~3_combout\);

-- Location: LABCELL_X47_Y42_N28
\Shift|ll2[10]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~10_combout\ = ( \A[7]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[8]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[10]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[8]~input_o\)))) # (\B[0]~input_o\ & (\A[9]~input_o\ & ((!\B[1]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (((\A[8]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((\B[1]~input_o\)) # (\A[9]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (((\A[8]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[9]~input_o\ & ((!\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011111111110101001100001111010100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|ll2[10]~10_combout\);

-- Location: LABCELL_X50_Y39_N28
\Shift|ll4[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~7_combout\ = ( \B[3]~input_o\ & ( (\Shift|ll2[2]~0_combout\ & !\B[2]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[6]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[2]~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[10]~10_combout\,
	datad => \Shift|ALT_INV_ll2[6]~6_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[10]~7_combout\);

-- Location: MLABCELL_X46_Y40_N36
\Mux21~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \B[10]~input_o\ & ( (\Mux19~1_combout\ & (!\AddnSub~input_o\ $ (!\A[10]~input_o\ $ (!\Add|C[10]~9_combout\)))) ) ) # ( !\B[10]~input_o\ & ( (\Mux19~1_combout\ & (!\AddnSub~input_o\ $ (!\A[10]~input_o\ $ (\Add|C[10]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001000001100000100100001001000001100000100100000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_Mux19~1_combout\,
	datad => \Add|ALT_INV_C[10]~9_combout\,
	dataf => \ALT_INV_B[10]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X45_Y40_N28
\Mux21~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = ( \A[31]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\Mux21~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[10]~7_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (!\Mux21~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[10]~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \Shift|ALT_INV_ll4[10]~7_combout\,
	datad => \ALT_INV_Mux21~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LABCELL_X45_Y40_N14
\Mux21~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = ( \Mux21~1_combout\ & ( (\Mux20~2_combout\ & ((!\Mux20~1_combout\ & ((\Mux21~3_combout\))) # (\Mux20~1_combout\ & (\Mux21~4_combout\)))) ) ) # ( !\Mux21~1_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & ((\Mux21~3_combout\)))) 
-- # (\Mux20~1_combout\ & ((!\Mux20~2_combout\) # ((\Mux21~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101100111010001010110011100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux21~4_combout\,
	datad => \ALT_INV_Mux21~3_combout\,
	dataf => \ALT_INV_Mux21~1_combout\,
	combout => \Mux21~5_combout\);

-- Location: MLABCELL_X44_Y39_N20
\Mux20~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~8_combout\ = ( \Mux20~5_combout\ & ( (\Shift|ra3[27]~3_combout\ & !\Mux30~3_combout\) ) ) # ( !\Mux20~5_combout\ & ( (!\Mux30~3_combout\ & (\Shift|rl3[19]~6_combout\)) # (\Mux30~3_combout\ & ((\Shift|rl3[27]~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl3[19]~6_combout\,
	datab => \Shift|ALT_INV_ra3[27]~3_combout\,
	datac => \Shift|ALT_INV_rl3[27]~5_combout\,
	datad => \ALT_INV_Mux30~3_combout\,
	dataf => \ALT_INV_Mux20~5_combout\,
	combout => \Mux20~8_combout\);

-- Location: LABCELL_X43_Y39_N6
\Mux20~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~9_combout\ = ( \Shift|rl2[11]~21_combout\ & ( (!\Mux20~3_combout\ & ((!\Mux20~4_combout\ & ((\Mux20~8_combout\))) # (\Mux20~4_combout\ & (\Shift|rl2[15]~22_combout\)))) # (\Mux20~3_combout\ & (((!\Mux20~4_combout\)))) ) ) # ( 
-- !\Shift|rl2[11]~21_combout\ & ( (!\Mux20~3_combout\ & ((!\Mux20~4_combout\ & ((\Mux20~8_combout\))) # (\Mux20~4_combout\ & (\Shift|rl2[15]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010010111100100101001011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~3_combout\,
	datab => \Shift|ALT_INV_rl2[15]~22_combout\,
	datac => \ALT_INV_Mux20~4_combout\,
	datad => \ALT_INV_Mux20~8_combout\,
	dataf => \Shift|ALT_INV_rl2[11]~21_combout\,
	combout => \Mux20~9_combout\);

-- Location: MLABCELL_X46_Y40_N28
\Mux20~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = ( \Mux19~1_combout\ & ( !\B[11]~input_o\ $ (!\A[11]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[11]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[11]~10_combout\,
	dataf => \ALT_INV_Mux19~1_combout\,
	combout => \Mux20~6_combout\);

-- Location: LABCELL_X47_Y42_N32
\Shift|ll2[11]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~11_combout\ = ( \B[1]~input_o\ & ( \A[10]~input_o\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[10]~input_o\ & ( (\B[0]~input_o\) # (\A[11]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[10]~input_o\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[10]~input_o\ & ( (\A[11]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Shift|ll2[11]~11_combout\);

-- Location: LABCELL_X45_Y40_N36
\Shift|ll4[11]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~8_combout\ = ( \B[2]~input_o\ & ( (\Shift|ll2[7]~7_combout\ & !\B[3]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[11]~11_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[11]~11_combout\,
	datab => \Shift|ALT_INV_ll2[3]~1_combout\,
	datac => \Shift|ALT_INV_ll2[7]~7_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[11]~8_combout\);

-- Location: LABCELL_X45_Y40_N0
\Mux20~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = ( \A[31]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\Mux20~6_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[11]~8_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (!\Mux20~6_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[11]~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux20~6_combout\,
	datad => \Shift|ALT_INV_ll4[11]~8_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux20~7_combout\);

-- Location: MLABCELL_X46_Y40_N24
\Mux20~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~10_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[11]~input_o\ $ (!\A[11]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[11]~input_o\ & \A[11]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( (\LogicFN[1]~input_o\ & ((\A[11]~input_o\) # 
-- (\B[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux20~10_combout\);

-- Location: LABCELL_X45_Y40_N6
\Mux20~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux20~11_combout\ = ( \Mux20~10_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & (\Mux20~9_combout\))) # (\Mux20~1_combout\ & (((!\Mux20~7_combout\)) # (\Mux20~2_combout\))) ) ) # ( !\Mux20~10_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ 
-- & (\Mux20~9_combout\))) # (\Mux20~1_combout\ & (!\Mux20~2_combout\ & ((!\Mux20~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000000010010001100000001001010111000100110101011100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux20~9_combout\,
	datad => \ALT_INV_Mux20~7_combout\,
	dataf => \ALT_INV_Mux20~10_combout\,
	combout => \Mux20~11_combout\);

-- Location: MLABCELL_X46_Y40_N32
\Mux19~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = ( \B[0]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((!\LogicFN[1]~input_o\) # (\A[12]~input_o\)) # (\B[12]~input_o\))) # (\LogicFN[0]~input_o\ & ((!\B[12]~input_o\ & (\A[12]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[12]~input_o\ & 
-- (!\A[12]~input_o\ $ (\LogicFN[1]~input_o\))))) ) ) # ( !\B[0]~input_o\ & ( (!\B[12]~input_o\ & (\A[12]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[12]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[12]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101011000101000010101110111110001010111011111000101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: LABCELL_X43_Y38_N34
\Mux19~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = ( \Shift|rl3[20]~7_combout\ & ( \B[2]~input_o\ & ( (!\Mux30~3_combout\ & ((!\Mux20~5_combout\) # (\A[31]~input_o\))) ) ) ) # ( !\Shift|rl3[20]~7_combout\ & ( \B[2]~input_o\ & ( (\A[31]~input_o\ & (!\Mux30~3_combout\ & 
-- \Mux20~5_combout\)) ) ) ) # ( \Shift|rl3[20]~7_combout\ & ( !\B[2]~input_o\ & ( (!\Shift|rl2[28]~5_combout\ & (!\Mux30~3_combout\ & !\Mux20~5_combout\)) # (\Shift|rl2[28]~5_combout\ & ((!\Mux30~3_combout\) # (!\Mux20~5_combout\))) ) ) ) # ( 
-- !\Shift|rl3[20]~7_combout\ & ( !\B[2]~input_o\ & ( (\Shift|rl2[28]~5_combout\ & (!\Mux30~3_combout\ $ (!\Mux20~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000111100110011000000000000010100001111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \Shift|ALT_INV_rl2[28]~5_combout\,
	datac => \ALT_INV_Mux30~3_combout\,
	datad => \ALT_INV_Mux20~5_combout\,
	datae => \Shift|ALT_INV_rl3[20]~7_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux19~5_combout\);

-- Location: LABCELL_X43_Y38_N38
\Mux19~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = ( \Mux20~3_combout\ & ( (\Shift|rl2[12]~3_combout\ & !\Mux20~4_combout\) ) ) # ( !\Mux20~3_combout\ & ( (!\Mux20~4_combout\ & ((\Mux19~5_combout\))) # (\Mux20~4_combout\ & (\Shift|rl2[16]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[16]~6_combout\,
	datab => \Shift|ALT_INV_rl2[12]~3_combout\,
	datac => \ALT_INV_Mux20~4_combout\,
	datad => \ALT_INV_Mux19~5_combout\,
	dataf => \ALT_INV_Mux20~3_combout\,
	combout => \Mux19~6_combout\);

-- Location: MLABCELL_X46_Y40_N10
\Shift|ll2[12]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~12_combout\ = ( \A[9]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[11]~input_o\) ) ) ) # ( !\A[9]~input_o\ & ( \B[0]~input_o\ & ( (\A[11]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[9]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[12]~input_o\)) # (\B[1]~input_o\ & ((\A[10]~input_o\))) ) ) ) # ( !\A[9]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[12]~input_o\)) # (\B[1]~input_o\ & ((\A[10]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[12]~12_combout\);

-- Location: MLABCELL_X44_Y38_N22
\Shift|ll4[12]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[12]~9_combout\ = ( \Shift|ll2[4]~3_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[8]~8_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[0]~2_combout\)) ) ) ) # ( !\Shift|ll2[4]~3_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[8]~8_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[0]~2_combout\)) ) ) ) # ( \Shift|ll2[4]~3_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ll2[12]~12_combout\) ) ) ) # ( !\Shift|ll2[4]~3_combout\ & ( !\B[2]~input_o\ & ( 
-- (\Shift|ll2[12]~12_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[12]~12_combout\,
	datab => \Shift|ALT_INV_ll2[0]~2_combout\,
	datac => \Shift|ALT_INV_ll2[8]~8_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[4]~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[12]~9_combout\);

-- Location: MLABCELL_X46_Y40_N12
\Mux19~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ( \Mux19~1_combout\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[12]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[12]~11_combout\,
	dataf => \ALT_INV_Mux19~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LABCELL_X45_Y40_N2
\Mux19~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = ( \A[31]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\Mux19~2_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[12]~9_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (!\Mux19~2_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[12]~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101000000000111110100000000011001000000000001100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \Shift|ALT_INV_ll4[12]~9_combout\,
	datad => \ALT_INV_Mux19~2_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux19~3_combout\);

-- Location: LABCELL_X45_Y40_N4
\Mux19~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = ( \Mux19~3_combout\ & ( (\Mux20~2_combout\ & ((!\Mux20~1_combout\ & ((\Mux19~6_combout\))) # (\Mux20~1_combout\ & (\Mux19~4_combout\)))) ) ) # ( !\Mux19~3_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & ((\Mux19~6_combout\)))) 
-- # (\Mux20~1_combout\ & ((!\Mux20~2_combout\) # ((\Mux19~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101100111010001010110011100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux19~4_combout\,
	datad => \ALT_INV_Mux19~6_combout\,
	dataf => \ALT_INV_Mux19~3_combout\,
	combout => \Mux19~7_combout\);

-- Location: LABCELL_X47_Y39_N10
\Mux18~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = ( \Shift|rl3[29]~8_combout\ & ( (!\Mux30~3_combout\ & ((!\Mux20~5_combout\ & (\Shift|rl3[21]~9_combout\)) # (\Mux20~5_combout\ & ((\Shift|ra3[29]~4_combout\))))) # (\Mux30~3_combout\ & (!\Mux20~5_combout\)) ) ) # ( 
-- !\Shift|rl3[29]~8_combout\ & ( (!\Mux30~3_combout\ & ((!\Mux20~5_combout\ & (\Shift|rl3[21]~9_combout\)) # (\Mux20~5_combout\ & ((\Shift|ra3[29]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux30~3_combout\,
	datab => \ALT_INV_Mux20~5_combout\,
	datac => \Shift|ALT_INV_rl3[21]~9_combout\,
	datad => \Shift|ALT_INV_ra3[29]~4_combout\,
	dataf => \Shift|ALT_INV_rl3[29]~8_combout\,
	combout => \Mux18~3_combout\);

-- Location: MLABCELL_X46_Y39_N8
\Mux18~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = ( \Shift|rl2[17]~13_combout\ & ( (!\Mux20~4_combout\ & ((!\Mux20~3_combout\ & ((\Mux18~3_combout\))) # (\Mux20~3_combout\ & (\Shift|rl2[13]~10_combout\)))) # (\Mux20~4_combout\ & (((!\Mux20~3_combout\)))) ) ) # ( 
-- !\Shift|rl2[17]~13_combout\ & ( (!\Mux20~4_combout\ & ((!\Mux20~3_combout\ & ((\Mux18~3_combout\))) # (\Mux20~3_combout\ & (\Shift|rl2[13]~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111010001000011111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[13]~10_combout\,
	datab => \ALT_INV_Mux20~4_combout\,
	datac => \ALT_INV_Mux18~3_combout\,
	datad => \ALT_INV_Mux20~3_combout\,
	dataf => \Shift|ALT_INV_rl2[17]~13_combout\,
	combout => \Mux18~4_combout\);

-- Location: MLABCELL_X46_Y40_N18
\Mux18~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( \Mux19~1_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (!\Add|C[13]~12_combout\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \Add|ALT_INV_C[13]~12_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_Mux19~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: LABCELL_X45_Y41_N20
\Shift|ll2[13]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~13_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[10]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[12]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[13]~13_combout\);

-- Location: MLABCELL_X49_Y39_N32
\Shift|ll4[13]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~10_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ll2[1]~4_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( \Shift|ll2[9]~9_combout\ ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ll2[5]~5_combout\ ) ) ) # ( 
-- !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( \Shift|ll2[13]~13_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[9]~9_combout\,
	datab => \Shift|ALT_INV_ll2[13]~13_combout\,
	datac => \Shift|ALT_INV_ll2[5]~5_combout\,
	datad => \Shift|ALT_INV_ll2[1]~4_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[13]~10_combout\);

-- Location: LABCELL_X45_Y40_N22
\Mux18~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = ( \A[31]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\Mux18~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[13]~10_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (!\Mux18~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[13]~10_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux18~0_combout\,
	datad => \Shift|ALT_INV_ll4[13]~10_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux18~1_combout\);

-- Location: MLABCELL_X46_Y40_N16
\Mux18~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = ( \B[1]~input_o\ & ( (!\B[13]~input_o\ & ((!\A[13]~input_o\ & (!\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[13]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))))) # (\B[13]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\A[13]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[1]~input_o\ & ( (!\B[13]~input_o\ & (\A[13]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[13]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[13]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001110001000001100111000111110110011100011111011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux18~2_combout\);

-- Location: LABCELL_X45_Y40_N26
\Mux18~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = ( \Mux18~2_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & (\Mux18~4_combout\))) # (\Mux20~1_combout\ & (((!\Mux18~1_combout\)) # (\Mux20~2_combout\))) ) ) # ( !\Mux18~2_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\ & 
-- (\Mux18~4_combout\))) # (\Mux20~1_combout\ & (!\Mux20~2_combout\ & ((!\Mux18~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000000010010001100000001001010111000100110101011100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux18~4_combout\,
	datad => \ALT_INV_Mux18~1_combout\,
	dataf => \ALT_INV_Mux18~2_combout\,
	combout => \Mux18~5_combout\);

-- Location: LABCELL_X45_Y38_N8
\Mux17~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ( \B[2]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\B[14]~input_o\ $ (!\A[14]~input_o\)))) # (\LogicFN[1]~input_o\ & ((!\B[14]~input_o\ & (\A[14]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[14]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (\A[14]~input_o\))))) ) ) # ( !\B[2]~input_o\ & ( (!\B[14]~input_o\ & (\A[14]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[14]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[14]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100101001000101010010100110111111001010011011111100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LABCELL_X45_Y38_N34
\Mux17~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( \A[14]~input_o\ & ( (\Mux19~1_combout\ & (!\AddnSub~input_o\ $ (!\B[14]~input_o\ $ (!\Add|C[14]~13_combout\)))) ) ) # ( !\A[14]~input_o\ & ( (\Mux19~1_combout\ & (!\AddnSub~input_o\ $ (!\B[14]~input_o\ $ (\Add|C[14]~13_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101001000000000110100100000000100101100000000010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \Add|ALT_INV_C[14]~13_combout\,
	datad => \ALT_INV_Mux19~1_combout\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LABCELL_X45_Y41_N6
\Shift|ll2[14]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~14_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[11]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[12]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[14]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[11]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[14]~14_combout\);

-- Location: LABCELL_X50_Y39_N12
\Shift|ll4[14]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[14]~11_combout\ = ( \Shift|ll2[14]~14_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[6]~6_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[2]~0_combout\))) ) ) ) # ( !\Shift|ll2[14]~14_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ 
-- & (\Shift|ll2[6]~6_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[2]~0_combout\))) ) ) ) # ( \Shift|ll2[14]~14_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[10]~10_combout\) ) ) ) # ( !\Shift|ll2[14]~14_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|ll2[10]~10_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[10]~10_combout\,
	datab => \Shift|ALT_INV_ll2[6]~6_combout\,
	datac => \Shift|ALT_INV_ll2[2]~0_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[14]~14_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ll4[14]~11_combout\);

-- Location: LABCELL_X45_Y40_N30
\Mux17~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = ( \A[31]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\Mux17~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[14]~11_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (!\Mux17~0_combout\ & ((!\Mux19~0_combout\) # (!\Shift|ll4[14]~11_combout\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010100000111100001010000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux19~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux17~0_combout\,
	datad => \Shift|ALT_INV_ll4[14]~11_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: MLABCELL_X44_Y39_N34
\Mux17~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = ( \Mux20~5_combout\ & ( (\Shift|ra3[30]~5_combout\ & !\Mux30~3_combout\) ) ) # ( !\Mux20~5_combout\ & ( (!\Mux30~3_combout\ & ((\Shift|rl3[22]~10_combout\))) # (\Mux30~3_combout\ & (\Shift|rl4[22]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[30]~5_combout\,
	datab => \Shift|ALT_INV_rl4[22]~8_combout\,
	datac => \Shift|ALT_INV_rl3[22]~10_combout\,
	datad => \ALT_INV_Mux30~3_combout\,
	dataf => \ALT_INV_Mux20~5_combout\,
	combout => \Mux17~3_combout\);

-- Location: LABCELL_X45_Y39_N16
\Mux17~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = ( \Shift|rl2[18]~19_combout\ & ( (!\Mux20~4_combout\ & ((!\Mux20~3_combout\ & ((\Mux17~3_combout\))) # (\Mux20~3_combout\ & (\Shift|rl2[14]~16_combout\)))) # (\Mux20~4_combout\ & (((!\Mux20~3_combout\)))) ) ) # ( 
-- !\Shift|rl2[18]~19_combout\ & ( (!\Mux20~4_combout\ & ((!\Mux20~3_combout\ & ((\Mux17~3_combout\))) # (\Mux20~3_combout\ & (\Shift|rl2[14]~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100000001001100010000110100111101000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[14]~16_combout\,
	datab => \ALT_INV_Mux20~4_combout\,
	datac => \ALT_INV_Mux20~3_combout\,
	datad => \ALT_INV_Mux17~3_combout\,
	dataf => \Shift|ALT_INV_rl2[18]~19_combout\,
	combout => \Mux17~4_combout\);

-- Location: LABCELL_X45_Y40_N12
\Mux17~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = ( \Mux17~4_combout\ & ( (!\Mux20~1_combout\ & (\Mux20~2_combout\)) # (\Mux20~1_combout\ & ((!\Mux20~2_combout\ & ((!\Mux17~1_combout\))) # (\Mux20~2_combout\ & (\Mux17~2_combout\)))) ) ) # ( !\Mux17~4_combout\ & ( (\Mux20~1_combout\ & 
-- ((!\Mux20~2_combout\ & ((!\Mux17~1_combout\))) # (\Mux20~2_combout\ & (\Mux17~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001010001010000000101100111001000110110011100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux20~1_combout\,
	datab => \ALT_INV_Mux20~2_combout\,
	datac => \ALT_INV_Mux17~2_combout\,
	datad => \ALT_INV_Mux17~1_combout\,
	dataf => \ALT_INV_Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: MLABCELL_X46_Y41_N32
\Logic|Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux16~0_combout\ = ( \B[3]~input_o\ & ( (!\B[15]~input_o\ & ((!\A[15]~input_o\ & (!\LogicFN[1]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[15]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))))) # (\B[15]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\A[15]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[3]~input_o\ & ( (!\B[15]~input_o\ & (\A[15]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[15]~input_o\ & (!\LogicFN[1]~input_o\ $ 
-- (((!\LogicFN[0]~input_o\) # (\A[15]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011101100001000001110110000111110111011000011111011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Logic|Mux16~0_combout\);

-- Location: LABCELL_X43_Y39_N26
\Add|S[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(15) = ( \AddnSub~input_o\ & ( !\B[15]~input_o\ $ (!\Add|C[15]~14_combout\ $ (!\A[15]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[15]~input_o\ $ (!\Add|C[15]~14_combout\ $ (\A[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \Add|ALT_INV_C[15]~14_combout\,
	datac => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(15));

-- Location: LABCELL_X43_Y39_N28
\Shift|rl5[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl5[15]~0_combout\ = ( \Shift|Y_RL[31]~1_combout\ & ( ((!\B[2]~input_o\ & ((\Shift|rl2[15]~22_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[19]~25_combout\))) # (\B[4]~input_o\) ) ) # ( !\Shift|Y_RL[31]~1_combout\ & ( (!\B[4]~input_o\ & 
-- ((!\B[2]~input_o\ & ((\Shift|rl2[15]~22_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[19]~25_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[19]~25_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[15]~22_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_Y_RL[31]~1_combout\,
	combout => \Shift|rl5[15]~0_combout\);

-- Location: LABCELL_X43_Y39_N12
\Shift|rl5[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl5[15]~1_combout\ = ( \B[3]~input_o\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & \Shift|rl3[23]~11_combout\)) ) ) # ( !\B[3]~input_o\ & ( (!\B[5]~input_o\ & \Shift|rl5[15]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_rl5[15]~0_combout\,
	datad => \Shift|ALT_INV_rl3[23]~11_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|rl5[15]~1_combout\);

-- Location: LABCELL_X45_Y41_N28
\Shift|ll2[15]~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~15_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\A[12]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111000000000011001101010101000011111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|ll2[15]~15_combout\);

-- Location: LABCELL_X45_Y40_N10
\Shift|ll4[15]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~12_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[7]~7_combout\ & ( (!\B[2]~input_o\) # (\Shift|ll2[3]~1_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[7]~7_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[15]~15_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|ll2[11]~11_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[7]~7_combout\ & ( (\Shift|ll2[3]~1_combout\ & \B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[7]~7_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[15]~15_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|ll2[11]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000000110000001100000101111101011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[11]~11_combout\,
	datab => \Shift|ALT_INV_ll2[3]~1_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[15]~15_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[7]~7_combout\,
	combout => \Shift|ll4[15]~12_combout\);

-- Location: LABCELL_X43_Y39_N4
\Shift|Y_LL[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~0_combout\ = ( \Shift|ll4[15]~12_combout\ & ( (!\B[5]~input_o\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_ll4[15]~12_combout\,
	combout => \Shift|Y_LL[15]~0_combout\);

-- Location: LABCELL_X43_Y39_N30
\Shift|Y_RA[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~0_combout\ = ( \B[3]~input_o\ & ( \Shift|rl3[23]~11_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[15]~22_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[19]~25_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[19]~25_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[15]~22_combout\,
	datad => \Shift|ALT_INV_rl3[23]~11_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|Y_RA[15]~0_combout\);

-- Location: LABCELL_X43_Y39_N14
\Shift|Y_RA[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~1_combout\ = ( \A[31]~input_o\ & ( ((\Shift|Y_RA[15]~0_combout\) # (\B[4]~input_o\)) # (\B[5]~input_o\) ) ) # ( !\A[31]~input_o\ & ( (!\B[5]~input_o\ & (!\B[4]~input_o\ & \Shift|Y_RA[15]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_B[4]~input_o\,
	datac => \Shift|ALT_INV_Y_RA[15]~0_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|Y_RA[15]~1_combout\);

-- Location: LABCELL_X43_Y39_N38
\Y_ShiftOrArith[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[15]~1_combout\ = ( \ShiftFN[1]~input_o\ & ( \Shift|Y_RA[15]~1_combout\ & ( (\Shift|rl5[15]~1_combout\) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Shift|Y_RA[15]~1_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S\(15))) # 
-- (\ShiftFN[0]~input_o\ & ((\Shift|Y_LL[15]~0_combout\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Shift|Y_RA[15]~1_combout\ & ( (!\ShiftFN[0]~input_o\ & \Shift|rl5[15]~1_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Shift|Y_RA[15]~1_combout\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Add|S\(15))) # (\ShiftFN[0]~input_o\ & ((\Shift|Y_LL[15]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Add|ALT_INV_S\(15),
	datac => \Shift|ALT_INV_rl5[15]~1_combout\,
	datad => \Shift|ALT_INV_Y_LL[15]~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \Shift|ALT_INV_Y_RA[15]~1_combout\,
	combout => \Y_ShiftOrArith[15]~1_combout\);

-- Location: MLABCELL_X46_Y41_N36
\Mux16~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[15]~1_combout\))) # (\FuncClass[0]~input_o\ & (\Logic|Mux16~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|ALT_INV_Mux16~0_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_Y_ShiftOrArith[15]~1_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: MLABCELL_X44_Y38_N4
\Add|S[16]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(16) = ( \A[16]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[16]~input_o\ $ (!\Add|C[16]~15_combout\)) ) ) # ( !\A[16]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[16]~input_o\ $ (\Add|C[16]~15_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \Add|ALT_INV_C[16]~15_combout\,
	dataf => \ALT_INV_A[16]~input_o\,
	combout => \Add|S\(16));

-- Location: MLABCELL_X44_Y38_N6
\Shift|Y_RA[15]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~2_combout\ = ( \A[31]~input_o\ & ( (\B[4]~input_o\) # (\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Shift|Y_RA[15]~2_combout\);

-- Location: LABCELL_X45_Y41_N32
\Shift|ll2[16]~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~16_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (\B[0]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\A[14]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101000011110000000000110011010101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|ll2[16]~16_combout\);

-- Location: MLABCELL_X44_Y38_N30
\Shift|ll4[16]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~13_combout\ = ( \Shift|ll2[16]~16_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[12]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[4]~3_combout\)) ) ) ) # ( !\Shift|ll2[16]~16_combout\ & ( \B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & ((\Shift|ll2[12]~12_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[4]~3_combout\)) ) ) ) # ( \Shift|ll2[16]~16_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[8]~8_combout\) ) ) ) # ( !\Shift|ll2[16]~16_combout\ & ( 
-- !\B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ll2[8]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ll2[8]~8_combout\,
	datac => \Shift|ALT_INV_ll2[4]~3_combout\,
	datad => \Shift|ALT_INV_ll2[12]~12_combout\,
	datae => \Shift|ALT_INV_ll2[16]~16_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Shift|ll4[16]~13_combout\);

-- Location: MLABCELL_X44_Y38_N0
\Shift|Y_LL[16]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[16]~2_combout\ = ( !\B[4]~input_o\ & ( (((\Shift|ll4[16]~13_combout\ & (!\B[5]~input_o\)))) ) ) # ( \B[4]~input_o\ & ( (\A[0]~input_o\ & (\Shift|rl4[22]~2_combout\ & (!\B[3]~input_o\ & (!\B[5]~input_o\ & !\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100000000000100000000000000001111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \Shift|ALT_INV_rl4[22]~2_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	datae => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	datag => \Shift|ALT_INV_ll4[16]~13_combout\,
	combout => \Shift|Y_LL[16]~2_combout\);

-- Location: LABCELL_X43_Y38_N36
\Shift|Y_RL[16]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[16]~2_combout\ = ( \Shift|rl4[16]~1_combout\ & ( (!\B[5]~input_o\ & !\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \Shift|ALT_INV_rl4[16]~1_combout\,
	combout => \Shift|Y_RL[16]~2_combout\);

-- Location: MLABCELL_X44_Y38_N34
\Y_ShiftOrArith[16]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[16]~2_combout\ = ( !\Shift|Y_RL[16]~2_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Shift|Y_RA[15]~2_combout\) # (!\ShiftFN[0]~input_o\) ) ) ) # ( \Shift|Y_RL[16]~2_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (!\Add|S\(16))) 
-- # (\ShiftFN[0]~input_o\ & ((!\Shift|Y_LL[16]~2_combout\))) ) ) ) # ( !\Shift|Y_RL[16]~2_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (!\Add|S\(16))) # (\ShiftFN[0]~input_o\ & ((!\Shift|Y_LL[16]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000011111100111111000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(16),
	datab => \Shift|ALT_INV_Y_RA[15]~2_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_Y_LL[16]~2_combout\,
	datae => \Shift|ALT_INV_Y_RL[16]~2_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[16]~2_combout\);

-- Location: MLABCELL_X44_Y38_N24
\Logic|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[16]~input_o\ & (\B[16]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[16]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[16]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- (((\B[4]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[16]~input_o\ $ ((!\B[16]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[16]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: MLABCELL_X44_Y38_N14
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (!\Y_ShiftOrArith[16]~2_combout\)) # (\FuncClass[0]~input_o\ & ((\Logic|Mux15~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110101101000001111010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Y_ShiftOrArith[16]~2_combout\,
	datad => \Logic|ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X45_Y38_N12
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( !\B[5]~input_o\ & ( (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X45_Y38_N14
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X49_Y39_N38
\Mux9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = ( !\FuncClass[1]~input_o\ & ( ((\Mux9~0_combout\ & !\Mux9~1_combout\)) # (\FuncClass[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100110011011101110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: MLABCELL_X49_Y39_N36
\Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\Mux9~0_combout\) # ((\Mux9~1_combout\) # (\FuncClass[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LABCELL_X45_Y41_N16
\Shift|ll2[17]~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~17_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[15]~input_o\)) # (\B[0]~input_o\ & ((\A[14]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\A[16]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|ll2[17]~17_combout\);

-- Location: MLABCELL_X46_Y39_N32
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[13]~13_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[9]~9_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[5]~5_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[13]~13_combout\ & ( 
-- (\Shift|ll2[17]~17_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[13]~13_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[9]~9_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[5]~5_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ll2[13]~13_combout\ & ( (!\B[2]~input_o\ & \Shift|ll2[17]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000001011010111101110111011101110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[17]~17_combout\,
	datac => \Shift|ALT_INV_ll2[5]~5_combout\,
	datad => \Shift|ALT_INV_ll2[9]~9_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[13]~13_combout\,
	combout => \Mux14~3_combout\);

-- Location: MLABCELL_X52_Y39_N18
\Add|S[17]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(17) = ( \Add|C[17]~16_combout\ & ( !\B[17]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[17]~input_o\)) ) ) # ( !\Add|C[17]~16_combout\ & ( !\B[17]~input_o\ $ (!\AddnSub~input_o\ $ (\A[17]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[17]~input_o\,
	dataf => \Add|ALT_INV_C[17]~16_combout\,
	combout => \Add|S\(17));

-- Location: LABCELL_X45_Y38_N16
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\B[4]~input_o\) # ((!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001000111111111000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LABCELL_X45_Y38_N18
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \B[5]~input_o\ & ( !\ShiftFN[0]~input_o\ $ (!\ShiftFN[1]~input_o\) ) ) # ( !\B[5]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\ShiftFN[1]~input_o\ & \B[4]~input_o\)) # (\ShiftFN[0]~input_o\ & ((!\B[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001010010101010000101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X46_Y38_N30
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \A[31]~input_o\ & ( (!\Mux9~3_combout\ & (!\Mux9~2_combout\)) # (\Mux9~3_combout\ & ((!\Mux9~2_combout\ & ((\Shift|rl4[17]~3_combout\))) # (\Mux9~2_combout\ & (\Shift|ra4[17]~0_combout\)))) ) ) # ( !\A[31]~input_o\ & ( 
-- (\Mux9~3_combout\ & ((!\Mux9~2_combout\ & ((\Shift|rl4[17]~3_combout\))) # (\Mux9~2_combout\ & (\Shift|ra4[17]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110001001110011011000100111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~3_combout\,
	datab => \ALT_INV_Mux9~2_combout\,
	datac => \Shift|ALT_INV_ra4[17]~0_combout\,
	datad => \Shift|ALT_INV_rl4[17]~3_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X46_Y38_N32
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \Mux14~0_combout\ & ( (!\Mux9~0_combout\ & ((!\Mux9~1_combout\) # ((\Add|S\(17))))) # (\Mux9~0_combout\ & (((\Shift|ll4[1]~0_combout\)))) ) ) # ( !\Mux14~0_combout\ & ( (!\Mux9~0_combout\ & (\Mux9~1_combout\ & (\Add|S\(17)))) # 
-- (\Mux9~0_combout\ & (((\Shift|ll4[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \Add|ALT_INV_S\(17),
	datad => \Shift|ALT_INV_ll4[1]~0_combout\,
	dataf => \ALT_INV_Mux14~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: MLABCELL_X52_Y39_N2
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[17]~input_o\ & (\B[17]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[17]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[17]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- (((\B[5]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[17]~input_o\ $ ((!\B[17]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[17]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X46_Y38_N38
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( \Mux14~2_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & ((\Mux14~1_combout\)))) # (\Mux9~5_combout\ & (((\Mux14~3_combout\)) # (\Mux9~4_combout\))) ) ) # ( !\Mux14~2_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & 
-- ((\Mux14~1_combout\)))) # (\Mux9~5_combout\ & (!\Mux9~4_combout\ & (\Mux14~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux14~3_combout\,
	datad => \ALT_INV_Mux14~1_combout\,
	dataf => \ALT_INV_Mux14~2_combout\,
	combout => \Mux14~4_combout\);

-- Location: MLABCELL_X42_Y39_N20
\Shift|ll2[18]~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~18_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[16]~input_o\))) # (\B[0]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\A[18]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[16]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|ll2[18]~18_combout\);

-- Location: LABCELL_X50_Y39_N16
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \Shift|ll2[18]~18_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[6]~6_combout\))) ) ) ) # ( !\Shift|ll2[18]~18_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ll2[10]~10_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[6]~6_combout\))) ) ) ) # ( \Shift|ll2[18]~18_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[14]~14_combout\) ) ) ) # ( !\Shift|ll2[18]~18_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|ll2[14]~14_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[10]~10_combout\,
	datab => \Shift|ALT_INV_ll2[6]~6_combout\,
	datac => \Shift|ALT_INV_ll2[14]~14_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[18]~18_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: MLABCELL_X52_Y39_N26
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \B[18]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\)) # (\B[6]~input_o\))) # (\LogicFN[0]~input_o\ & ((!\A[18]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) # ( !\B[18]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & (\B[6]~input_o\)) # (\LogicFN[0]~input_o\ & ((\A[18]~input_o\))))) # (\LogicFN[1]~input_o\ & (((\A[18]~input_o\ & !\LogicFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001100110000010100110011000001011111110000110101111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[18]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X45_Y39_N12
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Mux9~2_combout\ & ( (\Mux9~3_combout\ & \Shift|ra4[18]~1_combout\) ) ) # ( !\Mux9~2_combout\ & ( (!\Mux9~3_combout\ & ((\A[31]~input_o\))) # (\Mux9~3_combout\ & (\Shift|rl4[18]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~3_combout\,
	datab => \Shift|ALT_INV_ra4[18]~1_combout\,
	datac => \Shift|ALT_INV_rl4[18]~4_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Mux9~2_combout\,
	combout => \Mux13~0_combout\);

-- Location: MLABCELL_X52_Y39_N22
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \Mux9~1_combout\ & ( \B[18]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[18]~input_o\ $ (!\Add|C[18]~17_combout\)) ) ) ) # ( !\Mux9~1_combout\ & ( \B[18]~input_o\ & ( \Mux13~0_combout\ ) ) ) # ( \Mux9~1_combout\ & ( !\B[18]~input_o\ & ( 
-- !\AddnSub~input_o\ $ (!\A[18]~input_o\ $ (\Add|C[18]~17_combout\)) ) ) ) # ( !\Mux9~1_combout\ & ( !\B[18]~input_o\ & ( \Mux13~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010110101010010100110011001100111010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_Mux13~0_combout\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \Add|ALT_INV_C[18]~17_combout\,
	datae => \ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_B[18]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X50_Y39_N30
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \B[3]~input_o\ & ( (\Mux13~1_combout\ & !\Mux9~0_combout\) ) ) # ( !\B[3]~input_o\ & ( (!\Mux9~0_combout\ & (((\Mux13~1_combout\)))) # (\Mux9~0_combout\ & (\Shift|ll2[2]~0_combout\ & (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101000100000011110100010000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[2]~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Mux13~1_combout\,
	datad => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X52_Y39_N6
\Mux13~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = ( \Mux9~5_combout\ & ( \Mux9~4_combout\ & ( \Mux13~3_combout\ ) ) ) # ( !\Mux9~5_combout\ & ( \Mux9~4_combout\ & ( \Mux13~2_combout\ ) ) ) # ( \Mux9~5_combout\ & ( !\Mux9~4_combout\ & ( \Mux13~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux13~4_combout\,
	datac => \ALT_INV_Mux13~3_combout\,
	datad => \ALT_INV_Mux13~2_combout\,
	datae => \ALT_INV_Mux9~5_combout\,
	dataf => \ALT_INV_Mux9~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: MLABCELL_X42_Y39_N4
\Shift|ll2[19]~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~19_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\) # (\A[16]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\A[16]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000100010001000100000011110011111101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[16]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_A[19]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|ll2[19]~19_combout\);

-- Location: LABCELL_X45_Y40_N34
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \Shift|ll2[19]~19_combout\ & ( \Shift|ll2[7]~7_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ll2[11]~11_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ll2[15]~15_combout\))) ) ) ) # ( 
-- !\Shift|ll2[19]~19_combout\ & ( \Shift|ll2[7]~7_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\ & \Shift|ll2[11]~11_combout\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ll2[15]~15_combout\))) ) ) ) # ( \Shift|ll2[19]~19_combout\ & ( 
-- !\Shift|ll2[7]~7_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ll2[11]~11_combout\)))) # (\B[2]~input_o\ & (\Shift|ll2[15]~15_combout\ & (!\B[3]~input_o\))) ) ) ) # ( !\Shift|ll2[19]~19_combout\ & ( !\Shift|ll2[7]~7_combout\ & ( 
-- (!\B[2]~input_o\ & (((\B[3]~input_o\ & \Shift|ll2[11]~11_combout\)))) # (\B[2]~input_o\ & (\Shift|ll2[15]~15_combout\ & (!\B[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[15]~15_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[11]~11_combout\,
	datae => \Shift|ALT_INV_ll2[19]~19_combout\,
	dataf => \Shift|ALT_INV_ll2[7]~7_combout\,
	combout => \Mux12~4_combout\);

-- Location: LABCELL_X47_Y41_N28
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Mux9~2_combout\ & ( (\Mux9~3_combout\ & \Shift|ra4[19]~2_combout\) ) ) # ( !\Mux9~2_combout\ & ( (!\Mux9~3_combout\ & ((\A[31]~input_o\))) # (\Mux9~3_combout\ & (\Shift|rl4[19]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[19]~5_combout\,
	datab => \ALT_INV_Mux9~3_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_ra4[19]~2_combout\,
	dataf => \ALT_INV_Mux9~2_combout\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X47_Y41_N12
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \AddnSub~input_o\ & ( \Mux12~0_combout\ & ( (!\Mux9~1_combout\) # (!\A[19]~input_o\ $ (!\Add|C[19]~18_combout\ $ (!\B[19]~input_o\))) ) ) ) # ( !\AddnSub~input_o\ & ( \Mux12~0_combout\ & ( (!\Mux9~1_combout\) # (!\A[19]~input_o\ $ 
-- (!\Add|C[19]~18_combout\ $ (\B[19]~input_o\))) ) ) ) # ( \AddnSub~input_o\ & ( !\Mux12~0_combout\ & ( (\Mux9~1_combout\ & (!\A[19]~input_o\ $ (!\Add|C[19]~18_combout\ $ (!\B[19]~input_o\)))) ) ) ) # ( !\AddnSub~input_o\ & ( !\Mux12~0_combout\ & ( 
-- (\Mux9~1_combout\ & (!\A[19]~input_o\ $ (!\Add|C[19]~18_combout\ $ (\B[19]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000001001000010010000011011110110111110011111100111110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[19]~input_o\,
	datab => \Add|ALT_INV_C[19]~18_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_B[19]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X47_Y41_N26
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Mux9~0_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \Shift|ll2[3]~1_combout\)) ) ) # ( !\Mux9~0_combout\ & ( \Mux12~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[3]~1_combout\,
	datad => \ALT_INV_Mux12~1_combout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X47_Y41_N36
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \B[7]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\B[19]~input_o\ $ (!\A[19]~input_o\)))) # (\LogicFN[1]~input_o\ & ((!\B[19]~input_o\ & (\A[19]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[19]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (\A[19]~input_o\))))) ) ) # ( !\B[7]~input_o\ & ( (!\B[19]~input_o\ & (\A[19]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[19]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (\A[19]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100101001000101010010100110111111001010011011111100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_A[19]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: MLABCELL_X44_Y40_N32
\Mux12~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = ( \Mux12~3_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & ((\Mux12~2_combout\)))) # (\Mux9~5_combout\ & (((\Mux12~4_combout\)) # (\Mux9~4_combout\))) ) ) # ( !\Mux12~3_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & 
-- ((\Mux12~2_combout\)))) # (\Mux9~5_combout\ & (!\Mux9~4_combout\ & (\Mux12~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux12~4_combout\,
	datad => \ALT_INV_Mux12~2_combout\,
	dataf => \ALT_INV_Mux12~3_combout\,
	combout => \Mux12~5_combout\);

-- Location: MLABCELL_X46_Y38_N24
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[20]~input_o\ & (\B[20]~input_o\ & !\LogicFN[0]~input_o\)) # (\A[20]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[20]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- (((\B[8]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[20]~input_o\ $ ((!\B[20]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_B[20]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: MLABCELL_X42_Y39_N28
\Shift|ll2[20]~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~20_combout\ = ( \B[1]~input_o\ & ( \A[17]~input_o\ & ( (\B[0]~input_o\) # (\A[18]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[20]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[17]~input_o\ & ( (\A[18]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[17]~input_o\ & ( (!\B[0]~input_o\ & (\A[20]~input_o\)) # (\B[0]~input_o\ & ((\A[19]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A[18]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[17]~input_o\,
	combout => \Shift|ll2[20]~20_combout\);

-- Location: MLABCELL_X44_Y38_N18
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \Shift|ll2[8]~8_combout\ & ( \B[2]~input_o\ & ( (\Shift|ll2[16]~16_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[8]~8_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[16]~16_combout\) ) ) ) # ( 
-- \Shift|ll2[8]~8_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[20]~20_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[12]~12_combout\))) ) ) ) # ( !\Shift|ll2[8]~8_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[20]~20_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[12]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ll2[20]~20_combout\,
	datac => \Shift|ALT_INV_ll2[16]~16_combout\,
	datad => \Shift|ALT_INV_ll2[12]~12_combout\,
	datae => \Shift|ALT_INV_ll2[8]~8_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: MLABCELL_X46_Y38_N12
\Add|S[20]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(20) = ( \B[20]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[20]~19_combout\ $ (!\A[20]~input_o\)) ) ) # ( !\B[20]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[20]~19_combout\ $ (\A[20]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[20]~19_combout\,
	datad => \ALT_INV_A[20]~input_o\,
	dataf => \ALT_INV_B[20]~input_o\,
	combout => \Add|S\(20));

-- Location: MLABCELL_X46_Y38_N28
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Shift|rl4[20]~6_combout\ & ( (!\Mux9~3_combout\ & (!\Mux9~2_combout\ & (\A[31]~input_o\))) # (\Mux9~3_combout\ & ((!\Mux9~2_combout\) # ((\Shift|ra4[20]~3_combout\)))) ) ) # ( !\Shift|rl4[20]~6_combout\ & ( (!\Mux9~3_combout\ & 
-- (!\Mux9~2_combout\ & (\A[31]~input_o\))) # (\Mux9~3_combout\ & (\Mux9~2_combout\ & ((\Shift|ra4[20]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~3_combout\,
	datab => \ALT_INV_Mux9~2_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_ra4[20]~3_combout\,
	dataf => \Shift|ALT_INV_rl4[20]~6_combout\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X46_Y38_N34
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \Mux11~0_combout\ & ( (!\Mux9~0_combout\ & ((!\Mux9~1_combout\) # ((\Add|S\(20))))) # (\Mux9~0_combout\ & (((\Shift|ll4[4]~1_combout\)))) ) ) # ( !\Mux11~0_combout\ & ( (!\Mux9~0_combout\ & (\Mux9~1_combout\ & ((\Add|S\(20))))) # 
-- (\Mux9~0_combout\ & (((\Shift|ll4[4]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111000000110100011110001011110011111000101111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \Shift|ALT_INV_ll4[4]~1_combout\,
	datad => \Add|ALT_INV_S\(20),
	dataf => \ALT_INV_Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X46_Y38_N36
\Mux11~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ( \Mux11~1_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\)) # (\Mux9~5_combout\ & ((!\Mux9~4_combout\ & ((\Mux11~3_combout\))) # (\Mux9~4_combout\ & (\Mux11~2_combout\)))) ) ) # ( !\Mux11~1_combout\ & ( (\Mux9~5_combout\ & 
-- ((!\Mux9~4_combout\ & ((\Mux11~3_combout\))) # (\Mux9~4_combout\ & (\Mux11~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux11~2_combout\,
	datad => \ALT_INV_Mux11~3_combout\,
	dataf => \ALT_INV_Mux11~1_combout\,
	combout => \Mux11~4_combout\);

-- Location: MLABCELL_X42_Y39_N12
\Shift|ll2[21]~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~21_combout\ = ( \B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\) # (\A[20]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & ((\A[19]~input_o\))) # (\B[0]~input_o\ & (\A[18]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[21]~input_o\ & ( (\A[20]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001100110101010111111111000011110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[18]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_A[20]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ll2[21]~21_combout\);

-- Location: MLABCELL_X46_Y39_N36
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[21]~21_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[13]~13_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[9]~9_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[21]~21_combout\ & ( (!\B[2]~input_o\) # 
-- (\Shift|ll2[17]~17_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[21]~21_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[13]~13_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[9]~9_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[21]~21_combout\ & ( 
-- (\B[2]~input_o\ & \Shift|ll2[17]~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[17]~17_combout\,
	datac => \Shift|ALT_INV_ll2[13]~13_combout\,
	datad => \Shift|ALT_INV_ll2[9]~9_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[21]~21_combout\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X49_Y39_N0
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \A[31]~input_o\ & ( (!\Mux9~2_combout\ & (((!\Mux9~3_combout\)) # (\Shift|rl4[21]~7_combout\))) # (\Mux9~2_combout\ & (((\Mux9~3_combout\ & \Shift|ra4[21]~4_combout\)))) ) ) # ( !\A[31]~input_o\ & ( (\Mux9~3_combout\ & 
-- ((!\Mux9~2_combout\ & (\Shift|rl4[21]~7_combout\)) # (\Mux9~2_combout\ & ((\Shift|ra4[21]~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011110100010101001111010001010100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~2_combout\,
	datab => \Shift|ALT_INV_rl4[21]~7_combout\,
	datac => \ALT_INV_Mux9~3_combout\,
	datad => \Shift|ALT_INV_ra4[21]~4_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X49_Y39_N4
\Add|S[21]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(21) = ( \Add|C[21]~20_combout\ & ( !\AddnSub~input_o\ $ (!\B[21]~input_o\ $ (!\A[21]~input_o\)) ) ) # ( !\Add|C[21]~20_combout\ & ( !\AddnSub~input_o\ $ (!\B[21]~input_o\ $ (\A[21]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[21]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \Add|ALT_INV_C[21]~20_combout\,
	combout => \Add|S\(21));

-- Location: MLABCELL_X49_Y39_N26
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Shift|ll4[5]~2_combout\ & ( ((!\Mux9~1_combout\ & (\Mux10~0_combout\)) # (\Mux9~1_combout\ & ((\Add|S\(21))))) # (\Mux9~0_combout\) ) ) # ( !\Shift|ll4[5]~2_combout\ & ( (!\Mux9~0_combout\ & ((!\Mux9~1_combout\ & 
-- (\Mux10~0_combout\)) # (\Mux9~1_combout\ & ((\Add|S\(21)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datab => \ALT_INV_Mux9~1_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \Add|ALT_INV_S\(21),
	dataf => \Shift|ALT_INV_ll4[5]~2_combout\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X46_Y40_N2
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \B[21]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\)) # (\B[9]~input_o\))) # (\LogicFN[0]~input_o\ & ((!\LogicFN[1]~input_o\ $ (\A[21]~input_o\)))) ) ) # ( !\B[21]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- ((!\LogicFN[1]~input_o\ & (\B[9]~input_o\)) # (\LogicFN[1]~input_o\ & ((\A[21]~input_o\))))) # (\LogicFN[0]~input_o\ & (((!\LogicFN[1]~input_o\ & \A[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001111010001000000111101001111010001011110111101000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[21]~input_o\,
	dataf => \ALT_INV_B[21]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: MLABCELL_X49_Y39_N28
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = ( \Mux10~2_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & ((\Mux10~1_combout\)))) # (\Mux9~5_combout\ & (((\Mux10~3_combout\)) # (\Mux9~4_combout\))) ) ) # ( !\Mux10~2_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & 
-- ((\Mux10~1_combout\)))) # (\Mux9~5_combout\ & (!\Mux9~4_combout\ & (\Mux10~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux10~3_combout\,
	datad => \ALT_INV_Mux10~1_combout\,
	dataf => \ALT_INV_Mux10~2_combout\,
	combout => \Mux10~4_combout\);

-- Location: LABCELL_X45_Y39_N8
\Mux9~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = ( \Mux9~2_combout\ & ( (\Shift|ra4[22]~5_combout\ & \Mux9~3_combout\) ) ) # ( !\Mux9~2_combout\ & ( (!\Mux9~3_combout\ & ((\A[31]~input_o\))) # (\Mux9~3_combout\ & (\Shift|rl4[22]~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl4[22]~9_combout\,
	datab => \Shift|ALT_INV_ra4[22]~5_combout\,
	datac => \ALT_INV_Mux9~3_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Mux9~2_combout\,
	combout => \Mux9~6_combout\);

-- Location: LABCELL_X50_Y39_N6
\Add|S[22]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(22) = ( \AddnSub~input_o\ & ( !\Add|C[22]~21_combout\ $ (!\A[22]~input_o\ $ (!\B[22]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[22]~21_combout\ $ (!\A[22]~input_o\ $ (\B[22]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[22]~21_combout\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_B[22]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(22));

-- Location: MLABCELL_X49_Y39_N24
\Mux9~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = ( \Add|S\(22) & ( (!\Mux9~0_combout\ & (((\Mux9~6_combout\)) # (\Mux9~1_combout\))) # (\Mux9~0_combout\ & (((\Shift|ll4[6]~3_combout\)))) ) ) # ( !\Add|S\(22) & ( (!\Mux9~0_combout\ & (!\Mux9~1_combout\ & (\Mux9~6_combout\))) # 
-- (\Mux9~0_combout\ & (((\Shift|ll4[6]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~0_combout\,
	datab => \ALT_INV_Mux9~1_combout\,
	datac => \ALT_INV_Mux9~6_combout\,
	datad => \Shift|ALT_INV_ll4[6]~3_combout\,
	dataf => \Add|ALT_INV_S\(22),
	combout => \Mux9~7_combout\);

-- Location: MLABCELL_X42_Y39_N38
\Shift|ll2[22]~22\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~22_combout\ = ( \B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ & (\A[19]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[21]~input_o\ & ( (\B[0]~input_o\) # (\A[22]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & ((\A[20]~input_o\))) # (\B[0]~input_o\ & (\A[19]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[21]~input_o\ & ( (\A[22]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[22]~input_o\,
	datab => \ALT_INV_A[19]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[20]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ll2[22]~22_combout\);

-- Location: LABCELL_X50_Y39_N0
\Mux9~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = ( \Shift|ll2[22]~22_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[14]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\)) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((\Shift|ll2[14]~14_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[10]~10_combout\)) ) ) ) # ( \Shift|ll2[22]~22_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[18]~18_combout\) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( !\B[3]~input_o\ & ( 
-- (\Shift|ll2[18]~18_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[10]~10_combout\,
	datab => \Shift|ALT_INV_ll2[18]~18_combout\,
	datac => \Shift|ALT_INV_ll2[14]~14_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[22]~22_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux9~9_combout\);

-- Location: LABCELL_X50_Y39_N20
\Mux9~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[22]~input_o\ & (\A[22]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[22]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[22]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- (((\B[10]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\B[22]~input_o\ $ ((!\A[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011011110110000001101111011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[22]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LABCELL_X50_Y39_N26
\Mux9~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~10_combout\ = ( \Mux9~8_combout\ & ( (!\Mux9~4_combout\ & (\Mux9~5_combout\ & ((\Mux9~9_combout\)))) # (\Mux9~4_combout\ & (((\Mux9~7_combout\)) # (\Mux9~5_combout\))) ) ) # ( !\Mux9~8_combout\ & ( (!\Mux9~4_combout\ & (\Mux9~5_combout\ & 
-- ((\Mux9~9_combout\)))) # (\Mux9~4_combout\ & (!\Mux9~5_combout\ & (\Mux9~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~4_combout\,
	datab => \ALT_INV_Mux9~5_combout\,
	datac => \ALT_INV_Mux9~7_combout\,
	datad => \ALT_INV_Mux9~9_combout\,
	dataf => \ALT_INV_Mux9~8_combout\,
	combout => \Mux9~10_combout\);

-- Location: LABCELL_X47_Y40_N26
\Add|S[23]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(23) = ( \AddnSub~input_o\ & ( !\B[23]~input_o\ $ (!\Add|C[23]~22_combout\ $ (!\A[23]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[23]~input_o\ $ (!\Add|C[23]~22_combout\ $ (\A[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[23]~input_o\,
	datab => \Add|ALT_INV_C[23]~22_combout\,
	datad => \ALT_INV_A[23]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(23));

-- Location: LABCELL_X43_Y39_N18
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \A[31]~input_o\ & ( (!\Mux9~3_combout\ & (((!\Mux9~2_combout\)))) # (\Mux9~3_combout\ & ((!\Mux9~2_combout\ & ((\Shift|rl4[23]~10_combout\))) # (\Mux9~2_combout\ & (\Shift|ra4[23]~6_combout\)))) ) ) # ( !\A[31]~input_o\ & ( 
-- (\Mux9~3_combout\ & ((!\Mux9~2_combout\ & ((\Shift|rl4[23]~10_combout\))) # (\Mux9~2_combout\ & (\Shift|ra4[23]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000000010101000110100001111100011010000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~3_combout\,
	datab => \Shift|ALT_INV_ra4[23]~6_combout\,
	datac => \ALT_INV_Mux9~2_combout\,
	datad => \Shift|ALT_INV_rl4[23]~10_combout\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X44_Y40_N36
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \Mux8~0_combout\ & ( (!\Mux9~0_combout\ & ((!\Mux9~1_combout\) # ((\Add|S\(23))))) # (\Mux9~0_combout\ & (((\Shift|ll4[7]~4_combout\)))) ) ) # ( !\Mux8~0_combout\ & ( (!\Mux9~0_combout\ & (\Mux9~1_combout\ & (\Add|S\(23)))) # 
-- (\Mux9~0_combout\ & (((\Shift|ll4[7]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \Add|ALT_INV_S\(23),
	datad => \Shift|ALT_INV_ll4[7]~4_combout\,
	dataf => \ALT_INV_Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LABCELL_X47_Y40_N4
\Shift|ll2[23]~23\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~23_combout\ = ( \B[0]~input_o\ & ( \A[21]~input_o\ & ( (!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[21]~input_o\ & ( (\B[1]~input_o\) # (\A[23]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[1]~input_o\ & ((\A[22]~input_o\))) # (\B[1]~input_o\ & (\A[20]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[21]~input_o\ & ( (\A[23]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[20]~input_o\,
	datab => \ALT_INV_A[22]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ll2[23]~23_combout\);

-- Location: LABCELL_X45_Y40_N16
\Mux8~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( \Shift|ll2[23]~23_combout\ & ( \Shift|ll2[11]~11_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ll2[19]~19_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ll2[15]~15_combout\))) ) ) ) # ( 
-- !\Shift|ll2[23]~23_combout\ & ( \Shift|ll2[11]~11_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ll2[19]~19_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ll2[15]~15_combout\))) ) ) ) # ( \Shift|ll2[23]~23_combout\ & ( 
-- !\Shift|ll2[11]~11_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ll2[19]~19_combout\)))) # (\B[3]~input_o\ & (\Shift|ll2[15]~15_combout\ & ((!\B[2]~input_o\)))) ) ) ) # ( !\Shift|ll2[23]~23_combout\ & ( !\Shift|ll2[11]~11_combout\ & ( 
-- (!\B[3]~input_o\ & (((\Shift|ll2[19]~19_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (\Shift|ll2[15]~15_combout\ & ((!\B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100001100110111010000110000010001001111111101110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[15]~15_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[19]~19_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ll2[23]~23_combout\,
	dataf => \Shift|ALT_INV_ll2[11]~11_combout\,
	combout => \Mux8~3_combout\);

-- Location: MLABCELL_X46_Y40_N26
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[23]~input_o\ $ (!\B[23]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[23]~input_o\ & \B[23]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (\B[11]~input_o\)) # 
-- (\LogicFN[1]~input_o\ & (((\B[23]~input_o\) # (\A[23]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101110111001001110111011100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_B[23]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: MLABCELL_X44_Y40_N34
\Mux8~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = ( \Mux8~2_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & (\Mux8~1_combout\))) # (\Mux9~5_combout\ & (((\Mux8~3_combout\)) # (\Mux9~4_combout\))) ) ) # ( !\Mux8~2_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & 
-- (\Mux8~1_combout\))) # (\Mux9~5_combout\ & (!\Mux9~4_combout\ & ((\Mux8~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux8~1_combout\,
	datad => \ALT_INV_Mux8~3_combout\,
	dataf => \ALT_INV_Mux8~2_combout\,
	combout => \Mux8~4_combout\);

-- Location: MLABCELL_X46_Y40_N34
\Mux7~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[24]~input_o\) # (\A[24]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & (\B[12]~input_o\)) # 
-- (\LogicFN[0]~input_o\ & ((!\A[24]~input_o\ $ (!\B[24]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011101110010001001110111001000001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LABCELL_X47_Y40_N10
\Shift|ll2[24]~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~24_combout\ = ( \B[1]~input_o\ & ( \A[21]~input_o\ & ( (\A[22]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[21]~input_o\ & ( (!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & ((\A[23]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & \A[22]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[21]~input_o\ & ( (!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & ((\A[23]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000010100000101000100010011101110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[22]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[21]~input_o\,
	combout => \Shift|ll2[24]~24_combout\);

-- Location: MLABCELL_X46_Y39_N22
\Mux7~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = ( \B[2]~input_o\ & ( \Shift|ll2[20]~20_combout\ & ( (!\B[3]~input_o\) # (\Shift|ll2[12]~12_combout\) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ll2[20]~20_combout\ & ( (!\B[3]~input_o\ & (\Shift|ll2[24]~24_combout\)) # (\B[3]~input_o\ & 
-- ((\Shift|ll2[16]~16_combout\))) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ll2[20]~20_combout\ & ( (\Shift|ll2[12]~12_combout\ & \B[3]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ll2[20]~20_combout\ & ( (!\B[3]~input_o\ & (\Shift|ll2[24]~24_combout\)) # 
-- (\B[3]~input_o\ & ((\Shift|ll2[16]~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111000001010000010100110000001111111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[12]~12_combout\,
	datab => \Shift|ALT_INV_ll2[24]~24_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[16]~16_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[20]~20_combout\,
	combout => \Mux7~3_combout\);

-- Location: MLABCELL_X44_Y38_N38
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \B[3]~input_o\ & ( (!\Mux9~3_combout\ & (\A[31]~input_o\ & ((!\Mux9~2_combout\)))) # (\Mux9~3_combout\ & (((\A[31]~input_o\ & \Mux9~2_combout\)) # (\Shift|rl4[24]~11_combout\))) ) ) # ( !\B[3]~input_o\ & ( (!\Mux9~3_combout\ & 
-- (\A[31]~input_o\ & ((!\Mux9~2_combout\)))) # (\Mux9~3_combout\ & (((\Shift|rl4[24]~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110011010100000011001101010000001101110101000000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[31]~input_o\,
	datab => \Shift|ALT_INV_rl4[24]~11_combout\,
	datac => \ALT_INV_Mux9~2_combout\,
	datad => \ALT_INV_Mux9~3_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X47_Y40_N30
\Add|S[24]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(24) = ( \AddnSub~input_o\ & ( !\Add|C[24]~23_combout\ $ (!\A[24]~input_o\ $ (!\B[24]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[24]~23_combout\ $ (!\A[24]~input_o\ $ (\B[24]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[24]~23_combout\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_B[24]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(24));

-- Location: MLABCELL_X44_Y40_N38
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \Add|S\(24) & ( (!\Mux9~0_combout\ & (((\Mux7~0_combout\)) # (\Mux9~1_combout\))) # (\Mux9~0_combout\ & (((\Shift|ll4[8]~5_combout\)))) ) ) # ( !\Add|S\(24) & ( (!\Mux9~0_combout\ & (!\Mux9~1_combout\ & ((\Mux7~0_combout\)))) # 
-- (\Mux9~0_combout\ & (((\Shift|ll4[8]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101101000111110011110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \Shift|ALT_INV_ll4[8]~5_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	dataf => \Add|ALT_INV_S\(24),
	combout => \Mux7~1_combout\);

-- Location: MLABCELL_X46_Y39_N24
\Mux7~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = ( \Mux7~1_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\)) # (\Mux9~5_combout\ & ((!\Mux9~4_combout\ & ((\Mux7~3_combout\))) # (\Mux9~4_combout\ & (\Mux7~2_combout\)))) ) ) # ( !\Mux7~1_combout\ & ( (\Mux9~5_combout\ & 
-- ((!\Mux9~4_combout\ & ((\Mux7~3_combout\))) # (\Mux9~4_combout\ & (\Mux7~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_Mux7~3_combout\,
	dataf => \ALT_INV_Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: LABCELL_X47_Y40_N32
\Shift|ll2[25]~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~25_combout\ = ( \B[1]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[23]~input_o\)) # (\B[0]~input_o\ & ((\A[22]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\) # (\A[24]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & (\A[23]~input_o\)) # (\B[0]~input_o\ & ((\A[22]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[25]~input_o\ & ( (\B[0]~input_o\ & \A[24]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[24]~input_o\,
	datac => \ALT_INV_A[23]~input_o\,
	datad => \ALT_INV_A[22]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shift|ll2[25]~25_combout\);

-- Location: MLABCELL_X46_Y39_N30
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[21]~21_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[17]~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[13]~13_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[21]~21_combout\ & ( 
-- (\Shift|ll2[25]~25_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[21]~21_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[17]~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[13]~13_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ll2[21]~21_combout\ & ( (!\B[2]~input_o\ & \Shift|ll2[25]~25_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[17]~17_combout\,
	datac => \Shift|ALT_INV_ll2[25]~25_combout\,
	datad => \Shift|ALT_INV_ll2[13]~13_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[21]~21_combout\,
	combout => \Mux6~3_combout\);

-- Location: LABCELL_X47_Y39_N32
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((!\B[5]~input_o\ & !\B[4]~input_o\)))) # (\ShiftFN[1]~input_o\ & (!\B[5]~input_o\ & 
-- ((!\B[4]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110010100000111011001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X47_Y39_N34
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\B[5]~input_o\ & \ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((!\B[4]~input_o\) 
-- # (\B[5]~input_o\)))) # (\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ $ (((!\B[5]~input_o\ & !\B[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111100010000101011110001001010101001000100101010100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LABCELL_X47_Y39_N16
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \Shift|rl3[25]~1_combout\ & ( (!\Mux4~0_combout\ & (!\Mux4~1_combout\ & ((\A[31]~input_o\)))) # (\Mux4~0_combout\ & ((!\Mux4~1_combout\) # ((\Shift|ra3[25]~1_combout\)))) ) ) # ( !\Shift|rl3[25]~1_combout\ & ( (!\Mux4~0_combout\ & 
-- (!\Mux4~1_combout\ & ((\A[31]~input_o\)))) # (\Mux4~0_combout\ & (\Mux4~1_combout\ & (\Shift|ra3[25]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001000000011000100101000101110011010100010111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \Shift|ALT_INV_ra3[25]~1_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \Shift|ALT_INV_rl3[25]~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X49_Y39_N2
\Add|S[25]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[25]~0_combout\ = ( \B[25]~input_o\ & ( !\A[25]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[25]~input_o\ & ( !\A[25]~input_o\ $ (!\AddnSub~input_o\) ) )

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
	combout => \Add|S[25]~0_combout\);

-- Location: MLABCELL_X49_Y39_N12
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Shift|ll4[9]~6_combout\ & ( \Mux9~1_combout\ & ( (!\Add|C[25]~24_combout\ $ (!\Add|S[25]~0_combout\)) # (\Mux9~0_combout\) ) ) ) # ( !\Shift|ll4[9]~6_combout\ & ( \Mux9~1_combout\ & ( (!\Mux9~0_combout\ & (!\Add|C[25]~24_combout\ $ 
-- (!\Add|S[25]~0_combout\))) ) ) ) # ( \Shift|ll4[9]~6_combout\ & ( !\Mux9~1_combout\ & ( (\Mux9~0_combout\) # (\Mux6~0_combout\) ) ) ) # ( !\Shift|ll4[9]~6_combout\ & ( !\Mux9~1_combout\ & ( (\Mux6~0_combout\ & !\Mux9~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111110011111101010000101000000101111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[25]~24_combout\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux9~0_combout\,
	datad => \Add|ALT_INV_S[25]~0_combout\,
	datae => \Shift|ALT_INV_ll4[9]~6_combout\,
	dataf => \ALT_INV_Mux9~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X52_Y39_N10
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \B[13]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\B[25]~input_o\ $ (!\A[25]~input_o\)))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\A[25]~input_o\) # (\B[25]~input_o\))) # (\LogicFN[0]~input_o\ & 
-- (\B[25]~input_o\ & \A[25]~input_o\)))) ) ) # ( !\B[13]~input_o\ & ( (!\B[25]~input_o\ & (\A[25]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[25]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[25]~input_o\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100101000001100110010110001110111011011000111011101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[25]~input_o\,
	datad => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: MLABCELL_X52_Y39_N32
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \Mux6~2_combout\ & ( (!\Mux9~4_combout\ & (\Mux9~5_combout\ & (\Mux6~3_combout\))) # (\Mux9~4_combout\ & (((\Mux6~1_combout\)) # (\Mux9~5_combout\))) ) ) # ( !\Mux6~2_combout\ & ( (!\Mux9~4_combout\ & (\Mux9~5_combout\ & 
-- (\Mux6~3_combout\))) # (\Mux9~4_combout\ & (!\Mux9~5_combout\ & ((\Mux6~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~4_combout\,
	datab => \ALT_INV_Mux9~5_combout\,
	datac => \ALT_INV_Mux6~3_combout\,
	datad => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \Mux6~4_combout\);

-- Location: LABCELL_X45_Y38_N36
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \B[14]~input_o\ & ( (!\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\B[26]~input_o\ $ (!\A[26]~input_o\)))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\ & ((\A[26]~input_o\) # (\B[26]~input_o\))) # (\LogicFN[0]~input_o\ & 
-- (\B[26]~input_o\ & \A[26]~input_o\)))) ) ) # ( !\B[14]~input_o\ & ( (!\B[26]~input_o\ & (\A[26]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[26]~input_o\ & (!\LogicFN[1]~input_o\ $ (((!\LogicFN[0]~input_o\) # (\A[26]~input_o\))))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100101000001100110010110001110111011011000111011101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[26]~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X47_Y40_N18
\Shift|ll2[26]~26\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~26_combout\ = ( \A[26]~input_o\ & ( \A[25]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & ((\A[23]~input_o\)))) ) ) ) # ( !\A[26]~input_o\ & ( \A[25]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\B[1]~input_o\ & (\A[24]~input_o\))) # (\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[23]~input_o\)))) ) ) ) # ( \A[26]~input_o\ & ( !\A[25]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\) # ((\A[24]~input_o\)))) # (\B[0]~input_o\ & (\B[1]~input_o\ & 
-- ((\A[23]~input_o\)))) ) ) ) # ( !\A[26]~input_o\ & ( !\A[25]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[24]~input_o\)) # (\B[0]~input_o\ & ((\A[23]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[24]~input_o\,
	datad => \ALT_INV_A[23]~input_o\,
	datae => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_A[25]~input_o\,
	combout => \Shift|ll2[26]~26_combout\);

-- Location: LABCELL_X50_Y39_N34
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Shift|ll2[22]~22_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\) # (\Shift|ll2[14]~14_combout\) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \Shift|ll2[14]~14_combout\) ) ) ) # ( 
-- \Shift|ll2[22]~22_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[26]~26_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[18]~18_combout\)) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[26]~26_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[18]~18_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ll2[18]~18_combout\,
	datac => \Shift|ALT_INV_ll2[26]~26_combout\,
	datad => \Shift|ALT_INV_ll2[14]~14_combout\,
	datae => \Shift|ALT_INV_ll2[22]~22_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X45_Y38_N4
\Add|S[26]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[26]~1_combout\ = ( \B[26]~input_o\ & ( !\AddnSub~input_o\ $ (\A[26]~input_o\) ) ) # ( !\B[26]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[26]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[26]~input_o\,
	dataf => \ALT_INV_B[26]~input_o\,
	combout => \Add|S[26]~1_combout\);

-- Location: LABCELL_X45_Y39_N6
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \Mux4~0_combout\ & ( (!\Mux4~1_combout\ & ((\Shift|rl3[26]~3_combout\))) # (\Mux4~1_combout\ & (\Shift|ra3[26]~2_combout\)) ) ) # ( !\Mux4~0_combout\ & ( (\A[31]~input_o\ & !\Mux4~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[26]~2_combout\,
	datab => \Shift|ALT_INV_rl3[26]~3_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \ALT_INV_Mux4~1_combout\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X50_Y39_N10
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Mux5~0_combout\ & ( \Shift|ll4[10]~7_combout\ & ( (!\Mux9~1_combout\) # ((!\Add|S[26]~1_combout\ $ (!\Add|C[26]~25_combout\)) # (\Mux9~0_combout\)) ) ) ) # ( !\Mux5~0_combout\ & ( \Shift|ll4[10]~7_combout\ & ( ((\Mux9~1_combout\ & 
-- (!\Add|S[26]~1_combout\ $ (!\Add|C[26]~25_combout\)))) # (\Mux9~0_combout\) ) ) ) # ( \Mux5~0_combout\ & ( !\Shift|ll4[10]~7_combout\ & ( (!\Mux9~0_combout\ & ((!\Mux9~1_combout\) # (!\Add|S[26]~1_combout\ $ (!\Add|C[26]~25_combout\)))) ) ) ) # ( 
-- !\Mux5~0_combout\ & ( !\Shift|ll4[10]~7_combout\ & ( (\Mux9~1_combout\ & (!\Mux9~0_combout\ & (!\Add|S[26]~1_combout\ $ (!\Add|C[26]~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000000111101100000000000000110111111111111011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[26]~1_combout\,
	datab => \Add|ALT_INV_C[26]~25_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_Mux9~0_combout\,
	datae => \ALT_INV_Mux5~0_combout\,
	dataf => \Shift|ALT_INV_ll4[10]~7_combout\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X50_Y39_N24
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( \Mux5~1_combout\ & ( (!\Mux9~4_combout\ & (\Mux9~5_combout\ & ((\Mux5~3_combout\)))) # (\Mux9~4_combout\ & ((!\Mux9~5_combout\) # ((\Mux5~2_combout\)))) ) ) # ( !\Mux5~1_combout\ & ( (\Mux9~5_combout\ & ((!\Mux9~4_combout\ & 
-- ((\Mux5~3_combout\))) # (\Mux9~4_combout\ & (\Mux5~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~4_combout\,
	datab => \ALT_INV_Mux9~5_combout\,
	datac => \ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_Mux5~3_combout\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: MLABCELL_X44_Y40_N24
\Mux4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[27]~input_o\ & (\A[27]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[27]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[27]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & 
-- (((\B[15]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\B[27]~input_o\ $ ((!\A[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101100110000011110110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[27]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: MLABCELL_X44_Y42_N2
\Shift|ll2[27]~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~27_combout\ = ( \A[25]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[24]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\ & \A[24]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_A[24]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[27]~27_combout\);

-- Location: MLABCELL_X44_Y40_N4
\Mux4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[27]~27_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[19]~19_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[15]~15_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[27]~27_combout\ & ( (!\B[2]~input_o\) # 
-- (\Shift|ll2[23]~23_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[27]~27_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[19]~19_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[15]~15_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[27]~27_combout\ & ( 
-- (\Shift|ll2[23]~23_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000011110011001111111111010101010000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[23]~23_combout\,
	datab => \Shift|ALT_INV_ll2[15]~15_combout\,
	datac => \Shift|ALT_INV_ll2[19]~19_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[27]~27_combout\,
	combout => \Mux4~5_combout\);

-- Location: LABCELL_X45_Y40_N38
\Add|S[27]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[27]~2_combout\ = ( \B[27]~input_o\ & ( !\A[27]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[27]~input_o\ & ( !\A[27]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[27]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[27]~input_o\,
	combout => \Add|S[27]~2_combout\);

-- Location: MLABCELL_X44_Y39_N38
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Shift|ra3[27]~3_combout\ & ( (!\Mux4~0_combout\ & (\A[31]~input_o\ & (!\Mux4~1_combout\))) # (\Mux4~0_combout\ & (((\Shift|rl3[27]~5_combout\) # (\Mux4~1_combout\)))) ) ) # ( !\Shift|ra3[27]~3_combout\ & ( (!\Mux4~1_combout\ & 
-- ((!\Mux4~0_combout\ & (\A[31]~input_o\)) # (\Mux4~0_combout\ & ((\Shift|rl3[27]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001000000111000000100101011101010010010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_Mux4~1_combout\,
	datad => \Shift|ALT_INV_rl3[27]~5_combout\,
	dataf => \Shift|ALT_INV_ra3[27]~3_combout\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X44_Y40_N2
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \Shift|ll4[11]~8_combout\ & ( \Mux4~2_combout\ & ( ((!\Mux9~1_combout\) # (!\Add|S[27]~2_combout\ $ (!\Add|C[27]~26_combout\))) # (\Mux9~0_combout\) ) ) ) # ( !\Shift|ll4[11]~8_combout\ & ( \Mux4~2_combout\ & ( (!\Mux9~0_combout\ & 
-- ((!\Mux9~1_combout\) # (!\Add|S[27]~2_combout\ $ (!\Add|C[27]~26_combout\)))) ) ) ) # ( \Shift|ll4[11]~8_combout\ & ( !\Mux4~2_combout\ & ( ((\Mux9~1_combout\ & (!\Add|S[27]~2_combout\ $ (!\Add|C[27]~26_combout\)))) # (\Mux9~0_combout\) ) ) ) # ( 
-- !\Shift|ll4[11]~8_combout\ & ( !\Mux4~2_combout\ & ( (!\Mux9~0_combout\ & (\Mux9~1_combout\ & (!\Add|S[27]~2_combout\ $ (!\Add|C[27]~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000001100110111101111001100010010001111111101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S[27]~2_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \Add|ALT_INV_C[27]~26_combout\,
	datad => \ALT_INV_Mux9~1_combout\,
	datae => \Shift|ALT_INV_ll4[11]~8_combout\,
	dataf => \ALT_INV_Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: MLABCELL_X44_Y40_N20
\Mux4~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = ( \Mux4~3_combout\ & ( (!\Mux9~4_combout\ & (((\Mux4~5_combout\ & \Mux9~5_combout\)))) # (\Mux9~4_combout\ & (((!\Mux9~5_combout\)) # (\Mux4~4_combout\))) ) ) # ( !\Mux4~3_combout\ & ( (\Mux9~5_combout\ & ((!\Mux9~4_combout\ & 
-- ((\Mux4~5_combout\))) # (\Mux9~4_combout\ & (\Mux4~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101000000000001110100110011000111010011001100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~4_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux4~5_combout\,
	datad => \ALT_INV_Mux9~5_combout\,
	dataf => \ALT_INV_Mux4~3_combout\,
	combout => \Mux4~6_combout\);

-- Location: MLABCELL_X46_Y41_N16
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \B[28]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[16]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ ((\A[28]~input_o\)))) ) ) # ( !\B[28]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\B[16]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[28]~input_o\)))) # (\LogicFN[1]~input_o\ & (\A[28]~input_o\ & ((!\LogicFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100100010000110110010001001011111100110010101111110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_B[16]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X44_Y42_N26
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \A[25]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[26]~input_o\) ) ) ) # ( !\A[25]~input_o\ & ( \B[1]~input_o\ & ( (\A[26]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[25]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[28]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))) ) ) ) # ( !\A[25]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[28]~input_o\)) # (\B[0]~input_o\ & ((\A[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[28]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[25]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: MLABCELL_X46_Y39_N12
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \B[2]~input_o\ & ( \Shift|ll2[20]~20_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[24]~24_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[16]~16_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( \Shift|ll2[20]~20_combout\ & ( (\B[3]~input_o\) # 
-- (\Mux3~3_combout\) ) ) ) # ( \B[2]~input_o\ & ( !\Shift|ll2[20]~20_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[24]~24_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[16]~16_combout\)) ) ) ) # ( !\B[2]~input_o\ & ( !\Shift|ll2[20]~20_combout\ & ( 
-- (\Mux3~3_combout\ & !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001100110101010100001111111111110011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[16]~16_combout\,
	datab => \Shift|ALT_INV_ll2[24]~24_combout\,
	datac => \ALT_INV_Mux3~3_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ll2[20]~20_combout\,
	combout => \Mux3~4_combout\);

-- Location: MLABCELL_X44_Y39_N36
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \Mux4~1_combout\ & ( (\Mux4~0_combout\ & ((!\B[2]~input_o\ & ((\Shift|rl2[28]~5_combout\))) # (\B[2]~input_o\ & (\A[31]~input_o\)))) ) ) # ( !\Mux4~1_combout\ & ( (!\Mux4~0_combout\ & (\A[31]~input_o\)) # (\Mux4~0_combout\ & 
-- (((!\B[2]~input_o\ & \Shift|rl2[28]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001000100111001000000001010100010000000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_A[31]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[28]~5_combout\,
	dataf => \ALT_INV_Mux4~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X46_Y41_N18
\Add|S[28]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[28]~3_combout\ = ( \B[28]~input_o\ & ( !\A[28]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\B[28]~input_o\ & ( !\A[28]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[28]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[28]~input_o\,
	combout => \Add|S[28]~3_combout\);

-- Location: MLABCELL_X44_Y40_N30
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Mux9~0_combout\ & ( \Add|S[28]~3_combout\ & ( \Shift|ll4[12]~9_combout\ ) ) ) # ( !\Mux9~0_combout\ & ( \Add|S[28]~3_combout\ & ( (!\Mux9~1_combout\ & (\Mux3~0_combout\)) # (\Mux9~1_combout\ & ((!\Add|C[28]~27_combout\))) ) ) ) # ( 
-- \Mux9~0_combout\ & ( !\Add|S[28]~3_combout\ & ( \Shift|ll4[12]~9_combout\ ) ) ) # ( !\Mux9~0_combout\ & ( !\Add|S[28]~3_combout\ & ( (!\Mux9~1_combout\ & (\Mux3~0_combout\)) # (\Mux9~1_combout\ & ((\Add|C[28]~27_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110011001101010101111100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~0_combout\,
	datab => \Shift|ALT_INV_ll4[12]~9_combout\,
	datac => \Add|ALT_INV_C[28]~27_combout\,
	datad => \ALT_INV_Mux9~1_combout\,
	datae => \ALT_INV_Mux9~0_combout\,
	dataf => \Add|ALT_INV_S[28]~3_combout\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X46_Y39_N26
\Mux3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = ( \Mux3~1_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\)) # (\Mux9~5_combout\ & ((!\Mux9~4_combout\ & ((\Mux3~4_combout\))) # (\Mux9~4_combout\ & (\Mux3~2_combout\)))) ) ) # ( !\Mux3~1_combout\ & ( (\Mux9~5_combout\ & 
-- ((!\Mux9~4_combout\ & ((\Mux3~4_combout\))) # (\Mux9~4_combout\ & (\Mux3~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux3~2_combout\,
	datad => \ALT_INV_Mux3~4_combout\,
	dataf => \ALT_INV_Mux3~1_combout\,
	combout => \Mux3~5_combout\);

-- Location: MLABCELL_X52_Y39_N16
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \B[29]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\) # (\B[17]~input_o\)))) # (\LogicFN[0]~input_o\ & (!\A[29]~input_o\ $ (((\LogicFN[1]~input_o\))))) ) ) # ( !\B[29]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & ((\B[17]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[29]~input_o\)))) # (\LogicFN[1]~input_o\ & (\A[29]~input_o\ & ((!\LogicFN[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010101010000001101010101000000111111101001010011111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[29]~input_o\,
	datab => \ALT_INV_B[17]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[29]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X47_Y39_N18
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \Shift|rl3[29]~8_combout\ & ( (!\Mux4~0_combout\ & (!\Mux4~1_combout\ & (\A[31]~input_o\))) # (\Mux4~0_combout\ & ((!\Mux4~1_combout\) # ((\Shift|ra3[29]~4_combout\)))) ) ) # ( !\Shift|rl3[29]~8_combout\ & ( (!\Mux4~0_combout\ & 
-- (!\Mux4~1_combout\ & (\A[31]~input_o\))) # (\Mux4~0_combout\ & (\Mux4~1_combout\ & ((\Shift|ra3[29]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001000010000001100101001100010111010100110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux4~1_combout\,
	datac => \ALT_INV_A[31]~input_o\,
	datad => \Shift|ALT_INV_ra3[29]~4_combout\,
	dataf => \Shift|ALT_INV_rl3[29]~8_combout\,
	combout => \Mux2~0_combout\);

-- Location: MLABCELL_X49_Y39_N10
\Add|S[29]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[29]~4_combout\ = ( \A[29]~input_o\ & ( !\B[29]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[29]~input_o\ & ( !\B[29]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[29]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[29]~input_o\,
	combout => \Add|S[29]~4_combout\);

-- Location: MLABCELL_X49_Y39_N18
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Add|C[29]~28_combout\ & ( \Shift|ll4[13]~10_combout\ & ( ((!\Mux9~1_combout\ & (\Mux2~0_combout\)) # (\Mux9~1_combout\ & ((!\Add|S[29]~4_combout\)))) # (\Mux9~0_combout\) ) ) ) # ( !\Add|C[29]~28_combout\ & ( 
-- \Shift|ll4[13]~10_combout\ & ( ((!\Mux9~1_combout\ & (\Mux2~0_combout\)) # (\Mux9~1_combout\ & ((\Add|S[29]~4_combout\)))) # (\Mux9~0_combout\) ) ) ) # ( \Add|C[29]~28_combout\ & ( !\Shift|ll4[13]~10_combout\ & ( (!\Mux9~0_combout\ & ((!\Mux9~1_combout\ & 
-- (\Mux2~0_combout\)) # (\Mux9~1_combout\ & ((!\Add|S[29]~4_combout\))))) ) ) ) # ( !\Add|C[29]~28_combout\ & ( !\Shift|ll4[13]~10_combout\ & ( (!\Mux9~0_combout\ & ((!\Mux9~1_combout\ & (\Mux2~0_combout\)) # (\Mux9~1_combout\ & ((\Add|S[29]~4_combout\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100000000011100100000000000100111111111110111001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \Add|ALT_INV_S[29]~4_combout\,
	datad => \ALT_INV_Mux9~0_combout\,
	datae => \Add|ALT_INV_C[29]~28_combout\,
	dataf => \Shift|ALT_INV_ll4[13]~10_combout\,
	combout => \Mux2~1_combout\);

-- Location: MLABCELL_X44_Y42_N10
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \A[29]~input_o\ & ( \A[28]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\)))) ) ) ) # ( !\A[29]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (\A[27]~input_o\ & 
-- ((\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[26]~input_o\)))) ) ) ) # ( \A[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[27]~input_o\))) # (\B[0]~input_o\ & (((\A[26]~input_o\ & 
-- \B[1]~input_o\)))) ) ) ) # ( !\A[29]~input_o\ & ( !\A[28]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[27]~input_o\)) # (\B[0]~input_o\ & ((\A[26]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111101010100010011101010101001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[26]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X46_Y39_N18
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[17]~17_combout\ & ( (\B[2]~input_o\) # (\Shift|ll2[21]~21_combout\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[17]~17_combout\ & ( (!\B[2]~input_o\ & ((\Mux2~3_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|ll2[25]~25_combout\)) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[17]~17_combout\ & ( (\Shift|ll2[21]~21_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[17]~17_combout\ & ( (!\B[2]~input_o\ & ((\Mux2~3_combout\))) # 
-- (\B[2]~input_o\ & (\Shift|ll2[25]~25_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011010101010000000000001111001100110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[21]~21_combout\,
	datab => \Shift|ALT_INV_ll2[25]~25_combout\,
	datac => \ALT_INV_Mux2~3_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[17]~17_combout\,
	combout => \Mux2~4_combout\);

-- Location: MLABCELL_X49_Y39_N30
\Mux2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \Mux2~4_combout\ & ( (!\Mux9~5_combout\ & (\Mux9~4_combout\ & ((\Mux2~1_combout\)))) # (\Mux9~5_combout\ & ((!\Mux9~4_combout\) # ((\Mux2~2_combout\)))) ) ) # ( !\Mux2~4_combout\ & ( (\Mux9~4_combout\ & ((!\Mux9~5_combout\ & 
-- ((\Mux2~1_combout\))) # (\Mux9~5_combout\ & (\Mux2~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~5_combout\,
	datab => \ALT_INV_Mux9~4_combout\,
	datac => \ALT_INV_Mux2~2_combout\,
	datad => \ALT_INV_Mux2~1_combout\,
	dataf => \ALT_INV_Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LABCELL_X47_Y41_N30
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( !\Mux9~0_combout\ & ( \Mux9~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X52_Y39_N8
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \A[30]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[18]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\B[30]~input_o\))))) ) ) # ( !\A[30]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & (\B[18]~input_o\)) # (\LogicFN[0]~input_o\ & ((\B[30]~input_o\))))) # (\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & ((\B[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001101110000010000110111001101110010111010110111001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[18]~input_o\,
	datad => \ALT_INV_B[30]~input_o\,
	dataf => \ALT_INV_A[30]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: MLABCELL_X44_Y42_N14
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \A[29]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[30]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[27]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( \A[28]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\) # (\A[30]~input_o\)))) # (\B[0]~input_o\ & (\A[27]~input_o\ & ((\B[1]~input_o\)))) ) ) ) # ( \A[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (((\A[30]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # 
-- (\A[27]~input_o\))) ) ) ) # ( !\A[29]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[0]~input_o\ & (((\A[30]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[27]~input_o\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001010111110001000100001010101110110101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[27]~input_o\,
	datac => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[29]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X50_Y39_N38
\Mux1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( \Shift|ll2[22]~22_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[26]~26_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[18]~18_combout\)) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[26]~26_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[18]~18_combout\)) ) ) ) # ( \Shift|ll2[22]~22_combout\ & ( !\B[2]~input_o\ & ( (\Mux1~4_combout\) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[22]~22_combout\ & ( !\B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & \Mux1~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ll2[18]~18_combout\,
	datac => \Shift|ALT_INV_ll2[26]~26_combout\,
	datad => \ALT_INV_Mux1~4_combout\,
	datae => \Shift|ALT_INV_ll2[22]~22_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: MLABCELL_X52_Y39_N34
\Mux1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = ( \Mux1~5_combout\ & ( (\Mux9~5_combout\ & ((!\Mux9~4_combout\) # (\Mux1~3_combout\))) ) ) # ( !\Mux1~5_combout\ & ( (\Mux9~4_combout\ & (\Mux9~5_combout\ & \Mux1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~4_combout\,
	datab => \ALT_INV_Mux9~5_combout\,
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => \ALT_INV_Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: MLABCELL_X52_Y39_N14
\Add|S[30]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[30]~5_combout\ = !\B[30]~input_o\ $ (!\A[30]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[30]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[30]~5_combout\);

-- Location: MLABCELL_X44_Y39_N32
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Mux4~0_combout\ & ( (!\Mux4~1_combout\ & ((\Shift|rl4[22]~8_combout\))) # (\Mux4~1_combout\ & (\Shift|ra3[30]~5_combout\)) ) ) # ( !\Mux4~0_combout\ & ( (!\Mux4~1_combout\ & \A[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ra3[30]~5_combout\,
	datab => \Shift|ALT_INV_rl4[22]~8_combout\,
	datac => \ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X44_Y39_N18
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux9~0_combout\ & ( \Shift|ll4[14]~11_combout\ ) ) # ( !\Mux9~0_combout\ & ( (\Mux1~1_combout\ & !\Mux9~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \Shift|ALT_INV_ll4[14]~11_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: MLABCELL_X52_Y39_N30
\Mux14~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = ( \Mux9~4_combout\ & ( !\Mux9~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux9~5_combout\,
	dataf => \ALT_INV_Mux9~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: MLABCELL_X52_Y39_N38
\Mux1~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = ( \Mux14~5_combout\ & ( \Add|C[30]~29_combout\ & ( (((\Mux1~0_combout\ & !\Add|S[30]~5_combout\)) # (\Mux1~2_combout\)) # (\Mux1~6_combout\) ) ) ) # ( !\Mux14~5_combout\ & ( \Add|C[30]~29_combout\ & ( \Mux1~6_combout\ ) ) ) # ( 
-- \Mux14~5_combout\ & ( !\Add|C[30]~29_combout\ & ( (((\Mux1~0_combout\ & \Add|S[30]~5_combout\)) # (\Mux1~2_combout\)) # (\Mux1~6_combout\) ) ) ) # ( !\Mux14~5_combout\ & ( !\Add|C[30]~29_combout\ & ( \Mux1~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101111111111100110011001100110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux1~6_combout\,
	datac => \Add|ALT_INV_S[30]~5_combout\,
	datad => \ALT_INV_Mux1~2_combout\,
	datae => \ALT_INV_Mux14~5_combout\,
	dataf => \Add|ALT_INV_C[30]~29_combout\,
	combout => \Mux1~7_combout\);

-- Location: MLABCELL_X44_Y42_N18
\Shift|ll2[31]~28\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[31]~28_combout\ = ( \B[0]~input_o\ & ( \A[28]~input_o\ & ( (\A[30]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[28]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[1]~input_o\ & \A[30]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[28]~input_o\ & ( (!\B[1]~input_o\ & ((\A[31]~input_o\))) # (\B[1]~input_o\ & (\A[29]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[30]~input_o\,
	datac => \ALT_INV_A[29]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[28]~input_o\,
	combout => \Shift|ll2[31]~28_combout\);

-- Location: MLABCELL_X44_Y40_N18
\Shift|ll4[31]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll4[31]~14_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[31]~28_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[23]~23_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[19]~19_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[31]~28_combout\ & ( 
-- (!\B[2]~input_o\) # (\Shift|ll2[27]~27_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[31]~28_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[23]~23_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[19]~19_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- !\Shift|ll2[31]~28_combout\ & ( (\Shift|ll2[27]~27_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100000101111111110011111100110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[23]~23_combout\,
	datab => \Shift|ALT_INV_ll2[27]~27_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ll2[19]~19_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[31]~28_combout\,
	combout => \Shift|ll4[31]~14_combout\);

-- Location: MLABCELL_X44_Y40_N12
\Shift|Y_LL[31]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~1_combout\ = ( \B[4]~input_o\ & ( (\Shift|ll4[15]~12_combout\ & !\B[5]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (\Shift|ll4[31]~14_combout\ & !\B[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ll4[15]~12_combout\,
	datac => \Shift|ALT_INV_ll4[31]~14_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Shift|Y_LL[31]~1_combout\);

-- Location: MLABCELL_X44_Y40_N14
\Add|S[31]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(31) = ( \A[31]~input_o\ & ( !\B[31]~input_o\ $ (!\Add|C[31]~30_combout\ $ (!\AddnSub~input_o\)) ) ) # ( !\A[31]~input_o\ & ( !\B[31]~input_o\ $ (!\Add|C[31]~30_combout\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[31]~input_o\,
	datac => \Add|ALT_INV_C[31]~30_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	combout => \Add|S\(31));

-- Location: LABCELL_X43_Y38_N20
\Y_ShiftOrArith[31]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~3_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Add|S\(31))))) # (\ShiftFN[0]~input_o\ & (\Shift|Y_LL[31]~1_combout\)) ) ) # ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Shift|Y_RL[31]~0_combout\ & 
-- (\Shift|Y_RL[31]~1_combout\))))) # (\ShiftFN[0]~input_o\ & ((((\A[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001101100011011000000000000101000011011000110110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_Y_LL[31]~1_combout\,
	datac => \Shift|ALT_INV_Y_RL[31]~0_combout\,
	datad => \Shift|ALT_INV_Y_RL[31]~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[31]~input_o\,
	datag => \Add|ALT_INV_S\(31),
	combout => \Y_ShiftOrArith[31]~3_combout\);

-- Location: LABCELL_X47_Y41_N38
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \B[31]~input_o\ & ( (!\LogicFN[0]~input_o\ & (((\B[19]~input_o\)) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (((\A[31]~input_o\))))) ) ) # ( !\B[31]~input_o\ & ( (!\LogicFN[1]~input_o\ & 
-- ((!\LogicFN[0]~input_o\ & (\B[19]~input_o\)) # (\LogicFN[0]~input_o\ & ((\A[31]~input_o\))))) # (\LogicFN[1]~input_o\ & (((!\LogicFN[0]~input_o\ & \A[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001111010001000000111101001111010011101010111101001110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_B[19]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[31]~input_o\,
	dataf => \ALT_INV_B[31]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LABCELL_X47_Y38_N18
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Logic|Mux0~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\Y_ShiftOrArith[31]~3_combout\) # (\FuncClass[0]~input_o\))) ) ) # ( !\Logic|Mux0~0_combout\ & ( (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & 
-- \Y_ShiftOrArith[31]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000010001001100110000000000100010000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Y_ShiftOrArith[31]~3_combout\,
	datae => \Logic|ALT_INV_Mux0~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X3_Y0_N32
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


