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

-- DATE "12/02/2025 18:50:13"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	EN_ExecUnit IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Y : BUFFER std_logic_vector(15 DOWNTO 0);
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END EN_ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Zero : std_logic;
SIGNAL ww_AltB : std_logic;
SIGNAL ww_AltBu : std_logic;
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
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Shift|ll2[0]~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Shift|Y_LL[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[0]~0_combout\ : std_logic;
SIGNAL \Y_R[0]~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~6_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~5_combout\ : std_logic;
SIGNAL \Y_R[1]~2_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Shift|ll2[1]~1_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~7_combout\ : std_logic;
SIGNAL \Y_R[1]~8_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~9_combout\ : std_logic;
SIGNAL \Y_R[1]~3_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~10_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~3_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[0]~4_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Y_R[1]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~5_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Y_R[1]~6_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~6_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~7_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Y_R[1]~7_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Logic|Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~8_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~9_combout\ : std_logic;
SIGNAL \Y_LorS_Ext[8]~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~10_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~11_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~12_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Add|S[15]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~13_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~1_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddnSub~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
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
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[8]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(15 DOWNTO 1);
SIGNAL \Add|ALT_INV_S[15]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[15]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[15]~13_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[11]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[10]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[9]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[7]~8_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[6]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[4]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[7]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[11]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[6]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[10]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[13]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[9]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
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
SIGNAL \Logic|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[8]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS_Ext[8]~0_combout\ : std_logic;

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
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_FuncClass[1]~input_o\ <= NOT \FuncClass[1]~input_o\;
\ALT_INV_FuncClass[0]~input_o\ <= NOT \FuncClass[0]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_AddnSub~input_o\ <= NOT \AddnSub~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_LogicFN[0]~input_o\ <= NOT \LogicFN[0]~input_o\;
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
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
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux3~4_combout\ <= NOT \Mux3~4_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Y_ShiftOrArith[8]~1_combout\ <= NOT \Y_ShiftOrArith[8]~1_combout\;
\Add|ALT_INV_S\(15) <= NOT \Add|S\(15);
\Add|ALT_INV_S[15]~0_combout\ <= NOT \Add|S[15]~0_combout\;
\Shift|ALT_INV_Y_LL[15]~1_combout\ <= NOT \Shift|Y_LL[15]~1_combout\;
\Shift|ALT_INV_ll2[15]~13_combout\ <= NOT \Shift|ll2[15]~13_combout\;
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\ALT_INV_Mux1~5_combout\ <= NOT \Mux1~5_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\Add|ALT_INV_S\(14) <= NOT \Add|S\(14);
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\Add|ALT_INV_S\(13) <= NOT \Add|S\(13);
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\Add|ALT_INV_S\(12) <= NOT \Add|S\(12);
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\Add|ALT_INV_S\(11) <= NOT \Add|S\(11);
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\Shift|ALT_INV_ll2[11]~12_combout\ <= NOT \Shift|ll2[11]~12_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\Add|ALT_INV_S\(10) <= NOT \Add|S\(10);
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\Shift|ALT_INV_ll2[10]~11_combout\ <= NOT \Shift|ll2[10]~11_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux6~6_combout\ <= NOT \Mux6~6_combout\;
\ALT_INV_Mux6~5_combout\ <= NOT \Mux6~5_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\Add|ALT_INV_S\(9) <= NOT \Add|S\(9);
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\Shift|ALT_INV_ll2[9]~10_combout\ <= NOT \Shift|ll2[9]~10_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Shift|ALT_INV_ll2[8]~9_combout\ <= NOT \Shift|ll2[8]~9_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Y_R_Ext[8]~0_combout\ <= NOT \Y_R_Ext[8]~0_combout\;
\Logic|ALT_INV_Mux7~0_combout\ <= NOT \Logic|Mux7~0_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\Shift|ALT_INV_ll2[7]~8_combout\ <= NOT \Shift|ll2[7]~8_combout\;
\Add|ALT_INV_S\(7) <= NOT \Add|S\(7);
\Logic|ALT_INV_Mux8~0_combout\ <= NOT \Logic|Mux8~0_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\Shift|ALT_INV_ll2[6]~7_combout\ <= NOT \Shift|ll2[6]~7_combout\;
\Add|ALT_INV_S\(6) <= NOT \Add|S\(6);
\ALT_INV_Y_R[1]~7_combout\ <= NOT \Y_R[1]~7_combout\;
\ALT_INV_Mux10~8_combout\ <= NOT \Mux10~8_combout\;
\ALT_INV_Mux10~7_combout\ <= NOT \Mux10~7_combout\;
\ALT_INV_Mux10~6_combout\ <= NOT \Mux10~6_combout\;
\Shift|ALT_INV_ll2[5]~6_combout\ <= NOT \Shift|ll2[5]~6_combout\;
\Add|ALT_INV_S\(5) <= NOT \Add|S\(5);
\ALT_INV_Y_R[1]~6_combout\ <= NOT \Y_R[1]~6_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux10~5_combout\ <= NOT \Mux10~5_combout\;
\ALT_INV_Mux10~4_combout\ <= NOT \Mux10~4_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\Shift|ALT_INV_ll2[4]~5_combout\ <= NOT \Shift|ll2[4]~5_combout\;
\Add|ALT_INV_S\(4) <= NOT \Add|S\(4);
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\Shift|ALT_INV_ll2[0]~4_combout\ <= NOT \Shift|ll2[0]~4_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Y_R[1]~5_combout\ <= NOT \Y_R[1]~5_combout\;
\ALT_INV_Y_R[1]~4_combout\ <= NOT \Y_R[1]~4_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
\ALT_INV_Mux12~7_combout\ <= NOT \Mux12~7_combout\;
\ALT_INV_Mux12~6_combout\ <= NOT \Mux12~6_combout\;
\ALT_INV_Mux12~5_combout\ <= NOT \Mux12~5_combout\;
\Shift|ALT_INV_rl2[7]~10_combout\ <= NOT \Shift|rl2[7]~10_combout\;
\ALT_INV_Y_R[1]~3_combout\ <= NOT \Y_R[1]~3_combout\;
\Shift|ALT_INV_rl2[11]~9_combout\ <= NOT \Shift|rl2[11]~9_combout\;
\Shift|ALT_INV_ll2[3]~3_combout\ <= NOT \Shift|ll2[3]~3_combout\;
\ALT_INV_Mux12~4_combout\ <= NOT \Mux12~4_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\ALT_INV_Mux13~4_combout\ <= NOT \Mux13~4_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\Shift|ALT_INV_rl2[6]~8_combout\ <= NOT \Shift|rl2[6]~8_combout\;
\Shift|ALT_INV_rl2[10]~7_combout\ <= NOT \Shift|rl2[10]~7_combout\;
\Shift|ALT_INV_ll2[2]~2_combout\ <= NOT \Shift|ll2[2]~2_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\Shift|ALT_INV_rl2[5]~6_combout\ <= NOT \Shift|rl2[5]~6_combout\;
\ALT_INV_Y_R[1]~2_combout\ <= NOT \Y_R[1]~2_combout\;
\ALT_INV_Y_R[1]~1_combout\ <= NOT \Y_R[1]~1_combout\;
\Shift|ALT_INV_rl2[13]~5_combout\ <= NOT \Shift|rl2[13]~5_combout\;
\Shift|ALT_INV_rl2[9]~4_combout\ <= NOT \Shift|rl2[9]~4_combout\;
\Shift|ALT_INV_ll2[1]~1_combout\ <= NOT \Shift|ll2[1]~1_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
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
\Logic|ALT_INV_Mux15~0_combout\ <= NOT \Logic|Mux15~0_combout\;
\ALT_INV_Y_ShiftOrArith[0]~0_combout\ <= NOT \Y_ShiftOrArith[0]~0_combout\;
\Shift|ALT_INV_Y_LL[0]~0_combout\ <= NOT \Shift|Y_LL[0]~0_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\Shift|ALT_INV_ll2[0]~0_combout\ <= NOT \Shift|ll2[0]~0_combout\;
\ALT_INV_Y_R[0]~0_combout\ <= NOT \Y_R[0]~0_combout\;
\Shift|ALT_INV_rl2[12]~3_combout\ <= NOT \Shift|rl2[12]~3_combout\;
\Shift|ALT_INV_rl2[8]~2_combout\ <= NOT \Shift|rl2[8]~2_combout\;
\Shift|ALT_INV_rl2[4]~1_combout\ <= NOT \Shift|rl2[4]~1_combout\;
\Shift|ALT_INV_rl2[0]~0_combout\ <= NOT \Shift|rl2[0]~0_combout\;
\ALT_INV_Y_R[1]~8_combout\ <= NOT \Y_R[1]~8_combout\;
\ALT_INV_Mux8~3_combout\ <= NOT \Mux8~3_combout\;
\ALT_INV_Y_LorS_Ext[8]~0_combout\ <= NOT \Y_LorS_Ext[8]~0_combout\;

-- Location: IOOBUF_X59_Y4_N67
\Y[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X43_Y0_N36
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~5_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~8_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y10_N2
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~3_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X59_Y10_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~9_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X45_Y0_N2
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~3_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X59_Y15_N98
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~2_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X48_Y0_N5
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~7_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X39_Y0_N98
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~2_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X37_Y0_N36
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~3_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~3_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X59_Y13_N36
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~6_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X41_Y0_N33
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X59_Y13_N67
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~3_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X50_Y0_N98
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

-- Location: IOOBUF_X59_Y4_N98
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

-- Location: IOIBUF_X47_Y0_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y10_N32
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X50_Y0_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X47_Y0_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y9_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X43_Y8_N20
\Add|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = ( \A[0]~input_o\ & ( (\AddnSub~input_o\) # (\B[0]~input_o\) ) ) # ( !\A[0]~input_o\ & ( (!\B[0]~input_o\ & \AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: IOIBUF_X41_Y0_N63
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X43_Y8_N4
\Add|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = ( \B[1]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[1]~input_o\) # (\Add|C[1]~0_combout\))) # (\AddnSub~input_o\ & (\Add|C[1]~0_combout\ & \A[1]~input_o\)) ) ) # ( !\B[1]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[1]~0_combout\ & 
-- \A[1]~input_o\)) # (\AddnSub~input_o\ & ((\A[1]~input_o\) # (\Add|C[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[1]~0_combout\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: LABCELL_X43_Y8_N8
\Add|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = ( \Add|C[2]~1_combout\ & ( (!\B[2]~input_o\ $ (!\AddnSub~input_o\)) # (\A[2]~input_o\) ) ) # ( !\Add|C[2]~1_combout\ & ( (\A[2]~input_o\ & (!\B[2]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[2]~1_combout\,
	combout => \Add|C[3]~2_combout\);

-- Location: IOIBUF_X48_Y0_N94
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X43_Y8_N6
\Add|C[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = ( \A[3]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[3]~input_o\)) # (\Add|C[3]~2_combout\) ) ) # ( !\A[3]~input_o\ & ( (\Add|C[3]~2_combout\ & (!\AddnSub~input_o\ $ (!\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Add|ALT_INV_C[3]~2_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|C[4]~3_combout\);

-- Location: IOIBUF_X59_Y7_N32
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X46_Y11_N2
\Add|C[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = ( \B[4]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[4]~input_o\) # (\Add|C[4]~3_combout\))) # (\AddnSub~input_o\ & (\Add|C[4]~3_combout\ & \A[4]~input_o\)) ) ) # ( !\B[4]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[4]~3_combout\ & 
-- \A[4]~input_o\)) # (\AddnSub~input_o\ & ((\A[4]~input_o\) # (\Add|C[4]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[4]~3_combout\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Add|C[5]~4_combout\);

-- Location: IOIBUF_X59_Y16_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X46_Y11_N4
\Add|C[6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = ( \A[5]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[5]~input_o\)) # (\Add|C[5]~4_combout\) ) ) # ( !\A[5]~input_o\ & ( (\Add|C[5]~4_combout\ & (!\AddnSub~input_o\ $ (!\B[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[5]~4_combout\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|C[6]~5_combout\);

-- Location: IOIBUF_X45_Y0_N94
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X46_Y11_N28
\Add|C[7]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = ( \A[6]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[6]~input_o\)) # (\Add|C[6]~5_combout\) ) ) # ( !\A[6]~input_o\ & ( (\Add|C[6]~5_combout\ & (!\AddnSub~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \Add|ALT_INV_C[6]~5_combout\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Add|C[7]~6_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X46_Y11_N12
\Add|C[8]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = ( \B[7]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[7]~input_o\) # (\Add|C[7]~6_combout\))) # (\AddnSub~input_o\ & (\Add|C[7]~6_combout\ & \A[7]~input_o\)) ) ) # ( !\B[7]~input_o\ & ( (!\AddnSub~input_o\ & (\Add|C[7]~6_combout\ & 
-- \A[7]~input_o\)) # (\AddnSub~input_o\ & ((\A[7]~input_o\) # (\Add|C[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[7]~6_combout\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|C[8]~7_combout\);

