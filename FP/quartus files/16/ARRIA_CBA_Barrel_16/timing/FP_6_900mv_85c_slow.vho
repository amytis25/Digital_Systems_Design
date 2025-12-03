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

-- DATE "12/02/2025 19:29:34"

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
	Y : OUT std_logic_vector(15 DOWNTO 0);
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END EN_ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[3]~4_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B_adder[15]~0_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Shift|ll2[0]~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Shift|Y_LL[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~2_combout\ : std_logic;
SIGNAL \Y_R[0]~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Add|Cout~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Shift|ll2[1]~1_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~5_combout\ : std_logic;
SIGNAL \Y_R[1]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~7_combout\ : std_logic;
SIGNAL \Y_R[1]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~8_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~2_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~9_combout\ : std_logic;
SIGNAL \Y_R[1]~3_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~10_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~3_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Shift|ll2[0]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~4_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~6_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Y_R[1]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~5_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add|S[5]~2_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~6_combout\ : std_logic;
SIGNAL \Y_R[1]~6_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Y_R[1]~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~7_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Logic|Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~8_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~9_combout\ : std_logic;
SIGNAL \Y_LorS_Ext[8]~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~10_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add|S[9]~1_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~11_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~12_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add|S[13]~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~13_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~1_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add|P\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|G\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|S_internal\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
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
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[5]~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[9]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[13]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[8]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S_internal\ : std_logic_vector(15 DOWNTO 15);
SIGNAL \Shift|ALT_INV_Y_LL[15]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[15]~13_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[3]~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[3]~4_combout\ : std_logic;
SIGNAL \Add|ALT_INV_G\ : std_logic_vector(13 DOWNTO 4);
SIGNAL \Add|ALT_INV_block_carry_in[2]~3_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[2]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_P\ : std_logic_vector(15 DOWNTO 4);
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B_adder[15]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_Y_LL[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[8]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[4]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS_Ext[8]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[11]~12_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[10]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[9]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[8]~9_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[7]~8_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[6]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[0]~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[1]~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[7]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[11]~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[6]~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[10]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[2]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[5]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[1]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[13]~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_rl2[9]~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ll2[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\ : std_logic;

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
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
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
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~3_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~3_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\;
\Add|ALT_INV_S[5]~2_combout\ <= NOT \Add|S[5]~2_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\;
\Add|ALT_INV_S[9]~1_combout\ <= NOT \Add|S[9]~1_combout\;
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\;
\Add|ALT_INV_S[13]~0_combout\ <= NOT \Add|S[13]~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Y_ShiftOrArith[8]~1_combout\ <= NOT \Y_ShiftOrArith[8]~1_combout\;
\Add|ALT_INV_S_internal\(15) <= NOT \Add|S_internal\(15);
\Shift|ALT_INV_Y_LL[15]~1_combout\ <= NOT \Shift|Y_LL[15]~1_combout\;
\Shift|ALT_INV_ll2[15]~13_combout\ <= NOT \Shift|ll2[15]~13_combout\;
\Add|ALT_INV_block_carry_in[3]~5_combout\ <= NOT \Add|block_carry_in[3]~5_combout\;
\Add|ALT_INV_block_carry_in[3]~4_combout\ <= NOT \Add|block_carry_in[3]~4_combout\;
\Add|ALT_INV_G\(8) <= NOT \Add|G\(8);
\Add|ALT_INV_block_carry_in[2]~3_combout\ <= NOT \Add|block_carry_in[2]~3_combout\;
\Add|ALT_INV_block_carry_in[2]~2_combout\ <= NOT \Add|block_carry_in[2]~2_combout\;
\Add|ALT_INV_block_carry_in[2]~1_combout\ <= NOT \Add|block_carry_in[2]~1_combout\;
\Add|ALT_INV_block_carry_in[1]~0_combout\ <= NOT \Add|block_carry_in[1]~0_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\;
\Add|ALT_INV_P\(6) <= NOT \Add|P\(6);
\Add|ALT_INV_P\(11) <= NOT \Add|P\(11);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\;
\Add|ALT_INV_P\(10) <= NOT \Add|P\(10);
\ALT_INV_B_adder[15]~0_combout\ <= NOT \B_adder[15]~0_combout\;
\Logic|ALT_INV_Mux15~0_combout\ <= NOT \Logic|Mux15~0_combout\;
\ALT_INV_Y_ShiftOrArith[0]~0_combout\ <= NOT \Y_ShiftOrArith[0]~0_combout\;
\Shift|ALT_INV_Y_LL[0]~0_combout\ <= NOT \Shift|Y_LL[0]~0_combout\;
\Shift|ALT_INV_ll2[0]~0_combout\ <= NOT \Shift|ll2[0]~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_Y_R[0]~0_combout\ <= NOT \Y_R[0]~0_combout\;
\Shift|ALT_INV_rl2[12]~3_combout\ <= NOT \Shift|rl2[12]~3_combout\;
\Shift|ALT_INV_rl2[8]~2_combout\ <= NOT \Shift|rl2[8]~2_combout\;
\Shift|ALT_INV_rl2[4]~1_combout\ <= NOT \Shift|rl2[4]~1_combout\;
\Shift|ALT_INV_rl2[0]~0_combout\ <= NOT \Shift|rl2[0]~0_combout\;
\ALT_INV_Y_R[1]~8_combout\ <= NOT \Y_R[1]~8_combout\;
\ALT_INV_Mux11~5_combout\ <= NOT \Mux11~5_combout\;
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux8~2_combout\ <= NOT \Mux8~2_combout\;
\ALT_INV_Y_LorS_Ext[8]~0_combout\ <= NOT \Y_LorS_Ext[8]~0_combout\;
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\Add|ALT_INV_S\(14) <= NOT \Add|S\(14);
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~3_combout\ <= NOT \Mux3~3_combout\;
\ALT_INV_Mux3~2_combout\ <= NOT \Mux3~2_combout\;
\Add|ALT_INV_S\(12) <= NOT \Add|S\(12);
\ALT_INV_Mux3~1_combout\ <= NOT \Mux3~1_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~3_combout\ <= NOT \Mux4~3_combout\;
\ALT_INV_Mux4~2_combout\ <= NOT \Mux4~2_combout\;
\Add|ALT_INV_S\(11) <= NOT \Add|S\(11);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\;
\ALT_INV_Mux4~1_combout\ <= NOT \Mux4~1_combout\;
\Shift|ALT_INV_ll2[11]~12_combout\ <= NOT \Shift|ll2[11]~12_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\Add|ALT_INV_S\(10) <= NOT \Add|S\(10);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\Shift|ALT_INV_ll2[10]~11_combout\ <= NOT \Shift|ll2[10]~11_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\Shift|ALT_INV_ll2[9]~10_combout\ <= NOT \Shift|ll2[9]~10_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Shift|ALT_INV_ll2[8]~9_combout\ <= NOT \Shift|ll2[8]~9_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Y_R_Ext[8]~0_combout\ <= NOT \Y_R_Ext[8]~0_combout\;
\Logic|ALT_INV_Mux7~0_combout\ <= NOT \Logic|Mux7~0_combout\;
\ALT_INV_Mux8~0_combout\ <= NOT \Mux8~0_combout\;
\Shift|ALT_INV_ll2[7]~8_combout\ <= NOT \Shift|ll2[7]~8_combout\;
\Add|ALT_INV_S\(7) <= NOT \Add|S\(7);
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\;
\Logic|ALT_INV_Mux8~0_combout\ <= NOT \Logic|Mux8~0_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Y_R[1]~7_combout\ <= NOT \Y_R[1]~7_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\Add|ALT_INV_S\(6) <= NOT \Add|S\(6);
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\;
\Add|ALT_INV_G\(4) <= NOT \Add|G\(4);
\Shift|ALT_INV_ll2[6]~7_combout\ <= NOT \Shift|ll2[6]~7_combout\;
\Shift|ALT_INV_ll2[5]~6_combout\ <= NOT \Shift|ll2[5]~6_combout\;
\ALT_INV_Y_R[1]~6_combout\ <= NOT \Y_R[1]~6_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Mux11~3_combout\ <= NOT \Mux11~3_combout\;
\ALT_INV_Mux11~2_combout\ <= NOT \Mux11~2_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\ALT_INV_Mux11~0_combout\ <= NOT \Mux11~0_combout\;
\Shift|ALT_INV_ll2[0]~5_combout\ <= NOT \Shift|ll2[0]~5_combout\;
\Add|ALT_INV_block_carry_in[1]~6_combout\ <= NOT \Add|block_carry_in[1]~6_combout\;
\Add|ALT_INV_P\(4) <= NOT \Add|P\(4);
\Shift|ALT_INV_ll2[4]~4_combout\ <= NOT \Shift|ll2[4]~4_combout\;
\ALT_INV_Y_R[1]~5_combout\ <= NOT \Y_R[1]~5_combout\;
\ALT_INV_Y_R[1]~4_combout\ <= NOT \Y_R[1]~4_combout\;
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\;
\ALT_INV_Mux12~4_combout\ <= NOT \Mux12~4_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\Shift|ALT_INV_rl2[7]~10_combout\ <= NOT \Shift|rl2[7]~10_combout\;
\ALT_INV_Y_R[1]~3_combout\ <= NOT \Y_R[1]~3_combout\;
\Shift|ALT_INV_rl2[11]~9_combout\ <= NOT \Shift|rl2[11]~9_combout\;
\Shift|ALT_INV_ll2[3]~3_combout\ <= NOT \Shift|ll2[3]~3_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\Shift|ALT_INV_rl2[6]~8_combout\ <= NOT \Shift|rl2[6]~8_combout\;
\Shift|ALT_INV_rl2[10]~7_combout\ <= NOT \Shift|rl2[10]~7_combout\;
\Shift|ALT_INV_ll2[2]~2_combout\ <= NOT \Shift|ll2[2]~2_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\ALT_INV_Mux14~6_combout\ <= NOT \Mux14~6_combout\;
\ALT_INV_Mux14~5_combout\ <= NOT \Mux14~5_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\ALT_INV_Mux14~4_combout\ <= NOT \Mux14~4_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\Shift|ALT_INV_rl2[5]~6_combout\ <= NOT \Shift|rl2[5]~6_combout\;
\ALT_INV_Y_R[1]~2_combout\ <= NOT \Y_R[1]~2_combout\;
\ALT_INV_Y_R[1]~1_combout\ <= NOT \Y_R[1]~1_combout\;
\Shift|ALT_INV_rl2[13]~5_combout\ <= NOT \Shift|rl2[13]~5_combout\;
\Shift|ALT_INV_rl2[9]~4_combout\ <= NOT \Shift|rl2[9]~4_combout\;
\Shift|ALT_INV_ll2[1]~1_combout\ <= NOT \Shift|ll2[1]~1_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\Add|ALT_INV_Cout~1_combout\ <= NOT \Add|Cout~1_combout\;
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\Add|ALT_INV_P\(15) <= NOT \Add|P\(15);
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~0_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\;
\Add|ALT_INV_G\(12) <= NOT \Add|G\(12);
\Add|ALT_INV_G\(13) <= NOT \Add|G\(13);
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\;
\Add|ALT_INV_P\(14) <= NOT \Add|P\(14);

-- Location: IOOBUF_X33_Y0_N5
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

-- Location: IOOBUF_X59_Y16_N98
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~7_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\Y[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X50_Y0_N36
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~5_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X43_Y0_N2
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
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X25_Y0_N67
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

-- Location: IOOBUF_X41_Y0_N33
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~3_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X37_Y0_N36
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X59_Y7_N2
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X33_Y0_N98
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X43_Y0_N98
\Y[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X35_Y0_N98
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X47_Y0_N67
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

-- Location: IOOBUF_X33_Y0_N33
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

-- Location: IOOBUF_X37_Y0_N67
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

-- Location: IOIBUF_X35_Y0_N32
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X39_Y0_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X59_Y13_N63
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LABCELL_X40_Y14_N22
\Add|G[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(12) = ( \B[12]~input_o\ & ( (!\AddnSub~input_o\ & \A[12]~input_o\) ) ) # ( !\B[12]~input_o\ & ( (\AddnSub~input_o\ & \A[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Add|G\(12));

-- Location: IOIBUF_X39_Y0_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X33_Y0_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X59_Y13_N94
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LABCELL_X38_Y12_N38
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = ( \B[14]~input_o\ & ( \A[13]~input_o\ & ( (!\Add|G\(12) & ((!\B[13]~input_o\ & ((\A[14]~input_o\))) # (\B[13]~input_o\ & (!\AddnSub~input_o\)))) # (\Add|G\(12) & ((!\AddnSub~input_o\) # ((\A[14]~input_o\)))) ) 
-- ) ) # ( !\B[14]~input_o\ & ( \A[13]~input_o\ & ( (!\Add|G\(12) & ((!\B[13]~input_o\ & (\AddnSub~input_o\)) # (\B[13]~input_o\ & ((\A[14]~input_o\))))) # (\Add|G\(12) & (((\A[14]~input_o\)) # (\AddnSub~input_o\))) ) ) ) # ( \B[14]~input_o\ & ( 
-- !\A[13]~input_o\ & ( (!\Add|G\(12) & (!\AddnSub~input_o\ & (\A[14]~input_o\))) # (\Add|G\(12) & ((!\B[13]~input_o\ & ((\A[14]~input_o\))) # (\B[13]~input_o\ & (!\AddnSub~input_o\)))) ) ) ) # ( !\B[14]~input_o\ & ( !\A[13]~input_o\ & ( (!\Add|G\(12) & 
-- (\AddnSub~input_o\ & (\A[14]~input_o\))) # (\Add|G\(12) & ((!\B[13]~input_o\ & (\AddnSub~input_o\)) # (\B[13]~input_o\ & ((\A[14]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000111000011010100110000110111000111110100111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_G\(12),
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X38_Y12_N6
\Add|P[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(14) = ( \B[14]~input_o\ & ( !\AddnSub~input_o\ $ (\A[14]~input_o\) ) ) # ( !\B[14]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Add|P\(14));

-- Location: IOIBUF_X59_Y12_N32
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X40_Y12_N12
\Add|G[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(8) = (\A[8]~input_o\ & (!\AddnSub~input_o\ $ (!\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001100000000110000110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	combout => \Add|G\(8));

-- Location: IOIBUF_X59_Y13_N32
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LABCELL_X40_Y12_N18
\Add|block_carry_in[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~4_combout\ = ( \AddnSub~input_o\ & ( (!\Add|G\(8) & (\A[9]~input_o\ & !\B[9]~input_o\)) # (\Add|G\(8) & ((!\B[9]~input_o\) # (\A[9]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|G\(8) & (\A[9]~input_o\ & \B[9]~input_o\)) # 
-- (\Add|G\(8) & ((\B[9]~input_o\) # (\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_G\(8),
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|block_carry_in[3]~4_combout\);

-- Location: IOIBUF_X59_Y9_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y9_N1
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X39_Y0_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X45_Y0_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X40_Y12_N34
\Add|GEN_BLOCKS:2:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\ = ( \AddnSub~input_o\ & ( (!\A[11]~input_o\ & (\A[10]~input_o\ & (!\B[10]~input_o\ & !\B[11]~input_o\))) # (\A[11]~input_o\ & ((!\B[11]~input_o\) # ((\A[10]~input_o\ & !\B[10]~input_o\)))) ) ) # ( 
-- !\AddnSub~input_o\ & ( (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\))) # (\A[11]~input_o\ & (((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100011111000000010001111101001111000001000100111100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\);

-- Location: LABCELL_X40_Y12_N2
\Add|P[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(10) = ( \A[10]~input_o\ & ( !\B[10]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[10]~input_o\ & ( !\B[10]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Add|P\(10));

-- Location: LABCELL_X40_Y12_N28
\Add|P[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(11) = ( \A[11]~input_o\ & ( !\AddnSub~input_o\ $ (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Add|P\(11));

-- Location: LABCELL_X40_Y12_N24
\Add|GEN_BLOCKS:2:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = ( \AddnSub~input_o\ & ( (!\A[9]~input_o\ & (!\B[9]~input_o\ & (!\A[8]~input_o\ $ (\B[8]~input_o\)))) # (\A[9]~input_o\ & (\B[9]~input_o\ & (!\A[8]~input_o\ $ (\B[8]~input_o\)))) ) ) # ( !\AddnSub~input_o\ & ( 
-- (!\A[9]~input_o\ & (\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) # (\A[9]~input_o\ & (!\B[9]~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X59_Y9_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X39_Y0_N94
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X59_Y13_N1
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LABCELL_X40_Y14_N34
\Add|block_carry_in[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~1_combout\ = ( \A[4]~input_o\ & ( (!\B[5]~input_o\ & ((!\B[4]~input_o\ & (\AddnSub~input_o\)) # (\B[4]~input_o\ & ((\A[5]~input_o\))))) # (\B[5]~input_o\ & ((!\B[4]~input_o\ & ((\A[5]~input_o\))) # (\B[4]~input_o\ & 
-- (!\AddnSub~input_o\)))) ) ) # ( !\A[4]~input_o\ & ( (\A[5]~input_o\ & (!\B[5]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000100111010011100010011101001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|block_carry_in[2]~1_combout\);

-- Location: IOIBUF_X43_Y0_N63
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X59_Y19_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LABCELL_X40_Y14_N20
\Add|P[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(6) = !\AddnSub~input_o\ $ (!\B[6]~input_o\ $ (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	combout => \Add|P\(6));

-- Location: LABCELL_X40_Y14_N38
\Add|block_carry_in[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~2_combout\ = ( \Add|P\(6) & ( (\Add|block_carry_in[2]~1_combout\ & (!\A[7]~input_o\ $ (!\B[7]~input_o\ $ (\AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011010010000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_block_carry_in[2]~1_combout\,
	dataf => \Add|ALT_INV_P\(6),
	combout => \Add|block_carry_in[2]~2_combout\);

-- Location: IOIBUF_X32_Y0_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: MLABCELL_X37_Y15_N38
\Add|GEN_BLOCKS:0:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = ( \AddnSub~input_o\ & ( \B[3]~input_o\ & ( (\A[2]~input_o\ & (!\B[2]~input_o\ & \A[3]~input_o\)) ) ) ) # ( !\AddnSub~input_o\ & ( \B[3]~input_o\ & ( ((\A[2]~input_o\ & \B[2]~input_o\)) # (\A[3]~input_o\) ) ) 
-- ) # ( \AddnSub~input_o\ & ( !\B[3]~input_o\ & ( ((\A[2]~input_o\ & !\B[2]~input_o\)) # (\A[3]~input_o\) ) ) ) # ( !\AddnSub~input_o\ & ( !\B[3]~input_o\ & ( (\A[2]~input_o\ & (\B[2]~input_o\ & \A[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100001111111100000011111111110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X40_Y14_N36
\Add|GEN_BLOCKS:1:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\ = ( \AddnSub~input_o\ & ( (!\A[7]~input_o\ & (!\B[7]~input_o\ & (!\B[6]~input_o\ & \A[6]~input_o\))) # (\A[7]~input_o\ & ((!\B[7]~input_o\) # ((!\B[6]~input_o\ & \A[6]~input_o\)))) ) ) # ( !\AddnSub~input_o\ & 
-- ( (!\A[7]~input_o\ & (\B[7]~input_o\ & (\B[6]~input_o\ & \A[6]~input_o\))) # (\A[7]~input_o\ & (((\B[6]~input_o\ & \A[6]~input_o\)) # (\B[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011101000100110101000100010011010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_B[7]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\);

-- Location: MLABCELL_X37_Y15_N28
\Add|GEN_BLOCKS:0:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = ( \A[3]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\)))) # (\AddnSub~input_o\ & (\B[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\)))) ) ) # ( !\A[3]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[3]~input_o\ & (!\A[2]~input_o\ $ (!\B[2]~input_o\)))) # (\AddnSub~input_o\ & (!\B[3]~input_o\ & (!\A[2]~input_o\ $ (\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X41_Y0_N94
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X43_Y0_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X39_Y16_N4
\Add|GEN_BLOCKS:0:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[1]~input_o\ & (!\A[1]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\)))) # (\B[1]~input_o\ & (\A[1]~input_o\ & (!\B[0]~input_o\ $ (\A[0]~input_o\)))) ) ) # ( !\AddnSub~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[1]~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\)))) # (\B[1]~input_o\ & (!\A[1]~input_o\ & (!\B[0]~input_o\ $ (!\A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000101000000101000010100010000010010000011000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: MLABCELL_X39_Y16_N10
\Add|GEN_BLOCKS:0:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\);

-- Location: LABCELL_X40_Y14_N26
\Add|GEN_BLOCKS:1:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = ( \A[4]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (\AddnSub~input_o\ & (\B[4]~input_o\ & (!\B[5]~input_o\ $ (\A[5]~input_o\)))) ) ) # ( !\A[4]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (\AddnSub~input_o\ & (!\B[4]~input_o\ & (!\B[5]~input_o\ $ (\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X40_Y14_N28
\Add|GEN_BLOCKS:1:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ = ( \AddnSub~input_o\ & ( (\Add|P\(6) & (\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & (!\A[7]~input_o\ $ (\B[7]~input_o\)))) ) ) # ( !\AddnSub~input_o\ & ( (\Add|P\(6) & 
-- (\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & (!\A[7]~input_o\ $ (!\B[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000010000000000010001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(6),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\);

-- Location: MLABCELL_X39_Y16_N14
\Add|block_carry_in[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~0_combout\ = ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & ( \B[0]~input_o\ & ( (!\A[1]~input_o\ & (\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[1]~input_o\ & ((!\B[1]~input_o\ $ (!\AddnSub~input_o\)) # 
-- (\A[0]~input_o\))) ) ) ) # ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\AddnSub~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001001110010011100000000000000000000011001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Add|block_carry_in[1]~0_combout\);

-- Location: LABCELL_X40_Y14_N2
\Add|block_carry_in[2]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~3_combout\ = ( !\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ( \Add|block_carry_in[1]~0_combout\ & ( (!\Add|block_carry_in[2]~2_combout\ & !\Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\) ) ) ) # ( 
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ( !\Add|block_carry_in[1]~0_combout\ & ( (!\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\) # (\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\) ) ) ) # ( !\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ( 
-- !\Add|block_carry_in[1]~0_combout\ & ( (!\Add|block_carry_in[2]~2_combout\ & !\Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000110011001111111110100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~3_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\,
	datae => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \Add|ALT_INV_block_carry_in[1]~0_combout\,
	combout => \Add|block_carry_in[2]~3_combout\);

-- Location: LABCELL_X40_Y12_N22
\Add|block_carry_in[3]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~5_combout\ = ( \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( \Add|block_carry_in[2]~3_combout\ & ( (!\Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\) # ((\Add|P\(10) & \Add|P\(11))) ) ) ) # ( 
-- !\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( \Add|block_carry_in[2]~3_combout\ & ( (!\Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\ & ((!\Add|block_carry_in[3]~4_combout\) # ((!\Add|P\(10)) # (!\Add|P\(11))))) ) ) ) # ( 
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( !\Add|block_carry_in[2]~3_combout\ & ( (!\Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\ & ((!\Add|P\(10)) # (!\Add|P\(11)))) ) ) ) # ( !\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( 
-- !\Add|block_carry_in[2]~3_combout\ & ( (!\Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\ & ((!\Add|block_carry_in[3]~4_combout\) # ((!\Add|P\(10)) # (!\Add|P\(11))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001000110011001100000011001100110010001100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~3_combout\,
	datac => \Add|ALT_INV_P\(10),
	datad => \Add|ALT_INV_P\(11),
	datae => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \Add|ALT_INV_block_carry_in[2]~3_combout\,
	combout => \Add|block_carry_in[3]~5_combout\);

-- Location: LABCELL_X38_Y12_N8
\Add|GEN_BLOCKS:3:LACG_INST|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ = ( \A[13]~input_o\ & ( (!\B[13]~input_o\ & (!\AddnSub~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\)))) # (\B[13]~input_o\ & (\AddnSub~input_o\ & (!\A[12]~input_o\ $ (\B[12]~input_o\)))) ) ) # ( 
-- !\A[13]~input_o\ & ( (!\B[13]~input_o\ & (\AddnSub~input_o\ & (!\A[12]~input_o\ $ (\B[12]~input_o\)))) # (\B[13]~input_o\ & (!\AddnSub~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010010000010000101001000001000101000010000010010100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\);

-- Location: IOIBUF_X35_Y0_N63
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X38_Y12_N0
\B_adder[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \B_adder[15]~0_combout\ = !\B[15]~input_o\ $ (!\AddnSub~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \B_adder[15]~0_combout\);

-- Location: IOIBUF_X59_Y12_N63
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LABCELL_X38_Y12_N16
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( !\B_adder[15]~0_combout\ & ( \A[15]~input_o\ & ( ((\Add|P\(14) & (!\Add|block_carry_in[3]~5_combout\ & \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\))) # (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\) ) ) ) # ( \B_adder[15]~0_combout\ & ( 
-- !\A[15]~input_o\ & ( ((\Add|P\(14) & (!\Add|block_carry_in[3]~5_combout\ & \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\))) # (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\) ) ) ) # ( !\B_adder[15]~0_combout\ & ( !\A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010111010101010101011101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\,
	datab => \Add|ALT_INV_P\(14),
	datac => \Add|ALT_INV_block_carry_in[3]~5_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	datae => \ALT_INV_B_adder[15]~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X59_Y12_N1
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: MLABCELL_X39_Y14_N4
\Shift|ll2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~0_combout\ = ( !\B[1]~input_o\ & ( !\B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ll2[0]~0_combout\);

-- Location: MLABCELL_X37_Y15_N24
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( !\B[2]~input_o\ & ( !\B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X39_Y14_N10
\Shift|Y_LL[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[0]~0_combout\ = ( \Mux14~0_combout\ & ( \Shift|ll2[0]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[0]~0_combout\,
	dataf => \ALT_INV_Mux14~0_combout\,
	combout => \Shift|Y_LL[0]~0_combout\);

-- Location: MLABCELL_X37_Y15_N2
\Shift|rl2[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[0]~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[1]~input_o\))) # (\B[1]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[1]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[3]~input_o\)) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (\A[2]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[0]~0_combout\);

-- Location: MLABCELL_X39_Y13_N26
\Shift|rl2[12]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~3_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ 
-- & (\A[15]~input_o\)) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (\A[14]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[12]~3_combout\);

-- Location: MLABCELL_X39_Y15_N2
\Shift|rl2[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~1_combout\ = ( \B[0]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[6]~input_o\ & ( (\A[4]~input_o\) # (\B[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & 
-- ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|rl2[4]~1_combout\);

-- Location: MLABCELL_X39_Y13_N0
\Shift|rl2[8]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~2_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[11]~input_o\))) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[11]~input_o\))) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[8]~2_combout\);

-- Location: MLABCELL_X39_Y15_N24
\Y_R[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[0]~0_combout\ = ( \Shift|rl2[8]~2_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\) # (\Shift|rl2[12]~3_combout\) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( \B[3]~input_o\ & ( (\Shift|rl2[12]~3_combout\ & \B[2]~input_o\) ) ) ) # ( 
-- \Shift|rl2[8]~2_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[0]~0_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[4]~1_combout\))) ) ) ) # ( !\Shift|rl2[8]~2_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|rl2[0]~0_combout\)) # 
-- (\B[2]~input_o\ & ((\Shift|rl2[4]~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_rl2[0]~0_combout\,
	datab => \Shift|ALT_INV_rl2[12]~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[4]~1_combout\,
	datae => \Shift|ALT_INV_rl2[8]~2_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_R[0]~0_combout\);

-- Location: IOIBUF_X59_Y10_N94
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: MLABCELL_X39_Y12_N20
\Y_ShiftOrArith[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = ( \B[0]~input_o\ & ( \A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\Shift|Y_LL[0]~0_combout\))) # (\ShiftFN[1]~input_o\ & (((\Y_R[0]~0_combout\)))) ) ) ) # ( !\B[0]~input_o\ & ( \A[0]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # ((\Shift|Y_LL[0]~0_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Y_R[0]~0_combout\)))) ) ) ) # ( \B[0]~input_o\ & ( !\A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) # 
-- (\ShiftFN[1]~input_o\ & ((\Y_R[0]~0_combout\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[0]~input_o\ & ( (\Y_R[0]~0_combout\ & \ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111101010100000111110111011000011110001000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_Y_LL[0]~0_combout\,
	datac => \ALT_INV_Y_R[0]~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: IOIBUF_X30_Y0_N94
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: MLABCELL_X39_Y16_N0
\Logic|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[0]~input_o\ & (\B[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[0]~input_o\ & (!\B[0]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[0]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011101100001011000010110000101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: IOIBUF_X59_Y15_N32
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: LABCELL_X38_Y12_N2
\Add|GEN_BLOCKS:3:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ = ( \A[15]~input_o\ & ( (!\B[15]~input_o\ & (((\B[14]~input_o\ & \A[14]~input_o\)) # (\AddnSub~input_o\))) # (\B[15]~input_o\ & ((!\AddnSub~input_o\) # ((!\B[14]~input_o\ & \A[14]~input_o\)))) ) ) # ( 
-- !\A[15]~input_o\ & ( (\A[14]~input_o\ & ((!\B[15]~input_o\ & (\AddnSub~input_o\ & !\B[14]~input_o\)) # (\B[15]~input_o\ & (!\AddnSub~input_o\ & \B[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100100000000000010010001100110011111100110011001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X38_Y12_N12
\Add|GEN_BLOCKS:3:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ = ( \A[13]~input_o\ & ( (\Add|G\(12) & (!\B[13]~input_o\ $ (\AddnSub~input_o\))) ) ) # ( !\A[13]~input_o\ & ( (\Add|G\(12) & (!\B[13]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_G\(12),
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\);

-- Location: LABCELL_X38_Y12_N14
\Add|G[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(13) = ( \A[13]~input_o\ & ( !\B[13]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Add|G\(13));

-- Location: LABCELL_X38_Y12_N22
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( !\Add|G\(13) & ( !\Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~0_combout\,
	dataf => \Add|ALT_INV_G\(13),
	combout => \Add|Cout~0_combout\);

-- Location: LABCELL_X38_Y12_N10
\Add|P[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(15) = ( \A[15]~input_o\ & ( !\B_adder[15]~0_combout\ ) ) # ( !\A[15]~input_o\ & ( \B_adder[15]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_B_adder[15]~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Add|P\(15));

-- Location: LABCELL_X38_Y12_N26
\Add|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~1_combout\ = ( \Add|Cout~0_combout\ & ( \Add|P\(15) & ( (!\Add|P\(14) & (((\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\)))) # (\Add|P\(14) & ((!\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & ((\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\))) # 
-- (\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & (!\Add|block_carry_in[3]~5_combout\)))) ) ) ) # ( !\Add|Cout~0_combout\ & ( \Add|P\(15) & ( (!\Add|P\(14) & (((\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\)))) # (\Add|P\(14) & 
-- ((!\Add|block_carry_in[3]~5_combout\) # ((!\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\)))) ) ) ) # ( \Add|Cout~0_combout\ & ( !\Add|P\(15) & ( \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ ) ) ) # ( !\Add|Cout~0_combout\ & ( !\Add|P\(15) & ( 
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111111001011100000111100101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[3]~5_combout\,
	datab => \Add|ALT_INV_P\(14),
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	datae => \Add|ALT_INV_Cout~0_combout\,
	dataf => \Add|ALT_INV_P\(15),
	combout => \Add|Cout~1_combout\);

-- Location: LABCELL_X38_Y14_N8
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \FuncClass[0]~input_o\ & ( \Add|Cout~1_combout\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux15~0_combout\) ) ) ) # ( !\FuncClass[0]~input_o\ & ( \Add|Cout~1_combout\ & ( (!\FuncClass[1]~input_o\ & ((\Y_ShiftOrArith[0]~0_combout\))) # 
-- (\FuncClass[1]~input_o\ & (!\AltB~0_combout\)) ) ) ) # ( \FuncClass[0]~input_o\ & ( !\Add|Cout~1_combout\ & ( (\Logic|Mux15~0_combout\) # (\FuncClass[1]~input_o\) ) ) ) # ( !\FuncClass[0]~input_o\ & ( !\Add|Cout~1_combout\ & ( (!\FuncClass[1]~input_o\ & 
-- ((\Y_ShiftOrArith[0]~0_combout\))) # (\FuncClass[1]~input_o\ & (!\AltB~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101000111010000011111111111100111010001110100000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AltB~0_combout\,
	datab => \ALT_INV_Y_ShiftOrArith[0]~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \Logic|ALT_INV_Mux15~0_combout\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \Add|ALT_INV_Cout~1_combout\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X38_Y15_N26
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((\ShiftFN[1]~input_o\) # (\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100000000011101110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X38_Y15_N28
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\FuncClass[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X39_Y16_N36
\Mux14~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (!\B[1]~input_o\ & (\A[1]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111001101101000011100110110100001110011011010000111001101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	combout => \Mux14~6_combout\);

-- Location: MLABCELL_X39_Y16_N22
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = ( \A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (((\B[0]~input_o\ & !\AddnSub~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( !\B[1]~input_o\ $ (!\A[1]~input_o\ $ (((\B[0]~input_o\ & \AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001101001011001100110100101101001011001100110100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|S\(1));

-- Location: MLABCELL_X37_Y15_N12
\Shift|ll2[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[1]~1_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # (\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001010001000101010101000100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ll2[1]~1_combout\);

-- Location: LABCELL_X38_Y15_N36
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & (((\ShiftFN[0]~input_o\ & \Mux14~0_combout\)) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100000000001101110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux14~0_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: MLABCELL_X37_Y15_N18
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \A[4]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[0]~input_o\ & ( (\A[2]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LABCELL_X38_Y14_N14
\Shift|rl2[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~6_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & (((\A[5]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[8]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ 
-- & (((\A[5]~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\ & (\A[8]~input_o\ & (\B[0]~input_o\))) ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[5]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)) # 
-- (\A[8]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[5]~input_o\)))) # (\B[1]~input_o\ & (\A[8]~input_o\ & (\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001010100011111000100001011101010110101101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|rl2[5]~6_combout\);

-- Location: MLABCELL_X39_Y12_N6
\Shift|rl2[13]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~5_combout\ = ( \A[14]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\) # (\B[0]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\ & !\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000011101110000000000100010000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[14]~input_o\,
	combout => \Shift|rl2[13]~5_combout\);

-- Location: MLABCELL_X39_Y12_N8
\Y_R[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~1_combout\ = ( \A[15]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\) # (\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R[1]~1_combout\);

-- Location: MLABCELL_X39_Y13_N28
\Shift|rl2[9]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~4_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (\A[10]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[9]~4_combout\);

-- Location: MLABCELL_X39_Y12_N10
\Y_R[1]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~2_combout\ = ( \Shift|rl2[9]~4_combout\ & ( (!\Shift|rl2[13]~5_combout\ & (\B[2]~input_o\ & !\Y_R[1]~1_combout\)) ) ) # ( !\Shift|rl2[9]~4_combout\ & ( (!\B[2]~input_o\) # ((!\Shift|rl2[13]~5_combout\ & !\Y_R[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011110000111111001111000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_rl2[13]~5_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_Y_R[1]~1_combout\,
	dataf => \Shift|ALT_INV_rl2[9]~4_combout\,
	combout => \Y_R[1]~2_combout\);

-- Location: LABCELL_X38_Y15_N14
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( \Y_R[1]~2_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Mux14~3_combout\)) # (\B[2]~input_o\ & ((\Shift|rl2[5]~6_combout\))))) ) ) # ( !\Y_R[1]~2_combout\ & ( ((!\B[2]~input_o\ & (\Mux14~3_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|rl2[5]~6_combout\)))) # (\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101101111111001110110111111100001000010011000000100001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux14~3_combout\,
	datad => \Shift|ALT_INV_rl2[5]~6_combout\,
	dataf => \ALT_INV_Y_R[1]~2_combout\,
	combout => \Mux14~4_combout\);

-- Location: LABCELL_X38_Y15_N24
\Mux14~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = ( \Mux14~4_combout\ & ( (\Mux12~0_combout\ & ((!\ShiftFN[0]~input_o\) # ((\Shift|ll2[1]~1_combout\) # (\ShiftFN[1]~input_o\)))) ) ) # ( !\Mux14~4_combout\ & ( (\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & (\Shift|ll2[1]~1_combout\ & 
-- \Mux12~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000101111110000000010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \Shift|ALT_INV_ll2[1]~1_combout\,
	datad => \ALT_INV_Mux12~0_combout\,
	dataf => \ALT_INV_Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: MLABCELL_X39_Y16_N24
\Mux14~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = ( \Mux14~5_combout\ ) # ( !\Mux14~5_combout\ & ( (\Mux14~2_combout\ & ((!\Mux14~1_combout\ & ((\Add|S\(1)))) # (\Mux14~1_combout\ & (\Mux14~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \ALT_INV_Mux14~2_combout\,
	datac => \ALT_INV_Mux14~6_combout\,
	datad => \Add|ALT_INV_S\(1),
	dataf => \ALT_INV_Mux14~5_combout\,
	combout => \Mux14~7_combout\);

-- Location: MLABCELL_X37_Y15_N20
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( !\A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[5]~input_o\)) ) ) ) # ( \A[4]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[0]~input_o\ & ( (\A[2]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X38_Y13_N4
\Shift|rl2[10]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~7_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[13]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[13]~input_o\) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[10]~7_combout\);

-- Location: LABCELL_X38_Y13_N0
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

-- Location: MLABCELL_X39_Y15_N8
\Shift|rl2[6]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~8_combout\ = ( \B[0]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\) # (\A[8]~input_o\) ) ) ) # ( \B[0]~input_o\ 
-- & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[6]~input_o\ & ( (\B[1]~input_o\ & \A[8]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|rl2[6]~8_combout\);

-- Location: LABCELL_X38_Y15_N12
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \Shift|rl2[6]~8_combout\ & ( (!\B[3]~input_o\ & (((\Mux13~0_combout\)) # (\B[2]~input_o\))) # (\B[3]~input_o\ & (((\Y_R[1]~8_combout\)))) ) ) # ( !\Shift|rl2[6]~8_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & 
-- (\Mux13~0_combout\))) # (\B[3]~input_o\ & (((\Y_R[1]~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000111011000010000011101101001100011111110100110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_Mux13~0_combout\,
	datad => \ALT_INV_Y_R[1]~8_combout\,
	dataf => \Shift|ALT_INV_rl2[6]~8_combout\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X37_Y15_N14
\Shift|ll2[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~2_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (((\A[2]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[0]~input_o\)))) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # 
-- (\B[1]~input_o\ & ((\A[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ll2[2]~2_combout\);

-- Location: LABCELL_X38_Y15_N30
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Shift|ll2[2]~2_combout\ & ( (\Mux12~0_combout\ & (((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)) # (\Mux13~1_combout\))) ) ) # ( !\Shift|ll2[2]~2_combout\ & ( (\Mux12~0_combout\ & (\Mux13~1_combout\ & ((!\ShiftFN[0]~input_o\) # 
-- (\ShiftFN[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100000100000011110000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_Mux13~1_combout\,
	dataf => \Shift|ALT_INV_ll2[2]~2_combout\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X39_Y16_N2
\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ = ( \B[1]~input_o\ & ( (!\A[0]~input_o\ & (((!\AddnSub~input_o\ & \A[1]~input_o\)))) # (\A[0]~input_o\ & ((!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (!\AddnSub~input_o\)))) ) ) # ( 
-- !\B[1]~input_o\ & ( (!\A[0]~input_o\ & (((\AddnSub~input_o\ & \A[1]~input_o\)))) # (\A[0]~input_o\ & ((!\B[0]~input_o\ & (\AddnSub~input_o\)) # (\B[0]~input_o\ & ((\A[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000011111000001000001111100010000111101000001000011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\);

-- Location: MLABCELL_X39_Y16_N30
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (((\AddnSub~input_o\ & 
-- !\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101100110011010010110011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	combout => \Add|S\(2));

-- Location: MLABCELL_X39_Y16_N28
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[2]~input_o\ & (!\LogicFN[1]~input_o\ & \A[2]~input_o\)) # (\B[2]~input_o\ & (!\LogicFN[1]~input_o\ $ (\A[2]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[2]~input_o\)) # 
-- (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101010000101001010101000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: MLABCELL_X39_Y16_N8
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \Mux13~3_combout\ & ( ((\Mux14~2_combout\ & ((\Add|S\(2)) # (\Mux14~1_combout\)))) # (\Mux13~2_combout\) ) ) # ( !\Mux13~3_combout\ & ( ((!\Mux14~1_combout\ & (\Mux14~2_combout\ & \Add|S\(2)))) # (\Mux13~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110010111100011111001111110001111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \ALT_INV_Mux14~2_combout\,
	datac => \ALT_INV_Mux13~2_combout\,
	datad => \Add|ALT_INV_S\(2),
	dataf => \ALT_INV_Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: MLABCELL_X39_Y16_N38
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \B[3]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[3]~input_o\)) ) ) # ( !\B[3]~input_o\ & ( (\A[3]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101101111011011110110111101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: MLABCELL_X39_Y13_N14
\Shift|rl2[11]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~9_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[14]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[14]~input_o\) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[13]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[11]~9_combout\);

-- Location: MLABCELL_X39_Y14_N8
\Y_R[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~3_combout\ = ( \A[15]~input_o\ & ( (!\B[2]~input_o\ & (((\Shift|rl2[11]~9_combout\)))) # (\B[2]~input_o\ & (((\ShiftFN[0]~input_o\)) # (\Shift|ll2[0]~0_combout\))) ) ) # ( !\A[15]~input_o\ & ( (!\B[2]~input_o\ & \Shift|rl2[11]~9_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000010011110111110001001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[0]~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_rl2[11]~9_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R[1]~3_combout\);

-- Location: LABCELL_X38_Y14_N18
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \A[4]~input_o\ & ( \A[6]~input_o\ & ( ((!\B[1]~input_o\ & (\A[3]~input_o\)) # (\B[1]~input_o\ & ((\A[5]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & 
-- (\A[3]~input_o\))) # (\B[1]~input_o\ & (((\A[5]~input_o\)) # (\B[0]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (((\A[3]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[5]~input_o\)))) ) ) ) 
-- # ( !\A[4]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[3]~input_o\)) # (\B[1]~input_o\ & ((\A[5]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100001010100110111000011001010111010011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: MLABCELL_X39_Y13_N38
\Shift|rl2[7]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~10_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[8]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (\A[8]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[7]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|rl2[7]~10_combout\);

-- Location: MLABCELL_X39_Y14_N6
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Shift|rl2[7]~10_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\) # (\Mux12~1_combout\)))) # (\B[3]~input_o\ & (\Y_R[1]~3_combout\)) ) ) # ( !\Shift|rl2[7]~10_combout\ & ( (!\B[3]~input_o\ & (((\Mux12~1_combout\ & 
-- !\B[2]~input_o\)))) # (\B[3]~input_o\ & (\Y_R[1]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101001100000101010100111111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~3_combout\,
	datab => \ALT_INV_Mux12~1_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[7]~10_combout\,
	combout => \Mux12~2_combout\);

-- Location: MLABCELL_X37_Y15_N6
\Shift|ll2[3]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~3_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ & ( (\A[2]~input_o\ & !\B[1]~input_o\) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[3]~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[3]~input_o\)) # (\B[1]~input_o\ & ((\A[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[3]~3_combout\);

-- Location: LABCELL_X38_Y15_N38
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Shift|ll2[3]~3_combout\ & ( (\Mux12~0_combout\ & (((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)) # (\Mux12~2_combout\))) ) ) # ( !\Shift|ll2[3]~3_combout\ & ( (\Mux12~0_combout\ & (\Mux12~2_combout\ & ((!\ShiftFN[0]~input_o\) # 
-- (\ShiftFN[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001011000000000000101100000100000011110000010000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux12~0_combout\,
	datad => \ALT_INV_Mux12~2_combout\,
	dataf => \Shift|ALT_INV_ll2[3]~3_combout\,
	combout => \Mux12~3_combout\);

-- Location: MLABCELL_X39_Y16_N20
\Add|GEN_BLOCKS:0:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ = ( \B[2]~input_o\ & ( (!\A[1]~input_o\ & (((!\AddnSub~input_o\ & \A[2]~input_o\)))) # (\A[1]~input_o\ & ((!\B[1]~input_o\ & ((\A[2]~input_o\))) # (\B[1]~input_o\ & (!\AddnSub~input_o\)))) ) ) # ( 
-- !\B[2]~input_o\ & ( (!\A[1]~input_o\ & (((\AddnSub~input_o\ & \A[2]~input_o\)))) # (\A[1]~input_o\ & ((!\B[1]~input_o\ & (\AddnSub~input_o\)) # (\B[1]~input_o\ & ((\A[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000011111000000100001111100010000111100100001000011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\);

-- Location: MLABCELL_X39_Y16_N6
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ = ( \A[0]~input_o\ & ( (!\AddnSub~input_o\ & (\B[0]~input_o\ & (!\B[1]~input_o\ $ (!\A[1]~input_o\)))) # (\AddnSub~input_o\ & (!\B[1]~input_o\ $ (((\A[1]~input_o\))))) ) ) # ( !\A[0]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\AddnSub~input_o\ & (!\B[1]~input_o\ $ (\A[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000100000000001000010000010010101001010001001010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\);

-- Location: MLABCELL_X39_Y16_N34
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ = ( \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ & ( !\AddnSub~input_o\ $ (!\A[2]~input_o\ $ (\B[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\);

-- Location: MLABCELL_X39_Y16_N32
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = ( \B[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[3]~input_o\ $ (((!\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ & !\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\)))) ) ) # ( !\B[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[3]~input_o\ $ 
-- (((\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\) # (\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011011011001001001110010011011011001001001101101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~0_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Add|S\(3));

-- Location: MLABCELL_X39_Y16_N26
\Mux12~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = ( \Add|S\(3) & ( ((\Mux14~2_combout\ & ((!\Mux14~1_combout\) # (\Mux12~4_combout\)))) # (\Mux12~3_combout\) ) ) # ( !\Add|S\(3) & ( ((\Mux14~1_combout\ & (\Mux14~2_combout\ & \Mux12~4_combout\))) # (\Mux12~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100100011111111110010001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~1_combout\,
	datab => \ALT_INV_Mux14~2_combout\,
	datac => \ALT_INV_Mux12~4_combout\,
	datad => \ALT_INV_Mux12~3_combout\,
	dataf => \Add|ALT_INV_S\(3),
	combout => \Mux12~5_combout\);

-- Location: LABCELL_X38_Y14_N2
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = ( !\FuncClass[1]~input_o\ & ( ((!\ShiftFN[1]~input_o\) # ((\FuncClass[0]~input_o\) # (\B[3]~input_o\))) # (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X39_Y15_N16
\Mux11~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ( \B[2]~input_o\ & ( (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\) ) ) # ( !\B[2]~input_o\ & ( (!\FuncClass[1]~input_o\ & (((!\B[3]~input_o\ & \ShiftFN[1]~input_o\)) # (\FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100000000001011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LABCELL_X38_Y14_N0
\Shift|ll2[0]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~5_combout\ = ( \Shift|ll2[0]~0_combout\ & ( \A[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[0]~input_o\,
	dataf => \Shift|ALT_INV_ll2[0]~0_combout\,
	combout => \Shift|ll2[0]~5_combout\);

-- Location: MLABCELL_X37_Y15_N30
\Add|P[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(4) = !\AddnSub~input_o\ $ (!\B[4]~input_o\ $ (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	combout => \Add|P\(4));

-- Location: MLABCELL_X37_Y15_N10
\Shift|ll2[4]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~4_combout\ = ( \A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[1]~input_o\)) ) ) ) # ( \A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( !\B[0]~input_o\ & ( (\A[2]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[4]~4_combout\);

-- Location: LABCELL_X40_Y14_N4
\Add|block_carry_in[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~6_combout\ = ( \Add|block_carry_in[1]~0_combout\ ) # ( !\Add|block_carry_in[1]~0_combout\ & ( (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\,
	dataf => \Add|ALT_INV_block_carry_in[1]~0_combout\,
	combout => \Add|block_carry_in[1]~6_combout\);

-- Location: LABCELL_X38_Y14_N4
\Mux11~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = ( !\ShiftFN[0]~input_o\ & ( (!\Add|P\(4) $ ((!\Add|block_carry_in[1]~6_combout\))) ) ) # ( \ShiftFN[0]~input_o\ & ( ((!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ll2[4]~4_combout\))) # (\B[2]~input_o\ & 
-- (\Shift|ll2[0]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011110000111100000000001111000000111100001111000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[0]~5_combout\,
	datab => \Add|ALT_INV_P\(4),
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[4]~4_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	datag => \Add|ALT_INV_block_carry_in[1]~6_combout\,
	combout => \Mux11~5_combout\);

-- Location: MLABCELL_X39_Y14_N14
\Y_R[1]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~4_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R[1]~4_combout\);

-- Location: MLABCELL_X39_Y15_N14
\Y_R[1]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~5_combout\ = ( \B[2]~input_o\ & ( \Y_R[1]~4_combout\ ) ) # ( !\B[2]~input_o\ & ( \Shift|rl2[12]~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \Shift|ALT_INV_rl2[12]~3_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Y_R[1]~5_combout\);

-- Location: MLABCELL_X39_Y15_N18
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \Y_R[1]~5_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux11~5_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Shift|rl2[8]~2_combout\)) # (\B[3]~input_o\))) ) ) # ( !\Y_R[1]~5_combout\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux11~5_combout\)))) # 
-- (\ShiftFN[1]~input_o\ & (!\B[3]~input_o\ & ((\Shift|rl2[8]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000101110000011000010111000011101001111110001110100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Mux11~5_combout\,
	datad => \Shift|ALT_INV_rl2[8]~2_combout\,
	dataf => \ALT_INV_Y_R[1]~5_combout\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X39_Y15_N22
\Mux11~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = ( \A[4]~input_o\ & ( (!\B[4]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) # (\B[4]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[4]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100010101000101010001101101011011010110110101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: MLABCELL_X39_Y15_N4
\Mux11~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ( \Shift|rl2[4]~1_combout\ & ( (!\Mux11~1_combout\ & (\Mux11~2_combout\)) # (\Mux11~1_combout\ & ((!\Mux11~2_combout\ & (\Mux11~0_combout\)) # (\Mux11~2_combout\ & ((\Mux11~3_combout\))))) ) ) # ( !\Shift|rl2[4]~1_combout\ & ( 
-- (\Mux11~1_combout\ & ((!\Mux11~2_combout\ & (\Mux11~0_combout\)) # (\Mux11~2_combout\ & ((\Mux11~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010100100110001101110010011000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~1_combout\,
	datab => \ALT_INV_Mux11~2_combout\,
	datac => \ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Mux11~3_combout\,
	dataf => \Shift|ALT_INV_rl2[4]~1_combout\,
	combout => \Mux11~4_combout\);

-- Location: LABCELL_X40_Y14_N16
\Add|S[5]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[5]~2_combout\ = ( \A[5]~input_o\ & ( \A[4]~input_o\ & ( !\B[5]~input_o\ $ (((!\Add|block_carry_in[1]~6_combout\ & ((\B[4]~input_o\))) # (\Add|block_carry_in[1]~6_combout\ & (!\AddnSub~input_o\)))) ) ) ) # ( !\A[5]~input_o\ & ( \A[4]~input_o\ & ( 
-- !\B[5]~input_o\ $ (((!\Add|block_carry_in[1]~6_combout\ & ((!\B[4]~input_o\))) # (\Add|block_carry_in[1]~6_combout\ & (\AddnSub~input_o\)))) ) ) ) # ( \A[5]~input_o\ & ( !\A[4]~input_o\ & ( !\B[5]~input_o\ $ (((!\Add|block_carry_in[1]~6_combout\ & 
-- (\AddnSub~input_o\)) # (\Add|block_carry_in[1]~6_combout\ & ((\B[4]~input_o\))))) ) ) ) # ( !\A[5]~input_o\ & ( !\A[4]~input_o\ & ( !\B[5]~input_o\ $ (((!\Add|block_carry_in[1]~6_combout\ & (!\AddnSub~input_o\)) # (\Add|block_carry_in[1]~6_combout\ & 
-- ((!\B[4]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101101010100110101001010101011001101010011010011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_block_carry_in[1]~6_combout\,
	datad => \ALT_INV_B[4]~input_o\,
	datae => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|S[5]~2_combout\);

-- Location: LABCELL_X38_Y15_N0
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \B[3]~input_o\ & ( \B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S[5]~2_combout\ & !\ShiftFN[1]~input_o\)) ) ) ) # ( !\B[3]~input_o\ & ( \B[2]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & 
-- (\Add|S[5]~2_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ll2[1]~1_combout\))))) ) ) ) # ( \B[3]~input_o\ & ( !\B[2]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S[5]~2_combout\ & !\ShiftFN[1]~input_o\)) ) ) ) # ( !\B[3]~input_o\ & ( !\B[2]~input_o\ & ( 
-- (!\ShiftFN[0]~input_o\ & (\Add|S[5]~2_combout\ & !\ShiftFN[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100111000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Add|ALT_INV_S[5]~2_combout\,
	datac => \Shift|ALT_INV_ll2[1]~1_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X37_Y15_N34
\Shift|ll2[5]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~6_combout\ = ( \A[4]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[2]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \B[0]~input_o\ & ( (\A[2]~input_o\ & \B[1]~input_o\) ) ) ) # ( \A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[5]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[5]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[5]~6_combout\);

-- Location: MLABCELL_X39_Y12_N16
\Y_R[1]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~6_combout\ = ( \B[0]~input_o\ & ( \A[15]~input_o\ & ( (!\B[2]~input_o\ & (((\ShiftFN[0]~input_o\ & \B[1]~input_o\)) # (\Shift|rl2[13]~5_combout\))) # (\B[2]~input_o\ & (\ShiftFN[0]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[15]~input_o\ & ( 
-- (!\B[2]~input_o\ & (((\B[1]~input_o\) # (\Shift|rl2[13]~5_combout\)))) # (\B[2]~input_o\ & (\ShiftFN[0]~input_o\)) ) ) ) # ( \B[0]~input_o\ & ( !\A[15]~input_o\ & ( (\Shift|rl2[13]~5_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( 
-- !\A[15]~input_o\ & ( (\Shift|rl2[13]~5_combout\ & !\B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000111111010101010011011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_rl2[13]~5_combout\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R[1]~6_combout\);

-- Location: LABCELL_X38_Y15_N20
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( !\B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & (\Shift|ll2[5]~6_combout\ & ((!\B[2]~input_o\))))) # (\ShiftFN[1]~input_o\ & ((((\Shift|rl2[9]~4_combout\))))) ) ) # ( \B[3]~input_o\ & ( (((\Y_R[1]~6_combout\ & 
-- (\ShiftFN[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ll2[5]~6_combout\,
	datac => \ALT_INV_Y_R[1]~6_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	datag => \Shift|ALT_INV_rl2[9]~4_combout\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X39_Y12_N34
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \B[5]~input_o\ & ( \LogicFN[0]~input_o\ & ( !\A[5]~input_o\ $ (\LogicFN[1]~input_o\) ) ) ) # ( !\B[5]~input_o\ & ( \LogicFN[0]~input_o\ & ( (\A[5]~input_o\ & !\LogicFN[1]~input_o\) ) ) ) # ( \B[5]~input_o\ & ( !\LogicFN[0]~input_o\ ) 
-- ) # ( !\B[5]~input_o\ & ( !\LogicFN[0]~input_o\ & ( (\A[5]~input_o\ & \LogicFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111101010000010100001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_B[5]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X38_Y15_N4
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \Shift|rl2[5]~6_combout\ & ( \Mux10~0_combout\ & ( ((\Mux11~1_combout\ & ((\Mux10~3_combout\) # (\Mux10~1_combout\)))) # (\Mux11~2_combout\) ) ) ) # ( !\Shift|rl2[5]~6_combout\ & ( \Mux10~0_combout\ & ( (\Mux11~1_combout\ & 
-- (((\Mux11~2_combout\) # (\Mux10~3_combout\)) # (\Mux10~1_combout\))) ) ) ) # ( \Shift|rl2[5]~6_combout\ & ( !\Mux10~0_combout\ & ( (!\Mux11~1_combout\ & (((\Mux11~2_combout\)))) # (\Mux11~1_combout\ & (!\Mux11~2_combout\ & ((\Mux10~3_combout\) # 
-- (\Mux10~1_combout\)))) ) ) ) # ( !\Shift|rl2[5]~6_combout\ & ( !\Mux10~0_combout\ & ( (\Mux11~1_combout\ & (!\Mux11~2_combout\ & ((\Mux10~3_combout\) # (\Mux10~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000000100111100110000010011001100110001001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux10~1_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux10~3_combout\,
	datad => \ALT_INV_Mux11~2_combout\,
	datae => \Shift|ALT_INV_rl2[5]~6_combout\,
	dataf => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X38_Y13_N32
\Y_R[1]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[1]~7_combout\ = ( \B[2]~input_o\ & ( \B[0]~input_o\ & ( (\A[15]~input_o\ & \ShiftFN[0]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( \B[0]~input_o\ & ( (\A[15]~input_o\ & ((!\B[1]~input_o\) # (\ShiftFN[0]~input_o\))) ) ) ) # ( \B[2]~input_o\ & ( 
-- !\B[0]~input_o\ & ( (\A[15]~input_o\ & \ShiftFN[0]~input_o\) ) ) ) # ( !\B[2]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (((\A[14]~input_o\)))) # (\B[1]~input_o\ & (\A[15]~input_o\ & ((\ShiftFN[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101000000000101010101010000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Y_R[1]~7_combout\);

-- Location: LABCELL_X40_Y14_N8
\Add|G[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(4) = ( \A[4]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|G\(4));

-- Location: LABCELL_X40_Y14_N24
\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = (!\Add|G\(4) & (\A[5]~input_o\ & (!\B[5]~input_o\ $ (!\AddnSub~input_o\)))) # (\Add|G\(4) & ((!\B[5]~input_o\ $ (!\AddnSub~input_o\)) # (\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101111000001100110111100000110011011110000011001101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_G\(4),
	datad => \ALT_INV_A[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X40_Y14_N14
\Add|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(6) = ( \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ & ( !\Add|P\(6) ) ) # ( !\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ & ( !\Add|P\(6) $ (((!\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\) # (!\Add|block_carry_in[1]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(6),
	datac => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \Add|ALT_INV_block_carry_in[1]~6_combout\,
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	combout => \Add|S\(6));

-- Location: LABCELL_X38_Y14_N26
\Shift|ll2[6]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~7_combout\ = ( \A[4]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[3]~input_o\))) ) ) ) # ( !\A[4]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\) # 
-- ((\A[5]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[3]~input_o\))) ) ) ) # ( \A[4]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[5]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[3]~input_o\)))) ) ) ) # 
-- ( !\A[4]~input_o\ & ( !\A[6]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[5]~input_o\))) # (\B[1]~input_o\ & (\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011010001010110011110001001101010111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ll2[6]~7_combout\);

-- Location: LABCELL_X38_Y13_N28
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( !\B[3]~input_o\ & ( \ShiftFN[0]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ll2[6]~7_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[2]~2_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\ShiftFN[0]~input_o\ & ( \Add|S\(6) ) ) ) # ( !\B[3]~input_o\ 
-- & ( !\ShiftFN[0]~input_o\ & ( \Add|S\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100110011000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(6),
	datab => \Shift|ALT_INV_ll2[6]~7_combout\,
	datac => \Shift|ALT_INV_ll2[2]~2_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X38_Y13_N16
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \Mux9~0_combout\ & ( (!\ShiftFN[1]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|rl2[10]~7_combout\))) # (\B[3]~input_o\ & (\Y_R[1]~7_combout\))) ) ) # ( !\Mux9~0_combout\ & ( (\ShiftFN[1]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\Shift|rl2[10]~7_combout\))) # (\B[3]~input_o\ & (\Y_R[1]~7_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001111001101111011111100110111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Y_R[1]~7_combout\,
	datad => \Shift|ALT_INV_rl2[10]~7_combout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X39_Y15_N20
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \A[6]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (\B[6]~input_o\))) # (\LogicFN[0]~input_o\ & (!\B[6]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X39_Y15_N6
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \Mux9~2_combout\ & ( (!\Mux11~1_combout\ & (\Mux11~2_combout\ & ((\Shift|rl2[6]~8_combout\)))) # (\Mux11~1_combout\ & (((\Mux9~1_combout\)) # (\Mux11~2_combout\))) ) ) # ( !\Mux9~2_combout\ & ( (!\Mux11~1_combout\ & (\Mux11~2_combout\ 
-- & ((\Shift|rl2[6]~8_combout\)))) # (\Mux11~1_combout\ & (!\Mux11~2_combout\ & (\Mux9~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011000010101001101110001010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux11~1_combout\,
	datab => \ALT_INV_Mux11~2_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \Shift|ALT_INV_rl2[6]~8_combout\,
	dataf => \ALT_INV_Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X39_Y14_N0
\Mux8~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ( !\B[3]~input_o\ & ( ((!\B[2]~input_o\ & (((\Shift|rl2[7]~10_combout\)))) # (\B[2]~input_o\ & (\Shift|rl2[11]~9_combout\))) ) ) # ( \B[3]~input_o\ & ( (\A[15]~input_o\ & (((!\B[2]~input_o\ & (\Shift|ll2[0]~0_combout\))) # 
-- (\ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100000011000001010000110111001111110011110000010100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \Shift|ALT_INV_ll2[0]~0_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_rl2[7]~10_combout\,
	datag => \Shift|ALT_INV_rl2[11]~9_combout\,
	combout => \Mux8~2_combout\);

-- Location: MLABCELL_X39_Y15_N30
\Logic|Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux8~0_combout\ = ( \B[7]~input_o\ & ( \LogicFN[0]~input_o\ & ( !\LogicFN[1]~input_o\ $ (\A[7]~input_o\) ) ) ) # ( !\B[7]~input_o\ & ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & \A[7]~input_o\) ) ) ) # ( \B[7]~input_o\ & ( 
-- !\LogicFN[0]~input_o\ ) ) # ( !\B[7]~input_o\ & ( !\LogicFN[0]~input_o\ & ( (\LogicFN[1]~input_o\ & \A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100001100000011001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux8~0_combout\);

-- Location: LABCELL_X38_Y14_N28
\Shift|ll2[7]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~8_combout\ = ( \A[4]~input_o\ & ( \A[6]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)))) # 
-- (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ll2[7]~8_combout\);

-- Location: LABCELL_X40_Y14_N10
\Add|GEN_BLOCKS:1:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ = ( \B[5]~input_o\ & ( (!\B[6]~input_o\ & (\A[6]~input_o\ & ((\A[5]~input_o\) # (\AddnSub~input_o\)))) # (\B[6]~input_o\ & (!\AddnSub~input_o\ & ((\A[5]~input_o\) # (\A[6]~input_o\)))) ) ) # ( !\B[5]~input_o\ & 
-- ( (!\B[6]~input_o\ & (\AddnSub~input_o\ & ((\A[5]~input_o\) # (\A[6]~input_o\)))) # (\B[6]~input_o\ & (\A[6]~input_o\ & ((!\AddnSub~input_o\) # (\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000100111000001100010011100000110010011100000011001001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X40_Y14_N32
\Add|GEN_BLOCKS:1:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = ( \AddnSub~input_o\ & ( (\Add|G\(4) & (!\B[5]~input_o\ $ (\A[5]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (\Add|G\(4) & (!\B[5]~input_o\ $ (!\A[5]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datac => \Add|ALT_INV_G\(4),
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X40_Y14_N30
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ = ( \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ & ( \Add|P\(6) ) ) # ( !\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ & ( (\Add|P\(6) & (\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & 
-- \Add|block_carry_in[1]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(6),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \Add|ALT_INV_block_carry_in[1]~6_combout\,
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\);

-- Location: LABCELL_X40_Y14_N6
\Add|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(7) = ( \B[7]~input_o\ & ( !\A[7]~input_o\ $ (!\AddnSub~input_o\ $ (((!\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ & !\Add|GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\)))) ) ) # ( !\B[7]~input_o\ & ( !\A[7]~input_o\ $ (!\AddnSub~input_o\ $ 
-- (((\Add|GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\) # (\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110011001011010011001100110010110011001101001011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[3]~0_combout\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|S\(7));

-- Location: MLABCELL_X39_Y14_N16
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[3]~3_combout\ & ( (!\ShiftFN[0]~input_o\ & \Add|S\(7)) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[3]~3_combout\ & ( (!\ShiftFN[0]~input_o\ & (((\Add|S\(7))))) # (\ShiftFN[0]~input_o\ & 
-- (((\Shift|ll2[7]~8_combout\)) # (\B[2]~input_o\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[3]~3_combout\ & ( (!\ShiftFN[0]~input_o\ & \Add|S\(7)) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[3]~3_combout\ & ( (!\ShiftFN[0]~input_o\ & (((\Add|S\(7))))) # 
-- (\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & (\Shift|ll2[7]~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010101110000000001010101000010101101111110000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[7]~8_combout\,
	datad => \Add|ALT_INV_S\(7),
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[3]~3_combout\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X38_Y15_N10
\Mux8~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = ( \ShiftFN[1]~input_o\ & ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux8~0_combout\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux8~0_combout\) ) ) ) # ( 
-- \ShiftFN[1]~input_o\ & ( !\FuncClass[0]~input_o\ & ( (\Mux8~2_combout\ & !\FuncClass[1]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100010001000100010000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux8~2_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Logic|ALT_INV_Mux8~0_combout\,
	datad => \ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: MLABCELL_X39_Y15_N12
\Y_R_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R_Ext[8]~0_combout\ = ( \B[3]~input_o\ & ( \Y_R[1]~4_combout\ ) ) # ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|rl2[8]~2_combout\))) # (\B[2]~input_o\ & (\Shift|rl2[12]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \Shift|ALT_INV_rl2[12]~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_rl2[8]~2_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Y_R_Ext[8]~0_combout\);

-- Location: LABCELL_X38_Y14_N32
\Shift|ll2[8]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~9_combout\ = ( \A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[8]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[5]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ 
-- & (\A[8]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[5]~input_o\)))) ) ) ) # ( \A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[8]~input_o\))) # (\B[1]~input_o\ & (((\A[5]~input_o\ & 
-- \B[0]~input_o\)))) ) ) ) # ( !\A[7]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (\A[8]~input_o\ & ((!\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[5]~input_o\ & \B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101001000101010111101110111000001010111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ll2[8]~9_combout\);

-- Location: LABCELL_X40_Y12_N30
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = ( \Add|block_carry_in[2]~3_combout\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\ $ (\A[8]~input_o\)) ) ) # ( !\Add|block_carry_in[2]~3_combout\ & ( !\AddnSub~input_o\ $ (!\B[8]~input_o\ $ (!\A[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[2]~3_combout\,
	combout => \Add|S\(8));

-- Location: LABCELL_X38_Y14_N20
\Y_LorS_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS_Ext[8]~0_combout\ = ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Add|S\(8))))) # (\ShiftFN[0]~input_o\ & (((!\B[2]~input_o\ & (\Shift|ll2[8]~9_combout\)) # (\B[2]~input_o\ & ((\Shift|ll2[4]~4_combout\)))))) ) ) # ( \B[3]~input_o\ & ( 
-- ((!\ShiftFN[0]~input_o\ & (\Add|S\(8))) # (\ShiftFN[0]~input_o\ & (((\Shift|ll2[0]~5_combout\ & !\B[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001101010101001100110000111100110011000011110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[8]~9_combout\,
	datab => \Add|ALT_INV_S\(8),
	datac => \Shift|ALT_INV_ll2[0]~5_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	datag => \Shift|ALT_INV_ll2[4]~4_combout\,
	combout => \Y_LorS_Ext[8]~0_combout\);

-- Location: LABCELL_X38_Y11_N24
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \Y_LorS_Ext[8]~0_combout\ & ( (!\ShiftFN[1]~input_o\) # (\Y_R_Ext[8]~0_combout\) ) ) # ( !\Y_LorS_Ext[8]~0_combout\ & ( (\Y_R_Ext[8]~0_combout\ & \ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X38_Y11_N22
\Logic|Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux7~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[8]~input_o\ & (\B[8]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[8]~input_o\ & (!\B[8]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[8]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux7~0_combout\);

-- Location: LABCELL_X38_Y11_N20
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux7~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \Logic|ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X59_Y9_N94
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LABCELL_X38_Y11_N8
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !\FuncClass[0]~input_o\ & ( (!\ExtWord~input_o\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X38_Y11_N14
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Y_LorS_Ext[8]~0_combout\ & ( (\ExtWord~input_o\ & (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & \Y_R_Ext[8]~0_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Y_LorS_Ext[8]~0_combout\ & ( 
-- (\ExtWord~input_o\ & (!\FuncClass[1]~input_o\ & !\FuncClass[0]~input_o\)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Y_LorS_Ext[8]~0_combout\ & ( (\ExtWord~input_o\ & (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & \Y_R_Ext[8]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LABCELL_X38_Y11_N26
\Mux0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LABCELL_X38_Y13_N18
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \ShiftFN[1]~input_o\ & ( \B[3]~input_o\ ) ) # ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: MLABCELL_X39_Y15_N34
\Shift|ll2[9]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~10_combout\ = ( \B[0]~input_o\ & ( \A[6]~input_o\ & ( (\B[1]~input_o\) # (\A[8]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[6]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( \B[0]~input_o\ 
-- & ( !\A[6]~input_o\ & ( (\A[8]~input_o\ & !\B[1]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ll2[9]~10_combout\);

-- Location: LABCELL_X38_Y15_N32
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ll2[5]~6_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[5]~6_combout\))) # (\B[3]~input_o\ & 
-- (\Shift|ll2[1]~1_combout\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ll2[9]~10_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[1]~1_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ll2[9]~10_combout\))) # (\B[3]~input_o\ & (\Shift|ll2[1]~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100010001110111010000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[1]~1_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ll2[9]~10_combout\,
	datad => \Shift|ALT_INV_ll2[5]~6_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X40_Y12_N38
\Add|S[9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[9]~1_combout\ = ( \B[9]~input_o\ & ( \Add|block_carry_in[2]~3_combout\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & (\AddnSub~input_o\)) # (\A[8]~input_o\ & ((\B[8]~input_o\))))) ) ) ) # ( !\B[9]~input_o\ & ( \Add|block_carry_in[2]~3_combout\ & ( 
-- !\A[9]~input_o\ $ (((!\A[8]~input_o\ & (!\AddnSub~input_o\)) # (\A[8]~input_o\ & ((!\B[8]~input_o\))))) ) ) ) # ( \B[9]~input_o\ & ( !\Add|block_carry_in[2]~3_combout\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & ((\B[8]~input_o\))) # (\A[8]~input_o\ & 
-- (!\AddnSub~input_o\)))) ) ) ) # ( !\B[9]~input_o\ & ( !\Add|block_carry_in[2]~3_combout\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & ((!\B[8]~input_o\))) # (\A[8]~input_o\ & (\AddnSub~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010011001101001010110011001100110010110101001100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[8]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[9]~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[2]~3_combout\,
	combout => \Add|S[9]~1_combout\);

-- Location: MLABCELL_X39_Y12_N0
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \Y_R[1]~2_combout\ & ( \Add|S[9]~1_combout\ & ( (!\Mux4~0_combout\ & (((\Mux6~0_combout\ & !\ShiftFN[1]~input_o\)))) # (\Mux4~0_combout\ & (((!\ShiftFN[1]~input_o\)) # (\Y_R[1]~4_combout\))) ) ) ) # ( !\Y_R[1]~2_combout\ & ( 
-- \Add|S[9]~1_combout\ & ( (!\Mux4~0_combout\ & (((\ShiftFN[1]~input_o\) # (\Mux6~0_combout\)))) # (\Mux4~0_combout\ & (((!\ShiftFN[1]~input_o\)) # (\Y_R[1]~4_combout\))) ) ) ) # ( \Y_R[1]~2_combout\ & ( !\Add|S[9]~1_combout\ & ( (!\Mux4~0_combout\ & 
-- (((\Mux6~0_combout\ & !\ShiftFN[1]~input_o\)))) # (\Mux4~0_combout\ & (\Y_R[1]~4_combout\ & ((\ShiftFN[1]~input_o\)))) ) ) ) # ( !\Y_R[1]~2_combout\ & ( !\Add|S[9]~1_combout\ & ( (!\Mux4~0_combout\ & (((\ShiftFN[1]~input_o\) # (\Mux6~0_combout\)))) # 
-- (\Mux4~0_combout\ & (\Y_R[1]~4_combout\ & ((\ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011011101000011000001000100111111110111010011111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Y_R[1]~2_combout\,
	dataf => \Add|ALT_INV_S[9]~1_combout\,
	combout => \Mux6~1_combout\);

-- Location: LABCELL_X40_Y12_N14
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[9]~input_o\ $ (!\A[9]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[9]~input_o\ & \A[9]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[9]~input_o\)) # 
-- (\B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100001010101001010000101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X38_Y11_N18
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \Mux6~2_combout\ & ( (((\Mux0~0_combout\ & \Mux6~1_combout\)) # (\Mux0~1_combout\)) # (\Mux6~3_combout\) ) ) # ( !\Mux6~2_combout\ & ( ((\Mux0~0_combout\ & \Mux6~1_combout\)) # (\Mux6~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_Mux6~1_combout\,
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \Mux6~4_combout\);

-- Location: MLABCELL_X39_Y13_N22
\Shift|ll2[10]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~11_combout\ = ( \A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[7]~input_o\)) ) ) ) # ( !\A[10]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & 
-- (\A[7]~input_o\)) ) ) ) # ( \A[10]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[8]~input_o\) ) ) ) # ( !\A[10]~input_o\ & ( !\B[0]~input_o\ & ( (\A[8]~input_o\ & \B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	datae => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[10]~11_combout\);

-- Location: LABCELL_X38_Y13_N22
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[10]~11_combout\ & ( (\Shift|ll2[2]~2_combout\ & ((!\B[2]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\) # (\Shift|ll2[6]~7_combout\) ) 
-- ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[10]~11_combout\ & ( (\Shift|ll2[2]~2_combout\ & ((!\B[2]~input_o\) # (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[10]~11_combout\ & ( (\B[2]~input_o\ & \Shift|ll2[6]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000000001111101010111011101110110000000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Shift|ALT_INV_ll2[6]~7_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ll2[2]~2_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[10]~11_combout\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X40_Y12_N26
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

-- Location: LABCELL_X40_Y12_N6
\Add|S[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(10) = ( \Add|block_carry_in[2]~3_combout\ & ( !\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ $ (!\Add|P\(10)) ) ) # ( !\Add|block_carry_in[2]~3_combout\ & ( !\Add|P\(10) $ (((!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & 
-- !\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	datad => \Add|ALT_INV_P\(10),
	dataf => \Add|ALT_INV_block_carry_in[2]~3_combout\,
	combout => \Add|S\(10));

-- Location: LABCELL_X38_Y13_N24
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \Add|S\(10) & ( \ShiftFN[1]~input_o\ & ( (!\Mux4~0_combout\ & ((\Y_R[1]~8_combout\))) # (\Mux4~0_combout\ & (\Y_R[1]~4_combout\)) ) ) ) # ( !\Add|S\(10) & ( \ShiftFN[1]~input_o\ & ( (!\Mux4~0_combout\ & ((\Y_R[1]~8_combout\))) # 
-- (\Mux4~0_combout\ & (\Y_R[1]~4_combout\)) ) ) ) # ( \Add|S\(10) & ( !\ShiftFN[1]~input_o\ & ( (\Mux5~0_combout\) # (\Mux4~0_combout\) ) ) ) # ( !\Add|S\(10) & ( !\ShiftFN[1]~input_o\ & ( (!\Mux4~0_combout\ & \Mux5~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux5~0_combout\,
	datac => \ALT_INV_Y_R[1]~4_combout\,
	datad => \ALT_INV_Y_R[1]~8_combout\,
	datae => \Add|ALT_INV_S\(10),
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X38_Y11_N2
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[10]~input_o\ & (!\LogicFN[1]~input_o\ & \B[10]~input_o\)) # (\A[10]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[10]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[10]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111101001001010010010100100101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X38_Y11_N16
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Mux5~2_combout\ & ( (((\Mux0~0_combout\ & \Mux5~1_combout\)) # (\Mux0~1_combout\)) # (\Mux6~3_combout\) ) ) # ( !\Mux5~2_combout\ & ( ((\Mux0~0_combout\ & \Mux5~1_combout\)) # (\Mux6~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \ALT_INV_Mux5~1_combout\,
	datad => \ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X40_Y12_N16
\Add|GEN_BLOCKS:2:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ = ( \AddnSub~input_o\ & ( (\Add|G\(8) & (!\A[9]~input_o\ $ (\B[9]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (\Add|G\(8) & (!\A[9]~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_G\(8),
	datab => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X40_Y12_N32
\Add|GEN_BLOCKS:2:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ = ( \A[9]~input_o\ & ( (!\B[10]~input_o\ & ((!\B[9]~input_o\ & ((\AddnSub~input_o\))) # (\B[9]~input_o\ & (\A[10]~input_o\)))) # (\B[10]~input_o\ & ((!\B[9]~input_o\ & (\A[10]~input_o\)) # (\B[9]~input_o\ & 
-- ((!\AddnSub~input_o\))))) ) ) # ( !\A[9]~input_o\ & ( (\A[10]~input_o\ & (!\B[10]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010000011101011101000001110101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X40_Y12_N10
\Add|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(11) = ( \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ & ( \Add|block_carry_in[2]~3_combout\ & ( !\Add|P\(11) ) ) ) # ( !\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ & ( \Add|block_carry_in[2]~3_combout\ & ( !\Add|P\(11) $ 
-- (((!\Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\) # (!\Add|P\(10)))) ) ) ) # ( \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ & ( !\Add|block_carry_in[2]~3_combout\ & ( !\Add|P\(11) ) ) ) # ( !\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ & ( 
-- !\Add|block_carry_in[2]~3_combout\ & ( !\Add|P\(11) $ (((!\Add|P\(10)) # ((!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & !\Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011111111000111111110000000000000011111111001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~1_combout\,
	datac => \Add|ALT_INV_P\(10),
	datad => \Add|ALT_INV_P\(11),
	datae => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\,
	dataf => \Add|ALT_INV_block_carry_in[2]~3_combout\,
	combout => \Add|S\(11));

-- Location: MLABCELL_X39_Y13_N4
\Shift|ll2[11]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~12_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (\A[10]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ll2[11]~12_combout\);

-- Location: MLABCELL_X39_Y14_N20
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[11]~12_combout\ & ( (\Shift|ll2[3]~3_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[2]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[11]~12_combout\ & ( (!\B[2]~input_o\) # (\Shift|ll2[7]~8_combout\) ) 
-- ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[11]~12_combout\ & ( (\Shift|ll2[3]~3_combout\ & ((!\ShiftFN[0]~input_o\) # (!\B[2]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[11]~12_combout\ & ( (\B[2]~input_o\ & \Shift|ll2[7]~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000001110111011001111110011110000000011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[7]~8_combout\,
	datad => \Shift|ALT_INV_ll2[3]~3_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[11]~12_combout\,
	combout => \Mux4~1_combout\);

-- Location: MLABCELL_X39_Y14_N24
\Mux4~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux4~1_combout\ & ( (!\Mux4~0_combout\ & ((\Y_R[1]~3_combout\))) # (\Mux4~0_combout\ & (\Y_R[1]~4_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux4~1_combout\ & ( (!\Mux4~0_combout\) # (\Add|S\(11)) ) ) ) 
-- # ( \ShiftFN[1]~input_o\ & ( !\Mux4~1_combout\ & ( (!\Mux4~0_combout\ & ((\Y_R[1]~3_combout\))) # (\Mux4~0_combout\ & (\Y_R[1]~4_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux4~1_combout\ & ( (\Mux4~0_combout\ & \Add|S\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000111010001110111001100111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_Y_R[1]~3_combout\,
	datad => \Add|ALT_INV_S\(11),
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux4~1_combout\,
	combout => \Mux4~2_combout\);

-- Location: LABCELL_X38_Y11_N6
\Mux4~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[11]~input_o\ $ (!\B[11]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[11]~input_o\ & \B[11]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[11]~input_o\)) # 
-- (\B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LABCELL_X38_Y11_N28
\Mux4~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = ( \Mux4~3_combout\ & ( (((\Mux0~0_combout\ & \Mux4~2_combout\)) # (\Mux0~1_combout\)) # (\Mux6~3_combout\) ) ) # ( !\Mux4~3_combout\ & ( ((\Mux0~0_combout\ & \Mux4~2_combout\)) # (\Mux6~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110111001101110011011100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \ALT_INV_Mux4~2_combout\,
	datad => \ALT_INV_Mux0~1_combout\,
	dataf => \ALT_INV_Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LABCELL_X38_Y11_N0
\Mux3~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[12]~input_o\ $ (!\A[12]~input_o\))) # (\LogicFN[1]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[12]~input_o\)) # 
-- (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LABCELL_X40_Y14_N12
\Add|S[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(12) = ( \AddnSub~input_o\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\ $ (\Add|block_carry_in[3]~5_combout\)) ) ) # ( !\AddnSub~input_o\ & ( !\A[12]~input_o\ $ (!\B[12]~input_o\ $ (!\Add|block_carry_in[3]~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_B[12]~input_o\,
	datad => \Add|ALT_INV_block_carry_in[3]~5_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(12));

-- Location: MLABCELL_X39_Y13_N8
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[11]~input_o\)) # (\B[1]~input_o\ & 
-- ((\A[9]~input_o\))) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X38_Y14_N38
\Mux3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = ( \Shift|ll2[0]~5_combout\ & ( \B[2]~input_o\ & ( (\B[3]~input_o\) # (\Shift|ll2[8]~9_combout\) ) ) ) # ( !\Shift|ll2[0]~5_combout\ & ( \B[2]~input_o\ & ( (\Shift|ll2[8]~9_combout\ & !\B[3]~input_o\) ) ) ) # ( \Shift|ll2[0]~5_combout\ & 
-- ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Mux3~0_combout\)) # (\B[3]~input_o\ & ((\Shift|ll2[4]~4_combout\))) ) ) ) # ( !\Shift|ll2[0]~5_combout\ & ( !\B[2]~input_o\ & ( (!\B[3]~input_o\ & (\Mux3~0_combout\)) # (\B[3]~input_o\ & 
-- ((\Shift|ll2[4]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[8]~9_combout\,
	datab => \ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ll2[4]~4_combout\,
	datae => \Shift|ALT_INV_ll2[0]~5_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: MLABCELL_X39_Y15_N38
\Mux3~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux4~0_combout\ & ( \Y_R[1]~4_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux4~0_combout\ & ( \Add|S\(12) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux4~0_combout\ & ( \Y_R[1]~5_combout\ ) ) ) # ( 
-- !\ShiftFN[1]~input_o\ & ( !\Mux4~0_combout\ & ( \Mux3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(12),
	datab => \ALT_INV_Mux3~1_combout\,
	datac => \ALT_INV_Y_R[1]~5_combout\,
	datad => \ALT_INV_Y_R[1]~4_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux4~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LABCELL_X38_Y11_N30
\Mux3~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = ( \Mux3~2_combout\ & ( (((\Mux0~1_combout\ & \Mux3~3_combout\)) # (\Mux6~3_combout\)) # (\Mux0~0_combout\) ) ) # ( !\Mux3~2_combout\ & ( ((\Mux0~1_combout\ & \Mux3~3_combout\)) # (\Mux6~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111101110111011111110111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux6~3_combout\,
	datac => \ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_Mux3~3_combout\,
	dataf => \ALT_INV_Mux3~2_combout\,
	combout => \Mux3~4_combout\);

-- Location: MLABCELL_X39_Y13_N32
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \A[12]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \B[0]~input_o\ & ( (\B[1]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100010001000100011011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X38_Y15_N16
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Shift|ll2[5]~6_combout\ & ( \Shift|ll2[9]~10_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\) # (\Mux2~0_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ll2[1]~1_combout\))) ) ) ) # ( !\Shift|ll2[5]~6_combout\ & ( 
-- \Shift|ll2[9]~10_combout\ & ( (!\B[2]~input_o\ & (((\Mux2~0_combout\ & !\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)) # (\Shift|ll2[1]~1_combout\))) ) ) ) # ( \Shift|ll2[5]~6_combout\ & ( !\Shift|ll2[9]~10_combout\ & ( (!\B[2]~input_o\ & 
-- (((\B[3]~input_o\) # (\Mux2~0_combout\)))) # (\B[2]~input_o\ & (\Shift|ll2[1]~1_combout\ & ((\B[3]~input_o\)))) ) ) ) # ( !\Shift|ll2[5]~6_combout\ & ( !\Shift|ll2[9]~10_combout\ & ( (!\B[2]~input_o\ & (((\Mux2~0_combout\ & !\B[3]~input_o\)))) # 
-- (\B[2]~input_o\ & (\Shift|ll2[1]~1_combout\ & ((\B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000101001100001111010100111111000001010011111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[1]~1_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[5]~6_combout\,
	dataf => \Shift|ALT_INV_ll2[9]~10_combout\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X38_Y12_N34
\Add|S[13]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[13]~0_combout\ = ( \AddnSub~input_o\ & ( \B[12]~input_o\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (((!\A[12]~input_o\) # (\Add|block_carry_in[3]~5_combout\)))) ) ) ) # ( !\AddnSub~input_o\ & ( \B[12]~input_o\ & ( !\A[13]~input_o\ $ 
-- (!\B[13]~input_o\ $ (((!\Add|block_carry_in[3]~5_combout\) # (\A[12]~input_o\)))) ) ) ) # ( \AddnSub~input_o\ & ( !\B[12]~input_o\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (((\Add|block_carry_in[3]~5_combout\ & !\A[12]~input_o\)))) ) ) ) # ( 
-- !\AddnSub~input_o\ & ( !\B[12]~input_o\ & ( !\A[13]~input_o\ $ (!\B[13]~input_o\ $ (((!\Add|block_carry_in[3]~5_combout\ & \A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110111010010010010111011010010110100010010111101001000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[3]~5_combout\,
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Add|S[13]~0_combout\);

-- Location: MLABCELL_X39_Y12_N24
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \Add|S[13]~0_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux4~0_combout\ & ((\Y_R[1]~6_combout\))) # (\Mux4~0_combout\ & (\Y_R[1]~4_combout\)) ) ) ) # ( !\Add|S[13]~0_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux4~0_combout\ & 
-- ((\Y_R[1]~6_combout\))) # (\Mux4~0_combout\ & (\Y_R[1]~4_combout\)) ) ) ) # ( \Add|S[13]~0_combout\ & ( !\ShiftFN[1]~input_o\ & ( (\Mux2~1_combout\) # (\Mux4~0_combout\) ) ) ) # ( !\Add|S[13]~0_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux4~0_combout\ & 
-- \Mux2~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001111110011111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R[1]~4_combout\,
	datab => \ALT_INV_Mux4~0_combout\,
	datac => \ALT_INV_Mux2~1_combout\,
	datad => \ALT_INV_Y_R[1]~6_combout\,
	datae => \Add|ALT_INV_S[13]~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LABCELL_X38_Y11_N10
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[13]~input_o\ & (!\LogicFN[1]~input_o\ & \B[13]~input_o\)) # (\A[13]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[13]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[13]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111000111110001111101001001010010010100100101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LABCELL_X38_Y11_N34
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Mux2~3_combout\ & ( (((\Mux0~0_combout\ & \Mux2~2_combout\)) # (\Mux6~3_combout\)) # (\Mux0~1_combout\) ) ) # ( !\Mux2~3_combout\ & ( ((\Mux0~0_combout\ & \Mux2~2_combout\)) # (\Mux6~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101011111000011110101111100111111011111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_Mux6~3_combout\,
	datad => \ALT_INV_Mux2~2_combout\,
	dataf => \ALT_INV_Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LABCELL_X38_Y11_N4
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[14]~input_o\ & (!\LogicFN[1]~input_o\ & \B[14]~input_o\)) # (\A[14]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[14]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[14]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000100011111111101000100100110010100010010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LABCELL_X38_Y13_N8
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \A[11]~input_o\ & ( \B[0]~input_o\ & ( (\A[13]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[11]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[13]~input_o\) ) ) ) # ( \A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\A[11]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[11]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X38_Y13_N12
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \Shift|ll2[6]~7_combout\ & ( \Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Mux1~0_combout\))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ll2[2]~2_combout\)))) ) ) ) # ( !\Shift|ll2[6]~7_combout\ & ( 
-- \Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & (\Mux1~0_combout\ & ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\) # (\Shift|ll2[2]~2_combout\)))) ) ) ) # ( \Shift|ll2[6]~7_combout\ & ( !\Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & 
-- (((\B[3]~input_o\)) # (\Mux1~0_combout\))) # (\B[2]~input_o\ & (((\Shift|ll2[2]~2_combout\ & \B[3]~input_o\)))) ) ) ) # ( !\Shift|ll2[6]~7_combout\ & ( !\Shift|ll2[10]~11_combout\ & ( (!\B[2]~input_o\ & (\Mux1~0_combout\ & ((!\B[3]~input_o\)))) # 
-- (\B[2]~input_o\ & (((\Shift|ll2[2]~2_combout\ & \B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[2]~2_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ll2[6]~7_combout\,
	dataf => \Shift|ALT_INV_ll2[10]~11_combout\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X38_Y12_N28
\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ = ( \A[13]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[13]~input_o\)) # (\Add|G\(12)) ) ) # ( !\A[13]~input_o\ & ( (\Add|G\(12) & (!\AddnSub~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \Add|ALT_INV_G\(12),
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\);

-- Location: LABCELL_X38_Y12_N30
\Add|S[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(14) = ( \Add|block_carry_in[3]~5_combout\ & ( !\Add|P\(14) $ (!\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\) ) ) # ( !\Add|block_carry_in[3]~5_combout\ & ( !\Add|P\(14) $ (((!\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & 
-- !\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	datac => \Add|ALT_INV_P\(14),
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	dataf => \Add|ALT_INV_block_carry_in[3]~5_combout\,
	combout => \Add|S\(14));

-- Location: LABCELL_X38_Y13_N38
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Y_R[1]~4_combout\ & ( \Y_R[1]~7_combout\ & ( ((!\Mux4~0_combout\ & (\Mux1~1_combout\)) # (\Mux4~0_combout\ & ((\Add|S\(14))))) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Y_R[1]~4_combout\ & ( \Y_R[1]~7_combout\ & ( (!\ShiftFN[1]~input_o\ & 
-- ((!\Mux4~0_combout\ & (\Mux1~1_combout\)) # (\Mux4~0_combout\ & ((\Add|S\(14)))))) # (\ShiftFN[1]~input_o\ & (((!\Mux4~0_combout\)))) ) ) ) # ( \Y_R[1]~4_combout\ & ( !\Y_R[1]~7_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\Mux4~0_combout\ & 
-- (\Mux1~1_combout\)) # (\Mux4~0_combout\ & ((\Add|S\(14)))))) # (\ShiftFN[1]~input_o\ & (((\Mux4~0_combout\)))) ) ) ) # ( !\Y_R[1]~4_combout\ & ( !\Y_R[1]~7_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\Mux4~0_combout\ & (\Mux1~1_combout\)) # (\Mux4~0_combout\ 
-- & ((\Add|S\(14)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000110000010100000011111101011111001100000101111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \Add|ALT_INV_S\(14),
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux4~0_combout\,
	datae => \ALT_INV_Y_R[1]~4_combout\,
	dataf => \ALT_INV_Y_R[1]~7_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X38_Y11_N32
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \Mux6~3_combout\ ) # ( !\Mux6~3_combout\ & ( (!\Mux0~0_combout\ & (\Mux0~1_combout\ & (\Mux1~3_combout\))) # (\Mux0~0_combout\ & (((\Mux0~1_combout\ & \Mux1~3_combout\)) # (\Mux1~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010111000000110101011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux0~1_combout\,
	datac => \ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_Mux1~2_combout\,
	dataf => \ALT_INV_Mux6~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X38_Y12_N20
\Add|S_internal[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S_internal\(15) = ( \Add|P\(14) & ( !\Add|P\(15) $ (((!\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ & ((!\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\) # (\Add|block_carry_in[3]~5_combout\))))) ) ) # ( !\Add|P\(14) & ( !\Add|P\(15) $ 
-- (!\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100100111000011110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[3]~5_combout\,
	datab => \Add|ALT_INV_P\(15),
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	dataf => \Add|ALT_INV_P\(14),
	combout => \Add|S_internal\(15));

-- Location: MLABCELL_X39_Y14_N28
\Shift|ll2[15]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~13_combout\ = ( \B[0]~input_o\ & ( \A[13]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( \A[13]~input_o\ & ( (\B[1]~input_o\) # (\A[15]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[13]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\)) # (\B[1]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\A[13]~input_o\ & ( (\A[15]~input_o\ & !\B[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Shift|ll2[15]~13_combout\);

-- Location: MLABCELL_X39_Y14_N32
\Shift|Y_LL[15]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~1_combout\ = ( \B[3]~input_o\ & ( \Shift|ll2[3]~3_combout\ & ( (\Shift|ll2[7]~8_combout\) # (\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ll2[3]~3_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[15]~13_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ll2[11]~12_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ll2[3]~3_combout\ & ( (!\B[2]~input_o\ & \Shift|ll2[7]~8_combout\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ll2[3]~3_combout\ & ( (!\B[2]~input_o\ & (\Shift|ll2[15]~13_combout\)) # 
-- (\B[2]~input_o\ & ((\Shift|ll2[11]~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000011000000110001000100011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ll2[15]~13_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ll2[7]~8_combout\,
	datad => \Shift|ALT_INV_ll2[11]~12_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ll2[3]~3_combout\,
	combout => \Shift|Y_LL[15]~1_combout\);

-- Location: MLABCELL_X39_Y12_N28
\Y_ShiftOrArith[8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~1_combout\ = ( \Shift|Y_LL[15]~1_combout\ & ( \A[15]~input_o\ & ( ((!\ShiftFN[1]~input_o\ & ((\Add|S_internal\(15)))) # (\ShiftFN[1]~input_o\ & (\Shift|Y_LL[0]~0_combout\))) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\Shift|Y_LL[15]~1_combout\ 
-- & ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((!\ShiftFN[1]~input_o\ & ((\Add|S_internal\(15)))) # (\ShiftFN[1]~input_o\ & (\Shift|Y_LL[0]~0_combout\)))) # (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)))) ) ) ) # ( \Shift|Y_LL[15]~1_combout\ & ( 
-- !\A[15]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Add|S_internal\(15)) # (\ShiftFN[0]~input_o\))) ) ) ) # ( !\Shift|Y_LL[15]~1_combout\ & ( !\A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S_internal\(15) & !\ShiftFN[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000010111110000000000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_Y_LL[0]~0_combout\,
	datac => \Add|ALT_INV_S_internal\(15),
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \Shift|ALT_INV_Y_LL[15]~1_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_ShiftOrArith[8]~1_combout\);

-- Location: LABCELL_X38_Y12_N4
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\A[15]~input_o\ $ (!\B[15]~input_o\))) # (\LogicFN[1]~input_o\ & (\A[15]~input_o\ & \B[15]~input_o\)) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & 
-- \A[15]~input_o\)) # (\B[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LABCELL_X38_Y11_N38
\Mux0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = ( \Logic|Mux0~0_combout\ & ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) ) # ( \Logic|Mux0~0_combout\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~1_combout\)) # 
-- (\ExtWord~input_o\ & ((\Mux7~0_combout\))))) ) ) ) # ( !\Logic|Mux0~0_combout\ & ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~1_combout\)) # (\ExtWord~input_o\ & ((\Mux7~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ExtWord~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Y_ShiftOrArith[8]~1_combout\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \Logic|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: MLABCELL_X39_Y16_N18
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \Add|P\(4) & ( \B[0]~input_o\ & ( (!\Add|S\(3) & (!\Add|S\(1) & (\Add|block_carry_in[1]~6_combout\ & \A[0]~input_o\))) ) ) ) # ( !\Add|P\(4) & ( \B[0]~input_o\ & ( (!\Add|S\(3) & (!\Add|S\(1) & (!\Add|block_carry_in[1]~6_combout\ & 
-- \A[0]~input_o\))) ) ) ) # ( \Add|P\(4) & ( !\B[0]~input_o\ & ( (!\Add|S\(3) & (!\Add|S\(1) & (\Add|block_carry_in[1]~6_combout\ & !\A[0]~input_o\))) ) ) ) # ( !\Add|P\(4) & ( !\B[0]~input_o\ & ( (!\Add|S\(3) & (!\Add|S\(1) & 
-- (!\Add|block_carry_in[1]~6_combout\ & !\A[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000010000000000000000000100000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(3),
	datab => \Add|ALT_INV_S\(1),
	datac => \Add|ALT_INV_block_carry_in[1]~6_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	datae => \Add|ALT_INV_P\(4),
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X40_Y12_N4
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( \Equal0~0_combout\ & ( (!\Add|S\(8) & (!\Add|S\(2) & !\Add|S\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_S\(8),
	datac => \Add|ALT_INV_S\(2),
	datad => \Add|ALT_INV_S\(6),
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X40_Y12_N0
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add|S\(12) & ( (\Equal0~1_combout\ & (!\Add|S\(10) & (!\Add|S\(7) & !\Add|S\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \Add|ALT_INV_S\(10),
	datac => \Add|ALT_INV_S\(7),
	datad => \Add|ALT_INV_S\(11),
	dataf => \Add|ALT_INV_S\(12),
	combout => \Equal0~2_combout\);

-- Location: MLABCELL_X39_Y12_N14
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\Add|S[5]~2_combout\ & ( !\Add|S[9]~1_combout\ & ( (!\Add|S\(14) & (!\Add|S[13]~0_combout\ & (\Equal0~2_combout\ & !\Add|S_internal\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(14),
	datab => \Add|ALT_INV_S[13]~0_combout\,
	datac => \ALT_INV_Equal0~2_combout\,
	datad => \Add|ALT_INV_S_internal\(15),
	datae => \Add|ALT_INV_S[5]~2_combout\,
	dataf => \Add|ALT_INV_S[9]~1_combout\,
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


