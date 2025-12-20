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

-- DATE "12/02/2025 18:38:44"

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
-- Y[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~1_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~2_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \B_adder[15]~0_combout\ : std_logic;
SIGNAL \Add|Cout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~7_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[4]~1_combout\ : std_logic;
SIGNAL \Logic|Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Logic|Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[7]~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Y_LorS_Ext[8]~0_combout\ : std_logic;
SIGNAL \Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add|S[9]~1_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~4_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~3_combout\ : std_logic;
SIGNAL \Logic|Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Logic|Mux3~0_combout\ : std_logic;
SIGNAL \Y_R[12]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Y_LorS[12]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[12]~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Add|S[13]~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~5_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add|P\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|G\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|S_internal\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|ALT_INV_S[9]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[13]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[8]~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S_internal\ : std_logic_vector(15 DOWNTO 15);
SIGNAL \Shift|ALT_INV_ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(14 DOWNTO 1);
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[12]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[12]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS[12]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[8]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~13_combout\ : std_logic;
SIGNAL \ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[7]~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[4]~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[1]~3_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~10_combout\ : std_logic;
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
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
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
SIGNAL \Shift|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_P\ : std_logic_vector(15 DOWNTO 5);
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_G\ : std_logic_vector(13 DOWNTO 4);
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[2]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[2]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[1]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B_adder[15]~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_block_carry_in[3]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS_Ext[8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~5_combout\ : std_logic;

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
\Add|ALT_INV_S[9]~1_combout\ <= NOT \Add|S[9]~1_combout\;
\Add|ALT_INV_S[13]~0_combout\ <= NOT \Add|S[13]~0_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Y_ShiftOrArith[8]~5_combout\ <= NOT \Y_ShiftOrArith[8]~5_combout\;
\Add|ALT_INV_S_internal\(15) <= NOT \Add|S_internal\(15);
\Shift|ALT_INV_ShiftLeft0~20_combout\ <= NOT \Shift|ShiftLeft0~20_combout\;
\Shift|ALT_INV_ShiftLeft0~19_combout\ <= NOT \Shift|ShiftLeft0~19_combout\;
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\Add|ALT_INV_S\(14) <= NOT \Add|S\(14);
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\;
\ALT_INV_Mux2~5_combout\ <= NOT \Mux2~5_combout\;
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Y_ShiftOrArith[12]~4_combout\ <= NOT \Y_ShiftOrArith[12]~4_combout\;
\ALT_INV_Y_R[12]~0_combout\ <= NOT \Y_R[12]~0_combout\;
\ALT_INV_Y_LorS[12]~0_combout\ <= NOT \Y_LorS[12]~0_combout\;
\Shift|ALT_INV_ShiftLeft0~18_combout\ <= NOT \Shift|ShiftLeft0~18_combout\;
\Shift|ALT_INV_ShiftLeft0~17_combout\ <= NOT \Shift|ShiftLeft0~17_combout\;
\Logic|ALT_INV_Mux3~0_combout\ <= NOT \Logic|Mux3~0_combout\;
\ALT_INV_Y_ShiftOrArith[8]~3_combout\ <= NOT \Y_ShiftOrArith[8]~3_combout\;
\Shift|ALT_INV_ShiftRight1~15_combout\ <= NOT \Shift|ShiftRight1~15_combout\;
\Shift|ALT_INV_ShiftRight0~4_combout\ <= NOT \Shift|ShiftRight0~4_combout\;
\Shift|ALT_INV_ShiftLeft0~16_combout\ <= NOT \Shift|ShiftLeft0~16_combout\;
\Shift|ALT_INV_ShiftLeft0~15_combout\ <= NOT \Shift|ShiftLeft0~15_combout\;
\Add|ALT_INV_S\(11) <= NOT \Add|S\(11);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\;
\Logic|ALT_INV_Mux4~0_combout\ <= NOT \Logic|Mux4~0_combout\;
\ALT_INV_Mux5~4_combout\ <= NOT \Mux5~4_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\Shift|ALT_INV_ShiftLeft0~14_combout\ <= NOT \Shift|ShiftLeft0~14_combout\;
\Add|ALT_INV_S\(10) <= NOT \Add|S\(10);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~1_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\;
\ALT_INV_Mux6~5_combout\ <= NOT \Mux6~5_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\Shift|ALT_INV_ShiftLeft0~13_combout\ <= NOT \Shift|ShiftLeft0~13_combout\;
\ALT_INV_Mux11~1_combout\ <= NOT \Mux11~1_combout\;
\Shift|ALT_INV_ShiftLeft0~12_combout\ <= NOT \Shift|ShiftLeft0~12_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Y_R_Ext[8]~0_combout\ <= NOT \Y_R_Ext[8]~0_combout\;
\Logic|ALT_INV_Mux7~0_combout\ <= NOT \Logic|Mux7~0_combout\;
\ALT_INV_Y_ShiftOrArith[7]~2_combout\ <= NOT \Y_ShiftOrArith[7]~2_combout\;
\Shift|ALT_INV_ShiftRight1~14_combout\ <= NOT \Shift|ShiftRight1~14_combout\;
\Shift|ALT_INV_ShiftRight0~3_combout\ <= NOT \Shift|ShiftRight0~3_combout\;
\Shift|ALT_INV_ShiftLeft0~11_combout\ <= NOT \Shift|ShiftLeft0~11_combout\;
\Shift|ALT_INV_ShiftLeft0~10_combout\ <= NOT \Shift|ShiftLeft0~10_combout\;
\Add|ALT_INV_S\(7) <= NOT \Add|S\(7);
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\;
\Logic|ALT_INV_Mux8~0_combout\ <= NOT \Logic|Mux8~0_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\Shift|ALT_INV_ShiftLeft0~9_combout\ <= NOT \Shift|ShiftLeft0~9_combout\;
\Add|ALT_INV_S\(6) <= NOT \Add|S\(6);
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux10~8_combout\ <= NOT \Mux10~8_combout\;
\ALT_INV_Mux10~7_combout\ <= NOT \Mux10~7_combout\;
\ALT_INV_Mux10~6_combout\ <= NOT \Mux10~6_combout\;
\Shift|ALT_INV_ShiftLeft0~8_combout\ <= NOT \Shift|ShiftLeft0~8_combout\;
\ALT_INV_Mux10~5_combout\ <= NOT \Mux10~5_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[1]~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\;
\ALT_INV_Mux10~4_combout\ <= NOT \Mux10~4_combout\;
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\ALT_INV_Y_ShiftOrArith[4]~1_combout\ <= NOT \Y_ShiftOrArith[4]~1_combout\;
\Shift|ALT_INV_ShiftRight1~13_combout\ <= NOT \Shift|ShiftRight1~13_combout\;
\Shift|ALT_INV_ShiftRight0~2_combout\ <= NOT \Shift|ShiftRight0~2_combout\;
\Shift|ALT_INV_ShiftLeft0~7_combout\ <= NOT \Shift|ShiftLeft0~7_combout\;
\Shift|ALT_INV_ShiftLeft0~6_combout\ <= NOT \Shift|ShiftLeft0~6_combout\;
\Shift|ALT_INV_ShiftLeft0~5_combout\ <= NOT \Shift|ShiftLeft0~5_combout\;
\Add|ALT_INV_S\(4) <= NOT \Add|S\(4);
\Add|ALT_INV_block_carry_in[1]~3_combout\ <= NOT \Add|block_carry_in[1]~3_combout\;
\Logic|ALT_INV_Mux11~0_combout\ <= NOT \Logic|Mux11~0_combout\;
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\Shift|ALT_INV_ShiftLeft0~4_combout\ <= NOT \Shift|ShiftLeft0~4_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\Shift|ALT_INV_ShiftRight1~12_combout\ <= NOT \Shift|ShiftRight1~12_combout\;
\Shift|ALT_INV_ShiftRight1~11_combout\ <= NOT \Shift|ShiftRight1~11_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\Shift|ALT_INV_ShiftLeft0~3_combout\ <= NOT \Shift|ShiftLeft0~3_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\Shift|ALT_INV_ShiftRight1~10_combout\ <= NOT \Shift|ShiftRight1~10_combout\;
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
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
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
\Shift|ALT_INV_ShiftRight0~1_combout\ <= NOT \Shift|ShiftRight0~1_combout\;
\Shift|ALT_INV_ShiftRight1~9_combout\ <= NOT \Shift|ShiftRight1~9_combout\;
\Shift|ALT_INV_ShiftRight1~8_combout\ <= NOT \Shift|ShiftRight1~8_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\ALT_INV_Mux14~9_combout\ <= NOT \Mux14~9_combout\;
\ALT_INV_Mux14~8_combout\ <= NOT \Mux14~8_combout\;
\ALT_INV_Mux14~7_combout\ <= NOT \Mux14~7_combout\;
\ALT_INV_Mux14~6_combout\ <= NOT \Mux14~6_combout\;
\ALT_INV_Mux14~5_combout\ <= NOT \Mux14~5_combout\;
\Shift|ALT_INV_ShiftLeft0~2_combout\ <= NOT \Shift|ShiftLeft0~2_combout\;
\ALT_INV_Mux14~4_combout\ <= NOT \Mux14~4_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\Shift|ALT_INV_ShiftRight1~7_combout\ <= NOT \Shift|ShiftRight1~7_combout\;
\Shift|ALT_INV_ShiftRight0~0_combout\ <= NOT \Shift|ShiftRight0~0_combout\;
\Shift|ALT_INV_ShiftRight1~6_combout\ <= NOT \Shift|ShiftRight1~6_combout\;
\Shift|ALT_INV_ShiftRight1~5_combout\ <= NOT \Shift|ShiftRight1~5_combout\;
\Add|ALT_INV_Cout~1_combout\ <= NOT \Add|Cout~1_combout\;
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\Add|ALT_INV_P\(15) <= NOT \Add|P\(15);
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~0_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\;
\Add|ALT_INV_G\(12) <= NOT \Add|G\(12);
\Add|ALT_INV_G\(13) <= NOT \Add|G\(13);
\Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\ <= NOT \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\;
\Add|ALT_INV_P\(14) <= NOT \Add|P\(14);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~0_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\;
\Add|ALT_INV_G\(8) <= NOT \Add|G\(8);
\Add|ALT_INV_G\(9) <= NOT \Add|G\(9);
\Add|ALT_INV_block_carry_in[2]~2_combout\ <= NOT \Add|block_carry_in[2]~2_combout\;
\Add|ALT_INV_block_carry_in[2]~1_combout\ <= NOT \Add|block_carry_in[2]~1_combout\;
\Add|ALT_INV_G\(4) <= NOT \Add|G\(4);
\Add|ALT_INV_G\(5) <= NOT \Add|G\(5);
\Add|ALT_INV_P\(5) <= NOT \Add|P\(5);
\Add|ALT_INV_block_carry_in[1]~0_combout\ <= NOT \Add|block_carry_in[1]~0_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\;
\Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\;
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\;
\Add|ALT_INV_P\(7) <= NOT \Add|P\(7);
\Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\;
\Add|ALT_INV_P\(6) <= NOT \Add|P\(6);
\Add|ALT_INV_P\(11) <= NOT \Add|P\(11);
\Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\ <= NOT \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\;
\Add|ALT_INV_P\(10) <= NOT \Add|P\(10);
\ALT_INV_B_adder[15]~0_combout\ <= NOT \B_adder[15]~0_combout\;
\Logic|ALT_INV_Mux15~0_combout\ <= NOT \Logic|Mux15~0_combout\;
\ALT_INV_Y_ShiftOrArith[0]~0_combout\ <= NOT \Y_ShiftOrArith[0]~0_combout\;
\Shift|ALT_INV_ShiftLeft0~1_combout\ <= NOT \Shift|ShiftLeft0~1_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\Shift|ALT_INV_ShiftLeft0~0_combout\ <= NOT \Shift|ShiftLeft0~0_combout\;
\Shift|ALT_INV_ShiftRight1~4_combout\ <= NOT \Shift|ShiftRight1~4_combout\;
\Shift|ALT_INV_ShiftRight1~3_combout\ <= NOT \Shift|ShiftRight1~3_combout\;
\Shift|ALT_INV_ShiftRight1~2_combout\ <= NOT \Shift|ShiftRight1~2_combout\;
\Shift|ALT_INV_ShiftRight1~1_combout\ <= NOT \Shift|ShiftRight1~1_combout\;
\Shift|ALT_INV_ShiftRight1~0_combout\ <= NOT \Shift|ShiftRight1~0_combout\;
\Add|ALT_INV_block_carry_in[3]~4_combout\ <= NOT \Add|block_carry_in[3]~4_combout\;
\ALT_INV_Y_LorS_Ext[8]~0_combout\ <= NOT \Y_LorS_Ext[8]~0_combout\;
\ALT_INV_Mux2~7_combout\ <= NOT \Mux2~7_combout\;
\ALT_INV_Mux1~5_combout\ <= NOT \Mux1~5_combout\;

-- Location: IOOBUF_X59_Y4_N2
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

-- Location: IOOBUF_X59_Y18_N67
\Y[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~10_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X59_Y19_N67
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

-- Location: IOOBUF_X59_Y22_N98
\Y[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X59_Y4_N36
\Y[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X59_Y21_N33
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

-- Location: IOOBUF_X59_Y6_N2
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X59_Y19_N36
\Y[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\Y[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X52_Y0_N36
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X55_Y0_N67
\Y[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X50_Y0_N67
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X54_Y0_N67
\Y[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X59_Y4_N67
\Y[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~6_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X54_Y0_N36
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

-- Location: IOOBUF_X52_Y0_N67
\Y[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X59_Y7_N36
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~5_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X59_Y9_N33
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

-- Location: IOOBUF_X59_Y9_N98
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

-- Location: IOIBUF_X59_Y10_N32
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X59_Y12_N63
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X59_Y15_N32
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X59_Y16_N1
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X59_Y16_N63
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X59_Y15_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X59_Y18_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X59_Y21_N1
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X59_Y18_N94
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: MLABCELL_X54_Y14_N4
\Shift|ShiftRight1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~0_combout\ = ( \A[2]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[0]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[3]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( \A[1]~input_o\ & ( 
-- (!\B[0]~input_o\ & (\A[0]~input_o\ & (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((!\B[1]~input_o\) # (\A[3]~input_o\)))) ) ) ) # ( \A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\)) # (\A[0]~input_o\))) # (\B[0]~input_o\ & 
-- (((\B[1]~input_o\ & \A[3]~input_o\)))) ) ) ) # ( !\A[2]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & (\A[0]~input_o\ & (!\B[1]~input_o\))) # (\B[0]~input_o\ & (((\B[1]~input_o\ & \A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ShiftRight1~0_combout\);

-- Location: IOIBUF_X59_Y13_N1
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X59_Y21_N63
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X59_Y16_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X59_Y16_N94
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X59_Y12_N32
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: MLABCELL_X54_Y14_N8
\Shift|ShiftRight1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~1_combout\ = ( \A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))))) ) ) ) # ( \A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))))) ) ) ) # ( !\A[4]~input_o\ & ( !\A[5]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101010000001100000101111100111111010111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Shift|ShiftRight1~1_combout\);

-- Location: IOIBUF_X59_Y7_N63
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X59_Y9_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X54_Y12_N2
\Shift|ShiftRight1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~2_combout\ = ( \B[1]~input_o\ & ( \A[11]~input_o\ & ( (\A[10]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & \A[10]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111001000100010001000000101101011110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftRight1~2_combout\);

-- Location: IOIBUF_X59_Y10_N1
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X59_Y6_N63
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X59_Y13_N32
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X59_Y6_N94
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: MLABCELL_X54_Y12_N6
\Shift|ShiftRight1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~3_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[15]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[14]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[12]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~3_combout\);

-- Location: LABCELL_X53_Y14_N20
\Shift|ShiftRight1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~4_combout\ = ( \Shift|ShiftRight1~2_combout\ & ( \Shift|ShiftRight1~3_combout\ & ( ((!\B[2]~input_o\ & (\Shift|ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\)))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~2_combout\ & ( \Shift|ShiftRight1~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~2_combout\ & ( !\Shift|ShiftRight1~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~2_combout\ & ( !\Shift|ShiftRight1~3_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftRight1~0_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~1_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~2_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~3_combout\,
	combout => \Shift|ShiftRight1~4_combout\);

-- Location: LABCELL_X53_Y14_N8
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X53_Y14_N24
\Shift|ShiftLeft0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~0_combout\ = ( !\B[1]~input_o\ & ( !\B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftLeft0~0_combout\);

-- Location: LABCELL_X53_Y14_N26
\Shift|ShiftLeft0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~1_combout\ = (\Mux6~0_combout\ & \Shift|ShiftLeft0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~0_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	combout => \Shift|ShiftLeft0~1_combout\);

-- Location: LABCELL_X53_Y14_N14
\Y_ShiftOrArith[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = ( \Shift|ShiftLeft0~1_combout\ & ( \A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\B[0]~input_o\) # ((\ShiftFN[0]~input_o\)))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight1~4_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~1_combout\ & ( \A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\B[0]~input_o\ & (!\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight1~4_combout\)))) ) ) ) # ( \Shift|ShiftLeft0~1_combout\ & ( !\A[0]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & (\B[0]~input_o\ & (!\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight1~4_combout\)))) ) ) ) # ( !\Shift|ShiftLeft0~1_combout\ & ( !\A[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\B[0]~input_o\ & 
-- (!\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight1~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110011010000000111001110000000101100111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~4_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: IOIBUF_X59_Y9_N1
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X59_Y18_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X59_Y12_N94
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: MLABCELL_X52_Y11_N30
\Add|G[12]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(12) = (\A[12]~input_o\ & (!\B[12]~input_o\ $ (!\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	combout => \Add|G\(12));

-- Location: LABCELL_X55_Y11_N26
\Add|GEN_BLOCKS:3:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ = ( \AddnSub~input_o\ & ( (\Add|G\(12) & (!\A[13]~input_o\ $ (\B[13]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (\Add|G\(12) & (!\A[13]~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \Add|ALT_INV_G\(12),
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\);

-- Location: LABCELL_X55_Y11_N24
\Add|G[13]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(13) = ( \AddnSub~input_o\ & ( (\A[13]~input_o\ & !\B[13]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( (\A[13]~input_o\ & \B[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|G\(13));

-- Location: LABCELL_X55_Y11_N18
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( !\Add|G\(13) & ( !\Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~0_combout\,
	dataf => \Add|ALT_INV_G\(13),
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X52_Y0_N94
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X52_Y11_N4
\Add|P[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(14) = ( \A[14]~input_o\ & ( !\AddnSub~input_o\ $ (\B[14]~input_o\) ) ) # ( !\A[14]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Add|P\(14));

-- Location: IOIBUF_X59_Y21_N94
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LABCELL_X55_Y11_N16
\Add|GEN_BLOCKS:3:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ = ( \B[14]~input_o\ & ( (!\B[15]~input_o\ & (\A[15]~input_o\ & ((\AddnSub~input_o\) # (\A[14]~input_o\)))) # (\B[15]~input_o\ & (!\AddnSub~input_o\ & ((\A[15]~input_o\) # (\A[14]~input_o\)))) ) ) # ( 
-- !\B[14]~input_o\ & ( (!\B[15]~input_o\ & (\AddnSub~input_o\ & ((\A[15]~input_o\) # (\A[14]~input_o\)))) # (\B[15]~input_o\ & (\A[15]~input_o\ & ((!\AddnSub~input_o\) # (\A[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001011011000000100101101100010000011110100001000001111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[15]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[14]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\);

-- Location: IOIBUF_X59_Y7_N94
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X52_Y13_N12
\Add|P[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(11) = ( \A[11]~input_o\ & ( !\AddnSub~input_o\ $ (\B[11]~input_o\) ) ) # ( !\A[11]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Add|P\(11));

-- Location: IOIBUF_X54_Y0_N94
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X52_Y13_N4
\Add|P[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(10) = !\A[10]~input_o\ $ (!\AddnSub~input_o\ $ (\B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	combout => \Add|P\(10));

-- Location: MLABCELL_X54_Y15_N22
\Add|GEN_BLOCKS:0:LACG_INST|Pout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = ( \A[2]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\)))) # (\AddnSub~input_o\ & (\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\)))) # (\AddnSub~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: LABCELL_X55_Y15_N18
\Add|block_carry_in[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~0_combout\ = ( \B[1]~input_o\ & ( \A[0]~input_o\ & ( (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (((\B[0]~input_o\ & !\AddnSub~input_o\)) # (\A[1]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[0]~input_o\ & ( 
-- (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (((\B[0]~input_o\ & \A[1]~input_o\)) # (\AddnSub~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( !\A[0]~input_o\ & ( (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (\A[1]~input_o\ & ((!\B[0]~input_o\) # 
-- (!\AddnSub~input_o\)))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[0]~input_o\ & ( (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (\AddnSub~input_o\ & ((!\B[0]~input_o\) # (\A[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100011000000110000001000000001001100110001001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~1_combout\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|block_carry_in[1]~0_combout\);

-- Location: IOIBUF_X59_Y19_N94
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LABCELL_X55_Y15_N4
\Add|P[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(7) = ( \A[7]~input_o\ & ( \B[7]~input_o\ & ( \AddnSub~input_o\ ) ) ) # ( !\A[7]~input_o\ & ( \B[7]~input_o\ & ( !\AddnSub~input_o\ ) ) ) # ( \A[7]~input_o\ & ( !\B[7]~input_o\ & ( !\AddnSub~input_o\ ) ) ) # ( !\A[7]~input_o\ & ( !\B[7]~input_o\ & 
-- ( \AddnSub~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101010101010101010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[7]~input_o\,
	combout => \Add|P\(7));

-- Location: IOIBUF_X59_Y23_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LABCELL_X55_Y15_N0
\Add|P[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(6) = !\B[6]~input_o\ $ (!\A[6]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	combout => \Add|P\(6));

-- Location: IOIBUF_X59_Y19_N1
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: MLABCELL_X54_Y11_N0
\Add|P[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(5) = ( \A[5]~input_o\ & ( !\B[5]~input_o\ $ (\AddnSub~input_o\) ) ) # ( !\A[5]~input_o\ & ( !\B[5]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Add|P\(5));

-- Location: LABCELL_X55_Y15_N22
\Add|G[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(5) = ( \AddnSub~input_o\ & ( (!\B[5]~input_o\ & \A[5]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( (\B[5]~input_o\ & \A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[5]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|G\(5));

-- Location: IOIBUF_X59_Y12_N1
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X54_Y15_N30
\Add|G[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(4) = ( \A[4]~input_o\ & ( !\B[4]~input_o\ $ (!\AddnSub~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|G\(4));

-- Location: LABCELL_X55_Y15_N30
\Add|block_carry_in[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~1_combout\ = ( \Add|G\(4) & ( (\Add|P\(7) & (\Add|P\(6) & ((\Add|G\(5)) # (\Add|P\(5))))) ) ) # ( !\Add|G\(4) & ( (\Add|P\(7) & (\Add|P\(6) & \Add|G\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(7),
	datab => \Add|ALT_INV_P\(6),
	datac => \Add|ALT_INV_P\(5),
	datad => \Add|ALT_INV_G\(5),
	dataf => \Add|ALT_INV_G\(4),
	combout => \Add|block_carry_in[2]~1_combout\);

-- Location: LABCELL_X55_Y15_N14
\Add|GEN_BLOCKS:1:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\ = ( \AddnSub~input_o\ & ( (!\B[7]~input_o\ & (((\A[6]~input_o\ & !\B[6]~input_o\)) # (\A[7]~input_o\))) # (\B[7]~input_o\ & (\A[6]~input_o\ & (\A[7]~input_o\ & !\B[6]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( 
-- (!\B[7]~input_o\ & (\A[6]~input_o\ & (\A[7]~input_o\ & \B[6]~input_o\))) # (\B[7]~input_o\ & (((\A[6]~input_o\ & \B[6]~input_o\)) # (\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010111000001010001011100101011000010100010101100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[7]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\);

-- Location: MLABCELL_X54_Y15_N20
\Add|GEN_BLOCKS:0:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = ( \A[2]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\AddnSub~input_o\))) # (\B[2]~input_o\ & (\A[3]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\A[3]~input_o\)) # (\B[2]~input_o\ & 
-- ((!\AddnSub~input_o\))))) ) ) # ( !\A[2]~input_o\ & ( (\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000010111101100100001011110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X55_Y15_N32
\Add|GEN_BLOCKS:0:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = ( \A[0]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (\AddnSub~input_o\ & (\B[0]~input_o\ & (!\A[1]~input_o\ $ (\B[1]~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[0]~input_o\ & (!\A[1]~input_o\ $ (!\B[1]~input_o\)))) # (\AddnSub~input_o\ & (!\B[0]~input_o\ & (!\A[1]~input_o\ $ (\B[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: MLABCELL_X54_Y15_N6
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

-- Location: MLABCELL_X52_Y11_N22
\Add|GEN_BLOCKS:1:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = ( \A[4]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (\AddnSub~input_o\ & (\B[4]~input_o\ & (!\B[5]~input_o\ $ (\A[5]~input_o\)))) ) ) # ( !\A[4]~input_o\ & ( 
-- (!\AddnSub~input_o\ & (\B[4]~input_o\ & (!\B[5]~input_o\ $ (!\A[5]~input_o\)))) # (\AddnSub~input_o\ & (!\B[4]~input_o\ & (!\B[5]~input_o\ $ (\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100101100000000010010110000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LABCELL_X55_Y15_N28
\Add|GEN_BLOCKS:1:LACG_INST|Pout\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ = (\Add|P\(7) & (\Add|P\(6) & \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(7),
	datab => \Add|ALT_INV_P\(6),
	datad => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\);

-- Location: LABCELL_X55_Y15_N26
\Add|block_carry_in[2]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~2_combout\ = ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & ( \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ( \Add|block_carry_in[1]~0_combout\ ) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & ( 
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ( (\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\) # (\Add|block_carry_in[1]~0_combout\) ) ) ) # ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & ( !\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ( 
-- (\Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\) # (\Add|block_carry_in[2]~1_combout\) ) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\ & ( !\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ( (\Add|GEN_BLOCKS:1:LACG_INST|g_int~3_combout\) # 
-- (\Add|block_carry_in[2]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111101010101111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[1]~0_combout\,
	datab => \Add|ALT_INV_block_carry_in[2]~1_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~3_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\,
	datae => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~combout\,
	combout => \Add|block_carry_in[2]~2_combout\);

-- Location: IOIBUF_X59_Y6_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X59_Y13_N63
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X52_Y13_N0
\Add|G[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(8) = (\A[8]~input_o\ & (!\B[8]~input_o\ $ (!\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	combout => \Add|G\(8));

-- Location: MLABCELL_X52_Y13_N14
\Add|GEN_BLOCKS:2:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\ = ( \A[9]~input_o\ & ( (\Add|G\(8) & (!\AddnSub~input_o\ $ (\B[9]~input_o\))) ) ) # ( !\A[9]~input_o\ & ( (\Add|G\(8) & (!\AddnSub~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	datad => \Add|ALT_INV_G\(8),
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\);

-- Location: MLABCELL_X52_Y13_N8
\Add|GEN_BLOCKS:2:LACG_INST|Pout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & (!\AddnSub~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) # (\A[9]~input_o\ & (\AddnSub~input_o\ & (!\A[8]~input_o\ $ (\B[8]~input_o\)))) ) ) # ( !\B[9]~input_o\ & ( 
-- (!\A[9]~input_o\ & (\AddnSub~input_o\ & (!\A[8]~input_o\ $ (\B[8]~input_o\)))) # (\A[9]~input_o\ & (!\AddnSub~input_o\ & (!\A[8]~input_o\ $ (!\B[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001000010001001000100001000011000100000010001100010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: MLABCELL_X52_Y13_N6
\Add|GEN_BLOCKS:2:LACG_INST|g_int~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\ = ( \A[11]~input_o\ & ( (!\AddnSub~input_o\ & (((\A[10]~input_o\ & \B[10]~input_o\)) # (\B[11]~input_o\))) # (\AddnSub~input_o\ & ((!\B[11]~input_o\) # ((\A[10]~input_o\ & !\B[10]~input_o\)))) ) ) # ( 
-- !\A[11]~input_o\ & ( (\A[10]~input_o\ & ((!\AddnSub~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)) # (\AddnSub~input_o\ & (!\B[10]~input_o\ & !\B[11]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000100000100000000010000110111110111000011011111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\);

-- Location: MLABCELL_X52_Y13_N18
\Add|G[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|G\(9) = ( \A[9]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[9]~input_o\,
	dataf => \ALT_INV_A[9]~input_o\,
	combout => \Add|G\(9));

-- Location: MLABCELL_X52_Y13_N20
\Add|block_carry_in[3]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~4_combout\ = ( !\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( ((\Add|P\(11) & (\Add|P\(10) & ((\Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\) # (\Add|G\(9)))))) # (\Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\) ) ) # ( 
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ( (!\Add|P\(11) & ((((\Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\))))) # (\Add|P\(11) & ((!\Add|P\(10) & (((\Add|GEN_BLOCKS:2:LACG_INST|g_int~3_combout\)))) # (\Add|P\(10) & 
-- (\Add|block_carry_in[2]~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100010001000000010000000111111111111111111110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(11),
	datab => \Add|ALT_INV_P\(10),
	datac => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~0_combout\,
	datae => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	dataf => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~3_combout\,
	datag => \Add|ALT_INV_G\(9),
	combout => \Add|block_carry_in[3]~4_combout\);

-- Location: MLABCELL_X52_Y11_N6
\Add|GEN_BLOCKS:3:LACG_INST|C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ = ( \A[13]~input_o\ & ( (!\AddnSub~input_o\ & (!\B[13]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\)))) # (\AddnSub~input_o\ & (\B[13]~input_o\ & (!\A[12]~input_o\ $ (\B[12]~input_o\)))) ) ) # ( 
-- !\A[13]~input_o\ & ( (!\AddnSub~input_o\ & (\B[13]~input_o\ & (!\A[12]~input_o\ $ (!\B[12]~input_o\)))) # (\AddnSub~input_o\ & (!\B[13]~input_o\ & (!\A[12]~input_o\ $ (\B[12]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000011000001001000001100001000010100000010100001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[13]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\);

-- Location: LABCELL_X55_Y11_N2
\B_adder[15]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \B_adder[15]~0_combout\ = ( \B[15]~input_o\ & ( !\AddnSub~input_o\ ) ) # ( !\B[15]~input_o\ & ( \AddnSub~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \B_adder[15]~0_combout\);

-- Location: LABCELL_X55_Y11_N14
\Add|P[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|P\(15) = ( \B_adder[15]~0_combout\ & ( !\A[15]~input_o\ ) ) # ( !\B_adder[15]~0_combout\ & ( \A[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B_adder[15]~0_combout\,
	combout => \Add|P\(15));

-- Location: LABCELL_X55_Y11_N22
\Add|Cout~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~1_combout\ = ( \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & ( \Add|P\(15) & ( (!\Add|P\(14) & (\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\)) # (\Add|P\(14) & ((\Add|block_carry_in[3]~4_combout\))) ) ) ) # ( 
-- !\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & ( \Add|P\(15) & ( ((!\Add|Cout~0_combout\ & \Add|P\(14))) # (\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\) ) ) ) # ( \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & ( !\Add|P\(15) & ( 
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ ) ) ) # ( !\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & ( !\Add|P\(15) & ( \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100101111001011110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_Cout~0_combout\,
	datab => \Add|ALT_INV_P\(14),
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	datae => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	dataf => \Add|ALT_INV_P\(15),
	combout => \Add|Cout~1_combout\);

-- Location: MLABCELL_X52_Y11_N36
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = ( \B[14]~input_o\ & ( \A[14]~input_o\ & ( (!\AddnSub~input_o\) # ((!\Add|G\(12) & (\A[13]~input_o\ & !\B[13]~input_o\)) # (\Add|G\(12) & ((!\B[13]~input_o\) # (\A[13]~input_o\)))) ) ) ) # ( !\B[14]~input_o\ & 
-- ( \A[14]~input_o\ & ( ((!\Add|G\(12) & (\A[13]~input_o\ & \B[13]~input_o\)) # (\Add|G\(12) & ((\B[13]~input_o\) # (\A[13]~input_o\)))) # (\AddnSub~input_o\) ) ) ) # ( \B[14]~input_o\ & ( !\A[14]~input_o\ & ( (!\AddnSub~input_o\ & ((!\Add|G\(12) & 
-- (\A[13]~input_o\ & \B[13]~input_o\)) # (\Add|G\(12) & ((\B[13]~input_o\) # (\A[13]~input_o\))))) ) ) ) # ( !\B[14]~input_o\ & ( !\A[14]~input_o\ & ( (\AddnSub~input_o\ & ((!\Add|G\(12) & (\A[13]~input_o\ & !\B[13]~input_o\)) # (\Add|G\(12) & 
-- ((!\B[13]~input_o\) # (\A[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100000001000000100010101001010111011111111011111110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_G\(12),
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LABCELL_X55_Y11_N28
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( \A[15]~input_o\ & ( \Add|P\(14) & ( (!\B_adder[15]~0_combout\ & (((\Add|block_carry_in[3]~4_combout\ & \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\)) # (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\))) ) ) ) # ( !\A[15]~input_o\ & ( 
-- \Add|P\(14) & ( ((!\B_adder[15]~0_combout\) # ((\Add|block_carry_in[3]~4_combout\ & \Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\))) # (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\) ) ) ) # ( \A[15]~input_o\ & ( !\Add|P\(14) & ( 
-- (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ & !\B_adder[15]~0_combout\) ) ) ) # ( !\A[15]~input_o\ & ( !\Add|P\(14) & ( (!\B_adder[15]~0_combout\) # (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100110011001100110000000011111111001101110011011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	datad => \ALT_INV_B_adder[15]~0_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \Add|ALT_INV_P\(14),
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X59_Y10_N63
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X59_Y15_N94
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LABCELL_X55_Y11_N0
\Logic|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = ( \B[0]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[0]~input_o\)) ) ) # ( !\B[0]~input_o\ & ( (\A[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110011111100111100111111110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: IOIBUF_X59_Y13_N94
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: LABCELL_X55_Y11_N6
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \Logic|Mux15~0_combout\ & ( \FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & ((!\AltB~0_combout\))) # (\FuncClass[0]~input_o\ & (!\Add|Cout~1_combout\)) ) ) ) # ( !\Logic|Mux15~0_combout\ & ( \FuncClass[1]~input_o\ & ( 
-- (!\FuncClass[0]~input_o\ & ((!\AltB~0_combout\))) # (\FuncClass[0]~input_o\ & (!\Add|Cout~1_combout\)) ) ) ) # ( \Logic|Mux15~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (\Y_ShiftOrArith[0]~0_combout\) # (\FuncClass[0]~input_o\) ) ) ) # ( 
-- !\Logic|Mux15~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & \Y_ShiftOrArith[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010011101110111011111111010010100001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Y_ShiftOrArith[0]~0_combout\,
	datac => \Add|ALT_INV_Cout~1_combout\,
	datad => \ALT_INV_AltB~0_combout\,
	datae => \Logic|ALT_INV_Mux15~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X55_Y13_N20
\Mux14~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = ( \ShiftFN[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000001110000111100001111000001110000011100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LABCELL_X55_Y13_N26
\Mux14~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \FuncClass[0]~input_o\) ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000001010000010100000101010101010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: MLABCELL_X54_Y15_N32
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((\B[0]~input_o\ & (!\A[0]~input_o\ $ (!\AddnSub~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\B[0]~input_o\) # (!\A[0]~input_o\ $ (\AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001100011001101100110001111001001100111001100100110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Add|S\(1));

-- Location: MLABCELL_X54_Y15_N34
\Mux14~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) # (\B[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000000111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux14~9_combout\);

-- Location: LABCELL_X53_Y15_N4
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( !\Mux6~0_combout\ & ( (\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux14~4_combout\);

-- Location: LABCELL_X53_Y15_N22
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \Mux6~0_combout\ & ( \ShiftFN[1]~input_o\ ) ) # ( !\Mux6~0_combout\ & ( (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux14~3_combout\);

-- Location: LABCELL_X53_Y15_N14
\Mux14~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = ( \B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[2]~input_o\ & ( (\B[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[2]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[2]~input_o\ & ( (\A[1]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000000011110011001101010101111111110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LABCELL_X53_Y15_N28
\Shift|ShiftLeft0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~2_combout\ = (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[1]~input_o\))) # (\B[0]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011000000000001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftLeft0~2_combout\);

-- Location: MLABCELL_X54_Y14_N14
\Shift|ShiftRight1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~5_combout\ = ( \A[6]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))))) ) ) ) # ( \A[6]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[5]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[7]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))))) ) ) )

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
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Shift|ShiftRight1~5_combout\);

-- Location: MLABCELL_X54_Y12_N30
\Shift|ShiftRight1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~6_combout\ = ( \B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[11]~input_o\ & ( (\B[0]~input_o\ & \A[12]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000101010100011011000110111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftRight1~6_combout\);

-- Location: LABCELL_X55_Y11_N8
\Shift|ShiftRight0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~0_combout\ = ( \B[1]~input_o\ & ( (!\B[0]~input_o\ & \A[15]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftRight0~0_combout\);

-- Location: LABCELL_X53_Y14_N10
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X55_Y11_N10
\Shift|ShiftRight1~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~7_combout\ = ( \B[1]~input_o\ & ( \A[15]~input_o\ ) ) # ( !\B[1]~input_o\ & ( (!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Shift|ShiftRight1~7_combout\);

-- Location: LABCELL_X53_Y13_N0
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \B[3]~input_o\ ) ) # ( !\ShiftFN[0]~input_o\ & ( (!\B[2]~input_o\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X54_Y11_N6
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Shift|ShiftRight1~7_combout\ & ( \Mux14~0_combout\ & ( (\Mux14~1_combout\) # (\Shift|ShiftRight1~6_combout\) ) ) ) # ( !\Shift|ShiftRight1~7_combout\ & ( \Mux14~0_combout\ & ( (\Shift|ShiftRight1~6_combout\ & !\Mux14~1_combout\) ) ) 
-- ) # ( \Shift|ShiftRight1~7_combout\ & ( !\Mux14~0_combout\ & ( (!\Mux14~1_combout\ & (\Shift|ShiftRight1~5_combout\)) # (\Mux14~1_combout\ & ((\Shift|ShiftRight0~0_combout\))) ) ) ) # ( !\Shift|ShiftRight1~7_combout\ & ( !\Mux14~0_combout\ & ( 
-- (!\Mux14~1_combout\ & (\Shift|ShiftRight1~5_combout\)) # (\Mux14~1_combout\ & ((\Shift|ShiftRight0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~5_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datac => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datad => \ALT_INV_Mux14~1_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~7_combout\,
	dataf => \ALT_INV_Mux14~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: LABCELL_X53_Y15_N18
\Mux14~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = ( \Mux14~2_combout\ & ( (!\Mux14~4_combout\ & ((!\Mux14~3_combout\ & ((\Shift|ShiftLeft0~2_combout\))) # (\Mux14~3_combout\ & (\Mux14~5_combout\)))) # (\Mux14~4_combout\ & (!\Mux14~3_combout\)) ) ) # ( !\Mux14~2_combout\ & ( 
-- (!\Mux14~4_combout\ & ((!\Mux14~3_combout\ & ((\Shift|ShiftLeft0~2_combout\))) # (\Mux14~3_combout\ & (\Mux14~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~4_combout\,
	datab => \ALT_INV_Mux14~3_combout\,
	datac => \ALT_INV_Mux14~5_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	dataf => \ALT_INV_Mux14~2_combout\,
	combout => \Mux14~6_combout\);

-- Location: MLABCELL_X54_Y15_N36
\Mux14~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = ( \Mux14~6_combout\ & ( (!\Mux14~7_combout\ & (\Mux14~8_combout\ & (\Add|S\(1)))) # (\Mux14~7_combout\ & ((!\Mux14~8_combout\) # ((\Mux14~9_combout\)))) ) ) # ( !\Mux14~6_combout\ & ( (\Mux14~8_combout\ & ((!\Mux14~7_combout\ & 
-- (\Add|S\(1))) # (\Mux14~7_combout\ & ((\Mux14~9_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~7_combout\,
	datab => \ALT_INV_Mux14~8_combout\,
	datac => \Add|ALT_INV_S\(1),
	datad => \ALT_INV_Mux14~9_combout\,
	dataf => \ALT_INV_Mux14~6_combout\,
	combout => \Mux14~10_combout\);

-- Location: MLABCELL_X54_Y15_N12
\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ = ( \A[1]~input_o\ & ( (!\B[1]~input_o\ & (((\A[0]~input_o\ & \B[0]~input_o\)) # (\AddnSub~input_o\))) # (\B[1]~input_o\ & ((!\AddnSub~input_o\) # ((\A[0]~input_o\ & !\B[0]~input_o\)))) ) ) # ( 
-- !\A[1]~input_o\ & ( (\A[0]~input_o\ & ((!\B[1]~input_o\ & (!\B[0]~input_o\ & \AddnSub~input_o\)) # (\B[1]~input_o\ & (\B[0]~input_o\ & !\AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000000000000010100000000110111110111000011011111011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\);

-- Location: MLABCELL_X54_Y15_N26
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ( !\A[2]~input_o\ $ (!\B[2]~input_o\ $ (((\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ & !\AddnSub~input_o\)))) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ( 
-- !\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ $ (!\AddnSub~input_o\ $ (!\A[2]~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001001011101101000100101110110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~0_combout\,
	combout => \Add|S\(2));

-- Location: MLABCELL_X54_Y15_N0
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \A[2]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[2]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[2]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (\B[2]~input_o\ & ((!\LogicFN[1]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X53_Y15_N0
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\) # (\A[3]~input_o\) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[2]~input_o\ & ( (\B[0]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101001001110010011110101010111111110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: MLABCELL_X54_Y13_N24
\Shift|ShiftRight0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~1_combout\ = ( \A[15]~input_o\ & ( (!\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[14]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\A[14]~input_o\ & (!\B[1]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight0~1_combout\);

-- Location: MLABCELL_X54_Y13_N26
\Shift|ShiftRight1~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = ( \A[15]~input_o\ & ( (!\Shift|ShiftLeft0~0_combout\) # (\A[14]~input_o\) ) ) # ( !\A[15]~input_o\ & ( (\A[14]~input_o\ & \Shift|ShiftLeft0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: MLABCELL_X54_Y13_N22
\Shift|ShiftRight1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = ( \B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\) # (\A[13]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[11]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[12]~input_o\ & ( (\B[0]~input_o\ & \A[13]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[11]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000000000111101010011010100111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: MLABCELL_X54_Y14_N36
\Shift|ShiftRight1~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\))) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & (((!\B[1]~input_o\)))) # (\B[0]~input_o\ & ((!\B[1]~input_o\ & 
-- ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[7]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001110000011111000100001101001111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: MLABCELL_X54_Y13_N28
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Mux14~0_combout\ & ( \Shift|ShiftRight1~8_combout\ & ( (!\Mux14~1_combout\ & ((\Shift|ShiftRight1~9_combout\))) # (\Mux14~1_combout\ & (\Shift|ShiftRight1~10_combout\)) ) ) ) # ( !\Mux14~0_combout\ & ( \Shift|ShiftRight1~8_combout\ 
-- & ( (!\Mux14~1_combout\) # (\Shift|ShiftRight0~1_combout\) ) ) ) # ( \Mux14~0_combout\ & ( !\Shift|ShiftRight1~8_combout\ & ( (!\Mux14~1_combout\ & ((\Shift|ShiftRight1~9_combout\))) # (\Mux14~1_combout\ & (\Shift|ShiftRight1~10_combout\)) ) ) ) # ( 
-- !\Mux14~0_combout\ & ( !\Shift|ShiftRight1~8_combout\ & ( (\Shift|ShiftRight0~1_combout\ & \Mux14~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000111111001111110101111101010000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~1_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datae => \ALT_INV_Mux14~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~8_combout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X53_Y15_N6
\Shift|ShiftLeft0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~3_combout\ = ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[1]~input_o\) ) ) # ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[2]~input_o\))) # (\B[1]~input_o\ & (\A[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~3_combout\);

-- Location: LABCELL_X53_Y15_N16
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Shift|ShiftLeft0~3_combout\ & ( (!\Mux14~4_combout\ & ((!\Mux14~3_combout\) # ((\Mux13~1_combout\)))) # (\Mux14~4_combout\ & (!\Mux14~3_combout\ & ((\Mux13~0_combout\)))) ) ) # ( !\Shift|ShiftLeft0~3_combout\ & ( (!\Mux14~4_combout\ 
-- & (\Mux14~3_combout\ & (\Mux13~1_combout\))) # (\Mux14~4_combout\ & (!\Mux14~3_combout\ & ((\Mux13~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~4_combout\,
	datab => \ALT_INV_Mux14~3_combout\,
	datac => \ALT_INV_Mux13~1_combout\,
	datad => \ALT_INV_Mux13~0_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	combout => \Mux13~2_combout\);

-- Location: MLABCELL_X54_Y15_N38
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \Mux13~2_combout\ & ( (!\Mux14~7_combout\ & (\Mux14~8_combout\ & (\Add|S\(2)))) # (\Mux14~7_combout\ & ((!\Mux14~8_combout\) # ((\Mux13~3_combout\)))) ) ) # ( !\Mux13~2_combout\ & ( (\Mux14~8_combout\ & ((!\Mux14~7_combout\ & 
-- (\Add|S\(2))) # (\Mux14~7_combout\ & ((\Mux13~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~7_combout\,
	datab => \ALT_INV_Mux14~8_combout\,
	datac => \Add|ALT_INV_S\(2),
	datad => \ALT_INV_Mux13~3_combout\,
	dataf => \ALT_INV_Mux13~2_combout\,
	combout => \Mux13~4_combout\);

-- Location: MLABCELL_X54_Y12_N34
\Shift|ShiftRight1~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[14]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[12]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[11]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: MLABCELL_X54_Y12_N16
\Shift|ShiftRight1~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = ( \A[7]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[8]~input_o\))) # (\B[1]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( !\A[7]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[8]~input_o\))) # 
-- (\B[1]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( \A[7]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[9]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: LABCELL_X53_Y13_N26
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\Mux14~1_combout\ & (((!\Mux14~0_combout\)) # (\Shift|ShiftRight1~11_combout\))) # (\Mux14~1_combout\ & (((\Mux14~0_combout\) # (\Shift|ShiftLeft0~0_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\Mux14~1_combout\ & (\Shift|ShiftRight1~11_combout\ & ((\Mux14~0_combout\)))) # (\Mux14~1_combout\ & (((\Mux14~0_combout\) # (\Shift|ShiftLeft0~0_combout\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~12_combout\ & ( !\A[15]~input_o\ & ( (!\Mux14~1_combout\ & ((!\Mux14~0_combout\) # (\Shift|ShiftRight1~11_combout\))) ) ) ) # ( !\Shift|ShiftRight1~12_combout\ & ( !\A[15]~input_o\ & ( (\Shift|ShiftRight1~11_combout\ & 
-- (!\Mux14~1_combout\ & \Mux14~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000111100000101000000000011010111111111001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \ALT_INV_Mux14~0_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~12_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X53_Y15_N8
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (\A[5]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[6]~input_o\ & ( (!\B[0]~input_o\ & \A[5]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[3]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000010100000101000010001101110110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LABCELL_X53_Y15_N24
\Shift|ShiftLeft0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~4_combout\ = ( \B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[2]~input_o\ & ( (\A[3]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & \A[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000010100110101001100001111111111110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Shift|ShiftLeft0~4_combout\);

-- Location: LABCELL_X53_Y15_N20
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \Shift|ShiftLeft0~4_combout\ & ( (!\Mux14~3_combout\ & (((!\Mux14~4_combout\)) # (\Mux12~0_combout\))) # (\Mux14~3_combout\ & (((\Mux12~1_combout\ & !\Mux14~4_combout\)))) ) ) # ( !\Shift|ShiftLeft0~4_combout\ & ( (!\Mux14~3_combout\ 
-- & (\Mux12~0_combout\ & ((\Mux14~4_combout\)))) # (\Mux14~3_combout\ & (((\Mux12~1_combout\ & !\Mux14~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100000000110100010011001111010001001100111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~0_combout\,
	datab => \ALT_INV_Mux14~3_combout\,
	datac => \ALT_INV_Mux12~1_combout\,
	datad => \ALT_INV_Mux14~4_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	combout => \Mux12~2_combout\);

-- Location: MLABCELL_X54_Y15_N18
\Add|GEN_BLOCKS:0:LACG_INST|g_int~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ = ( \A[1]~input_o\ & ( (!\B[2]~input_o\ & ((!\B[1]~input_o\ & ((\AddnSub~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # (\B[2]~input_o\ & ((!\B[1]~input_o\ & (\A[2]~input_o\)) # (\B[1]~input_o\ & 
-- ((!\AddnSub~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & (!\B[2]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000010111101100100001011110110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\);

-- Location: MLABCELL_X54_Y15_N14
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ = ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\ & \AddnSub~input_o\)))) # (\B[0]~input_o\ & (\A[0]~input_o\ & (!\B[1]~input_o\ $ (\AddnSub~input_o\)))) ) ) # ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & 
-- (((!\B[1]~input_o\ & \AddnSub~input_o\)))) # (\B[0]~input_o\ & (\A[0]~input_o\ & (!\B[1]~input_o\ $ (!\AddnSub~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000100000000011100010000000100001100010000010000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\);

-- Location: MLABCELL_X54_Y15_N16
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ = ( \Add|GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ & ( !\B[2]~input_o\ $ (!\A[2]~input_o\ $ (\AddnSub~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~0_combout\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\);

-- Location: MLABCELL_X54_Y15_N8
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = ( \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ & ( !\B[3]~input_o\ $ (!\A[3]~input_o\ $ 
-- (!\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~0_combout\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_C[3]~1_combout\,
	combout => \Add|S\(3));

-- Location: MLABCELL_X54_Y15_N10
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (!\B[3]~input_o\ & (\A[3]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\)))) # (\B[3]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[3]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101100001010101110110000101010111011000010101011101100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: MLABCELL_X54_Y15_N28
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \Mux12~3_combout\ & ( (!\Mux14~8_combout\ & (\Mux12~2_combout\ & (\Mux14~7_combout\))) # (\Mux14~8_combout\ & (((\Add|S\(3)) # (\Mux14~7_combout\)))) ) ) # ( !\Mux12~3_combout\ & ( (!\Mux14~8_combout\ & (\Mux12~2_combout\ & 
-- (\Mux14~7_combout\))) # (\Mux14~8_combout\ & (((!\Mux14~7_combout\ & \Add|S\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010000000100101001000000111010101110000011101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~8_combout\,
	datab => \ALT_INV_Mux12~2_combout\,
	datac => \ALT_INV_Mux14~7_combout\,
	datad => \Add|ALT_INV_S\(3),
	dataf => \ALT_INV_Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LABCELL_X55_Y15_N20
\Add|block_carry_in[1]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~3_combout\ = ( \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ & ( (!\Add|block_carry_in[1]~0_combout\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~combout\) ) ) # ( !\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ & ( 
-- !\Add|block_carry_in[1]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[1]~0_combout\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_Pout~combout\,
	dataf => \Add|GEN_BLOCKS:0:LACG_INST|ALT_INV_g_int~2_combout\,
	combout => \Add|block_carry_in[1]~3_combout\);

-- Location: MLABCELL_X54_Y15_N24
\Add|S[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(4) = ( \B[4]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|block_carry_in[1]~3_combout\ $ (\A[4]~input_o\)) ) ) # ( !\B[4]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|block_carry_in[1]~3_combout\ $ (!\A[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100111100110000110011110000111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_block_carry_in[1]~3_combout\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \Add|S\(4));

-- Location: MLABCELL_X54_Y14_N0
\Shift|ShiftLeft0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~6_combout\ = ( \A[3]~input_o\ & ( \A[1]~input_o\ & ( ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\))) # (\B[0]~input_o\) ) ) ) # ( !\A[3]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( \A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) # 
-- (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( !\A[3]~input_o\ & ( !\A[1]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & ((\A[4]~input_o\))) # (\B[1]~input_o\ & (\A[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011000100001101001111010000000111110001110011011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ShiftLeft0~6_combout\);

-- Location: LABCELL_X53_Y14_N38
\Shift|ShiftLeft0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~5_combout\ = ( \A[0]~input_o\ & ( \Shift|ShiftLeft0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ShiftLeft0~5_combout\);

-- Location: LABCELL_X53_Y14_N36
\Shift|ShiftLeft0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~7_combout\ = ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~6_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ShiftLeft0~7_combout\);

-- Location: LABCELL_X53_Y14_N0
\Shift|ShiftRight0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~2_combout\ = ( \Shift|ShiftRight1~1_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)) # (\Shift|ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (((\Shift|ShiftRight1~3_combout\ & !\B[2]~input_o\)))) ) ) # ( 
-- !\Shift|ShiftRight1~1_combout\ & ( (!\B[3]~input_o\ & (\Shift|ShiftRight1~2_combout\ & ((\B[2]~input_o\)))) # (\B[3]~input_o\ & (((\Shift|ShiftRight1~3_combout\ & !\B[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010000000000110101000011110011010100001111001101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~2_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight1~1_combout\,
	combout => \Shift|ShiftRight0~2_combout\);

-- Location: LABCELL_X53_Y14_N4
\Shift|ShiftRight1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = ( \Shift|ShiftRight1~2_combout\ & ( \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((\Shift|ShiftRight1~3_combout\))) # (\B[2]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\Shift|ShiftRight1~2_combout\ & ( \B[3]~input_o\ & ( 
-- (!\B[2]~input_o\ & ((\Shift|ShiftRight1~3_combout\))) # (\B[2]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( \Shift|ShiftRight1~2_combout\ & ( !\B[3]~input_o\ & ( (\Shift|ShiftRight1~1_combout\) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ShiftRight1~2_combout\ & ( 
-- !\B[3]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ShiftRight1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000011111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~1_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~2_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: LABCELL_X53_Y14_N30
\Y_ShiftOrArith[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[4]~1_combout\ = ( \Shift|ShiftRight1~13_combout\ & ( \ShiftFN[0]~input_o\ & ( (\ShiftFN[1]~input_o\) # (\Shift|ShiftLeft0~7_combout\) ) ) ) # ( !\Shift|ShiftRight1~13_combout\ & ( \ShiftFN[0]~input_o\ & ( (\Shift|ShiftLeft0~7_combout\ & 
-- !\ShiftFN[1]~input_o\) ) ) ) # ( \Shift|ShiftRight1~13_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Add|S\(4))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight0~2_combout\))) ) ) ) # ( !\Shift|ShiftRight1~13_combout\ & ( 
-- !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\Add|S\(4))) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(4),
	datab => \Shift|ALT_INV_ShiftLeft0~7_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight0~2_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~13_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[4]~1_combout\);

-- Location: MLABCELL_X52_Y11_N34
\Logic|Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux11~0_combout\ = ( \A[4]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[4]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[4]~input_o\))) ) ) # ( !\A[4]~input_o\ & ( (\B[4]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Logic|Mux11~0_combout\);

-- Location: LABCELL_X53_Y11_N8
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux11~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Y_ShiftOrArith[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Y_ShiftOrArith[4]~1_combout\,
	datad => \Logic|ALT_INV_Mux11~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X54_Y15_N2
\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ = ( \A[4]~input_o\ & ( (!\Add|block_carry_in[1]~3_combout\) # (!\B[4]~input_o\ $ (!\AddnSub~input_o\)) ) ) # ( !\A[4]~input_o\ & ( (!\Add|block_carry_in[1]~3_combout\ & (!\B[4]~input_o\ $ (!\AddnSub~input_o\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000010101111111110101010111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[1]~3_combout\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \ALT_INV_A[4]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\);

-- Location: MLABCELL_X54_Y11_N16
\Mux10~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = ( \ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~2_combout\ & ( (!\B[3]~input_o\ & ((!\ShiftFN[1]~input_o\ & (\B[2]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~5_combout\))))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- \Shift|ShiftLeft0~2_combout\ & ( (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~5_combout\ & !\B[3]~input_o\)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ & ( (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~5_combout\ & !\B[3]~input_o\)) ) ) 
-- ) # ( !\ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ & ( (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~5_combout\ & !\B[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000101000000000010011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~5_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	combout => \Mux10~7_combout\);

-- Location: MLABCELL_X54_Y11_N12
\Mux10~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = ( \ShiftFN[1]~input_o\ & ( (\B[3]~input_o\ & !\ShiftFN[0]~input_o\) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LABCELL_X53_Y15_N32
\Shift|ShiftLeft0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~8_combout\ = ( \B[1]~input_o\ & ( \A[2]~input_o\ & ( (\A[3]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[2]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & \A[3]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[4]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000001010101000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Shift|ShiftLeft0~8_combout\);

-- Location: MLABCELL_X54_Y11_N14
\Mux10~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = ( \Shift|ShiftLeft0~8_combout\ & ( (!\ShiftFN[1]~input_o\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & \ShiftFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	combout => \Mux10~6_combout\);

-- Location: MLABCELL_X54_Y11_N22
\Mux10~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = ( !\Mux10~6_combout\ & ( (!\Mux10~7_combout\ & ((!\Mux10~5_combout\) # (!\Add|P\(5) $ (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000010010000111100001001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(5),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[1]~0_combout\,
	datac => \ALT_INV_Mux10~7_combout\,
	datad => \ALT_INV_Mux10~5_combout\,
	dataf => \ALT_INV_Mux10~6_combout\,
	combout => \Mux10~8_combout\);

-- Location: MLABCELL_X52_Y11_N20
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (!\B[5]~input_o\ & (\A[5]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[5]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[5]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LABCELL_X55_Y13_N8
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \ShiftFN[1]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X54_Y11_N30
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \A[15]~input_o\ & ( \B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\ & (!\B[2]~input_o\))) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight1~7_combout\) # (\B[2]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( 
-- \B[3]~input_o\ & ( (!\B[2]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~7_combout\))))) ) ) ) # ( \A[15]~input_o\ & ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\Shift|ShiftRight0~0_combout\)) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight1~7_combout\) # (\B[2]~input_o\)))) ) ) ) # ( !\A[15]~input_o\ & ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\)) # (\ShiftFN[0]~input_o\ & 
-- (((!\B[2]~input_o\ & \Shift|ShiftRight1~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110010001001110111011100100000011100000010010101110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datae => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LABCELL_X55_Y13_N14
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \Mux10~2_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\FuncClass[0]~input_o\ & ((\Mux10~0_combout\))) # (\FuncClass[0]~input_o\ & (\Mux10~1_combout\)))) ) ) # ( !\Mux10~2_combout\ & ( (!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ 
-- & \Mux10~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux10~1_combout\,
	datad => \ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LABCELL_X55_Y13_N12
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & !\Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_Mux10~0_combout\,
	combout => \Mux10~4_combout\);

-- Location: LABCELL_X55_Y13_N16
\Mux10~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = ( \Mux10~4_combout\ & ( \ShiftFN[1]~input_o\ & ( ((!\Mux6~0_combout\ & (\Shift|ShiftRight1~6_combout\)) # (\Mux6~0_combout\ & ((!\Mux10~8_combout\)))) # (\Mux10~3_combout\) ) ) ) # ( !\Mux10~4_combout\ & ( \ShiftFN[1]~input_o\ & ( 
-- \Mux10~3_combout\ ) ) ) # ( \Mux10~4_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux10~8_combout\) # (\Mux10~3_combout\) ) ) ) # ( !\Mux10~4_combout\ & ( !\ShiftFN[1]~input_o\ & ( \Mux10~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111111100001111111100000000111111110111010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datab => \ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_Mux10~8_combout\,
	datad => \ALT_INV_Mux10~3_combout\,
	datae => \ALT_INV_Mux10~4_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux10~9_combout\);

-- Location: LABCELL_X55_Y15_N8
\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = ( \B[5]~input_o\ & ( (!\Add|G\(4) & (!\AddnSub~input_o\ & \A[5]~input_o\)) # (\Add|G\(4) & ((!\AddnSub~input_o\) # (\A[5]~input_o\))) ) ) # ( !\B[5]~input_o\ & ( (!\Add|G\(4) & (\AddnSub~input_o\ & 
-- \A[5]~input_o\)) # (\Add|G\(4) & ((\A[5]~input_o\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_G\(4),
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: LABCELL_X55_Y15_N10
\Add|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(6) = ( \Add|block_carry_in[1]~3_combout\ & ( !\Add|P\(6) $ (!\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\) ) ) # ( !\Add|block_carry_in[1]~3_combout\ & ( !\Add|P\(6) $ (((!\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & 
-- !\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011110000001111001111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \Add|ALT_INV_P\(6),
	datad => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int[1]~0_combout\,
	dataf => \Add|ALT_INV_block_carry_in[1]~3_combout\,
	combout => \Add|S\(6));

-- Location: LABCELL_X53_Y15_N36
\Shift|ShiftLeft0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~9_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[4]~input_o\)) # (\B[0]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (\B[0]~input_o\ & \A[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101001000100111011110101111101011110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftLeft0~9_combout\);

-- Location: MLABCELL_X54_Y13_N16
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~9_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ShiftLeft0~3_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~9_combout\ & ( \Add|S\(6) ) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~9_combout\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~3_combout\ & \B[2]~input_o\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~9_combout\ & ( \Add|S\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000101000110011001100111010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Add|ALT_INV_S\(6),
	datac => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	combout => \Mux9~2_combout\);

-- Location: MLABCELL_X54_Y13_N2
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \B[3]~input_o\ & ( \ShiftFN[1]~input_o\ & ( \Shift|ShiftRight1~9_combout\ ) ) ) # ( !\B[3]~input_o\ & ( \ShiftFN[1]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ShiftRight1~8_combout\)) # (\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~9_combout\))) ) ) ) # ( \B[3]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Mux9~2_combout\ ) ) ) # ( !\B[3]~input_o\ & ( !\ShiftFN[1]~input_o\ & ( \Mux9~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010000010111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~8_combout\,
	datab => \ALT_INV_Mux9~2_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X54_Y13_N32
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \B[3]~input_o\ & ( \A[15]~input_o\ & ( (!\B[2]~input_o\ & ((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~1_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~10_combout\))))) # (\B[2]~input_o\ & (((\ShiftFN[0]~input_o\)))) ) ) ) 
-- # ( !\B[3]~input_o\ & ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~1_combout\)) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight1~10_combout\) # (\B[2]~input_o\)))) ) ) ) # ( \B[3]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[2]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~1_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~10_combout\))))) ) ) ) # ( !\B[3]~input_o\ & ( !\A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~1_combout\)) # (\ShiftFN[0]~input_o\ 
-- & (((!\B[2]~input_o\ & \Shift|ShiftRight1~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011100010000000100110001010011010111110100001101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~1_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: LABCELL_X55_Y15_N2
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\B[6]~input_o\ & (\A[6]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\)))) # (\B[6]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\A[6]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001110001010101100111000101010110011100010101011001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[6]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X55_Y13_N0
\Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( \Mux10~0_combout\ & ( \Mux9~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # (\Mux9~1_combout\))) ) ) ) # ( !\Mux10~0_combout\ & ( \Mux9~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # 
-- (\Mux9~3_combout\))) ) ) ) # ( \Mux10~0_combout\ & ( !\Mux9~0_combout\ & ( (!\FuncClass[1]~input_o\ & (\Mux9~1_combout\ & !\FuncClass[0]~input_o\)) ) ) ) # ( !\Mux10~0_combout\ & ( !\Mux9~0_combout\ & ( (!\FuncClass[1]~input_o\ & (\Mux9~3_combout\ & 
-- !\FuncClass[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000010100000000000100010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_Mux9~3_combout\,
	datac => \ALT_INV_Mux9~1_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \ALT_INV_Mux10~0_combout\,
	dataf => \ALT_INV_Mux9~0_combout\,
	combout => \Mux9~4_combout\);

-- Location: MLABCELL_X57_Y13_N20
\Logic|Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux8~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[7]~input_o\) # (\A[7]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[7]~input_o\ & \B[7]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[7]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000011001100111100000011111111000000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	datae => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux8~0_combout\);

-- Location: LABCELL_X53_Y13_N8
\Shift|ShiftRight1~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~14_combout\ = ( \A[15]~input_o\ & ( ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~12_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~11_combout\))) # (\B[3]~input_o\) ) ) # ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & 
-- ((\Shift|ShiftRight1~12_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~12_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight1~14_combout\);

-- Location: LABCELL_X53_Y13_N14
\Shift|ShiftRight0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~3_combout\ = ( \Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftRight1~11_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~0_combout\ & (!\B[2]~input_o\))) ) ) ) # ( 
-- !\Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\ & \Shift|ShiftRight1~11_combout\)))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~0_combout\ & (!\B[2]~input_o\))) ) ) ) # ( \Shift|ShiftRight1~12_combout\ & ( 
-- !\A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ShiftRight1~11_combout\))) ) ) ) # ( !\Shift|ShiftRight1~12_combout\ & ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & \Shift|ShiftRight1~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010101000001010101000010000000110101011000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~12_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight0~3_combout\);

-- Location: MLABCELL_X54_Y14_N24
\Shift|ShiftLeft0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~10_combout\ = ( \A[4]~input_o\ & ( \A[5]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)))) # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)))) # 
-- (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010000001100000101111100111111010100000011111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Shift|ShiftLeft0~10_combout\);

-- Location: LABCELL_X53_Y13_N10
\Shift|ShiftLeft0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~11_combout\ = ( \Shift|ShiftLeft0~4_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~10_combout\) # (\B[2]~input_o\))) ) ) # ( !\Shift|ShiftLeft0~4_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \Shift|ShiftLeft0~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	combout => \Shift|ShiftLeft0~11_combout\);

-- Location: LABCELL_X55_Y15_N34
\Add|GEN_BLOCKS:1:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ = ( \B[6]~input_o\ & ( (!\AddnSub~input_o\ & ((\Add|G\(5)) # (\A[6]~input_o\))) # (\AddnSub~input_o\ & (\A[6]~input_o\ & \Add|G\(5))) ) ) # ( !\B[6]~input_o\ & ( (!\AddnSub~input_o\ & (\A[6]~input_o\ & 
-- \Add|G\(5))) # (\AddnSub~input_o\ & ((\Add|G\(5)) # (\A[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111100001010101011110000101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[6]~input_o\,
	datad => \Add|ALT_INV_G\(5),
	dataf => \ALT_INV_B[6]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\);

-- Location: LABCELL_X55_Y15_N12
\Add|GEN_BLOCKS:1:LACG_INST|g_int~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = ( \Add|G\(4) & ( \Add|P\(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add|ALT_INV_P\(5),
	dataf => \Add|ALT_INV_G\(4),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: LABCELL_X55_Y15_N38
\Add|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(7) = ( \Add|P\(6) & ( \Add|block_carry_in[1]~3_combout\ & ( !\Add|P\(7) $ (((!\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ & !\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\))) ) ) ) # ( !\Add|P\(6) & ( \Add|block_carry_in[1]~3_combout\ & ( 
-- !\Add|P\(7) $ (!\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\) ) ) ) # ( \Add|P\(6) & ( !\Add|block_carry_in[1]~3_combout\ & ( !\Add|P\(7) $ (((!\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & (!\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\ & 
-- !\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\)))) ) ) ) # ( !\Add|P\(6) & ( !\Add|block_carry_in[1]~3_combout\ & ( !\Add|P\(7) $ (!\Add|GEN_BLOCKS:1:LACG_INST|g_int~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010011010101010101001011010010110100101101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(7),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_Pout~0_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_g_int~1_combout\,
	datae => \Add|ALT_INV_P\(6),
	dataf => \Add|ALT_INV_block_carry_in[1]~3_combout\,
	combout => \Add|S\(7));

-- Location: LABCELL_X53_Y13_N38
\Y_ShiftOrArith[7]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[7]~2_combout\ = ( \Add|S\(7) & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Shift|ShiftLeft0~11_combout\))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~14_combout\)) ) ) ) # ( !\Add|S\(7) & ( \ShiftFN[0]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((\Shift|ShiftLeft0~11_combout\))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~14_combout\)) ) ) ) # ( \Add|S\(7) & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # (\Shift|ShiftRight0~3_combout\) ) ) ) # ( !\Add|S\(7) & ( 
-- !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight0~3_combout\ & \ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~14_combout\,
	datab => \Shift|ALT_INV_ShiftRight0~3_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~11_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \Add|ALT_INV_S\(7),
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[7]~2_combout\);

-- Location: MLABCELL_X57_Y13_N26
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \Y_ShiftOrArith[7]~2_combout\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\) # (\Logic|Mux8~0_combout\) ) ) ) # ( !\Y_ShiftOrArith[7]~2_combout\ & ( !\FuncClass[1]~input_o\ & ( (\FuncClass[0]~input_o\ & 
-- \Logic|Mux8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101101010101111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datad => \Logic|ALT_INV_Mux8~0_combout\,
	datae => \ALT_INV_Y_ShiftOrArith[7]~2_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X54_Y14_N28
\Shift|ShiftLeft0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~12_combout\ = ( \A[6]~input_o\ & ( \A[5]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) # 
-- (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[8]~input_o\))) # (\B[0]~input_o\ & (\A[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100010010111110010001000001010011101110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Shift|ShiftLeft0~12_combout\);

-- Location: MLABCELL_X52_Y13_N16
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = !\B[8]~input_o\ $ (!\AddnSub~input_o\ $ (!\Add|block_carry_in[2]~2_combout\ $ (!\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011001101001100101100110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	combout => \Add|S\(8));

-- Location: MLABCELL_X54_Y14_N20
\Y_LorS_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS_Ext[8]~0_combout\ = ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Add|S\(8))))) # (\ShiftFN[0]~input_o\ & (((!\B[2]~input_o\ & (\Shift|ShiftLeft0~12_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~6_combout\)))))) ) ) # ( \B[3]~input_o\ & 
-- ( ((!\ShiftFN[0]~input_o\ & (\Add|S\(8))) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftLeft0~5_combout\ & !\B[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001101010101000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	datab => \Add|ALT_INV_S\(8),
	datac => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	datag => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	combout => \Y_LorS_Ext[8]~0_combout\);

-- Location: LABCELL_X53_Y14_N34
\Y_R_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R_Ext[8]~0_combout\ = ( \Shift|ShiftRight1~2_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\) # (\Shift|ShiftRight1~3_combout\)))) # (\B[3]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\Shift|ShiftRight1~2_combout\ & ( 
-- \ShiftFN[0]~input_o\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftRight1~3_combout\ & \B[2]~input_o\)))) # (\B[3]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( \Shift|ShiftRight1~2_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # 
-- (\Shift|ShiftRight1~3_combout\))) ) ) ) # ( !\Shift|ShiftRight1~2_combout\ & ( !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight1~3_combout\ & (!\B[3]~input_o\ & \B[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111100000011000000000101001101011111010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~2_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R_Ext[8]~0_combout\);

-- Location: MLABCELL_X52_Y13_N2
\Logic|Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux7~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[8]~input_o\ & (!\LogicFN[1]~input_o\ & \A[8]~input_o\)) # (\B[8]~input_o\ & (!\LogicFN[1]~input_o\ $ (\A[8]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[8]~input_o\)) # 
-- (\B[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101010000101001010101000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[8]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux7~0_combout\);

-- Location: LABCELL_X53_Y11_N14
\Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = ( \ShiftFN[1]~input_o\ & ( \Logic|Mux7~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\Y_R_Ext[8]~0_combout\) # (\FuncClass[0]~input_o\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Logic|Mux7~0_combout\ & ( (!\FuncClass[1]~input_o\ & 
-- ((\Y_LorS_Ext[8]~0_combout\) # (\FuncClass[0]~input_o\))) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Logic|Mux7~0_combout\ & ( (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & \Y_R_Ext[8]~0_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( 
-- !\Logic|Mux7~0_combout\ & ( (!\FuncClass[0]~input_o\ & (\Y_LorS_Ext[8]~0_combout\ & !\FuncClass[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000001010000001110000011100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \Logic|ALT_INV_Mux7~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X55_Y0_N32
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LABCELL_X53_Y11_N38
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\FuncClass[0]~input_o\ & (!\FuncClass[1]~input_o\ & !\ExtWord~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_ExtWord~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X53_Y11_N36
\Mux11~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: MLABCELL_X52_Y11_N16
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \B[9]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[9]~input_o\)) ) ) # ( !\B[9]~input_o\ & ( (\A[9]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011101011111010111110101111101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LABCELL_X53_Y11_N0
\Mux6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = ( \ExtWord~input_o\ & ( \Y_R_Ext[8]~0_combout\ & ( (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & ((\ShiftFN[1]~input_o\) # (\Y_LorS_Ext[8]~0_combout\)))) ) ) ) # ( \ExtWord~input_o\ & ( !\Y_R_Ext[8]~0_combout\ & ( 
-- (\Y_LorS_Ext[8]~0_combout\ & (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & !\ShiftFN[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y_R_Ext[8]~0_combout\,
	combout => \Mux6~5_combout\);

-- Location: MLABCELL_X54_Y14_N32
\Shift|ShiftLeft0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~13_combout\ = ( \A[6]~input_o\ & ( \A[8]~input_o\ & ( ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\)))) # (\B[0]~input_o\) ) ) ) # ( !\A[6]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ 
-- & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))))) # (\B[0]~input_o\ & (((!\B[1]~input_o\)))) ) ) ) # ( \A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))))) # 
-- (\B[0]~input_o\ & (((\B[1]~input_o\)))) ) ) ) # ( !\A[6]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((!\B[1]~input_o\ & (\A[9]~input_o\)) # (\B[1]~input_o\ & ((\A[7]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_A[6]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftLeft0~13_combout\);

-- Location: MLABCELL_X54_Y11_N24
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( \ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~2_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftLeft0~13_combout\))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~8_combout\ & !\B[3]~input_o\)))) ) ) ) # ( 
-- !\ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~2_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftLeft0~13_combout\))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~8_combout\)))) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ 
-- & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~13_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~8_combout\))))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~13_combout\ & 
-- ((!\B[3]~input_o\)))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000011010001110000000001000111110011110100011111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X54_Y11_N10
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \B[3]~input_o\ & ( (\A[15]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X53_Y13_N22
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \ShiftFN[1]~input_o\ & ( !\Mux6~0_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( \ShiftFN[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: MLABCELL_X52_Y13_N36
\Add|S[9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[9]~1_combout\ = ( \B[8]~input_o\ & ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & ((\Add|block_carry_in[2]~2_combout\) # (\AddnSub~input_o\))) # (\A[8]~input_o\ & ((!\AddnSub~input_o\) # (!\Add|block_carry_in[2]~2_combout\))))) ) ) ) # 
-- ( !\B[8]~input_o\ & ( \B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & (\AddnSub~input_o\ & !\Add|block_carry_in[2]~2_combout\)) # (\A[8]~input_o\ & (!\AddnSub~input_o\ & \Add|block_carry_in[2]~2_combout\)))) ) ) ) # ( \B[8]~input_o\ & ( 
-- !\B[9]~input_o\ & ( !\A[9]~input_o\ $ (((!\A[8]~input_o\ & (!\AddnSub~input_o\ & !\Add|block_carry_in[2]~2_combout\)) # (\A[8]~input_o\ & (\AddnSub~input_o\ & \Add|block_carry_in[2]~2_combout\)))) ) ) ) # ( !\B[8]~input_o\ & ( !\B[9]~input_o\ & ( 
-- !\A[9]~input_o\ $ (((!\A[8]~input_o\ & ((!\AddnSub~input_o\) # (\Add|block_carry_in[2]~2_combout\))) # (\A[8]~input_o\ & ((!\Add|block_carry_in[2]~2_combout\) # (\AddnSub~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110101001011011110001110000111010010101101001000011100011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[8]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	datae => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \Add|S[9]~1_combout\);

-- Location: MLABCELL_X54_Y11_N32
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \Shift|ShiftRight1~6_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\Mux5~0_combout\) # (\Mux6~2_combout\) ) ) ) # ( !\Shift|ShiftRight1~6_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Mux6~2_combout\ & \Mux5~0_combout\) ) ) ) # ( 
-- \Shift|ShiftRight1~6_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux5~0_combout\ & ((\Add|S[9]~1_combout\))) # (\Mux5~0_combout\ & (\Mux6~1_combout\)) ) ) ) # ( !\Shift|ShiftRight1~6_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\Mux5~0_combout\ & 
-- ((\Add|S[9]~1_combout\))) # (\Mux5~0_combout\ & (\Mux6~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_Mux6~2_combout\,
	datac => \ALT_INV_Mux5~0_combout\,
	datad => \Add|ALT_INV_S[9]~1_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~6_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X52_Y11_N2
\Mux6~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = ( \Mux6~3_combout\ & ( (((\Mux11~1_combout\ & \Mux6~4_combout\)) # (\Mux6~5_combout\)) # (\Mux4~0_combout\) ) ) # ( !\Mux6~3_combout\ & ( ((\Mux11~1_combout\ & \Mux6~4_combout\)) # (\Mux6~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux6~4_combout\,
	datad => \ALT_INV_Mux6~5_combout\,
	dataf => \ALT_INV_Mux6~3_combout\,
	combout => \Mux6~6_combout\);

-- Location: MLABCELL_X52_Y11_N18
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( \A[10]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[10]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[10]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\B[10]~input_o\ & ((!\LogicFN[0]~input_o\) 
-- # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: MLABCELL_X54_Y13_N10
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \Shift|ShiftRight0~1_combout\ & ( (!\ShiftFN[0]~input_o\ & (((!\B[3]~input_o\)))) # (\ShiftFN[0]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~10_combout\))) # (\B[3]~input_o\ & (\A[15]~input_o\)))) ) ) # ( 
-- !\Shift|ShiftRight0~1_combout\ & ( (\ShiftFN[0]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~10_combout\))) # (\B[3]~input_o\ & (\A[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001010001000110101111000100011010111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight0~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: MLABCELL_X54_Y12_N22
\Shift|ShiftLeft0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~14_combout\ = ( \A[7]~input_o\ & ( \B[0]~input_o\ & ( (\A[9]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[7]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[9]~input_o\) ) ) ) # ( \A[7]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & (\A[10]~input_o\)) # (\B[1]~input_o\ & ((\A[8]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~14_combout\);

-- Location: MLABCELL_X54_Y13_N6
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~9_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~3_combout\)) # (\B[2]~input_o\ & ((!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftLeft0~9_combout\ & ( 
-- (\Shift|ShiftLeft0~14_combout\) # (\B[2]~input_o\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~9_combout\ & ( (\Shift|ShiftLeft0~3_combout\ & !\B[2]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftLeft0~9_combout\ & ( (!\B[2]~input_o\ & 
-- \Shift|ShiftLeft0~14_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100010001000100010000111111001111110111011101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	combout => \Mux5~1_combout\);

-- Location: MLABCELL_X52_Y13_N10
\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\ = ( \B[9]~input_o\ & ( (!\A[9]~input_o\ & (!\AddnSub~input_o\ & \Add|G\(8))) # (\A[9]~input_o\ & ((!\AddnSub~input_o\) # (\Add|G\(8)))) ) ) # ( !\B[9]~input_o\ & ( (!\A[9]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|G\(8))) # (\A[9]~input_o\ & ((\Add|G\(8)) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[9]~input_o\,
	datab => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_G\(8),
	dataf => \ALT_INV_B[9]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\);

-- Location: MLABCELL_X52_Y13_N24
\Add|S[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(10) = ( \Add|P\(10) & ( (!\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\ & ((!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\) # (!\Add|block_carry_in[2]~2_combout\))) ) ) # ( !\Add|P\(10) & ( ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & 
-- \Add|block_carry_in[2]~2_combout\)) # (\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111111001100110011111111001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	datad => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	dataf => \Add|ALT_INV_P\(10),
	combout => \Add|S\(10));

-- Location: LABCELL_X53_Y13_N6
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \Mux5~0_combout\ & ( \ShiftFN[1]~input_o\ & ( \Mux5~2_combout\ ) ) ) # ( !\Mux5~0_combout\ & ( \ShiftFN[1]~input_o\ & ( \Shift|ShiftRight1~9_combout\ ) ) ) # ( \Mux5~0_combout\ & ( !\ShiftFN[1]~input_o\ & ( \Mux5~1_combout\ ) ) ) # ( 
-- !\Mux5~0_combout\ & ( !\ShiftFN[1]~input_o\ & ( \Add|S\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datab => \ALT_INV_Mux5~2_combout\,
	datac => \ALT_INV_Mux5~1_combout\,
	datad => \Add|ALT_INV_S\(10),
	datae => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: MLABCELL_X52_Y11_N0
\Mux5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = ( \Mux5~3_combout\ & ( (((\Mux11~1_combout\ & \Mux5~4_combout\)) # (\Mux6~5_combout\)) # (\Mux4~0_combout\) ) ) # ( !\Mux5~3_combout\ & ( ((\Mux11~1_combout\ & \Mux5~4_combout\)) # (\Mux6~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111111000000111111111101010111111111110101011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Mux5~4_combout\,
	datad => \ALT_INV_Mux6~5_combout\,
	dataf => \ALT_INV_Mux5~3_combout\,
	combout => \Mux5~5_combout\);

-- Location: MLABCELL_X54_Y12_N26
\Shift|ShiftLeft0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~15_combout\ = ( \B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\) # (\A[10]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[8]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[11]~input_o\ & ( (\B[0]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000010100101111110111011101110110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[8]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftLeft0~15_combout\);

-- Location: LABCELL_X53_Y13_N28
\Shift|ShiftLeft0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~16_combout\ = ( \Shift|ShiftLeft0~10_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~15_combout\)) # (\B[2]~input_o\))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & (\Shift|ShiftLeft0~4_combout\))) ) ) # ( !\Shift|ShiftLeft0~10_combout\ & 
-- ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100110101011100010011010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	combout => \Shift|ShiftLeft0~16_combout\);

-- Location: LABCELL_X53_Y13_N2
\Shift|ShiftRight1~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = (!\Mux6~0_combout\ & ((\A[15]~input_o\))) # (\Mux6~0_combout\ & (\Shift|ShiftRight1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_Mux6~0_combout\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: MLABCELL_X52_Y13_N26
\Add|GEN_BLOCKS:2:LACG_INST|g_int~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ = ( \AddnSub~input_o\ & ( (!\Add|G\(9) & (!\B[10]~input_o\ & \A[10]~input_o\)) # (\Add|G\(9) & ((!\B[10]~input_o\) # (\A[10]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|G\(9) & (\B[10]~input_o\ & 
-- \A[10]~input_o\)) # (\Add|G\(9) & ((\A[10]~input_o\) # (\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101011111000001010101111101010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_G\(9),
	datac => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\);

-- Location: MLABCELL_X52_Y13_N30
\Add|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(11) = ( \Add|block_carry_in[2]~2_combout\ & ( \Add|P\(10) & ( !\Add|P\(11) $ (((!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & (!\Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\ & !\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\)))) ) ) ) # ( 
-- !\Add|block_carry_in[2]~2_combout\ & ( \Add|P\(10) & ( !\Add|P\(11) $ (((!\Add|GEN_BLOCKS:2:LACG_INST|g_int~0_combout\ & !\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\))) ) ) ) # ( \Add|block_carry_in[2]~2_combout\ & ( !\Add|P\(10) & ( 
-- !\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ $ (!\Add|P\(11)) ) ) ) # ( !\Add|block_carry_in[2]~2_combout\ & ( !\Add|P\(10) & ( !\Add|GEN_BLOCKS:2:LACG_INST|g_int~2_combout\ $ (!\Add|P\(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000111111110000000111111110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~0_combout\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|ALT_INV_g_int~2_combout\,
	datad => \Add|ALT_INV_P\(11),
	datae => \Add|ALT_INV_block_carry_in[2]~2_combout\,
	dataf => \Add|ALT_INV_P\(10),
	combout => \Add|S\(11));

-- Location: LABCELL_X53_Y13_N30
\Shift|ShiftRight0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~4_combout\ = ( \Shift|ShiftRight1~11_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\A[15]~input_o\ & \Shift|ShiftLeft0~0_combout\)))) ) ) # ( !\Shift|ShiftRight1~11_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & 
-- (\A[15]~input_o\ & \Shift|ShiftLeft0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001010001000100010101000100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~11_combout\,
	combout => \Shift|ShiftRight0~4_combout\);

-- Location: LABCELL_X53_Y13_N32
\Y_ShiftOrArith[8]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~3_combout\ = ( \Shift|ShiftRight0~4_combout\ & ( \ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\) # (\Shift|ShiftRight1~15_combout\) ) ) ) # ( !\Shift|ShiftRight0~4_combout\ & ( \ShiftFN[1]~input_o\ & ( (\Shift|ShiftRight1~15_combout\ & 
-- \ShiftFN[0]~input_o\) ) ) ) # ( \Shift|ShiftRight0~4_combout\ & ( !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Add|S\(11)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~16_combout\)) ) ) ) # ( !\Shift|ShiftRight0~4_combout\ & ( 
-- !\ShiftFN[1]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Add|S\(11)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~16_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~15_combout\,
	datac => \Add|ALT_INV_S\(11),
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight0~4_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[8]~3_combout\);

-- Location: LABCELL_X55_Y11_N32
\Logic|Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux4~0_combout\ = ( \A[11]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[11]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[11]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & 
-- ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[11]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Logic|Mux4~0_combout\);

-- Location: LABCELL_X53_Y11_N26
\Mux4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = ( \Logic|Mux4~0_combout\ & ( (((\Mux4~0_combout\ & \Y_ShiftOrArith[8]~3_combout\)) # (\Mux6~5_combout\)) # (\Mux11~1_combout\) ) ) # ( !\Logic|Mux4~0_combout\ & ( ((\Mux4~0_combout\ & \Y_ShiftOrArith[8]~3_combout\)) # (\Mux6~5_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Y_ShiftOrArith[8]~3_combout\,
	datad => \ALT_INV_Mux6~5_combout\,
	dataf => \Logic|ALT_INV_Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: MLABCELL_X52_Y11_N28
\Logic|Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux3~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[12]~input_o\ & (\A[12]~input_o\ & !\LogicFN[1]~input_o\)) # (\B[12]~input_o\ & (!\A[12]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[12]~input_o\ & 
-- \LogicFN[1]~input_o\)) # (\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[12]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux3~0_combout\);

-- Location: LABCELL_X53_Y14_N2
\Y_R[12]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[12]~0_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\Mux6~0_combout\ & ((\A[15]~input_o\))) # (\Mux6~0_combout\ & (\Shift|ShiftRight1~3_combout\)) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\Shift|ShiftRight1~3_combout\ & \Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_R[12]~0_combout\);

-- Location: MLABCELL_X54_Y12_N8
\Shift|ShiftLeft0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~17_combout\ = ( \B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[11]~input_o\ & ( (\A[12]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & \A[12]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010001000100111011101011111010111110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftLeft0~17_combout\);

-- Location: MLABCELL_X54_Y14_N18
\Shift|ShiftLeft0~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~18_combout\ = ( \Shift|ShiftLeft0~5_combout\ & ( \B[3]~input_o\ & ( (\B[2]~input_o\) # (\Shift|ShiftLeft0~6_combout\) ) ) ) # ( !\Shift|ShiftLeft0~5_combout\ & ( \B[3]~input_o\ & ( (\Shift|ShiftLeft0~6_combout\ & !\B[2]~input_o\) ) ) ) # 
-- ( \Shift|ShiftLeft0~5_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\))) ) ) ) # ( !\Shift|ShiftLeft0~5_combout\ & ( !\B[3]~input_o\ & ( (!\B[2]~input_o\ & 
-- (\Shift|ShiftLeft0~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~17_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Shift|ShiftLeft0~18_combout\);

-- Location: MLABCELL_X52_Y11_N26
\Y_LorS[12]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS[12]~0_combout\ = ( \B[12]~input_o\ & ( \Shift|ShiftLeft0~18_combout\ & ( (!\Add|block_carry_in[3]~4_combout\ $ (!\AddnSub~input_o\ $ (!\A[12]~input_o\))) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\B[12]~input_o\ & ( \Shift|ShiftLeft0~18_combout\ & ( 
-- (!\Add|block_carry_in[3]~4_combout\ $ (!\AddnSub~input_o\ $ (\A[12]~input_o\))) # (\ShiftFN[0]~input_o\) ) ) ) # ( \B[12]~input_o\ & ( !\Shift|ShiftLeft0~18_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\Add|block_carry_in[3]~4_combout\ $ (!\AddnSub~input_o\ $ 
-- (!\A[12]~input_o\)))) ) ) ) # ( !\B[12]~input_o\ & ( !\Shift|ShiftLeft0~18_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\Add|block_carry_in[3]~4_combout\ $ (!\AddnSub~input_o\ $ (\A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010000010100000100010100001111101110101111101011101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~18_combout\,
	combout => \Y_LorS[12]~0_combout\);

-- Location: LABCELL_X53_Y11_N30
\Y_ShiftOrArith[12]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[12]~4_combout\ = ( \ExtWord~input_o\ & ( \Y_LorS[12]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Y_LorS_Ext[8]~0_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_R_Ext[8]~0_combout\)) ) ) ) # ( !\ExtWord~input_o\ & ( \Y_LorS[12]~0_combout\ & ( 
-- (!\ShiftFN[1]~input_o\) # (\Y_R[12]~0_combout\) ) ) ) # ( \ExtWord~input_o\ & ( !\Y_LorS[12]~0_combout\ & ( (!\ShiftFN[1]~input_o\ & ((\Y_LorS_Ext[8]~0_combout\))) # (\ShiftFN[1]~input_o\ & (\Y_R_Ext[8]~0_combout\)) ) ) ) # ( !\ExtWord~input_o\ & ( 
-- !\Y_LorS[12]~0_combout\ & ( (\ShiftFN[1]~input_o\ & \Y_R[12]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111001101010011010111110000111111110011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datab => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Y_R[12]~0_combout\,
	datae => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y_LorS[12]~0_combout\,
	combout => \Y_ShiftOrArith[12]~4_combout\);

-- Location: LABCELL_X53_Y11_N32
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux3~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Y_ShiftOrArith[12]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Logic|ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[12]~4_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: MLABCELL_X54_Y12_N14
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[11]~input_o\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[11]~input_o\ & ( (\B[0]~input_o\ & \A[10]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[0]~input_o\ & (\A[13]~input_o\)) # (\B[0]~input_o\ & ((\A[12]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111000001010000010100100010011101111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X54_Y11_N36
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \Mux2~2_combout\ & ( \Shift|ShiftLeft0~13_combout\ & ( (!\B[3]~input_o\) # ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~8_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~2_combout\)))) ) ) ) # ( !\Mux2~2_combout\ & ( 
-- \Shift|ShiftLeft0~13_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~8_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~2_combout\))))) ) ) ) # ( \Mux2~2_combout\ & ( 
-- !\Shift|ShiftLeft0~13_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\)))) # (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~8_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~2_combout\))))) ) ) ) # ( !\Mux2~2_combout\ & ( 
-- !\Shift|ShiftLeft0~13_combout\ & ( (\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~8_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_Mux2~2_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X52_Y11_N10
\Mux2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \A[13]~input_o\ & ( \LogicFN[0]~input_o\ & ( !\B[13]~input_o\ $ (\LogicFN[1]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( \LogicFN[0]~input_o\ & ( (\B[13]~input_o\ & !\LogicFN[1]~input_o\) ) ) ) # ( \A[13]~input_o\ & ( 
-- !\LogicFN[0]~input_o\ & ( (\LogicFN[1]~input_o\) # (\B[13]~input_o\) ) ) ) # ( !\A[13]~input_o\ & ( !\LogicFN[0]~input_o\ & ( \B[13]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111100110000001100001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datae => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: MLABCELL_X54_Y11_N8
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Mux6~0_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~7_combout\))) ) ) # ( !\Mux6~0_combout\ & ( (\A[15]~input_o\ & \ShiftFN[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~7_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LABCELL_X53_Y11_N4
\Mux2~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = ( !\FuncClass[0]~input_o\ & ( (!\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\ & (\Mux2~3_combout\ & (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Mux2~4_combout\)))))) ) ) # ( \FuncClass[0]~input_o\ & ( (((\Mux2~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000011110000111100000100110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~3_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Mux2~5_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_Mux2~4_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: MLABCELL_X52_Y11_N14
\Add|S[13]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[13]~0_combout\ = ( \B[12]~input_o\ & ( \Add|block_carry_in[3]~4_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((!\A[12]~input_o\) # (!\AddnSub~input_o\)))) ) ) ) # ( !\B[12]~input_o\ & ( \Add|block_carry_in[3]~4_combout\ & ( !\B[13]~input_o\ 
-- $ (!\A[13]~input_o\ $ (((\A[12]~input_o\ & !\AddnSub~input_o\)))) ) ) ) # ( \B[12]~input_o\ & ( !\Add|block_carry_in[3]~4_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((\AddnSub~input_o\) # (\A[12]~input_o\)))) ) ) ) # ( !\B[12]~input_o\ & ( 
-- !\Add|block_carry_in[3]~4_combout\ & ( !\B[13]~input_o\ $ (!\A[13]~input_o\ $ (((!\A[12]~input_o\ & \AddnSub~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100111000110011011001001001101100011100111001100100100110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[12]~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	combout => \Add|S[13]~0_combout\);

-- Location: LABCELL_X53_Y11_N18
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( !\ExtWord~input_o\ & ( (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_ExtWord~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X53_Y11_N16
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \Y_LorS_Ext[8]~0_combout\ & ( (!\FuncClass[0]~input_o\ & (\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\) # (\Y_R_Ext[8]~0_combout\)))) ) ) # ( !\Y_LorS_Ext[8]~0_combout\ & ( (!\FuncClass[0]~input_o\ & (\ShiftFN[1]~input_o\ & 
-- (\Y_R_Ext[8]~0_combout\ & \ExtWord~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000100010100000000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datad => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X53_Y11_N34
\Mux2~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ( \Mux2~1_combout\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\Mux2~1_combout\ & ( (!\FuncClass[1]~input_o\ & (((\Add|S[13]~0_combout\ & \Mux2~0_combout\)) # (\Mux2~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001100010001000100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~7_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Add|ALT_INV_S[13]~0_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~6_combout\);

-- Location: MLABCELL_X54_Y13_N14
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \B[0]~input_o\ & ( \A[12]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[12]~input_o\ & ( (\A[14]~input_o\) # (\B[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\A[12]~input_o\ & ( (!\B[1]~input_o\ & ((\A[13]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[12]~input_o\ & ( (!\B[1]~input_o\ & \A[14]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000100011011101101011111010111110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X54_Y13_N36
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \B[3]~input_o\ & ( \Mux1~0_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~3_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( \Mux1~0_combout\ & ( (!\B[2]~input_o\) # 
-- (\Shift|ShiftLeft0~14_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Mux1~0_combout\ & ( (!\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~3_combout\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Mux1~0_combout\ & ( 
-- (\Shift|ShiftLeft0~14_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011010101010000111111111111001100110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	datab => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: MLABCELL_X52_Y11_N32
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \A[14]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[14]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[14]~input_o\))) ) ) # ( !\A[14]~input_o\ & ( (\B[14]~input_o\ & ((!\LogicFN[0]~input_o\) 
-- # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111001100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[14]~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: MLABCELL_X54_Y13_N8
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Mux6~0_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~1_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~10_combout\))) ) ) # ( !\Mux6~0_combout\ & ( (\ShiftFN[0]~input_o\ & \A[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_A[15]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight0~1_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~10_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X53_Y11_N20
\Mux1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( !\FuncClass[0]~input_o\ & ( (!\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\ & (\Mux1~1_combout\ & (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Mux1~2_combout\)))))) ) ) # ( \FuncClass[0]~input_o\ & ( (((\Mux1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010000000000000011110000111100000100110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Mux1~3_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_FuncClass[0]~input_o\,
	dataf => \ALT_INV_Mux1~2_combout\,
	datag => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LABCELL_X55_Y11_N38
\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ = ( \AddnSub~input_o\ & ( (!\Add|G\(12) & (!\B[13]~input_o\ & \A[13]~input_o\)) # (\Add|G\(12) & ((!\B[13]~input_o\) # (\A[13]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|G\(12) & (\B[13]~input_o\ & 
-- \A[13]~input_o\)) # (\Add|G\(12) & ((\A[13]~input_o\) # (\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_G\(12),
	datac => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\);

-- Location: LABCELL_X55_Y11_N36
\Add|S[14]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(14) = ( \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ & ( !\Add|P\(14) ) ) # ( !\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ & ( !\Add|P\(14) $ (((!\Add|block_carry_in[3]~4_combout\) # (!\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	datad => \Add|ALT_INV_P\(14),
	dataf => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_g_int[1]~1_combout\,
	combout => \Add|S\(14));

-- Location: LABCELL_X53_Y11_N10
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \Mux2~1_combout\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\Mux2~1_combout\ & ( (!\FuncClass[1]~input_o\ & (((\Add|S\(14) & \Mux2~0_combout\)) # (\Mux1~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001001100010001000100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~5_combout\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Add|ALT_INV_S\(14),
	datad => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Mux2~1_combout\,
	combout => \Mux1~4_combout\);

-- Location: MLABCELL_X54_Y12_N38
\Shift|ShiftLeft0~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~19_combout\ = ( \B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[12]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( \B[0]~input_o\ & ( \A[14]~input_o\ ) ) ) # ( \B[1]~input_o\ & ( !\B[0]~input_o\ & ( \A[13]~input_o\ ) ) ) # ( !\B[1]~input_o\ & ( 
-- !\B[0]~input_o\ & ( \A[15]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_A[13]~input_o\,
	datac => \ALT_INV_A[15]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~19_combout\);

-- Location: LABCELL_X53_Y13_N18
\Shift|ShiftLeft0~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = ( \Shift|ShiftLeft0~15_combout\ & ( \Shift|ShiftLeft0~4_combout\ & ( ((!\B[3]~input_o\ & (\Shift|ShiftLeft0~19_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~10_combout\)))) # (\B[2]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~15_combout\ & ( \Shift|ShiftLeft0~4_combout\ & ( (!\B[3]~input_o\ & (\Shift|ShiftLeft0~19_combout\ & (!\B[2]~input_o\))) # (\B[3]~input_o\ & (((\Shift|ShiftLeft0~10_combout\) # (\B[2]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~15_combout\ 
-- & ( !\Shift|ShiftLeft0~4_combout\ & ( (!\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ShiftLeft0~19_combout\))) # (\B[3]~input_o\ & (((!\B[2]~input_o\ & \Shift|ShiftLeft0~10_combout\)))) ) ) ) # ( !\Shift|ShiftLeft0~15_combout\ & ( 
-- !\Shift|ShiftLeft0~4_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftLeft0~19_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~10_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110000001010100111101000100101011101010010111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~19_combout\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: LABCELL_X55_Y11_N12
\Add|S_internal[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S_internal\(15) = ( \Add|P\(15) & ( (!\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ & ((!\Add|block_carry_in[3]~4_combout\) # ((!\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\) # (!\Add|P\(14))))) ) ) # ( !\Add|P\(15) & ( ((\Add|block_carry_in[3]~4_combout\ 
-- & (\Add|GEN_BLOCKS:3:LACG_INST|C~0_combout\ & \Add|P\(14)))) # (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110111001100110011011111001100110010001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C[3]~1_combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|ALT_INV_C~0_combout\,
	datad => \Add|ALT_INV_P\(14),
	dataf => \Add|ALT_INV_P\(15),
	combout => \Add|S_internal\(15));

-- Location: LABCELL_X53_Y14_N18
\Y_ShiftOrArith[8]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~5_combout\ = ( \Shift|ShiftLeft0~1_combout\ & ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Shift|ShiftLeft0~20_combout\))) # (\ShiftFN[1]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\Shift|ShiftLeft0~1_combout\ & ( 
-- \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Shift|ShiftLeft0~20_combout\))) # (\ShiftFN[1]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( \Shift|ShiftLeft0~1_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Add|S_internal\(15)))) # 
-- (\ShiftFN[1]~input_o\ & (\A[15]~input_o\)) ) ) ) # ( !\Shift|ShiftLeft0~1_combout\ & ( !\ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & \Add|S_internal\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000001011111010100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~20_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Add|ALT_INV_S_internal\(15),
	datae => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[8]~5_combout\);

-- Location: LABCELL_X55_Y11_N34
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \B[15]~input_o\ & ( (!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\ $ (\A[15]~input_o\)) ) ) # ( !\B[15]~input_o\ & ( (\A[15]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011011101110101110111110111010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[15]~input_o\,
	dataf => \ALT_INV_B[15]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LABCELL_X53_Y11_N24
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Logic|Mux0~0_combout\ & ( (((\Mux4~0_combout\ & \Y_ShiftOrArith[8]~5_combout\)) # (\Mux6~5_combout\)) # (\Mux11~1_combout\) ) ) # ( !\Logic|Mux0~0_combout\ & ( ((\Mux4~0_combout\ & \Y_ShiftOrArith[8]~5_combout\)) # (\Mux6~5_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100110111111111110011011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux4~0_combout\,
	datab => \ALT_INV_Mux11~1_combout\,
	datac => \ALT_INV_Y_ShiftOrArith[8]~5_combout\,
	datad => \ALT_INV_Mux6~5_combout\,
	dataf => \Logic|ALT_INV_Mux0~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X54_Y11_N20
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\Add|S[9]~1_combout\ & ( !\Add|P\(5) $ (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_P\(5),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|ALT_INV_C[1]~0_combout\,
	dataf => \Add|ALT_INV_S[9]~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X52_Y13_N34
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( \B[12]~input_o\ & ( (!\Add|S\(7) & (!\A[12]~input_o\ $ (!\AddnSub~input_o\ $ (\Add|block_carry_in[3]~4_combout\)))) ) ) # ( !\B[12]~input_o\ & ( (!\Add|S\(7) & (!\A[12]~input_o\ $ (!\AddnSub~input_o\ $ 
-- (!\Add|block_carry_in[3]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000101000100000100010100000101000100000100010100010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(7),
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_block_carry_in[3]~4_combout\,
	dataf => \ALT_INV_B[12]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X53_Y15_N30
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Add|S\(1) & ( !\B[0]~input_o\ $ (\A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[0]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	dataf => \Add|ALT_INV_S\(1),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X54_Y15_N4
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add|S\(4) & ( (!\Add|S\(3) & (!\Add|S\(2) & (\Equal0~0_combout\ & !\Add|S\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(3),
	datab => \Add|ALT_INV_S\(2),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \Add|ALT_INV_S\(6),
	dataf => \Add|ALT_INV_S\(4),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X53_Y13_N20
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Equal0~1_combout\ & ( (!\Add|S\(11) & (\Equal0~2_combout\ & (!\Add|S\(10) & !\Add|S\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(11),
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \Add|ALT_INV_S\(10),
	datad => \Add|ALT_INV_S\(8),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X54_Y11_N2
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\Add|S_internal\(15) & ( (\Equal0~4_combout\ & (!\Add|S\(14) & (!\Add|S[13]~0_combout\ & \Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \Add|ALT_INV_S\(14),
	datac => \Add|ALT_INV_S[13]~0_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \Add|ALT_INV_S_internal\(15),
	combout => \Equal0~5_combout\);

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