-- Location: IOIBUF_X45_Y0_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: MLABCELL_X46_Y11_N0
\Add|C[9]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = (!\Add|C[8]~7_combout\ & (\A[8]~input_o\ & (!\B[8]~input_o\ $ (!\AddnSub~input_o\)))) # (\Add|C[8]~7_combout\ & ((!\B[8]~input_o\ $ (!\AddnSub~input_o\)) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101111000001100110111100000110011011110000011001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[8]~7_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	combout => \Add|C[9]~8_combout\);

-- Location: IOIBUF_X39_Y0_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X46_Y11_N16
\Add|C[10]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = ( \A[9]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[9]~input_o\)) # (\Add|C[9]~8_combout\) ) ) # ( !\A[9]~input_o\ & ( (\Add|C[9]~8_combout\ & (!\AddnSub~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000111111110011110011111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[9]~8_combout\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Add|C[10]~9_combout\);

-- Location: LABCELL_X45_Y8_N2
\Add|C[11]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = ( \Add|C[10]~9_combout\ & ( (!\AddnSub~input_o\ $ (!\B[10]~input_o\)) # (\A[10]~input_o\) ) ) # ( !\Add|C[10]~9_combout\ & ( (\A[10]~input_o\ & (!\AddnSub~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \Add|ALT_INV_C[10]~9_combout\,
	combout => \Add|C[11]~10_combout\);

-- Location: IOIBUF_X43_Y0_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X39_Y0_N1
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X44_Y11_N0
\Add|C[12]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[11]~10_combout\ & (\A[11]~input_o\ & !\B[11]~input_o\)) # (\Add|C[11]~10_combout\ & ((!\B[11]~input_o\) # (\A[11]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[11]~10_combout\ & 
-- (\A[11]~input_o\ & \B[11]~input_o\)) # (\Add|C[11]~10_combout\ & ((\B[11]~input_o\) # (\A[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[11]~10_combout\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: IOIBUF_X59_Y12_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X46_Y11_N18
\Add|C[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = ( \B[12]~input_o\ & ( (!\AddnSub~input_o\ & ((\A[12]~input_o\) # (\Add|C[12]~11_combout\))) # (\AddnSub~input_o\ & (\Add|C[12]~11_combout\ & \A[12]~input_o\)) ) ) # ( !\B[12]~input_o\ & ( (!\AddnSub~input_o\ & 
-- (\Add|C[12]~11_combout\ & \A[12]~input_o\)) # (\AddnSub~input_o\ & ((\A[12]~input_o\) # (\Add|C[12]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[12]~11_combout\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Add|C[13]~12_combout\);

-- Location: MLABCELL_X49_Y11_N30
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

-- Location: IOIBUF_X59_Y15_N1
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X49_Y11_N34
\Add|C[15]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = ( \B[14]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|C[14]~13_combout\) # (\A[14]~input_o\))) # (\AddnSub~input_o\ & (\A[14]~input_o\ & \Add|C[14]~13_combout\)) ) ) # ( !\B[14]~input_o\ & ( (!\AddnSub~input_o\ & (\A[14]~input_o\ & 
-- \Add|C[14]~13_combout\)) # (\AddnSub~input_o\ & ((\Add|C[14]~13_combout\) # (\A[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \Add|ALT_INV_C[14]~13_combout\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X52_Y0_N32
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X49_Y11_N38
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( \AddnSub~input_o\ & ( (!\A[15]~input_o\ & ((\B[15]~input_o\) # (\Add|C[15]~14_combout\))) # (\A[15]~input_o\ & (\Add|C[15]~14_combout\ & \B[15]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( (!\A[15]~input_o\ & ((!\B[15]~input_o\) # 
-- (\Add|C[15]~14_combout\))) # (\A[15]~input_o\ & (\Add|C[15]~14_combout\ & !\B[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111100001010101011110000101000001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \Add|ALT_INV_C[15]~14_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \AltB~0_combout\);

-- Location: MLABCELL_X49_Y11_N26
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( \AddnSub~input_o\ & ( (!\A[15]~input_o\ & (\Add|C[15]~14_combout\ & !\B[15]~input_o\)) # (\A[15]~input_o\ & ((!\B[15]~input_o\) # (\Add|C[15]~14_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[15]~input_o\ & 
-- (\Add|C[15]~14_combout\ & \B[15]~input_o\)) # (\A[15]~input_o\ & ((\B[15]~input_o\) # (\Add|C[15]~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101011111000001010101111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \Add|ALT_INV_C[15]~14_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X59_Y9_N63
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X48_Y0_N63
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: MLABCELL_X49_Y11_N24
\Logic|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[0]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[0]~input_o\ $ (((!\A[0]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000111111000000110011111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: IOIBUF_X59_Y7_N94
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: LABCELL_X43_Y11_N4
\Shift|ll2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~0_combout\ = ( !\B[0]~input_o\ & ( !\B[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[0]~0_combout\);

-- Location: LABCELL_X45_Y11_N4
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( !\B[3]~input_o\ & ( !\B[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X43_Y11_N28
\Shift|Y_LL[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[0]~0_combout\ = ( \Shift|ll2[0]~0_combout\ & ( \Mux12~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Shift|ALT_INV_ll2[0]~0_combout\,
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \Shift|Y_LL[0]~0_combout\);

-- Location: MLABCELL_X49_Y11_N2
\Shift|rl2[12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~3_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (\A[12]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[15]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000111011100111111001111110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|rl2[12]~3_combout\);

-- Location: MLABCELL_X44_Y10_N20
\Shift|rl2[8]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~2_combout\ = ( \A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[8]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[11]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( \A[9]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[8]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[11]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[8]~input_o\))) # (\B[0]~input_o\ & 
-- (((\A[11]~input_o\ & \B[1]~input_o\)))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (\A[8]~input_o\ & ((!\B[1]~input_o\)))) # (\B[0]~input_o\ & (((\A[11]~input_o\ & \B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Shift|rl2[8]~2_combout\);

-- Location: MLABCELL_X46_Y8_N24
\Shift|rl2[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~1_combout\ = ( \A[4]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[7]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[1]~input_o\ & ( (\A[5]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[4]~1_combout\);

-- Location: MLABCELL_X46_Y8_N20
\Shift|rl2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[0]~0_combout\ = ( \A[0]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\A[0]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[3]~input_o\)) ) ) ) # ( \A[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|rl2[0]~0_combout\);

-- Location: LABCELL_X45_Y10_N20
\Y_R[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[0]~0_combout\ = ( \B[3]~input_o\ & ( \Shift|rl2[0]~0_combout\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[8]~2_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|rl2[0]~0_combout\ & ( (!\B[2]~input_o\) # 
-- (\Shift|rl2[4]~1_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|rl2[0]~0_combout\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[8]~2_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|rl2[0]~0_combout\ & ( 
-- (\B[2]~input_o\ & \Shift|rl2[4]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[12]~3_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[8]~2_combout\,
	datad => \Shift|ALT_INV_rl2[4]~1_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[0]~0_combout\,
	combout => \Y_R[0]~0_combout\);

-- Location: IOIBUF_X41_Y0_N1
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X59_Y10_N63
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LABCELL_X43_Y11_N12
\Y_ShiftOrArith[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = ( \A[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Y_R[0]~0_combout\ ) ) ) # ( !\A[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Y_R[0]~0_combout\ ) ) ) # ( \A[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- ((!\B[0]~input_o\))) # (\ShiftFN[0]~input_o\ & (\Shift|Y_LL[0]~0_combout\)) ) ) ) # ( !\A[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( (\B[0]~input_o\ & !\ShiftFN[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000110011000101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_Y_LL[0]~0_combout\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_Y_R[0]~0_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: IOIBUF_X59_Y12_N1
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: MLABCELL_X49_Y11_N20
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \Y_ShiftOrArith[0]~0_combout\ & ( \FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (!\AltB~0_combout\)) # (\FuncClass[0]~input_o\ & ((!\Add|Cout~0_combout\))) ) ) ) # ( !\Y_ShiftOrArith[0]~0_combout\ & ( \FuncClass[1]~input_o\ & 
-- ( (!\FuncClass[0]~input_o\ & (!\AltB~0_combout\)) # (\FuncClass[0]~input_o\ & ((!\Add|Cout~0_combout\))) ) ) ) # ( \Y_ShiftOrArith[0]~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\) # (\Logic|Mux15~0_combout\) ) ) ) # ( 
-- !\Y_ShiftOrArith[0]~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (\Logic|Mux15~0_combout\ & \FuncClass[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111110101010110011001010101011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AltB~0_combout\,
	datab => \Add|ALT_INV_Cout~0_combout\,
	datac => \Logic|ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_Y_ShiftOrArith[0]~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X43_Y8_N32
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\FuncClass[1]~input_o\ & (((\FuncClass[0]~input_o\) # (\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110000011100001111000001110000111100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X43_Y8_N16
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \ShiftFN[1]~input_o\ & ( (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) ) # ( !\ShiftFN[1]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (\FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LABCELL_X43_Y8_N24
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = ( \Add|C[1]~0_combout\ & ( !\B[1]~input_o\ $ (!\AddnSub~input_o\ $ (!\A[1]~input_o\)) ) ) # ( !\Add|C[1]~0_combout\ & ( !\B[1]~input_o\ $ (!\AddnSub~input_o\ $ (\A[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \Add|ALT_INV_C[1]~0_combout\,
	combout => \Add|S\(1));

-- Location: LABCELL_X43_Y8_N26
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \B[1]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[1]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000011111010111101011111101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LABCELL_X45_Y10_N4
\Shift|rl2[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~6_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[8]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[6]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[7]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( !\B[0]~input_o\ 
-- & ( \A[5]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[5]~6_combout\);

-- Location: MLABCELL_X46_Y8_N14
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \A[4]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[1]~input_o\ & ( (\A[3]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X44_Y10_N24
\Shift|rl2[9]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~4_combout\ = ( \B[1]~input_o\ & ( \A[12]~input_o\ & ( (\A[11]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & \A[11]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|rl2[9]~4_combout\);

-- Location: MLABCELL_X46_Y10_N4
\Y_R[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~1_combout\ = ( \B[1]~input_o\ & ( (\A[15]~input_o\ & ((!\B[0]~input_o\) # (\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Y_R[1]~1_combout\);

-- Location: MLABCELL_X49_Y11_N6
\Shift|rl2[13]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~5_combout\ = ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\B[0]~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000011001100111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|rl2[13]~5_combout\);

-- Location: MLABCELL_X46_Y10_N6
\Y_R[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~2_combout\ = ( \Shift|rl2[13]~5_combout\ & ( (!\Shift|rl2[9]~4_combout\ & !\B[2]~input_o\) ) ) # ( !\Shift|rl2[13]~5_combout\ & ( (!\B[2]~input_o\ & (!\Shift|rl2[9]~4_combout\)) # (\B[2]~input_o\ & ((!\Y_R[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[9]~4_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Y_R[1]~1_combout\,
	dataf => \Shift|ALT_INV_rl2[13]~5_combout\,
	combout => \Y_R[1]~2_combout\);

-- Location: LABCELL_X45_Y10_N28
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \Y_R[1]~2_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Mux14~0_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[5]~6_combout\)))) ) ) # ( !\Y_R[1]~2_combout\ & ( ((!\B[2]~input_o\ & ((\Mux14~0_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|rl2[5]~6_combout\))) # (\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111011111010101111101111100000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[5]~6_combout\,
	datad => \ALT_INV_Mux14~0_combout\,
	dataf => \ALT_INV_Y_R[1]~2_combout\,
	combout => \Mux14~1_combout\);

-- Location: MLABCELL_X46_Y8_N30
\Shift|ll2[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[1]~1_combout\ = ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[1]~1_combout\);

-- Location: LABCELL_X45_Y8_N24
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \FuncClass[1]~input_o\ & ( ((\ShiftFN[0]~input_o\ & ((\FuncClass[0]~input_o\) # (\Mux12~0_combout\)))) # (\ShiftFN[1]~input_o\) ) ) # ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (((\Mux12~0_combout\ & 
-- \ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110000001100000111000000110011011111110011001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X43_Y8_N0
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Mux12~3_combout\ & ( \Mux12~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Mux12~1_combout\,
	dataf => \ALT_INV_Mux12~3_combout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X43_Y8_N2
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \ShiftFN[1]~input_o\ & ( (\Mux14~1_combout\ & \Mux13~0_combout\) ) ) # ( !\ShiftFN[1]~input_o\ & ( (\Mux13~0_combout\ & ((!\ShiftFN[0]~input_o\ & (\Mux14~1_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ll2[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \Shift|ALT_INV_ll2[1]~1_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Mux13~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LABCELL_X43_Y8_N28
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( \Mux14~2_combout\ ) # ( !\Mux14~2_combout\ & ( (\Mux12~2_combout\ & ((!\Mux12~1_combout\ & (\Add|S\(1))) # (\Mux12~1_combout\ & ((\Mux14~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_Mux12~2_combout\,
	datac => \Add|ALT_INV_S\(1),
	datad => \ALT_INV_Mux14~3_combout\,
	dataf => \ALT_INV_Mux14~2_combout\,
	combout => \Mux14~4_combout\);

-- Location: MLABCELL_X46_Y8_N18
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \A[4]~input_o\ & ( \A[5]~input_o\ & ( ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\ & 
-- (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((\A[3]~input_o\) # (\B[1]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[2]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[3]~input_o\)))) ) ) ) 
-- # ( !\A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010011000111110001000011011100110100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X46_Y11_N20
\Shift|rl2[6]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~8_combout\ = ( \A[8]~input_o\ & ( \A[9]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[6]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \A[9]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[6]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[8]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[6]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) # 
-- (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[6]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Shift|rl2[6]~8_combout\);

-- Location: MLABCELL_X44_Y10_N10
\Shift|rl2[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~7_combout\ = ( \B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\) # (\A[13]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[11]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[12]~input_o\ & ( (\B[0]~input_o\ & \A[13]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|rl2[10]~7_combout\);

-- Location: MLABCELL_X46_Y10_N0
\Y_R[1]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~8_combout\ = ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[10]~7_combout\)) # (\B[2]~input_o\ & (((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[15]~input_o\)))))) ) ) # ( \B[1]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|rl2[10]~7_combout\)) # (\B[2]~input_o\ & (((\ShiftFN[0]~input_o\ & ((\A[15]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100010001110100010001000100010001000111011101110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[10]~7_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	datag => \ALT_INV_B[0]~input_o\,
	combout => \Y_R[1]~8_combout\);

-- Location: LABCELL_X45_Y10_N30
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Y_R[1]~8_combout\ & ( ((!\B[2]~input_o\ & (\Mux13~1_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[6]~8_combout\)))) # (\B[3]~input_o\) ) ) # ( !\Y_R[1]~8_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Mux13~1_combout\)) # 
-- (\B[2]~input_o\ & ((\Shift|rl2[6]~8_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_Mux13~1_combout\,
	datad => \Shift|ALT_INV_rl2[6]~8_combout\,
	dataf => \ALT_INV_Y_R[1]~8_combout\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X46_Y8_N28
\Shift|ll2[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~2_combout\ = ( \B[1]~input_o\ & ( (\A[0]~input_o\ & !\B[0]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[2]~input_o\)) # (\B[0]~input_o\ & ((\A[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[2]~2_combout\);

-- Location: LABCELL_X43_Y8_N34
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \Shift|ll2[2]~2_combout\ & ( (\Mux13~0_combout\ & (((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (\Mux13~2_combout\))) ) ) # ( !\Shift|ll2[2]~2_combout\ & ( (\Mux13~0_combout\ & (\Mux13~2_combout\ & ((!\ShiftFN[0]~input_o\) # 
-- (\ShiftFN[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110100000010000011110000001000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Mux13~2_combout\,
	dataf => \Shift|ALT_INV_ll2[2]~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X43_Y8_N18
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \B[2]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[2]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[2]~input_o\ & ( (\A[2]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000011111111110000111111111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux13~4_combout\);

-- Location: LABCELL_X43_Y8_N10
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \Add|C[2]~1_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|C[2]~1_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[2]~1_combout\,
	combout => \Add|S\(2));

-- Location: LABCELL_X43_Y8_N30
\Mux13~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = ( \Add|S\(2) & ( ((\Mux12~2_combout\ & ((!\Mux12~1_combout\) # (\Mux13~4_combout\)))) # (\Mux13~3_combout\) ) ) # ( !\Add|S\(2) & ( ((\Mux12~1_combout\ & (\Mux12~2_combout\ & \Mux13~4_combout\))) # (\Mux13~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011111000011110001111100101111001111110010111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_Mux12~2_combout\,
	datac => \ALT_INV_Mux13~3_combout\,
	datad => \ALT_INV_Mux13~4_combout\,
	dataf => \Add|ALT_INV_S\(2),
	combout => \Mux13~5_combout\);

-- Location: MLABCELL_X44_Y10_N14
\Shift|rl2[11]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~9_combout\ = ( \B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[12]~input_o\ & ( (\A[11]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|rl2[11]~9_combout\);

-- Location: LABCELL_X43_Y11_N16
\Y_R[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~3_combout\ = ( \A[15]~input_o\ & ( (!\B[2]~input_o\ & (((\Shift|rl2[11]~9_combout\)))) # (\B[2]~input_o\ & (((\Shift|ll2[0]~0_combout\)) # (\ShiftFN[0]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[11]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[0]~0_combout\,
	datad => \Shift|ALT_INV_rl2[11]~9_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R[1]~3_combout\);

-- Location: MLABCELL_X46_Y9_N2
\Mux12~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = ( \A[4]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( !\A[4]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[6]~input_o\)) ) ) ) # ( \A[4]~input_o\ & ( !\B[1]~input_o\ & ( (\A[3]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010010101011111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Mux12~5_combout\);

-- Location: MLABCELL_X44_Y10_N38
\Shift|rl2[7]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~10_combout\ = ( \A[10]~input_o\ & ( \A[9]~input_o\ & ( ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) 
-- # (\A[7]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\ & \A[8]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (\A[7]~input_o\ & (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((\A[8]~input_o\) # (\B[1]~input_o\)))) ) ) ) 
-- # ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000110111001101001100011111000100111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Shift|rl2[7]~10_combout\);

-- Location: LABCELL_X43_Y11_N6
\Mux12~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = ( \Shift|rl2[7]~10_combout\ & ( (!\B[3]~input_o\ & (((\Mux12~5_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & (\Y_R[1]~3_combout\)) ) ) # ( !\Shift|rl2[7]~10_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\ & 
-- \Mux12~5_combout\)))) # (\B[3]~input_o\ & (\Y_R[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110110001000100011011000100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_Y_R[1]~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Mux12~5_combout\,
	dataf => \Shift|ALT_INV_rl2[7]~10_combout\,
	combout => \Mux12~6_combout\);

-- Location: MLABCELL_X46_Y8_N2
\Shift|ll2[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~3_combout\ = ( \A[0]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[1]~input_o\ & ( (\A[1]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[3]~3_combout\);

-- Location: LABCELL_X43_Y11_N2
\Mux12~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = ( \Shift|ll2[3]~3_combout\ & ( (\Mux12~3_combout\ & (((!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)) # (\Mux12~6_combout\))) ) ) # ( !\Shift|ll2[3]~3_combout\ & ( (\Mux12~6_combout\ & (\Mux12~3_combout\ & ((!\ShiftFN[0]~input_o\) # 
-- (\ShiftFN[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001101000000000000110100000000001011110000000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux12~6_combout\,
	datad => \ALT_INV_Mux12~3_combout\,
	dataf => \Shift|ALT_INV_ll2[3]~3_combout\,
	combout => \Mux12~7_combout\);

-- Location: LABCELL_X43_Y8_N14
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!\B[3]~input_o\ & (\A[3]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[3]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[3]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011101100001001101110110000100110111011000010011011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LABCELL_X43_Y8_N12
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = !\A[3]~input_o\ $ (!\B[3]~input_o\ $ (!\Add|C[3]~2_combout\ $ (!\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Add|ALT_INV_C[3]~2_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(3));

-- Location: LABCELL_X43_Y8_N36
\Mux12~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = ( \Add|S\(3) & ( (!\Mux12~1_combout\ & (\Mux12~2_combout\)) # (\Mux12~1_combout\ & (((\Mux12~2_combout\ & \Mux12~4_combout\)) # (\Mux12~7_combout\))) ) ) # ( !\Add|S\(3) & ( (\Mux12~1_combout\ & (((\Mux12~2_combout\ & 
-- \Mux12~4_combout\)) # (\Mux12~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010101000001010001010100100111001101110010011100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_Mux12~2_combout\,
	datac => \ALT_INV_Mux12~7_combout\,
	datad => \ALT_INV_Mux12~4_combout\,
	dataf => \Add|ALT_INV_S\(3),
	combout => \Mux12~8_combout\);

-- Location: LABCELL_X45_Y8_N26
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!\Mux12~0_combout\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X45_Y10_N32
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\B[3]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X45_Y10_N24
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = ( !\FuncClass[1]~input_o\ & ( ((!\Mux10~0_combout\) # (\FuncClass[0]~input_o\)) # (\Mux10~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux10~1_combout\,
	datac => \ALT_INV_Mux10~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LABCELL_X45_Y10_N2
\Mux10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = ( !\FuncClass[1]~input_o\ & ( ((\Mux10~0_combout\ & !\Mux10~1_combout\)) # (\FuncClass[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~0_combout\,
	datab => \ALT_INV_Mux10~1_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LABCELL_X45_Y11_N14
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\ShiftFN[0]~input_o\ & !\Mux12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Mux12~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X45_Y11_N16
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \B[3]~input_o\ & ( \ShiftFN[0]~input_o\ ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X46_Y8_N4
\Shift|ll2[4]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~5_combout\ = ( \A[4]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\A[4]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & 
-- (\A[1]~input_o\)) ) ) ) # ( \A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[1]~input_o\ & ( (\A[3]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[4]~5_combout\);

-- Location: LABCELL_X45_Y11_N22
\Add|S[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(4) = ( \AddnSub~input_o\ & ( \B[4]~input_o\ & ( !\Add|C[4]~3_combout\ $ (!\A[4]~input_o\) ) ) ) # ( !\AddnSub~input_o\ & ( \B[4]~input_o\ & ( !\Add|C[4]~3_combout\ $ (\A[4]~input_o\) ) ) ) # ( \AddnSub~input_o\ & ( !\B[4]~input_o\ & ( 
-- !\Add|C[4]~3_combout\ $ (\A[4]~input_o\) ) ) ) # ( !\AddnSub~input_o\ & ( !\B[4]~input_o\ & ( !\Add|C[4]~3_combout\ $ (!\A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110100110011001100110011001100110010110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[4]~3_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Add|S\(4));

-- Location: LABCELL_X45_Y11_N28
\Shift|ll2[0]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~4_combout\ = ( \A[0]~input_o\ & ( \Shift|ll2[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ll2[0]~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ll2[0]~4_combout\);

-- Location: LABCELL_X45_Y11_N26
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Shift|ll2[0]~4_combout\ & ( (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & ((\Add|S\(4)))) # (\Mux10~3_combout\ & (\Shift|ll2[4]~5_combout\)))) # (\Mux10~2_combout\ & (!\Mux10~3_combout\)) ) ) # ( !\Shift|ll2[0]~4_combout\ & ( 
-- (!\Mux10~2_combout\ & ((!\Mux10~3_combout\ & ((\Add|S\(4)))) # (\Mux10~3_combout\ & (\Shift|ll2[4]~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_Mux10~3_combout\,
	datac => \Shift|ALT_INV_ll2[4]~5_combout\,
	datad => \Add|ALT_INV_S\(4),
	dataf => \Shift|ALT_INV_ll2[0]~4_combout\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X46_Y10_N28
\Y_R[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~4_combout\ = ( \A[15]~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R[1]~4_combout\);

-- Location: LABCELL_X45_Y10_N38
\Y_R[1]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~5_combout\ = (!\B[2]~input_o\ & ((\Shift|rl2[12]~3_combout\))) # (\B[2]~input_o\ & (\Y_R[1]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[12]~3_combout\,
	combout => \Y_R[1]~5_combout\);

-- Location: LABCELL_X45_Y10_N0
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( \Y_R[1]~5_combout\ & ( (!\Mux10~0_combout\ & (((\Mux11~0_combout\)) # (\Mux10~1_combout\))) # (\Mux10~0_combout\ & (((\Shift|rl2[8]~2_combout\)))) ) ) # ( !\Y_R[1]~5_combout\ & ( (!\Mux10~0_combout\ & (!\Mux10~1_combout\ & 
-- ((\Mux11~0_combout\)))) # (\Mux10~0_combout\ & (((\Shift|rl2[8]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~0_combout\,
	datab => \ALT_INV_Mux10~1_combout\,
	datac => \Shift|ALT_INV_rl2[8]~2_combout\,
	datad => \ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_Y_R[1]~5_combout\,
	combout => \Mux11~1_combout\);

-- Location: LABCELL_X45_Y10_N26
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \B[4]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[4]~input_o\)) ) ) # ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101011111010101011111111101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LABCELL_X45_Y10_N8
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \Mux11~2_combout\ & ( (!\Mux10~4_combout\ & (\Mux10~5_combout\ & ((\Shift|rl2[4]~1_combout\)))) # (\Mux10~4_combout\ & (((\Mux11~1_combout\)) # (\Mux10~5_combout\))) ) ) # ( !\Mux11~2_combout\ & ( (!\Mux10~4_combout\ & 
-- (\Mux10~5_combout\ & ((\Shift|rl2[4]~1_combout\)))) # (\Mux10~4_combout\ & (!\Mux10~5_combout\ & (\Mux11~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~4_combout\,
	datab => \ALT_INV_Mux10~5_combout\,
	datac => \ALT_INV_Mux11~1_combout\,
	datad => \Shift|ALT_INV_rl2[4]~1_combout\,
	dataf => \ALT_INV_Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LABCELL_X45_Y10_N16
\Mux10~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = ( \B[5]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[5]~input_o\)) ) ) # ( !\B[5]~input_o\ & ( (\A[5]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Mux10~8_combout\);

-- Location: MLABCELL_X46_Y10_N34
\Y_R[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~6_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[15]~input_o\ & (!\B[2]~input_o\ & (\Shift|rl2[13]~5_combout\))) # (\A[15]~input_o\ & (((!\B[2]~input_o\ & \Shift|rl2[13]~5_combout\)) # (\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & 
-- ( \B[1]~input_o\ & ( (!\A[15]~input_o\ & (!\B[2]~input_o\ & (\Shift|rl2[13]~5_combout\))) # (\A[15]~input_o\ & ((!\B[2]~input_o\) # ((\ShiftFN[0]~input_o\)))) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & 
-- (((\Shift|rl2[13]~5_combout\)))) # (\B[2]~input_o\ & (\A[15]~input_o\ & ((\ShiftFN[0]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (((\Shift|rl2[13]~5_combout\)))) # (\B[2]~input_o\ & (\A[15]~input_o\ & 
-- ((\ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011101000011000001110101001100010111010000110001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_rl2[13]~5_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Y_R[1]~6_combout\);

-- Location: MLABCELL_X46_Y11_N14
\Add|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(5) = ( \Add|C[5]~4_combout\ & ( !\AddnSub~input_o\ $ (!\A[5]~input_o\ $ (!\B[5]~input_o\)) ) ) # ( !\Add|C[5]~4_combout\ & ( !\AddnSub~input_o\ $ (!\A[5]~input_o\ $ (\B[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[5]~input_o\,
	dataf => \Add|ALT_INV_C[5]~4_combout\,
	combout => \Add|S\(5));

-- Location: MLABCELL_X46_Y8_N8
\Shift|ll2[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~6_combout\ = ( \A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # 
-- (\A[3]~input_o\)))) # (\B[0]~input_o\ & (\A[2]~input_o\ & ((\B[1]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[0]~input_o\ & (((\A[3]~input_o\ & \B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[2]~input_o\))) ) ) ) # 
-- ( !\A[4]~input_o\ & ( !\A[5]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101001100110001110111001100000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Shift|ll2[5]~6_combout\);

-- Location: LABCELL_X45_Y11_N24
\Mux10~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = ( \Shift|ll2[5]~6_combout\ & ( (!\Mux10~2_combout\ & (((\Add|S\(5))) # (\Mux10~3_combout\))) # (\Mux10~2_combout\ & (!\Mux10~3_combout\ & ((\Shift|ll2[1]~1_combout\)))) ) ) # ( !\Shift|ll2[5]~6_combout\ & ( (!\Mux10~3_combout\ & 
-- ((!\Mux10~2_combout\ & (\Add|S\(5))) # (\Mux10~2_combout\ & ((\Shift|ll2[1]~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~2_combout\,
	datab => \ALT_INV_Mux10~3_combout\,
	datac => \Add|ALT_INV_S\(5),
	datad => \Shift|ALT_INV_ll2[1]~1_combout\,
	dataf => \Shift|ALT_INV_ll2[5]~6_combout\,
	combout => \Mux10~6_combout\);

-- Location: LABCELL_X45_Y10_N12
\Mux10~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = ( \Mux10~6_combout\ & ( (!\Mux10~0_combout\ & ((!\Mux10~1_combout\) # ((\Y_R[1]~6_combout\)))) # (\Mux10~0_combout\ & (((\Shift|rl2[9]~4_combout\)))) ) ) # ( !\Mux10~6_combout\ & ( (!\Mux10~0_combout\ & (\Mux10~1_combout\ & 
-- (\Y_R[1]~6_combout\))) # (\Mux10~0_combout\ & (((\Shift|rl2[9]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~0_combout\,
	datab => \ALT_INV_Mux10~1_combout\,
	datac => \ALT_INV_Y_R[1]~6_combout\,
	datad => \Shift|ALT_INV_rl2[9]~4_combout\,
	dataf => \ALT_INV_Mux10~6_combout\,
	combout => \Mux10~7_combout\);

-- Location: LABCELL_X45_Y10_N10
\Mux10~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = ( \Shift|rl2[5]~6_combout\ & ( (!\Mux10~4_combout\ & (\Mux10~5_combout\)) # (\Mux10~4_combout\ & ((!\Mux10~5_combout\ & ((\Mux10~7_combout\))) # (\Mux10~5_combout\ & (\Mux10~8_combout\)))) ) ) # ( !\Shift|rl2[5]~6_combout\ & ( 
-- (\Mux10~4_combout\ & ((!\Mux10~5_combout\ & ((\Mux10~7_combout\))) # (\Mux10~5_combout\ & (\Mux10~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010100100011011001110010001101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~4_combout\,
	datab => \ALT_INV_Mux10~5_combout\,
	datac => \ALT_INV_Mux10~8_combout\,
	datad => \ALT_INV_Mux10~7_combout\,
	dataf => \Shift|ALT_INV_rl2[5]~6_combout\,
	combout => \Mux10~9_combout\);

-- Location: LABCELL_X45_Y10_N18
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \B[6]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[6]~input_o\)) ) ) # ( !\B[6]~input_o\ & ( (\A[6]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X46_Y8_N34
\Shift|ll2[6]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~7_combout\ = ( \A[4]~input_o\ & ( \B[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[1]~input_o\ & ( (\A[3]~input_o\ & \B[0]~input_o\) ) ) ) # ( \A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[6]~7_combout\);

-- Location: MLABCELL_X46_Y11_N6
\Add|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(6) = ( \B[6]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[6]~input_o\ $ (!\Add|C[6]~5_combout\)) ) ) # ( !\B[6]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[6]~input_o\ $ (\Add|C[6]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \Add|ALT_INV_C[6]~5_combout\,
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Add|S\(6));

-- Location: LABCELL_X45_Y11_N30
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \Add|S\(6) & ( (!\Mux10~3_combout\ & (((!\Mux10~2_combout\) # (\Shift|ll2[2]~2_combout\)))) # (\Mux10~3_combout\ & (\Shift|ll2[6]~7_combout\ & (!\Mux10~2_combout\))) ) ) # ( !\Add|S\(6) & ( (!\Mux10~3_combout\ & (((\Mux10~2_combout\ & 
-- \Shift|ll2[2]~2_combout\)))) # (\Mux10~3_combout\ & (\Shift|ll2[6]~7_combout\ & (!\Mux10~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100000100000001110011010000110111001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[6]~7_combout\,
	datab => \ALT_INV_Mux10~3_combout\,
	datac => \ALT_INV_Mux10~2_combout\,
	datad => \Shift|ALT_INV_ll2[2]~2_combout\,
	dataf => \Add|ALT_INV_S\(6),
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X46_Y10_N36
\Y_R[1]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~7_combout\ = ( \A[14]~input_o\ & ( \B[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[15]~input_o\) ) ) ) # ( !\A[14]~input_o\ & ( \B[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & \A[15]~input_o\) ) ) ) # ( \A[14]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\A[15]~input_o\ & (!\B[0]~input_o\ & ((!\B[2]~input_o\)))) # (\A[15]~input_o\ & (((!\B[2]~input_o\) # (\ShiftFN[0]~input_o\)))) ) ) ) # ( !\A[14]~input_o\ & ( !\B[1]~input_o\ & ( (\A[15]~input_o\ & ((!\B[2]~input_o\ & (\B[0]~input_o\)) # (\B[2]~input_o\ 
-- & ((\ShiftFN[0]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011101011110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Y_R[1]~7_combout\);

-- Location: LABCELL_X45_Y10_N14
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \Y_R[1]~7_combout\ & ( (!\Mux10~0_combout\ & (((\Mux9~0_combout\)) # (\Mux10~1_combout\))) # (\Mux10~0_combout\ & (((\Shift|rl2[10]~7_combout\)))) ) ) # ( !\Y_R[1]~7_combout\ & ( (!\Mux10~0_combout\ & (!\Mux10~1_combout\ & 
-- ((\Mux9~0_combout\)))) # (\Mux10~0_combout\ & (((\Shift|rl2[10]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~0_combout\,
	datab => \ALT_INV_Mux10~1_combout\,
	datac => \Shift|ALT_INV_rl2[10]~7_combout\,
	datad => \ALT_INV_Mux9~0_combout\,
	dataf => \ALT_INV_Y_R[1]~7_combout\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X45_Y10_N34
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \Mux10~4_combout\ & ( (!\Mux10~5_combout\ & ((\Mux9~1_combout\))) # (\Mux10~5_combout\ & (\Mux9~2_combout\)) ) ) # ( !\Mux10~4_combout\ & ( (\Mux10~5_combout\ & \Shift|rl2[6]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~2_combout\,
	datab => \ALT_INV_Mux9~1_combout\,
	datac => \ALT_INV_Mux10~5_combout\,
	datad => \Shift|ALT_INV_rl2[6]~8_combout\,
	dataf => \ALT_INV_Mux10~4_combout\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X46_Y11_N24
\Logic|Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux8~0_combout\ = ( \B[7]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[7]~input_o\)) ) ) # ( !\B[7]~input_o\ & ( (\A[7]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Logic|Mux8~0_combout\);

-- Location: MLABCELL_X46_Y8_N38
\Shift|ll2[7]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~8_combout\ = ( \A[4]~input_o\ & ( \B[1]~input_o\ & ( (\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[1]~input_o\ & ( (\A[5]~input_o\ & !\B[0]~input_o\) ) ) ) # ( \A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( !\A[4]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[7]~8_combout\);

-- Location: LABCELL_X43_Y11_N18
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Shift|ll2[3]~3_combout\ & ( (\ShiftFN[0]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ll2[7]~8_combout\) # (\B[2]~input_o\)))) ) ) # ( !\Shift|ll2[3]~3_combout\ & ( (\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & (\Shift|ll2[7]~8_combout\ & 
-- !\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[7]~8_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[3]~3_combout\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X46_Y11_N30
\Add|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(7) = ( \B[7]~input_o\ & ( !\Add|C[7]~6_combout\ $ (!\AddnSub~input_o\ $ (!\A[7]~input_o\)) ) ) # ( !\B[7]~input_o\ & ( !\Add|C[7]~6_combout\ $ (!\AddnSub~input_o\ $ (\A[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[7]~6_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|S\(7));

-- Location: LABCELL_X43_Y11_N20
\Mux8~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = ( !\B[3]~input_o\ & ( ((!\B[2]~input_o\ & (((\Shift|rl2[7]~10_combout\)))) # (\B[2]~input_o\ & (\Shift|rl2[11]~9_combout\))) ) ) # ( \B[3]~input_o\ & ( (\A[15]~input_o\ & (((\Shift|ll2[0]~0_combout\ & (!\B[2]~input_o\))) # 
-- (\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000001000000111111001111110011110000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[0]~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[7]~10_combout\,
	datag => \Shift|ALT_INV_rl2[11]~9_combout\,
	combout => \Mux8~3_combout\);

-- Location: LABCELL_X43_Y11_N0
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \Mux8~3_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\Mux8~0_combout\ & ((!\Add|S\(7)) # (\ShiftFN[0]~input_o\)))) ) ) # ( !\Mux8~3_combout\ & ( ((!\Mux8~0_combout\ & ((!\Add|S\(7)) # (\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101110101111101010111010110100000001000001010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_Mux8~0_combout\,
	datad => \Add|ALT_INV_S\(7),
	dataf => \ALT_INV_Mux8~3_combout\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X46_Y11_N26
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & ((!\Mux8~1_combout\))) # (\FuncClass[0]~input_o\ & (\Logic|Mux8~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010101111100000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_Mux8~1_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LABCELL_X45_Y10_N36
\Y_R_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R_Ext[8]~0_combout\ = ( \Shift|rl2[8]~2_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|rl2[12]~3_combout\)))) # (\B[3]~input_o\ & (\Y_R[1]~4_combout\)) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\ & 
-- \Shift|rl2[12]~3_combout\)))) # (\B[3]~input_o\ & (\Y_R[1]~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000001010011010111000101111101011100010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_rl2[12]~3_combout\,
	dataf => \Shift|ALT_INV_rl2[8]~2_combout\,
	combout => \Y_R_Ext[8]~0_combout\);

-- Location: MLABCELL_X46_Y11_N8
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = !\B[8]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[8]~7_combout\ $ (!\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[8]~7_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	combout => \Add|S\(8));

-- Location: MLABCELL_X46_Y11_N34
\Shift|ll2[8]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~9_combout\ = ( \A[8]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & (((\A[7]~input_o\ & 
-- \B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[5]~input_o\))) ) ) ) # ( \A[8]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[7]~input_o\)))) # (\B[1]~input_o\ & (\A[5]~input_o\ & ((\B[0]~input_o\)))) ) ) ) 
-- # ( !\A[8]~input_o\ & ( !\A[6]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011101010100001101101010101000110111111111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ll2[8]~9_combout\);

-- Location: LABCELL_X45_Y11_N0
\Y_LorS_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS_Ext[8]~0_combout\ = ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((((\Add|S\(8)))))) # (\ShiftFN[0]~input_o\ & ((!\B[2]~input_o\ & (((\Shift|ll2[8]~9_combout\)))) # (\B[2]~input_o\ & (\Shift|ll2[4]~5_combout\)))) ) ) # ( \B[3]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & ((((\Add|S\(8)))))) # (\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & (\Shift|ll2[0]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000111001101000000101100111000100011111011110000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ll2[0]~4_combout\,
	datad => \Add|ALT_INV_S\(8),
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[8]~9_combout\,
	datag => \Shift|ALT_INV_ll2[4]~5_combout\,
	combout => \Y_LorS_Ext[8]~0_combout\);

-- Location: LABCELL_X45_Y8_N14
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_R_Ext[8]~0_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y_LorS_Ext[8]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datad => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X45_Y8_N10
\Logic|Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux7~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[8]~input_o\ & \B[8]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[8]~input_o\)) # 
-- (\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux7~0_combout\);

-- Location: LABCELL_X45_Y8_N8
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (\Mux7~0_combout\)) # (\FuncClass[0]~input_o\ & ((\Logic|Mux7~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux7~0_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \Logic|ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X41_Y0_N94
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LABCELL_X45_Y8_N0
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( !\ShiftFN[1]~input_o\ & ( (\ExtWord~input_o\ & !\FuncClass[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X44_Y11_N24
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Y_LorS_Ext[8]~0_combout\ & ( \Mux6~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X45_Y8_N22
\Mux6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Y_R_Ext[8]~0_combout\ & (\ExtWord~input_o\ & !\FuncClass[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: MLABCELL_X46_Y10_N30
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \B[3]~input_o\ ) ) # ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X46_Y11_N36
\Shift|ll2[9]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~10_combout\ = ( \A[8]~input_o\ & ( \A[9]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\)))) ) ) ) # ( !\A[8]~input_o\ & ( \A[9]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))))) ) ) ) # ( \A[8]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))))) ) ) ) # ( !\A[8]~input_o\ & ( !\A[9]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[6]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Shift|ll2[9]~10_combout\);

-- Location: LABCELL_X45_Y11_N10
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[3]~input_o\ & ( (\Shift|ll2[1]~1_combout\ & !\B[2]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[3]~input_o\ & ( \Shift|ll2[1]~1_combout\ ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & (\Shift|ll2[9]~10_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[5]~6_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[9]~10_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[5]~6_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[9]~10_combout\,
	datab => \Shift|ALT_INV_ll2[5]~6_combout\,
	datac => \Shift|ALT_INV_ll2[1]~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: MLABCELL_X46_Y11_N10
\Add|S[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(9) = ( \A[9]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[9]~input_o\ $ (!\Add|C[9]~8_combout\)) ) ) # ( !\A[9]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[9]~input_o\ $ (\Add|C[9]~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \Add|ALT_INV_C[9]~8_combout\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Add|S\(9));

-- Location: MLABCELL_X46_Y10_N22
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \Mux6~2_combout\ & ( \Add|S\(9) & ( (!\ShiftFN[1]~input_o\) # ((!\Mux6~3_combout\ & ((!\Y_R[1]~2_combout\))) # (\Mux6~3_combout\ & (\Y_R[1]~4_combout\))) ) ) ) # ( !\Mux6~2_combout\ & ( \Add|S\(9) & ( (!\ShiftFN[1]~input_o\ & 
-- (\Mux6~3_combout\)) # (\ShiftFN[1]~input_o\ & ((!\Mux6~3_combout\ & ((!\Y_R[1]~2_combout\))) # (\Mux6~3_combout\ & (\Y_R[1]~4_combout\)))) ) ) ) # ( \Mux6~2_combout\ & ( !\Add|S\(9) & ( (!\ShiftFN[1]~input_o\ & (!\Mux6~3_combout\)) # (\ShiftFN[1]~input_o\ 
-- & ((!\Mux6~3_combout\ & ((!\Y_R[1]~2_combout\))) # (\Mux6~3_combout\ & (\Y_R[1]~4_combout\)))) ) ) ) # ( !\Mux6~2_combout\ & ( !\Add|S\(9) & ( (\ShiftFN[1]~input_o\ & ((!\Mux6~3_combout\ & ((!\Y_R[1]~2_combout\))) # (\Mux6~3_combout\ & 
-- (\Y_R[1]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001110011011000100101100111001000111110111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \ALT_INV_Y_R[1]~4_combout\,
	datad => \ALT_INV_Y_R[1]~2_combout\,
	datae => \ALT_INV_Mux6~2_combout\,
	dataf => \Add|ALT_INV_S\(9),
	combout => \Mux6~4_combout\);

-- Location: LABCELL_X45_Y8_N38
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[9]~input_o\ & \B[9]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[9]~input_o\)) # 
-- (\B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X45_Y8_N4
\Mux6~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = ( \Mux6~1_combout\ & ( (!\FuncClass[0]~input_o\ & (!\Mux6~5_combout\ & ((!\Mux6~4_combout\) # (\ExtWord~input_o\)))) ) ) # ( !\Mux6~1_combout\ & ( (!\Mux6~5_combout\ & (((!\Mux6~4_combout\) # (\ExtWord~input_o\)) # 
-- (\FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100110011000100110010001000000010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Mux6~5_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_Mux6~4_combout\,
	dataf => \ALT_INV_Mux6~1_combout\,
	combout => \Mux6~6_combout\);

-- Location: MLABCELL_X44_Y11_N30
\Mux6~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = ( \Mux6~0_combout\ & ( (!\FuncClass[1]~input_o\ & \Mux1~0_combout\) ) ) # ( !\Mux6~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux6~6_combout\) # (\Mux1~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux6~6_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux6~7_combout\);

-- Location: MLABCELL_X44_Y10_N0
\Shift|ll2[10]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~11_combout\ = ( \A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\A[8]~input_o\ 
-- & \B[1]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[7]~input_o\))) ) ) ) # ( \A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[8]~input_o\)))) # (\B[0]~input_o\ & (\A[7]~input_o\ & ((\B[1]~input_o\)))) ) 
-- ) ) # ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101110011000001110100110011000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Shift|ll2[10]~11_combout\);

-- Location: MLABCELL_X46_Y10_N24
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Shift|ll2[2]~2_combout\ & ( \Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ll2[6]~7_combout\))) # (\B[3]~input_o\ & (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\Shift|ll2[2]~2_combout\ & ( 
-- \Shift|ll2[10]~11_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ll2[6]~7_combout\))) ) ) ) # ( \Shift|ll2[2]~2_combout\ & ( !\Shift|ll2[10]~11_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & ((\Shift|ll2[6]~7_combout\)))) # 
-- (\B[3]~input_o\ & ((!\B[2]~input_o\) # ((!\ShiftFN[0]~input_o\)))) ) ) ) # ( !\Shift|ll2[2]~2_combout\ & ( !\Shift|ll2[10]~11_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & \Shift|ll2[6]~7_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010010101000111011010001000101010101101110011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ll2[6]~7_combout\,
	datae => \Shift|ALT_INV_ll2[2]~2_combout\,
	dataf => \Shift|ALT_INV_ll2[10]~11_combout\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X45_Y8_N30
\Add|S[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(10) = ( \AddnSub~input_o\ & ( !\B[10]~input_o\ $ (!\Add|C[10]~9_combout\ $ (!\A[10]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\B[10]~input_o\ $ (!\Add|C[10]~9_combout\ $ (\A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[10]~input_o\,
	datac => \Add|ALT_INV_C[10]~9_combout\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(10));

-- Location: MLABCELL_X46_Y10_N8
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Y_R[1]~8_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux6~3_combout\) # (\Y_R[1]~4_combout\) ) ) ) # ( !\Y_R[1]~8_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Y_R[1]~4_combout\ & \Mux6~3_combout\) ) ) ) # ( \Y_R[1]~8_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\Mux6~3_combout\ & (\Mux5~1_combout\)) # (\Mux6~3_combout\ & ((\Add|S\(10)))) ) ) ) # ( !\Y_R[1]~8_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux6~3_combout\ & (\Mux5~1_combout\)) # (\Mux6~3_combout\ & ((\Add|S\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux5~1_combout\,
	datab => \ALT_INV_Y_R[1]~4_combout\,
	datac => \Add|ALT_INV_S\(10),
	datad => \ALT_INV_Mux6~3_combout\,
	datae => \ALT_INV_Y_R[1]~8_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X45_Y8_N20
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \A[10]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[10]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[10]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\B[10]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001011010111101010101101011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X45_Y8_N6
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Mux5~0_combout\ & ( (!\FuncClass[0]~input_o\ & (!\Mux6~5_combout\ & ((!\Mux5~2_combout\) # (\ExtWord~input_o\)))) ) ) # ( !\Mux5~0_combout\ & ( (!\Mux6~5_combout\ & (((!\Mux5~2_combout\) # (\ExtWord~input_o\)) # 
-- (\FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011001100110001001100110010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Mux6~5_combout\,
	datac => \ALT_INV_Mux5~2_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Mux5~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X45_Y8_N36
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( !\FuncClass[1]~input_o\ & ( ((!\Mux5~3_combout\ & !\Mux6~0_combout\)) # (\Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100001111110011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux5~3_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: MLABCELL_X44_Y11_N34
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\ExtWord~input_o\ & !\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X44_Y11_N2
\Add|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(11) = ( \AddnSub~input_o\ & ( !\Add|C[11]~10_combout\ $ (!\A[11]~input_o\ $ (!\B[11]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[11]~10_combout\ $ (!\A[11]~input_o\ $ (\B[11]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[11]~10_combout\,
	datab => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(11));

-- Location: MLABCELL_X44_Y10_N4
\Shift|ll2[11]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~12_combout\ = ( \A[10]~input_o\ & ( \A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[11]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( \A[9]~input_o\ & ( 
-- (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[11]~input_o\)))) # (\B[0]~input_o\ & (\A[8]~input_o\ & ((\B[1]~input_o\)))) ) ) ) # ( \A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\A[11]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & 
-- (((!\B[1]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\A[9]~input_o\ & ( (!\B[0]~input_o\ & (((\A[11]~input_o\ & !\B[1]~input_o\)))) # (\B[0]~input_o\ & (\A[8]~input_o\ & ((\B[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000010001001111110001000100001100110111010011111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Shift|ll2[11]~12_combout\);

-- Location: LABCELL_X43_Y11_N26
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[11]~12_combout\ & ( (\Shift|ll2[3]~3_combout\ & ((!\B[2]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[11]~12_combout\ & ( (!\B[2]~input_o\) # (\Shift|ll2[7]~8_combout\) ) 
-- ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[11]~12_combout\ & ( (\Shift|ll2[3]~3_combout\ & ((!\B[2]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[11]~12_combout\ & ( (\B[2]~input_o\ & \Shift|ll2[7]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010101010100010011001111110011110101010101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[3]~3_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[7]~8_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[11]~12_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X43_Y11_N8
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Mux4~0_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux6~3_combout\ & (\Y_R[1]~3_combout\)) # (\Mux6~3_combout\ & ((\Y_R[1]~4_combout\))) ) ) ) # ( !\Mux4~0_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux6~3_combout\ & (\Y_R[1]~3_combout\)) 
-- # (\Mux6~3_combout\ & ((\Y_R[1]~4_combout\))) ) ) ) # ( \Mux4~0_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux6~3_combout\) # (\Add|S\(11)) ) ) ) # ( !\Mux4~0_combout\ & ( !\ShiftFN[1]~input_o\ & ( (\Mux6~3_combout\ & \Add|S\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111100100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~3_combout\,
	datab => \ALT_INV_Y_R[1]~3_combout\,
	datac => \Add|ALT_INV_S\(11),
	datad => \ALT_INV_Y_R[1]~4_combout\,
	datae => \ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: MLABCELL_X44_Y11_N14
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \B[11]~input_o\ & ( \A[11]~input_o\ & ( (!\Mux6~5_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)))) ) ) ) # ( !\B[11]~input_o\ & ( \A[11]~input_o\ & ( (!\Mux6~5_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\)))) ) ) ) # ( \B[11]~input_o\ & ( !\A[11]~input_o\ & ( (!\Mux6~5_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[0]~input_o\ & \LogicFN[1]~input_o\)))) ) ) ) # ( 
-- !\B[11]~input_o\ & ( !\A[11]~input_o\ & ( !\Mux6~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010100010001000101010101000100010101000101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~5_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: MLABCELL_X44_Y11_N16
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \Mux4~1_combout\ & ( \Mux4~3_combout\ & ( (!\FuncClass[1]~input_o\ & (((\Mux0~0_combout\ & !\Mux6~0_combout\)) # (\Mux1~0_combout\))) ) ) ) # ( !\Mux4~1_combout\ & ( \Mux4~3_combout\ & ( (\Mux1~0_combout\ & !\FuncClass[1]~input_o\) ) 
-- ) ) # ( \Mux4~1_combout\ & ( !\Mux4~3_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux6~0_combout\) # (\Mux1~0_combout\))) ) ) ) # ( !\Mux4~1_combout\ & ( !\Mux4~3_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux6~0_combout\) # (\Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000001010000010100000111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_Mux4~1_combout\,
	dataf => \ALT_INV_Mux4~3_combout\,
	combout => \Mux4~2_combout\);

-- Location: MLABCELL_X44_Y11_N32
\Add|S[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(12) = ( \A[12]~input_o\ & ( !\B[12]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|C[12]~11_combout\)) ) ) # ( !\A[12]~input_o\ & ( !\B[12]~input_o\ $ (!\AddnSub~input_o\ $ (\Add|C[12]~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[12]~11_combout\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Add|S\(12));

-- Location: MLABCELL_X44_Y10_N30
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\) # (\A[11]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[12]~input_o\ & ( (\B[0]~input_o\ & \A[11]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010001110100011111001100111111110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X45_Y11_N34
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Shift|ll2[4]~5_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Shift|ll2[8]~9_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[0]~4_combout\))) ) ) ) # ( !\Shift|ll2[4]~5_combout\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- (\Shift|ll2[8]~9_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[0]~4_combout\))) ) ) ) # ( \Shift|ll2[4]~5_combout\ & ( !\B[2]~input_o\ & ( (\B[3]~input_o\) # (\Mux3~0_combout\) ) ) ) # ( !\Shift|ll2[4]~5_combout\ & ( !\B[2]~input_o\ & ( (\Mux3~0_combout\ & 
-- !\B[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux3~0_combout\,
	datab => \Shift|ALT_INV_ll2[8]~9_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[0]~4_combout\,
	datae => \Shift|ALT_INV_ll2[4]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X44_Y11_N22
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_R[1]~5_combout\ & ( (!\Mux6~3_combout\) # (\Y_R[1]~4_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y_R[1]~5_combout\ & ( (!\Mux6~3_combout\ & ((\Mux3~1_combout\))) # (\Mux6~3_combout\ & (\Add|S\(12))) ) ) 
-- ) # ( \ShiftFN[1]~input_o\ & ( !\Y_R[1]~5_combout\ & ( (\Mux6~3_combout\ & \Y_R[1]~4_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Y_R[1]~5_combout\ & ( (!\Mux6~3_combout\ & ((\Mux3~1_combout\))) # (\Mux6~3_combout\ & (\Add|S\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000001010000010100010001101110111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~3_combout\,
	datab => \Add|ALT_INV_S\(12),
	datac => \ALT_INV_Y_R[1]~4_combout\,
	datad => \ALT_INV_Mux3~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_R[1]~5_combout\,
	combout => \Mux3~2_combout\);

-- Location: MLABCELL_X44_Y11_N38
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \FuncClass[0]~input_o\ & ( \B[12]~input_o\ & ( (\LogicFN[0]~input_o\ & (!\Mux6~5_combout\ & (!\LogicFN[1]~input_o\ $ (!\A[12]~input_o\)))) ) ) ) # ( !\FuncClass[0]~input_o\ & ( \B[12]~input_o\ & ( !\Mux6~5_combout\ ) ) ) # ( 
-- \FuncClass[0]~input_o\ & ( !\B[12]~input_o\ & ( (!\Mux6~5_combout\ & ((!\A[12]~input_o\) # (!\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\)))) ) ) ) # ( !\FuncClass[0]~input_o\ & ( !\B[12]~input_o\ & ( !\Mux6~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111110010000000011111111000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_Mux6~5_combout\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: MLABCELL_X44_Y11_N18
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \Mux3~2_combout\ & ( \Mux3~4_combout\ & ( (!\FuncClass[1]~input_o\ & (((\Mux0~0_combout\ & !\Mux6~0_combout\)) # (\Mux1~0_combout\))) ) ) ) # ( !\Mux3~2_combout\ & ( \Mux3~4_combout\ & ( (\Mux1~0_combout\ & !\FuncClass[1]~input_o\) ) 
-- ) ) # ( \Mux3~2_combout\ & ( !\Mux3~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux6~0_combout\) # (\Mux1~0_combout\))) ) ) ) # ( !\Mux3~2_combout\ & ( !\Mux3~4_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\Mux6~0_combout\) # (\Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100000000111101010000000001010101000000000111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	datae => \ALT_INV_Mux3~2_combout\,
	dataf => \ALT_INV_Mux3~4_combout\,
	combout => \Mux3~3_combout\);

-- Location: MLABCELL_X44_Y11_N12
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \B[13]~input_o\ & ( \A[13]~input_o\ & ( (!\Mux6~5_combout\ & ((!\FuncClass[0]~input_o\) # ((!\LogicFN[1]~input_o\ & \LogicFN[0]~input_o\)))) ) ) ) # ( !\B[13]~input_o\ & ( \A[13]~input_o\ & ( (!\Mux6~5_combout\ & 
-- ((!\FuncClass[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\)))) ) ) ) # ( \B[13]~input_o\ & ( !\A[13]~input_o\ & ( (!\Mux6~5_combout\ & ((!\FuncClass[0]~input_o\) # ((\LogicFN[1]~input_o\ & \LogicFN[0]~input_o\)))) ) ) ) # ( 
-- !\B[13]~input_o\ & ( !\A[13]~input_o\ & ( !\Mux6~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010100010001000101010101000100010101000100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~5_combout\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	datae => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: MLABCELL_X49_Y11_N32
\Add|S[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(13) = !\AddnSub~input_o\ $ (!\A[13]~input_o\ $ (!\B[13]~input_o\ $ (!\Add|C[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \Add|ALT_INV_C[13]~12_combout\,
	combout => \Add|S\(13));

-- Location: MLABCELL_X44_Y10_N34
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & ((\A[11]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[12]~input_o\ & ( (\A[13]~input_o\) # (\B[0]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[12]~input_o\ & ( (!\B[0]~input_o\ & ((\A[11]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & \A[13]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X45_Y11_N38
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Mux2~0_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[5]~6_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[1]~1_combout\))) ) ) ) # ( !\Mux2~0_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[5]~6_combout\)) 
-- # (\B[2]~input_o\ & ((\Shift|ll2[1]~1_combout\))) ) ) ) # ( \Mux2~0_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|ll2[9]~10_combout\) ) ) ) # ( !\Mux2~0_combout\ & ( !\B[3]~input_o\ & ( (\Shift|ll2[9]~10_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[9]~10_combout\,
	datab => \Shift|ALT_INV_ll2[5]~6_combout\,
	datac => \Shift|ALT_INV_ll2[1]~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: MLABCELL_X44_Y11_N4
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Y_R[1]~6_combout\ & ( \Mux2~1_combout\ & ( (!\Mux6~3_combout\) # ((!\ShiftFN[1]~input_o\ & ((\Add|S\(13)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~4_combout\))) ) ) ) # ( !\Y_R[1]~6_combout\ & ( \Mux2~1_combout\ & ( (!\Mux6~3_combout\ & 
-- (((!\ShiftFN[1]~input_o\)))) # (\Mux6~3_combout\ & ((!\ShiftFN[1]~input_o\ & ((\Add|S\(13)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~4_combout\)))) ) ) ) # ( \Y_R[1]~6_combout\ & ( !\Mux2~1_combout\ & ( (!\Mux6~3_combout\ & (((\ShiftFN[1]~input_o\)))) # 
-- (\Mux6~3_combout\ & ((!\ShiftFN[1]~input_o\ & ((\Add|S\(13)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~4_combout\)))) ) ) ) # ( !\Y_R[1]~6_combout\ & ( !\Mux2~1_combout\ & ( (\Mux6~3_combout\ & ((!\ShiftFN[1]~input_o\ & ((\Add|S\(13)))) # (\ShiftFN[1]~input_o\ 
-- & (\Y_R[1]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~3_combout\,
	datab => \ALT_INV_Y_R[1]~4_combout\,
	datac => \Add|ALT_INV_S\(13),
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Y_R[1]~6_combout\,
	dataf => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X44_Y11_N8
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( !\FuncClass[1]~input_o\ & ( \Mux1~0_combout\ ) ) # ( !\FuncClass[1]~input_o\ & ( !\Mux1~0_combout\ & ( (!\Mux6~0_combout\ & ((!\Mux2~4_combout\) # ((\Mux0~0_combout\ & \Mux2~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101100000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~4_combout\,
	datab => \ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_Mux2~2_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	datae => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X49_Y11_N36
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \B[14]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\A[14]~input_o\ $ (\LogicFN[1]~input_o\)) ) ) # ( !\B[14]~input_o\ & ( (\A[14]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000011111111110000111111111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X45_Y8_N34
\Mux1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( \Y_R_Ext[8]~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (\ExtWord~input_o\ & (\ShiftFN[1]~input_o\))) # (\FuncClass[0]~input_o\ & (((\Mux1~4_combout\)))) ) ) ) # ( !\Y_R_Ext[8]~0_combout\ & ( 
-- !\FuncClass[1]~input_o\ & ( (\FuncClass[0]~input_o\ & \Mux1~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000100101011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux1~4_combout\,
	datae => \ALT_INV_Y_R_Ext[8]~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: MLABCELL_X49_Y11_N10
\Add|S[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(14) = ( \B[14]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[14]~13_combout\ $ (!\A[14]~input_o\)) ) ) # ( !\B[14]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[14]~13_combout\ $ (\A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[14]~13_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Add|S\(14));

-- Location: MLABCELL_X44_Y10_N18
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\) # (\A[11]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[12]~input_o\ & ( (\B[0]~input_o\ & \A[11]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000000000011001101000111010001111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X46_Y10_N14
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Shift|ll2[2]~2_combout\ & ( \Shift|ll2[6]~7_combout\ & ( ((!\B[2]~input_o\ & (\Mux1~1_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[10]~11_combout\)))) # (\B[3]~input_o\) ) ) ) # ( !\Shift|ll2[2]~2_combout\ & ( \Shift|ll2[6]~7_combout\ 
-- & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Mux1~1_combout\))) # (\B[2]~input_o\ & (((\Shift|ll2[10]~11_combout\ & !\B[3]~input_o\)))) ) ) ) # ( \Shift|ll2[2]~2_combout\ & ( !\Shift|ll2[6]~7_combout\ & ( (!\B[2]~input_o\ & (\Mux1~1_combout\ & 
-- ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((\B[3]~input_o\) # (\Shift|ll2[10]~11_combout\)))) ) ) ) # ( !\Shift|ll2[2]~2_combout\ & ( !\Shift|ll2[6]~7_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Mux1~1_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ll2[10]~11_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000000010001110011001101000111110011000100011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[10]~11_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[2]~2_combout\,
	dataf => \Shift|ALT_INV_ll2[6]~7_combout\,
	combout => \Mux1~2_combout\);

-- Location: MLABCELL_X46_Y10_N18
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \Y_R[1]~7_combout\ & ( \Mux1~2_combout\ & ( (!\Mux6~3_combout\) # ((!\ShiftFN[1]~input_o\ & ((\Add|S\(14)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~4_combout\))) ) ) ) # ( !\Y_R[1]~7_combout\ & ( \Mux1~2_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((!\Mux6~3_combout\) # ((\Add|S\(14))))) # (\ShiftFN[1]~input_o\ & (\Mux6~3_combout\ & (\Y_R[1]~4_combout\))) ) ) ) # ( \Y_R[1]~7_combout\ & ( !\Mux1~2_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Mux6~3_combout\ & ((\Add|S\(14))))) # 
-- (\ShiftFN[1]~input_o\ & ((!\Mux6~3_combout\) # ((\Y_R[1]~4_combout\)))) ) ) ) # ( !\Y_R[1]~7_combout\ & ( !\Mux1~2_combout\ & ( (\Mux6~3_combout\ & ((!\ShiftFN[1]~input_o\ & ((\Add|S\(14)))) # (\ShiftFN[1]~input_o\ & (\Y_R[1]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \ALT_INV_Y_R[1]~4_combout\,
	datad => \Add|ALT_INV_S\(14),
	datae => \ALT_INV_Y_R[1]~7_combout\,
	dataf => \ALT_INV_Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: MLABCELL_X44_Y11_N28
\Mux1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = ( \Mux1~3_combout\ & ( ((!\FuncClass[1]~input_o\ & ((\Mux0~0_combout\) # (\Mux1~0_combout\)))) # (\Mux1~5_combout\) ) ) # ( !\Mux1~3_combout\ & ( ((!\FuncClass[1]~input_o\ & \Mux1~0_combout\)) # (\Mux1~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100101111101011110010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux1~5_combout\,
	datad => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Mux1~3_combout\,
	combout => \Mux1~6_combout\);

-- Location: MLABCELL_X49_Y11_N28
\Add|S[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[15]~0_combout\ = !\AddnSub~input_o\ $ (!\A[15]~input_o\ $ (\B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	combout => \Add|S[15]~0_combout\);

-- Location: MLABCELL_X49_Y11_N8
\Add|S[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(15) = ( \Add|S[15]~0_combout\ & ( !\Add|C[15]~14_combout\ ) ) # ( !\Add|S[15]~0_combout\ & ( \Add|C[15]~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[15]~14_combout\,
	dataf => \Add|ALT_INV_S[15]~0_combout\,
	combout => \Add|S\(15));

-- Location: MLABCELL_X49_Y11_N14
\Shift|ll2[15]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~13_combout\ = ( \B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[13]~input_o\ & ( (\B[0]~input_o\ & \A[12]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[0]~input_o\ & ((\A[15]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000000110000001100010001110111011100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|ll2[15]~13_combout\);

-- Location: LABCELL_X43_Y11_N32
\Shift|Y_LL[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~1_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[11]~12_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[7]~8_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[3]~3_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[11]~12_combout\ & ( (\B[2]~input_o\) 
-- # (\Shift|ll2[15]~13_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[11]~12_combout\ & ( (!\B[2]~input_o\ & ((\Shift|ll2[7]~8_combout\))) # (\B[2]~input_o\ & (\Shift|ll2[3]~3_combout\)) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[11]~12_combout\ & ( 
-- (\Shift|ll2[15]~13_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000111100111101110111011101110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[15]~13_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[3]~3_combout\,
	datad => \Shift|ALT_INV_ll2[7]~8_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[11]~12_combout\,
	combout => \Shift|Y_LL[15]~1_combout\);

-- Location: LABCELL_X43_Y11_N38
\Y_ShiftOrArith[8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \A[15]~input_o\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (\A[15]~input_o\ & \Shift|Y_LL[0]~0_combout\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( 
-- !\ShiftFN[1]~input_o\ & ( \Shift|Y_LL[15]~1_combout\ ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Add|S\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Add|ALT_INV_S\(15),
	datac => \Shift|ALT_INV_Y_LL[15]~1_combout\,
	datad => \Shift|ALT_INV_Y_LL[0]~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[8]~1_combout\);

-- Location: LABCELL_X45_Y8_N12
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[15]~input_o\ & (!\B[15]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[15]~input_o\ & 
-- \LogicFN[1]~input_o\)) # (\B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[15]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LABCELL_X45_Y8_N16
\Mux0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \ExtWord~input_o\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & ((\Mux7~0_combout\))) # (\FuncClass[0]~input_o\ & (\Logic|Mux0~0_combout\)) ) ) ) # ( !\ExtWord~input_o\ & ( !\FuncClass[1]~input_o\ & ( 
-- (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[8]~1_combout\)) # (\FuncClass[0]~input_o\ & ((\Logic|Mux0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111000001011010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Y_ShiftOrArith[8]~1_combout\,
	datac => \Logic|ALT_INV_Mux0~0_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X43_Y8_N22
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Add|S\(3) & ( (!\Add|S\(2) & (!\Add|S\(1) & (!\B[0]~input_o\ $ (\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000100001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Add|ALT_INV_S\(2),
	datac => \ALT_INV_A[0]~input_o\,
	datad => \Add|ALT_INV_S\(1),
	dataf => \Add|ALT_INV_S\(3),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X45_Y11_N18
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add|S\(6) & ( (!\Add|S\(5) & (!\Add|S\(4) & (\Equal0~0_combout\ & !\Add|S\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(5),
	datab => \Add|ALT_INV_S\(4),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \Add|ALT_INV_S\(7),
	dataf => \Add|ALT_INV_S\(6),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X45_Y11_N12
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add|S\(8) & ( (\Equal0~1_combout\ & (!\Add|S\(10) & (!\Add|S\(11) & !\Add|S\(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \Add|ALT_INV_S\(10),
	datac => \Add|ALT_INV_S\(11),
	datad => \Add|ALT_INV_S\(9),
	dataf => \Add|ALT_INV_S\(8),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X49_Y11_N16
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\Add|S\(12) & ( !\Add|S\(14) & ( (!\Add|S\(13) & (\Equal0~2_combout\ & (!\Add|S[15]~0_combout\ $ (\Add|C[15]~14_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(13),
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Add|ALT_INV_S[15]~0_combout\,
	datad => \Add|ALT_INV_C[15]~14_combout\,
	datae => \Add|ALT_INV_S\(12),
	dataf => \Add|ALT_INV_S\(14),
	combout => \Equal0~3_combout\);

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

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


