-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "12/02/2025 04:11:53"

-- 
-- Device: Altera EP2AGX45DF29C6 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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
-- Y[0]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AG9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_AC13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_AH16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~7_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~5_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~2_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~3_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Logic|Mux11~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[4]~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[7]~2_combout\ : std_logic;
SIGNAL \Logic|Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Y_LorS_Ext[8]~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Logic|Mux4~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add|S[12]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Y_LorS[12]~0_combout\ : std_logic;
SIGNAL \Y_R[12]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[12]~4_combout\ : std_logic;
SIGNAL \Logic|Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add|S[13]~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add|S[14]~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Mux6~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~15_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R[12]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[8]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~15_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[8]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[14]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S\ : std_logic_vector(15 DOWNTO 1);
SIGNAL \ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS[12]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~20_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[12]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_S[13]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[12]~4_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[8]~7_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[12]~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[10]~9_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[4]~3_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Y_LorS_Ext[8]~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[6]~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[15]~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[13]~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~6_combout\ : std_logic;
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~5_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[5]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~9_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~7_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[1]~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[11]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[14]~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[3]~2_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[9]~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~6_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[2]~1_combout\ : std_logic;
SIGNAL \Add|ALT_INV_C[7]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~8_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~9_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[7]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~6_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~5_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight0~3_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \Logic|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~12_combout\ : std_logic;
SIGNAL \ALT_INV_Y_ShiftOrArith[4]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Y_R_Ext[8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftRight1~14_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Shift|ALT_INV_ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ExtWord~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_FuncClass[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_AddnSub~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ShiftFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_LogicFN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;

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
\ALT_INV_Mux6~7_combout\ <= NOT \Mux6~7_combout\;
\Shift|ALT_INV_ShiftRight1~15_combout\ <= NOT \Shift|ShiftRight1~15_combout\;
\ALT_INV_Mux1~1_combout\ <= NOT \Mux1~1_combout\;
\ALT_INV_Y_R[12]~0_combout\ <= NOT \Y_R[12]~0_combout\;
\ALT_INV_Mux1~5_combout\ <= NOT \Mux1~5_combout\;
\Logic|ALT_INV_Mux0~0_combout\ <= NOT \Logic|Mux0~0_combout\;
\Shift|ALT_INV_ShiftLeft0~19_combout\ <= NOT \Shift|ShiftLeft0~19_combout\;
\ALT_INV_Mux5~1_combout\ <= NOT \Mux5~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Y_ShiftOrArith[8]~5_combout\ <= NOT \Y_ShiftOrArith[8]~5_combout\;
\ALT_INV_Mux2~3_combout\ <= NOT \Mux2~3_combout\;
\ALT_INV_Mux1~4_combout\ <= NOT \Mux1~4_combout\;
\Shift|ALT_INV_ShiftLeft0~15_combout\ <= NOT \Shift|ShiftLeft0~15_combout\;
\ALT_INV_Y_ShiftOrArith[8]~3_combout\ <= NOT \Y_ShiftOrArith[8]~3_combout\;
\Shift|ALT_INV_ShiftLeft0~16_combout\ <= NOT \Shift|ShiftLeft0~16_combout\;
\ALT_INV_Mux2~5_combout\ <= NOT \Mux2~5_combout\;
\Add|ALT_INV_S[14]~2_combout\ <= NOT \Add|S[14]~2_combout\;
\Add|ALT_INV_S\(15) <= NOT \Add|S\(15);
\ALT_INV_Mux5~4_combout\ <= NOT \Mux5~4_combout\;
\ALT_INV_Mux5~2_combout\ <= NOT \Mux5~2_combout\;
\Shift|ALT_INV_ShiftLeft0~17_combout\ <= NOT \Shift|ShiftLeft0~17_combout\;
\Add|ALT_INV_S\(10) <= NOT \Add|S\(10);
\ALT_INV_Mux1~2_combout\ <= NOT \Mux1~2_combout\;
\Logic|ALT_INV_Mux4~0_combout\ <= NOT \Logic|Mux4~0_combout\;
\Logic|ALT_INV_Mux3~0_combout\ <= NOT \Logic|Mux3~0_combout\;
\Shift|ALT_INV_ShiftRight0~4_combout\ <= NOT \Shift|ShiftRight0~4_combout\;
\Add|ALT_INV_S\(11) <= NOT \Add|S\(11);
\ALT_INV_Mux2~4_combout\ <= NOT \Mux2~4_combout\;
\ALT_INV_Mux1~3_combout\ <= NOT \Mux1~3_combout\;
\ALT_INV_Y_LorS[12]~0_combout\ <= NOT \Y_LorS[12]~0_combout\;
\Shift|ALT_INV_ShiftLeft0~14_combout\ <= NOT \Shift|ShiftLeft0~14_combout\;
\ALT_INV_Mux5~3_combout\ <= NOT \Mux5~3_combout\;
\Shift|ALT_INV_ShiftLeft0~20_combout\ <= NOT \Shift|ShiftLeft0~20_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\Add|ALT_INV_S[12]~0_combout\ <= NOT \Add|S[12]~0_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\Add|ALT_INV_S[13]~1_combout\ <= NOT \Add|S[13]~1_combout\;
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Mux2~2_combout\ <= NOT \Mux2~2_combout\;
\Shift|ALT_INV_ShiftLeft0~18_combout\ <= NOT \Shift|ShiftLeft0~18_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux2~1_combout\ <= NOT \Mux2~1_combout\;
\ALT_INV_Y_ShiftOrArith[12]~4_combout\ <= NOT \Y_ShiftOrArith[12]~4_combout\;
\Add|ALT_INV_C[8]~7_combout\ <= NOT \Add|C[8]~7_combout\;
\Shift|ALT_INV_ShiftRight1~3_combout\ <= NOT \Shift|ShiftRight1~3_combout\;
\Shift|ALT_INV_ShiftRight0~0_combout\ <= NOT \Shift|ShiftRight0~0_combout\;
\Shift|ALT_INV_ShiftRight1~0_combout\ <= NOT \Shift|ShiftRight1~0_combout\;
\Add|ALT_INV_C[12]~11_combout\ <= NOT \Add|C[12]~11_combout\;
\ALT_INV_Mux14~4_combout\ <= NOT \Mux14~4_combout\;
\Add|ALT_INV_C[10]~9_combout\ <= NOT \Add|C[10]~9_combout\;
\Add|ALT_INV_C[4]~3_combout\ <= NOT \Add|C[4]~3_combout\;
\Shift|ALT_INV_ShiftRight0~1_combout\ <= NOT \Shift|ShiftRight0~1_combout\;
\Shift|ALT_INV_ShiftRight1~10_combout\ <= NOT \Shift|ShiftRight1~10_combout\;
\ALT_INV_Mux13~0_combout\ <= NOT \Mux13~0_combout\;
\Shift|ALT_INV_ShiftRight1~4_combout\ <= NOT \Shift|ShiftRight1~4_combout\;
\ALT_INV_Y_LorS_Ext[8]~0_combout\ <= NOT \Y_LorS_Ext[8]~0_combout\;
\Shift|ALT_INV_ShiftLeft0~1_combout\ <= NOT \Shift|ShiftLeft0~1_combout\;
\Add|ALT_INV_C[6]~5_combout\ <= NOT \Add|C[6]~5_combout\;
\Add|ALT_INV_C[15]~14_combout\ <= NOT \Add|C[15]~14_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\Logic|ALT_INV_Mux15~0_combout\ <= NOT \Logic|Mux15~0_combout\;
\ALT_INV_Y_ShiftOrArith[0]~0_combout\ <= NOT \Y_ShiftOrArith[0]~0_combout\;
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\Add|ALT_INV_C[13]~12_combout\ <= NOT \Add|C[13]~12_combout\;
\Shift|ALT_INV_ShiftLeft0~0_combout\ <= NOT \Shift|ShiftLeft0~0_combout\;
\Shift|ALT_INV_ShiftRight1~5_combout\ <= NOT \Shift|ShiftRight1~5_combout\;
\Shift|ALT_INV_ShiftRight1~6_combout\ <= NOT \Shift|ShiftRight1~6_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
\ALT_INV_Mux14~1_combout\ <= NOT \Mux14~1_combout\;
\ALT_INV_Mux14~5_combout\ <= NOT \Mux14~5_combout\;
\Add|ALT_INV_C[5]~4_combout\ <= NOT \Add|C[5]~4_combout\;
\ALT_INV_Mux14~7_combout\ <= NOT \Mux14~7_combout\;
\ALT_INV_Mux14~9_combout\ <= NOT \Mux14~9_combout\;
\Shift|ALT_INV_ShiftRight1~7_combout\ <= NOT \Shift|ShiftRight1~7_combout\;
\Add|ALT_INV_C[1]~0_combout\ <= NOT \Add|C[1]~0_combout\;
\Add|ALT_INV_C[11]~10_combout\ <= NOT \Add|C[11]~10_combout\;
\ALT_INV_Mux14~3_combout\ <= NOT \Mux14~3_combout\;
\Add|ALT_INV_C[14]~13_combout\ <= NOT \Add|C[14]~13_combout\;
\Shift|ALT_INV_ShiftRight1~2_combout\ <= NOT \Shift|ShiftRight1~2_combout\;
\Add|ALT_INV_C[3]~2_combout\ <= NOT \Add|C[3]~2_combout\;
\Add|ALT_INV_C[9]~8_combout\ <= NOT \Add|C[9]~8_combout\;
\ALT_INV_Mux14~2_combout\ <= NOT \Mux14~2_combout\;
\ALT_INV_Mux14~6_combout\ <= NOT \Mux14~6_combout\;
\Add|ALT_INV_S\(1) <= NOT \Add|S\(1);
\Add|ALT_INV_C[2]~1_combout\ <= NOT \Add|C[2]~1_combout\;
\Add|ALT_INV_C[7]~6_combout\ <= NOT \Add|C[7]~6_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\Shift|ALT_INV_ShiftLeft0~2_combout\ <= NOT \Shift|ShiftLeft0~2_combout\;
\ALT_INV_Mux14~8_combout\ <= NOT \Mux14~8_combout\;
\Shift|ALT_INV_ShiftRight1~1_combout\ <= NOT \Shift|ShiftRight1~1_combout\;
\Shift|ALT_INV_ShiftRight1~8_combout\ <= NOT \Shift|ShiftRight1~8_combout\;
\Shift|ALT_INV_ShiftRight1~9_combout\ <= NOT \Shift|ShiftRight1~9_combout\;
\ALT_INV_Y_ShiftOrArith[7]~2_combout\ <= NOT \Y_ShiftOrArith[7]~2_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\Add|ALT_INV_S\(2) <= NOT \Add|S\(2);
\Shift|ALT_INV_ShiftRight1~13_combout\ <= NOT \Shift|ShiftRight1~13_combout\;
\Shift|ALT_INV_ShiftLeft0~10_combout\ <= NOT \Shift|ShiftLeft0~10_combout\;
\ALT_INV_Mux10~3_combout\ <= NOT \Mux10~3_combout\;
\ALT_INV_Mux10~1_combout\ <= NOT \Mux10~1_combout\;
\Add|ALT_INV_S\(7) <= NOT \Add|S\(7);
\Shift|ALT_INV_ShiftLeft0~13_combout\ <= NOT \Shift|ShiftLeft0~13_combout\;
\Add|ALT_INV_S\(3) <= NOT \Add|S\(3);
\Shift|ALT_INV_ShiftRight0~2_combout\ <= NOT \Shift|ShiftRight0~2_combout\;
\ALT_INV_Mux10~0_combout\ <= NOT \Mux10~0_combout\;
\Shift|ALT_INV_ShiftLeft0~7_combout\ <= NOT \Shift|ShiftLeft0~7_combout\;
\ALT_INV_Mux9~4_combout\ <= NOT \Mux9~4_combout\;
\ALT_INV_Mux6~3_combout\ <= NOT \Mux6~3_combout\;
\ALT_INV_Mux13~3_combout\ <= NOT \Mux13~3_combout\;
\ALT_INV_Mux6~4_combout\ <= NOT \Mux6~4_combout\;
\ALT_INV_Mux6~5_combout\ <= NOT \Mux6~5_combout\;
\ALT_INV_Mux6~6_combout\ <= NOT \Mux6~6_combout\;
\Shift|ALT_INV_ShiftLeft0~9_combout\ <= NOT \Shift|ShiftLeft0~9_combout\;
\ALT_INV_Mux12~0_combout\ <= NOT \Mux12~0_combout\;
\Shift|ALT_INV_ShiftLeft0~8_combout\ <= NOT \Shift|ShiftLeft0~8_combout\;
\Add|ALT_INV_S\(4) <= NOT \Add|S\(4);
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
\Logic|ALT_INV_Mux8~0_combout\ <= NOT \Logic|Mux8~0_combout\;
\ALT_INV_Mux12~3_combout\ <= NOT \Mux12~3_combout\;
\Add|ALT_INV_S\(6) <= NOT \Add|S\(6);
\ALT_INV_Mux9~5_combout\ <= NOT \Mux9~5_combout\;
\Shift|ALT_INV_ShiftRight0~3_combout\ <= NOT \Shift|ShiftRight0~3_combout\;
\Logic|ALT_INV_Mux7~0_combout\ <= NOT \Logic|Mux7~0_combout\;
\ALT_INV_Mux13~2_combout\ <= NOT \Mux13~2_combout\;
\Shift|ALT_INV_ShiftRight1~11_combout\ <= NOT \Shift|ShiftRight1~11_combout\;
\Shift|ALT_INV_ShiftLeft0~3_combout\ <= NOT \Shift|ShiftLeft0~3_combout\;
\ALT_INV_Mux9~1_combout\ <= NOT \Mux9~1_combout\;
\Logic|ALT_INV_Mux11~0_combout\ <= NOT \Logic|Mux11~0_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
\ALT_INV_Mux9~3_combout\ <= NOT \Mux9~3_combout\;
\ALT_INV_Mux12~2_combout\ <= NOT \Mux12~2_combout\;
\ALT_INV_Mux6~2_combout\ <= NOT \Mux6~2_combout\;
\Shift|ALT_INV_ShiftRight1~12_combout\ <= NOT \Shift|ShiftRight1~12_combout\;
\Add|ALT_INV_S\(5) <= NOT \Add|S\(5);
\ALT_INV_Y_ShiftOrArith[4]~1_combout\ <= NOT \Y_ShiftOrArith[4]~1_combout\;
\ALT_INV_Mux12~1_combout\ <= NOT \Mux12~1_combout\;
\Shift|ALT_INV_ShiftLeft0~4_combout\ <= NOT \Shift|ShiftLeft0~4_combout\;
\Shift|ALT_INV_ShiftLeft0~6_combout\ <= NOT \Shift|ShiftLeft0~6_combout\;
\ALT_INV_Y_R_Ext[8]~0_combout\ <= NOT \Y_R_Ext[8]~0_combout\;
\Add|ALT_INV_S\(8) <= NOT \Add|S\(8);
\ALT_INV_Mux13~1_combout\ <= NOT \Mux13~1_combout\;
\Add|ALT_INV_S\(9) <= NOT \Add|S\(9);
\Shift|ALT_INV_ShiftLeft0~12_combout\ <= NOT \Shift|ShiftLeft0~12_combout\;
\Shift|ALT_INV_ShiftRight1~14_combout\ <= NOT \Shift|ShiftRight1~14_combout\;
\ALT_INV_Mux6~1_combout\ <= NOT \Mux6~1_combout\;
\Shift|ALT_INV_ShiftLeft0~11_combout\ <= NOT \Shift|ShiftLeft0~11_combout\;
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\Shift|ALT_INV_ShiftLeft0~5_combout\ <= NOT \Shift|ShiftLeft0~5_combout\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_ShiftFN[1]~input_o\ <= NOT \ShiftFN[1]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_FuncClass[0]~input_o\ <= NOT \FuncClass[0]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_ExtWord~input_o\ <= NOT \ExtWord~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_FuncClass[1]~input_o\ <= NOT \FuncClass[1]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_AddnSub~input_o\ <= NOT \AddnSub~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_LogicFN[1]~input_o\ <= NOT \LogicFN[1]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_ShiftFN[0]~input_o\ <= NOT \ShiftFN[0]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_LogicFN[0]~input_o\ <= NOT \LogicFN[0]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;

-- Location: IOOBUF_X45_Y0_N67
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

-- Location: IOOBUF_X33_Y0_N67
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

-- Location: IOOBUF_X37_Y0_N36
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

-- Location: IOOBUF_X45_Y0_N36
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

-- Location: IOOBUF_X39_Y0_N2
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

-- Location: IOOBUF_X43_Y0_N98
\Y[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X35_Y0_N67
\Y[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~6_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X35_Y0_N2
\Y[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~8_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X39_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N98
\Y[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N98
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X41_Y0_N5
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

-- Location: IOOBUF_X41_Y0_N98
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

-- Location: IOOBUF_X19_Y0_N67
\Zero~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X22_Y0_N98
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

-- Location: IOOBUF_X29_Y0_N98
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

-- Location: IOIBUF_X35_Y0_N94
\FuncClass[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\A[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X16_Y0_N63
\B[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X29_Y0_N63
\AddnSub~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X19_Y0_N94
\B[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\A[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X22_Y0_N32
\A[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\B[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\A[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X24_Y0_N63
\B[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X39_Y0_N94
\A[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X25_Y0_N94
\A[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X29_Y0_N32
\B[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X41_Y0_N32
\A[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\B[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\A[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N94
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N63
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X35_Y0_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N32
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N94
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X32_Y3_N26
\Add|C[1]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = ( \AddnSub~input_o\ & ( (!\B[0]~input_o\) # (\A[0]~input_o\) ) ) # ( !\AddnSub~input_o\ & ( (\B[0]~input_o\ & \A[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: LABCELL_X32_Y3_N28
\Add|C[2]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = ( \AddnSub~input_o\ & ( (!\A[1]~input_o\ & (!\B[1]~input_o\ & \Add|C[1]~0_combout\)) # (\A[1]~input_o\ & ((!\B[1]~input_o\) # (\Add|C[1]~0_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[1]~input_o\ & (\B[1]~input_o\ & 
-- \Add|C[1]~0_combout\)) # (\A[1]~input_o\ & ((\Add|C[1]~0_combout\) # (\B[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101000100110111010100010011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datad => \Add|ALT_INV_C[1]~0_combout\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: IOIBUF_X37_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X32_Y3_N12
\Add|C[3]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = ( \A[2]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[2]~input_o\)) # (\Add|C[2]~1_combout\) ) ) # ( !\A[2]~input_o\ & ( (\Add|C[2]~1_combout\ & (!\AddnSub~input_o\ $ (!\B[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011010000000000101101001011010111111110101101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Add|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Add|C[3]~2_combout\);

-- Location: IOIBUF_X37_Y0_N1
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X32_Y3_N36
\Add|C[4]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = ( \A[3]~input_o\ & ( (!\B[3]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[3]~2_combout\) ) ) # ( !\A[3]~input_o\ & ( (\Add|C[3]~2_combout\ & (!\B[3]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000111100111111110011110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[3]~2_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|C[4]~3_combout\);

-- Location: IOIBUF_X39_Y0_N63
\A[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\B[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: MLABCELL_X31_Y3_N0
\Add|C[5]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = ( \AddnSub~input_o\ & ( (!\Add|C[4]~3_combout\ & (\A[4]~input_o\ & !\B[4]~input_o\)) # (\Add|C[4]~3_combout\ & ((!\B[4]~input_o\) # (\A[4]~input_o\))) ) ) # ( !\AddnSub~input_o\ & ( (!\Add|C[4]~3_combout\ & (\A[4]~input_o\ & 
-- \B[4]~input_o\)) # (\Add|C[4]~3_combout\ & ((\B[4]~input_o\) # (\A[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111000101110001011101110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[4]~3_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[5]~4_combout\);

-- Location: MLABCELL_X31_Y3_N24
\Add|C[6]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = (!\A[5]~input_o\ & (\Add|C[5]~4_combout\ & (!\B[5]~input_o\ $ (!\AddnSub~input_o\)))) # (\A[5]~input_o\ & ((!\B[5]~input_o\ $ (!\AddnSub~input_o\)) # (\Add|C[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100010010011110110001001001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[5]~4_combout\,
	combout => \Add|C[6]~5_combout\);

-- Location: IOIBUF_X22_Y0_N1
\B[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X43_Y0_N32
\A[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: MLABCELL_X31_Y3_N30
\Add|C[7]~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = ( \A[6]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[6]~input_o\)) # (\Add|C[6]~5_combout\) ) ) # ( !\A[6]~input_o\ & ( (\Add|C[6]~5_combout\ & (!\AddnSub~input_o\ $ (!\B[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001001110111101110110111011110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[6]~5_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Add|C[7]~6_combout\);

-- Location: IOIBUF_X22_Y0_N63
\B[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X31_Y3_N34
\Add|C[8]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = ( \AddnSub~input_o\ & ( (!\A[7]~input_o\ & (\Add|C[7]~6_combout\ & !\B[7]~input_o\)) # (\A[7]~input_o\ & ((!\B[7]~input_o\) # (\Add|C[7]~6_combout\))) ) ) # ( !\AddnSub~input_o\ & ( (!\A[7]~input_o\ & (\Add|C[7]~6_combout\ & 
-- \B[7]~input_o\)) # (\A[7]~input_o\ & ((\B[7]~input_o\) # (\Add|C[7]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101110111000100010111011101110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \Add|ALT_INV_C[7]~6_combout\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|C[8]~7_combout\);

-- Location: IOIBUF_X43_Y0_N63
\A[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\B[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LABCELL_X32_Y4_N26
\Add|C[9]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = (!\Add|C[8]~7_combout\ & (\A[8]~input_o\ & (!\AddnSub~input_o\ $ (!\B[8]~input_o\)))) # (\Add|C[8]~7_combout\ & ((!\AddnSub~input_o\ $ (!\B[8]~input_o\)) # (\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100101011000101110010101100010111001010110001011100101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[8]~7_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	combout => \Add|C[9]~8_combout\);

-- Location: LABCELL_X30_Y3_N20
\Add|C[10]~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = ( \Add|C[9]~8_combout\ & ( (!\AddnSub~input_o\ $ (!\B[9]~input_o\)) # (\A[9]~input_o\) ) ) # ( !\Add|C[9]~8_combout\ & ( (\A[9]~input_o\ & (!\AddnSub~input_o\ $ (!\B[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[9]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \Add|ALT_INV_C[9]~8_combout\,
	combout => \Add|C[10]~9_combout\);

-- Location: LABCELL_X30_Y3_N6
\Add|C[11]~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = ( \Add|C[10]~9_combout\ & ( (!\AddnSub~input_o\ $ (!\B[10]~input_o\)) # (\A[10]~input_o\) ) ) # ( !\Add|C[10]~9_combout\ & ( (\A[10]~input_o\ & (!\AddnSub~input_o\ $ (!\B[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \Add|ALT_INV_C[10]~9_combout\,
	combout => \Add|C[11]~10_combout\);

-- Location: IOIBUF_X25_Y0_N32
\B[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LABCELL_X30_Y3_N28
\Add|C[12]~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = ( \B[11]~input_o\ & ( (!\A[11]~input_o\ & (!\AddnSub~input_o\ & \Add|C[11]~10_combout\)) # (\A[11]~input_o\ & ((!\AddnSub~input_o\) # (\Add|C[11]~10_combout\))) ) ) # ( !\B[11]~input_o\ & ( (!\A[11]~input_o\ & (\AddnSub~input_o\ & 
-- \Add|C[11]~10_combout\)) # (\A[11]~input_o\ & ((\Add|C[11]~10_combout\) # (\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100111111000000110011111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[11]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \Add|ALT_INV_C[11]~10_combout\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: LABCELL_X30_Y3_N14
\Add|C[13]~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = ( \B[12]~input_o\ & ( \Add|C[12]~11_combout\ & ( (!\AddnSub~input_o\) # (\A[12]~input_o\) ) ) ) # ( !\B[12]~input_o\ & ( \Add|C[12]~11_combout\ & ( (\AddnSub~input_o\) # (\A[12]~input_o\) ) ) ) # ( \B[12]~input_o\ & ( 
-- !\Add|C[12]~11_combout\ & ( (\A[12]~input_o\ & !\AddnSub~input_o\) ) ) ) # ( !\B[12]~input_o\ & ( !\Add|C[12]~11_combout\ & ( (\A[12]~input_o\ & \AddnSub~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011001100110000000000110011111111111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	datae => \ALT_INV_B[12]~input_o\,
	dataf => \Add|ALT_INV_C[12]~11_combout\,
	combout => \Add|C[13]~12_combout\);

-- Location: LABCELL_X30_Y4_N0
\Add|C[14]~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = ( \Add|C[13]~12_combout\ & ( (!\AddnSub~input_o\ $ (!\B[13]~input_o\)) # (\A[13]~input_o\) ) ) # ( !\Add|C[13]~12_combout\ & ( (\A[13]~input_o\ & (!\AddnSub~input_o\ $ (!\B[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011001100110111111110110011011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[13]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \Add|ALT_INV_C[13]~12_combout\,
	combout => \Add|C[14]~13_combout\);

-- Location: MLABCELL_X29_Y4_N24
\Add|C[15]~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = ( \Add|C[14]~13_combout\ & ( (!\B[14]~input_o\ $ (!\AddnSub~input_o\)) # (\A[14]~input_o\) ) ) # ( !\Add|C[14]~13_combout\ & ( (\A[14]~input_o\ & (!\B[14]~input_o\ $ (!\AddnSub~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000111111111100110011111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[14]~input_o\,
	datad => \ALT_INV_AddnSub~input_o\,
	dataf => \Add|ALT_INV_C[14]~13_combout\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X25_Y0_N1
\B[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X37_Y0_N94
\A[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X29_Y4_N14
\Add|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = ( \A[15]~input_o\ & ( (!\AddnSub~input_o\ $ (!\B[15]~input_o\)) # (\Add|C[15]~14_combout\) ) ) # ( !\A[15]~input_o\ & ( (\Add|C[15]~14_combout\ & (!\AddnSub~input_o\ $ (!\B[15]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001111101011111010111110101111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[15]~14_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X30_Y0_N63
\LogicFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N1
\LogicFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LABCELL_X32_Y3_N0
\Logic|Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\A[0]~input_o\ & (\B[0]~input_o\ & !\LogicFN[1]~input_o\)) # (\A[0]~input_o\ & (!\B[0]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\A[0]~input_o\ & \LogicFN[1]~input_o\)) # 
-- (\B[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111001100110111011101100110000100010110011000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: MLABCELL_X29_Y4_N30
\AltB~0\ : arriaii_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = ( \A[15]~input_o\ & ( (\Add|C[15]~14_combout\ & (!\AddnSub~input_o\ $ (\B[15]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (!\AddnSub~input_o\ $ (\B[15]~input_o\)) # (\Add|C[15]~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010101011111111101010101111101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[15]~14_combout\,
	datac => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X30_Y0_N94
\ShiftFN[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N32
\ShiftFN[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LABCELL_X30_Y5_N22
\Shift|ShiftRight1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~2_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ & (\A[11]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[9]~input_o\))) # (\B[1]~input_o\ 
-- & (\A[11]~input_o\)) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\) # (\A[10]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (\B[1]~input_o\ & \A[10]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001101110111011101100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[11]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftRight1~2_combout\);

-- Location: MLABCELL_X34_Y4_N0
\Shift|ShiftRight1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~0_combout\ = ( \B[1]~input_o\ & ( \A[3]~input_o\ & ( (\A[2]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[0]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & \A[2]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & ((\A[0]~input_o\))) # (\B[0]~input_o\ & (\A[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Shift|ShiftRight1~0_combout\);

-- Location: LABCELL_X30_Y5_N6
\Shift|ShiftRight1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~3_combout\ = ( \A[12]~input_o\ & ( \A[15]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[13]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[14]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( \A[15]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[13]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)) # (\A[14]~input_o\))) ) ) ) # ( \A[12]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\) # (\A[13]~input_o\)))) # (\B[1]~input_o\ & 
-- (\A[14]~input_o\ & (!\B[0]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\ & \A[13]~input_o\)))) # (\B[1]~input_o\ & (\A[14]~input_o\ & (!\B[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010101100001011101000010101000111111011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight1~3_combout\);

-- Location: MLABCELL_X34_Y4_N4
\Shift|ShiftRight1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~1_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # (\A[7]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[5]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[6]~input_o\ & ( (\A[7]~input_o\ & \B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[5]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000001010000010100000011111100111111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftRight1~1_combout\);

-- Location: MLABCELL_X31_Y4_N24
\Shift|ShiftRight1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~4_combout\ = ( \Shift|ShiftRight1~3_combout\ & ( \Shift|ShiftRight1~1_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~0_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~2_combout\))) # (\B[2]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~3_combout\ & ( \Shift|ShiftRight1~1_combout\ & ( (!\B[3]~input_o\ & (((\Shift|ShiftRight1~0_combout\) # (\B[2]~input_o\)))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~2_combout\ & (!\B[2]~input_o\))) ) ) ) # ( 
-- \Shift|ShiftRight1~3_combout\ & ( !\Shift|ShiftRight1~1_combout\ & ( (!\B[3]~input_o\ & (((!\B[2]~input_o\ & \Shift|ShiftRight1~0_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)) # (\Shift|ShiftRight1~2_combout\))) ) ) ) # ( 
-- !\Shift|ShiftRight1~3_combout\ & ( !\Shift|ShiftRight1~1_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~0_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100111101001100011100110111000001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~2_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~0_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~3_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~1_combout\,
	combout => \Shift|ShiftRight1~4_combout\);

-- Location: LABCELL_X32_Y4_N22
\Shift|ShiftLeft0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~0_combout\ = ( !\B[1]~input_o\ & ( !\B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~0_combout\);

-- Location: LABCELL_X32_Y5_N20
\Mux6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: MLABCELL_X29_Y5_N22
\Shift|ShiftLeft0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~1_combout\ = ( \Mux6~0_combout\ & ( \Shift|ShiftLeft0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Shift|ShiftLeft0~1_combout\);

-- Location: MLABCELL_X29_Y4_N22
\Y_ShiftOrArith[0]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = ( \A[0]~input_o\ & ( \B[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & ((\Shift|ShiftLeft0~1_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight1~4_combout\)))) ) ) ) # ( !\A[0]~input_o\ & ( 
-- \B[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\)) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~4_combout\))) ) ) ) # ( \A[0]~input_o\ & ( !\B[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # 
-- ((\Shift|ShiftLeft0~1_combout\)))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight1~4_combout\)))) ) ) ) # ( !\A[0]~input_o\ & ( !\B[0]~input_o\ & ( (\ShiftFN[1]~input_o\ & \Shift|ShiftRight1~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011100010111100111110001011100010110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~4_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	datae => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: IOIBUF_X24_Y0_N32
\FuncClass[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: MLABCELL_X29_Y4_N16
\Mux15~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( \Y_ShiftOrArith[0]~0_combout\ & ( \FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & ((!\AltB~0_combout\))) # (\FuncClass[0]~input_o\ & (!\Add|Cout~0_combout\)) ) ) ) # ( !\Y_ShiftOrArith[0]~0_combout\ & ( \FuncClass[1]~input_o\ & 
-- ( (!\FuncClass[0]~input_o\ & ((!\AltB~0_combout\))) # (\FuncClass[0]~input_o\ & (!\Add|Cout~0_combout\)) ) ) ) # ( \Y_ShiftOrArith[0]~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\) # (\Logic|Mux15~0_combout\) ) ) ) # ( 
-- !\Y_ShiftOrArith[0]~0_combout\ & ( !\FuncClass[1]~input_o\ & ( (\FuncClass[0]~input_o\ & \Logic|Mux15~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101011111010111111101110010001001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \Add|ALT_INV_Cout~0_combout\,
	datac => \Logic|ALT_INV_Mux15~0_combout\,
	datad => \ALT_INV_AltB~0_combout\,
	datae => \ALT_INV_Y_ShiftOrArith[0]~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LABCELL_X32_Y3_N10
\Mux14~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (!\FuncClass[1]~input_o\ & !\ShiftFN[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LABCELL_X32_Y3_N6
\Mux14~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LABCELL_X32_Y3_N34
\Mux14~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = ( \A[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # (\B[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\B[1]~input_o\ $ (\LogicFN[1]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_LogicFN[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Mux14~9_combout\);

-- Location: LABCELL_X32_Y3_N22
\Mux14~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux6~0_combout\ ) ) # ( !\ShiftFN[1]~input_o\ & ( (\ShiftFN[0]~input_o\ & !\Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: MLABCELL_X29_Y4_N0
\Mux14~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ( !\Mux6~0_combout\ & ( (\ShiftFN[0]~input_o\) # (\ShiftFN[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_Mux6~0_combout\,
	combout => \Mux14~4_combout\);

-- Location: MLABCELL_X31_Y5_N20
\Shift|ShiftRight0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~0_combout\ = ( \A[15]~input_o\ & ( (!\B[0]~input_o\ & (((\B[1]~input_o\) # (\A[13]~input_o\)))) # (\B[0]~input_o\ & (\A[14]~input_o\ & ((!\B[1]~input_o\)))) ) ) # ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101110011000001110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight0~0_combout\);

-- Location: MLABCELL_X31_Y5_N22
\Shift|ShiftRight1~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~7_combout\ = ( \A[15]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\))) # (\B[1]~input_o\) ) ) # ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # 
-- (\B[0]~input_o\ & (\A[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight1~7_combout\);

-- Location: LABCELL_X32_Y5_N6
\Mux14~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = ( \B[2]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LABCELL_X30_Y5_N28
\Shift|ShiftRight1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~6_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & 
-- ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))))) # (\B[1]~input_o\ & (!\B[0]~input_o\)) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & 
-- ((\A[10]~input_o\))))) # (\B[1]~input_o\ & (\B[0]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[9]~input_o\)) # (\B[0]~input_o\ & ((\A[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftRight1~6_combout\);

-- Location: LABCELL_X32_Y4_N30
\Shift|ShiftRight1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~5_combout\ = ( \B[1]~input_o\ & ( \A[8]~input_o\ & ( (\A[7]~input_o\) # (\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & \A[7]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((\A[5]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000011000000110000010001110111010011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftRight1~5_combout\);

-- Location: LABCELL_X32_Y5_N4
\Mux14~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \B[2]~input_o\ & ( (\B[3]~input_o\ & \ShiftFN[0]~input_o\) ) ) # ( !\B[2]~input_o\ & ( \B[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: MLABCELL_X31_Y5_N26
\Mux14~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = ( \Shift|ShiftRight1~5_combout\ & ( \Mux14~0_combout\ & ( (!\Mux14~1_combout\ & ((\Shift|ShiftRight1~6_combout\))) # (\Mux14~1_combout\ & (\Shift|ShiftRight1~7_combout\)) ) ) ) # ( !\Shift|ShiftRight1~5_combout\ & ( \Mux14~0_combout\ & 
-- ( (!\Mux14~1_combout\ & ((\Shift|ShiftRight1~6_combout\))) # (\Mux14~1_combout\ & (\Shift|ShiftRight1~7_combout\)) ) ) ) # ( \Shift|ShiftRight1~5_combout\ & ( !\Mux14~0_combout\ & ( (!\Mux14~1_combout\) # (\Shift|ShiftRight0~0_combout\) ) ) ) # ( 
-- !\Shift|ShiftRight1~5_combout\ & ( !\Mux14~0_combout\ & ( (\Shift|ShiftRight0~0_combout\ & \Mux14~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~5_combout\,
	dataf => \ALT_INV_Mux14~0_combout\,
	combout => \Mux14~2_combout\);

-- Location: MLABCELL_X34_Y4_N30
\Mux14~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = ( \B[0]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\) # (\A[4]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( 
-- !\A[2]~input_o\ & ( (\B[1]~input_o\ & \A[4]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\)) # (\B[1]~input_o\ & ((\A[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LABCELL_X32_Y4_N34
\Shift|ShiftLeft0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~2_combout\ = ( !\B[1]~input_o\ & ( \A[1]~input_o\ & ( (!\B[0]~input_o\) # (\A[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[1]~input_o\ & ( (\B[0]~input_o\ & \A[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000011001111110011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Shift|ShiftLeft0~2_combout\);

-- Location: MLABCELL_X31_Y5_N30
\Mux14~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = ( \Shift|ShiftLeft0~2_combout\ & ( (!\Mux14~3_combout\ & ((!\Mux14~4_combout\) # ((\Mux14~2_combout\)))) # (\Mux14~3_combout\ & (!\Mux14~4_combout\ & ((\Mux14~5_combout\)))) ) ) # ( !\Shift|ShiftLeft0~2_combout\ & ( (!\Mux14~3_combout\ 
-- & (\Mux14~4_combout\ & (\Mux14~2_combout\))) # (\Mux14~3_combout\ & (!\Mux14~4_combout\ & ((\Mux14~5_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~3_combout\,
	datab => \ALT_INV_Mux14~4_combout\,
	datac => \ALT_INV_Mux14~2_combout\,
	datad => \ALT_INV_Mux14~5_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	combout => \Mux14~6_combout\);

-- Location: LABCELL_X32_Y3_N14
\Add|S[1]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(1) = ( \A[1]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[1]~0_combout\ $ (!\B[1]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[1]~0_combout\ $ (\B[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \Add|ALT_INV_C[1]~0_combout\,
	datad => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \Add|S\(1));

-- Location: LABCELL_X32_Y3_N18
\Mux14~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = ( \Add|S\(1) & ( (!\Mux14~8_combout\ & (\Mux14~7_combout\ & ((\Mux14~6_combout\)))) # (\Mux14~8_combout\ & ((!\Mux14~7_combout\) # ((\Mux14~9_combout\)))) ) ) # ( !\Add|S\(1) & ( (\Mux14~7_combout\ & ((!\Mux14~8_combout\ & 
-- ((\Mux14~6_combout\))) # (\Mux14~8_combout\ & (\Mux14~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~8_combout\,
	datab => \ALT_INV_Mux14~7_combout\,
	datac => \ALT_INV_Mux14~9_combout\,
	datad => \ALT_INV_Mux14~6_combout\,
	dataf => \Add|ALT_INV_S\(1),
	combout => \Mux14~10_combout\);

-- Location: MLABCELL_X29_Y5_N6
\Shift|ShiftRight1~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = ( \A[15]~input_o\ & ( (!\Shift|ShiftLeft0~0_combout\) # (\A[14]~input_o\) ) ) # ( !\A[15]~input_o\ & ( (\Shift|ShiftLeft0~0_combout\ & \A[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datad => \ALT_INV_A[14]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: LABCELL_X30_Y5_N32
\Shift|ShiftRight1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & (((\A[10]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((\A[10]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[13]~input_o\))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[10]~input_o\)))) # (\B[1]~input_o\ & 
-- ((!\B[0]~input_o\) # ((\A[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & ((\A[10]~input_o\)))) # (\B[1]~input_o\ & (\B[0]~input_o\ & (\A[13]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: LABCELL_X32_Y5_N22
\Shift|ShiftRight0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~1_combout\ = ( \A[15]~input_o\ & ( (!\B[1]~input_o\ & ((\B[0]~input_o\) # (\A[14]~input_o\))) ) ) # ( !\A[15]~input_o\ & ( (\A[14]~input_o\ & (!\B[1]~input_o\ & !\B[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001010000111100000101000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight0~1_combout\);

-- Location: LABCELL_X32_Y4_N36
\Shift|ShiftRight1~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = ( \B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # (\A[9]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & \A[9]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[7]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: LABCELL_X32_Y5_N10
\Mux13~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \Shift|ShiftRight0~1_combout\ & ( \Shift|ShiftRight1~8_combout\ & ( (!\Mux14~0_combout\) # ((!\Mux14~1_combout\ & ((\Shift|ShiftRight1~9_combout\))) # (\Mux14~1_combout\ & (\Shift|ShiftRight1~10_combout\))) ) ) ) # ( 
-- !\Shift|ShiftRight0~1_combout\ & ( \Shift|ShiftRight1~8_combout\ & ( (!\Mux14~0_combout\ & (((!\Mux14~1_combout\)))) # (\Mux14~0_combout\ & ((!\Mux14~1_combout\ & ((\Shift|ShiftRight1~9_combout\))) # (\Mux14~1_combout\ & 
-- (\Shift|ShiftRight1~10_combout\)))) ) ) ) # ( \Shift|ShiftRight0~1_combout\ & ( !\Shift|ShiftRight1~8_combout\ & ( (!\Mux14~0_combout\ & (((\Mux14~1_combout\)))) # (\Mux14~0_combout\ & ((!\Mux14~1_combout\ & ((\Shift|ShiftRight1~9_combout\))) # 
-- (\Mux14~1_combout\ & (\Shift|ShiftRight1~10_combout\)))) ) ) ) # ( !\Shift|ShiftRight0~1_combout\ & ( !\Shift|ShiftRight1~8_combout\ & ( (\Mux14~0_combout\ & ((!\Mux14~1_combout\ & ((\Shift|ShiftRight1~9_combout\))) # (\Mux14~1_combout\ & 
-- (\Shift|ShiftRight1~10_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010001000010110101101110100001111100011010101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~0_combout\,
	datab => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datac => \ALT_INV_Mux14~1_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datae => \Shift|ALT_INV_ShiftRight0~1_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~8_combout\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X32_Y3_N30
\Shift|ShiftLeft0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~3_combout\ = ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[1]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[0]~input_o\)))) ) ) # ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & (\A[1]~input_o\ & 
-- (\B[0]~input_o\))) # (\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110100000001000011010011000100111101001100010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Shift|ShiftLeft0~3_combout\);

-- Location: MLABCELL_X34_Y4_N14
\Mux13~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = ( \A[4]~input_o\ & ( \A[5]~input_o\ & ( ((!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\))) # (\B[1]~input_o\) ) ) ) # ( !\A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) # 
-- (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[2]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LABCELL_X32_Y3_N20
\Mux13~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = ( \Mux13~1_combout\ & ( (!\Mux14~4_combout\ & (((\Mux14~3_combout\) # (\Shift|ShiftLeft0~3_combout\)))) # (\Mux14~4_combout\ & (\Mux13~0_combout\ & ((!\Mux14~3_combout\)))) ) ) # ( !\Mux13~1_combout\ & ( (!\Mux14~3_combout\ & 
-- ((!\Mux14~4_combout\ & ((\Shift|ShiftLeft0~3_combout\))) # (\Mux14~4_combout\ & (\Mux13~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110110000000000011011101010100001101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~4_combout\,
	datab => \ALT_INV_Mux13~0_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datad => \ALT_INV_Mux14~3_combout\,
	dataf => \ALT_INV_Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LABCELL_X32_Y3_N32
\Add|S[2]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(2) = ( \A[2]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[2]~input_o\ $ (!\Add|C[2]~1_combout\)) ) ) # ( !\A[2]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[2]~input_o\ $ (\Add|C[2]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \Add|ALT_INV_C[2]~1_combout\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Add|S\(2));

-- Location: LABCELL_X32_Y3_N4
\Mux13~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = ( \A[2]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[2]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[2]~input_o\))) ) ) # ( !\A[2]~input_o\ & ( (\B[2]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Mux13~3_combout\);

-- Location: LABCELL_X32_Y3_N24
\Mux13~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = ( \Mux14~7_combout\ & ( (!\Mux14~8_combout\ & (\Mux13~2_combout\)) # (\Mux14~8_combout\ & ((\Mux13~3_combout\))) ) ) # ( !\Mux14~7_combout\ & ( (\Mux14~8_combout\ & \Add|S\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux13~2_combout\,
	datab => \ALT_INV_Mux14~8_combout\,
	datac => \Add|ALT_INV_S\(2),
	datad => \ALT_INV_Mux13~3_combout\,
	dataf => \ALT_INV_Mux14~7_combout\,
	combout => \Mux13~4_combout\);

-- Location: LABCELL_X30_Y5_N36
\Shift|ShiftRight1~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ 
-- & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[13]~input_o\))) # (\B[0]~input_o\ & (\A[14]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: LABCELL_X32_Y4_N2
\Shift|ShiftRight1~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = ( \B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[8]~input_o\ & ( (\A[7]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((\A[9]~input_o\))) # (\B[0]~input_o\ & (\A[10]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & \A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: MLABCELL_X29_Y5_N10
\Mux12~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = ( \Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\Mux14~1_combout\ & (((!\Mux14~0_combout\) # (\Shift|ShiftRight1~11_combout\)))) # (\Mux14~1_combout\ & (((\Mux14~0_combout\)) # (\Shift|ShiftLeft0~0_combout\))) ) ) ) # ( 
-- !\Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\Mux14~1_combout\ & (((\Mux14~0_combout\ & \Shift|ShiftRight1~11_combout\)))) # (\Mux14~1_combout\ & (((\Mux14~0_combout\)) # (\Shift|ShiftLeft0~0_combout\))) ) ) ) # ( 
-- \Shift|ShiftRight1~12_combout\ & ( !\A[15]~input_o\ & ( (!\Mux14~1_combout\ & ((!\Mux14~0_combout\) # (\Shift|ShiftRight1~11_combout\))) ) ) ) # ( !\Shift|ShiftRight1~12_combout\ & ( !\A[15]~input_o\ & ( (!\Mux14~1_combout\ & (\Mux14~0_combout\ & 
-- \Shift|ShiftRight1~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100110000001100110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datab => \ALT_INV_Mux14~1_combout\,
	datac => \ALT_INV_Mux14~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~12_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: MLABCELL_X34_Y4_N22
\Mux12~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( \B[1]~input_o\ & ( 
-- !\A[6]~input_o\ & ( (\A[5]~input_o\ & !\B[0]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111001100110000000001010101000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: MLABCELL_X34_Y4_N38
\Shift|ShiftLeft0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~4_combout\ = ( \B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[3]~input_o\ & ( (!\B[0]~input_o\) # (\A[2]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[3]~input_o\ & ( (!\B[0]~input_o\ & (\A[1]~input_o\)) # (\B[0]~input_o\ & ((\A[0]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[3]~input_o\ & ( (\A[2]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010101010011001111111111000011110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Shift|ShiftLeft0~4_combout\);

-- Location: MLABCELL_X29_Y5_N12
\Mux12~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = ( \Mux14~4_combout\ & ( (\Mux12~1_combout\ & !\Mux14~3_combout\) ) ) # ( !\Mux14~4_combout\ & ( (!\Mux14~3_combout\ & ((\Shift|ShiftLeft0~4_combout\))) # (\Mux14~3_combout\ & (\Mux12~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux12~1_combout\,
	datab => \ALT_INV_Mux12~2_combout\,
	datac => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	datad => \ALT_INV_Mux14~3_combout\,
	dataf => \ALT_INV_Mux14~4_combout\,
	combout => \Mux12~3_combout\);

-- Location: LABCELL_X32_Y3_N38
\Add|S[3]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(3) = ( \A[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[3]~input_o\ $ (!\Add|C[3]~2_combout\)) ) ) # ( !\A[3]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[3]~input_o\ $ (\Add|C[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \Add|ALT_INV_C[3]~2_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Add|S\(3));

-- Location: LABCELL_X32_Y3_N8
\Mux12~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = ( \A[3]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[3]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[3]~input_o\))) ) ) # ( !\A[3]~input_o\ & ( (\B[3]~input_o\ & ((!\LogicFN[0]~input_o\) # 
-- (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100110011110011110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X32_Y3_N16
\Mux12~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = ( \Mux12~0_combout\ & ( (!\Mux14~8_combout\ & (\Mux14~7_combout\ & (\Mux12~3_combout\))) # (\Mux14~8_combout\ & (((\Add|S\(3))) # (\Mux14~7_combout\))) ) ) # ( !\Mux12~0_combout\ & ( (!\Mux14~8_combout\ & (\Mux14~7_combout\ & 
-- (\Mux12~3_combout\))) # (\Mux14~8_combout\ & (!\Mux14~7_combout\ & ((\Add|S\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011000010011010101110001001101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux14~8_combout\,
	datab => \ALT_INV_Mux14~7_combout\,
	datac => \ALT_INV_Mux12~3_combout\,
	datad => \Add|ALT_INV_S\(3),
	dataf => \ALT_INV_Mux12~0_combout\,
	combout => \Mux12~4_combout\);

-- Location: MLABCELL_X31_Y3_N18
\Logic|Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux11~0_combout\ = ( \LogicFN[0]~input_o\ & ( (!\B[4]~input_o\ & (!\LogicFN[1]~input_o\ & \A[4]~input_o\)) # (\B[4]~input_o\ & (!\LogicFN[1]~input_o\ $ (\A[4]~input_o\))) ) ) # ( !\LogicFN[0]~input_o\ & ( ((\LogicFN[1]~input_o\ & \A[4]~input_o\)) # 
-- (\B[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011111010101010101111101010000101001010101000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[4]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_LogicFN[0]~input_o\,
	combout => \Logic|Mux11~0_combout\);

-- Location: MLABCELL_X31_Y3_N2
\Add|S[4]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(4) = ( \AddnSub~input_o\ & ( !\Add|C[4]~3_combout\ $ (!\A[4]~input_o\ $ (!\B[4]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[4]~3_combout\ $ (!\A[4]~input_o\ $ (\B[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[4]~3_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[4]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(4));

-- Location: MLABCELL_X31_Y4_N34
\Shift|ShiftRight1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = ( \Shift|ShiftRight1~3_combout\ & ( \A[15]~input_o\ & ( ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~2_combout\))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftRight1~3_combout\ & ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~2_combout\)))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftRight1~3_combout\ & ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~2_combout\)))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~3_combout\ & ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~1_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~2_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~1_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftRight1~3_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: MLABCELL_X34_Y4_N24
\Shift|ShiftLeft0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~6_combout\ = ( \B[0]~input_o\ & ( \A[2]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( \A[2]~input_o\ & ( (\A[4]~input_o\) # (\B[1]~input_o\) ) ) ) # ( 
-- \B[0]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & ((\A[3]~input_o\))) # (\B[1]~input_o\ & (\A[1]~input_o\)) ) ) ) # ( !\B[0]~input_o\ & ( !\A[2]~input_o\ & ( (!\B[1]~input_o\ & \A[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000111010001110100110011111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	combout => \Shift|ShiftLeft0~6_combout\);

-- Location: LABCELL_X32_Y4_N6
\Shift|ShiftLeft0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~5_combout\ = (\Shift|ShiftLeft0~0_combout\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datad => \ALT_INV_A[0]~input_o\,
	combout => \Shift|ShiftLeft0~5_combout\);

-- Location: MLABCELL_X31_Y4_N8
\Shift|ShiftLeft0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~7_combout\ = ( \Shift|ShiftLeft0~5_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~6_combout\) # (\B[2]~input_o\))) ) ) # ( !\Shift|ShiftLeft0~5_combout\ & ( (!\B[2]~input_o\ & (!\B[3]~input_o\ & \Shift|ShiftLeft0~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100110011000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	combout => \Shift|ShiftLeft0~7_combout\);

-- Location: MLABCELL_X31_Y4_N10
\Shift|ShiftRight0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~2_combout\ = ( \Shift|ShiftRight1~2_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~1_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~3_combout\))))) # (\B[2]~input_o\ & (!\B[3]~input_o\)) ) ) # ( 
-- !\Shift|ShiftRight1~2_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Shift|ShiftRight1~1_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftRight1~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001001100011011100100110001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~1_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~3_combout\,
	dataf => \Shift|ALT_INV_ShiftRight1~2_combout\,
	combout => \Shift|ShiftRight0~2_combout\);

-- Location: MLABCELL_X31_Y4_N18
\Y_ShiftOrArith[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[4]~1_combout\ = ( \Shift|ShiftLeft0~7_combout\ & ( \Shift|ShiftRight0~2_combout\ & ( (!\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)) # (\Add|S\(4)))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\) # 
-- (\Shift|ShiftRight1~13_combout\)))) ) ) ) # ( !\Shift|ShiftLeft0~7_combout\ & ( \Shift|ShiftRight0~2_combout\ & ( (!\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)) # (\Add|S\(4)))) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight1~13_combout\ & 
-- \ShiftFN[1]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~7_combout\ & ( !\Shift|ShiftRight0~2_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S\(4) & ((!\ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((!\ShiftFN[1]~input_o\) # 
-- (\Shift|ShiftRight1~13_combout\)))) ) ) ) # ( !\Shift|ShiftLeft0~7_combout\ & ( !\Shift|ShiftRight0~2_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S\(4) & ((!\ShiftFN[1]~input_o\)))) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight1~13_combout\ & 
-- \ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000101011101110000010100100010101011110111011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Add|ALT_INV_S\(4),
	datac => \Shift|ALT_INV_ShiftRight1~13_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~7_combout\,
	dataf => \Shift|ALT_INV_ShiftRight0~2_combout\,
	combout => \Y_ShiftOrArith[4]~1_combout\);

-- Location: MLABCELL_X31_Y3_N20
\Mux11~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux11~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Y_ShiftOrArith[4]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \Logic|ALT_INV_Mux11~0_combout\,
	datad => \ALT_INV_Y_ShiftOrArith[4]~1_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: MLABCELL_X31_Y3_N6
\Mux9~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = ( \FuncClass[0]~input_o\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\FuncClass[0]~input_o\ & ( (\B[3]~input_o\ & (!\FuncClass[1]~input_o\ & \ShiftFN[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: MLABCELL_X31_Y3_N22
\Mux9~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ( \B[3]~input_o\ & ( (!\FuncClass[1]~input_o\ & ((!\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\))) ) ) # ( !\B[3]~input_o\ & ( !\FuncClass[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100010001001100110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: MLABCELL_X34_Y4_N10
\Shift|ShiftLeft0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~8_combout\ = ( \A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\)))) ) ) ) # ( !\A[4]~input_o\ & ( \A[5]~input_o\ & ( (!\B[1]~input_o\ & 
-- (((!\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))))) ) ) ) # ( \A[4]~input_o\ & ( !\A[5]~input_o\ & ( (!\B[1]~input_o\ & (((\B[0]~input_o\)))) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))))) ) ) ) # ( !\A[4]~input_o\ & ( !\A[5]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[3]~input_o\)) # (\B[0]~input_o\ & ((\A[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100011100111111011101000000111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_A[5]~input_o\,
	combout => \Shift|ShiftLeft0~8_combout\);

-- Location: MLABCELL_X31_Y3_N16
\Add|S[5]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(5) = ( \AddnSub~input_o\ & ( !\Add|C[5]~4_combout\ $ (!\B[5]~input_o\ $ (!\A[5]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[5]~4_combout\ $ (!\B[5]~input_o\ $ (\A[5]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[5]~4_combout\,
	datac => \ALT_INV_B[5]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(5));

-- Location: MLABCELL_X31_Y5_N14
\Mux10~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = ( \ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~2_combout\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~8_combout\) # (\B[2]~input_o\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~2_combout\ & ( \Add|S\(5) ) ) ) # ( 
-- \ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & \Shift|ShiftLeft0~8_combout\)) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~2_combout\ & ( \Add|S\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000010000000100000000000111111110010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	datad => \Add|ALT_INV_S\(5),
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	combout => \Mux10~0_combout\);

-- Location: MLABCELL_X31_Y5_N36
\Mux10~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = ( \Shift|ShiftRight1~5_combout\ & ( \B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & ((\Mux10~0_combout\))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~6_combout\)) ) ) ) # ( !\Shift|ShiftRight1~5_combout\ & ( \B[3]~input_o\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((\Mux10~0_combout\))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~6_combout\)) ) ) ) # ( \Shift|ShiftRight1~5_combout\ & ( !\B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux10~0_combout\)))) # (\ShiftFN[1]~input_o\ & 
-- (((!\B[2]~input_o\)) # (\Shift|ShiftRight1~6_combout\))) ) ) ) # ( !\Shift|ShiftRight1~5_combout\ & ( !\B[3]~input_o\ & ( (!\ShiftFN[1]~input_o\ & (((\Mux10~0_combout\)))) # (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight1~6_combout\ & (\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111110001000011011111110100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux10~0_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~5_combout\,
	dataf => \ALT_INV_B[3]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: MLABCELL_X31_Y3_N26
\Mux10~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[5]~input_o\ & (\A[5]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[5]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[5]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[5]~input_o\ $ (((!\A[5]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001010110010101100101011001110001011100010111000101110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[5]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: MLABCELL_X31_Y5_N2
\Mux10~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = ( \ShiftFN[0]~input_o\ & ( \A[15]~input_o\ & ( (\Shift|ShiftRight1~7_combout\) # (\B[2]~input_o\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( \A[15]~input_o\ & ( (\Shift|ShiftRight0~0_combout\ & ((!\B[3]~input_o\) # (!\B[2]~input_o\))) ) ) ) # 
-- ( \ShiftFN[0]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[2]~input_o\ & \Shift|ShiftRight1~7_combout\) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\A[15]~input_o\ & ( (\Shift|ShiftRight0~0_combout\ & ((!\B[3]~input_o\) # (!\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000011000000110000000000111011100011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: MLABCELL_X31_Y3_N10
\Mux10~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = ( \Mux10~3_combout\ & ( (!\Mux9~1_combout\ & (\Mux9~0_combout\ & (\Mux10~1_combout\))) # (\Mux9~1_combout\ & ((!\Mux9~0_combout\) # ((\Mux10~2_combout\)))) ) ) # ( !\Mux10~3_combout\ & ( (\Mux9~0_combout\ & ((!\Mux9~1_combout\ & 
-- (\Mux10~1_combout\)) # (\Mux9~1_combout\ & ((\Mux10~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux10~1_combout\,
	datad => \ALT_INV_Mux10~2_combout\,
	dataf => \ALT_INV_Mux10~3_combout\,
	combout => \Mux10~4_combout\);

-- Location: MLABCELL_X31_Y3_N28
\Add|S[6]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(6) = ( \A[6]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[6]~5_combout\ $ (!\B[6]~input_o\)) ) ) # ( !\A[6]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[6]~5_combout\ $ (\B[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[6]~5_combout\,
	datad => \ALT_INV_B[6]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Add|S\(6));

-- Location: MLABCELL_X34_Y4_N34
\Shift|ShiftLeft0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~9_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\) # (\A[5]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & ((\A[4]~input_o\))) # (\B[0]~input_o\ & (\A[3]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (\A[5]~input_o\ & \B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000011110101010111111111001100110000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[3]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftLeft0~9_combout\);

-- Location: LABCELL_X32_Y5_N14
\Mux9~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~9_combout\ & ( (\Add|S\(6) & !\ShiftFN[0]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( \Shift|ShiftLeft0~9_combout\ & ( (!\ShiftFN[0]~input_o\ & (\Add|S\(6))) # (\ShiftFN[0]~input_o\ & 
-- (((!\B[2]~input_o\) # (\Shift|ShiftLeft0~3_combout\)))) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~9_combout\ & ( (\Add|S\(6) & !\ShiftFN[0]~input_o\) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftLeft0~9_combout\ & ( (!\ShiftFN[0]~input_o\ & 
-- (\Add|S\(6))) # (\ShiftFN[0]~input_o\ & (((\B[2]~input_o\ & \Shift|ShiftLeft0~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000011010101010000000001010101110011110101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(6),
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	combout => \Mux9~2_combout\);

-- Location: LABCELL_X32_Y5_N16
\Mux9~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux9~2_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~9_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftRight1~9_combout\)) ) ) ) 
-- # ( !\ShiftFN[1]~input_o\ & ( \Mux9~2_combout\ ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux9~2_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftRight1~8_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftRight1~9_combout\)))) # (\B[2]~input_o\ & 
-- (\Shift|ShiftRight1~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000111010101010111111111111111110001110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~8_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: MLABCELL_X31_Y3_N4
\Mux9~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = ( \A[6]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\B[6]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[6]~input_o\))) ) ) # ( !\A[6]~input_o\ & ( (\B[6]~input_o\ & ((!\LogicFN[1]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110000111111110000110011111111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LABCELL_X32_Y5_N0
\Mux9~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = ( \Shift|ShiftRight0~1_combout\ & ( \A[15]~input_o\ & ( (!\B[2]~input_o\ & (((!\ShiftFN[0]~input_o\) # (\Shift|ShiftRight1~10_combout\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\) # ((\ShiftFN[0]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftRight0~1_combout\ & ( \A[15]~input_o\ & ( (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~10_combout\) # (\B[2]~input_o\))) ) ) ) # ( \Shift|ShiftRight0~1_combout\ & ( !\A[15]~input_o\ & ( (!\B[2]~input_o\ & (((!\ShiftFN[0]~input_o\) # 
-- (\Shift|ShiftRight1~10_combout\)))) # (\B[2]~input_o\ & (!\B[3]~input_o\ & (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\Shift|ShiftRight0~1_combout\ & ( !\A[15]~input_o\ & ( (!\B[2]~input_o\ & (\ShiftFN[0]~input_o\ & \Shift|ShiftRight1~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010111000001110101000000101000011111110010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datae => \Shift|ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: MLABCELL_X31_Y3_N8
\Mux9~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = ( \Mux9~5_combout\ & ( (!\Mux9~1_combout\ & (\Mux9~0_combout\ & (\Mux9~3_combout\))) # (\Mux9~1_combout\ & ((!\Mux9~0_combout\) # ((\Mux9~4_combout\)))) ) ) # ( !\Mux9~5_combout\ & ( (\Mux9~0_combout\ & ((!\Mux9~1_combout\ & 
-- (\Mux9~3_combout\)) # (\Mux9~1_combout\ & ((\Mux9~4_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001101000110010101110100011001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux9~1_combout\,
	datab => \ALT_INV_Mux9~0_combout\,
	datac => \ALT_INV_Mux9~3_combout\,
	datad => \ALT_INV_Mux9~4_combout\,
	dataf => \ALT_INV_Mux9~5_combout\,
	combout => \Mux9~6_combout\);

-- Location: MLABCELL_X31_Y3_N32
\Add|S[7]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(7) = ( \AddnSub~input_o\ & ( !\Add|C[7]~6_combout\ $ (!\A[7]~input_o\ $ (!\B[7]~input_o\)) ) ) # ( !\AddnSub~input_o\ & ( !\Add|C[7]~6_combout\ $ (!\A[7]~input_o\ $ (\B[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add|ALT_INV_C[7]~6_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S\(7));

-- Location: MLABCELL_X34_Y4_N16
\Shift|ShiftLeft0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~10_combout\ = ( \B[1]~input_o\ & ( \A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[6]~input_o\ & ( (\B[0]~input_o\) # (\A[7]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[6]~input_o\ & ( (!\B[0]~input_o\ & (\A[5]~input_o\)) # (\B[0]~input_o\ & ((\A[4]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[6]~input_o\ & ( (\A[7]~input_o\ & !\B[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000001100000011111101011111010111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[7]~input_o\,
	datab => \ALT_INV_A[5]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_A[4]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[6]~input_o\,
	combout => \Shift|ShiftLeft0~10_combout\);

-- Location: MLABCELL_X29_Y5_N16
\Shift|ShiftLeft0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~11_combout\ = ( \Shift|ShiftLeft0~10_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ShiftLeft0~4_combout\))) ) ) # ( !\Shift|ShiftLeft0~10_combout\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & \Shift|ShiftLeft0~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	combout => \Shift|ShiftLeft0~11_combout\);

-- Location: MLABCELL_X29_Y5_N18
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

-- Location: MLABCELL_X29_Y5_N2
\Shift|ShiftRight0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~3_combout\ = ( \Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # ((\Shift|ShiftRight1~11_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~0_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftRight1~12_combout\ & ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & (\Shift|ShiftRight1~11_combout\))) # (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~0_combout\)))) ) ) ) # ( \Shift|ShiftRight1~12_combout\ & ( 
-- !\A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (\Shift|ShiftRight1~11_combout\))) ) ) ) # ( !\Shift|ShiftRight1~12_combout\ & ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & (\B[2]~input_o\ & \Shift|ShiftRight1~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010100010101000101000000010010001101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datae => \Shift|ALT_INV_ShiftRight1~12_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight0~3_combout\);

-- Location: MLABCELL_X29_Y5_N26
\Y_ShiftOrArith[7]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[7]~2_combout\ = ( \ShiftFN[0]~input_o\ & ( \Shift|ShiftRight0~3_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Shift|ShiftLeft0~11_combout\)) # (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~14_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( 
-- \Shift|ShiftRight0~3_combout\ & ( (\ShiftFN[1]~input_o\) # (\Add|S\(7)) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Shift|ShiftRight0~3_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Shift|ShiftLeft0~11_combout\)) # (\ShiftFN[1]~input_o\ & 
-- ((\Shift|ShiftRight1~14_combout\))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Shift|ShiftRight0~3_combout\ & ( (\Add|S\(7) & !\ShiftFN[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000001100110000111101010101111111110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(7),
	datab => \Shift|ALT_INV_ShiftLeft0~11_combout\,
	datac => \Shift|ALT_INV_ShiftRight1~14_combout\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shift|ALT_INV_ShiftRight0~3_combout\,
	combout => \Y_ShiftOrArith[7]~2_combout\);

-- Location: MLABCELL_X31_Y3_N12
\Logic|Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux8~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[7]~input_o\) # (\A[7]~input_o\))) # (\LogicFN[0]~input_o\ & (\A[7]~input_o\ & \B[7]~input_o\)) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[7]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000001100110011110000110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux8~0_combout\);

-- Location: MLABCELL_X31_Y3_N14
\Mux8~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux8~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Y_ShiftOrArith[7]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Y_ShiftOrArith[7]~2_combout\,
	datad => \Logic|ALT_INV_Mux8~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: MLABCELL_X31_Y4_N22
\Y_R_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R_Ext[8]~0_combout\ = ( \B[2]~input_o\ & ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & ((\Shift|ShiftRight1~3_combout\))) # (\B[3]~input_o\ & (\ShiftFN[0]~input_o\)) ) ) ) # ( !\B[2]~input_o\ & ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((\Shift|ShiftRight1~2_combout\))) # (\B[3]~input_o\ & (\ShiftFN[0]~input_o\)) ) ) ) # ( \B[2]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & \Shift|ShiftRight1~3_combout\) ) ) ) # ( !\B[2]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & 
-- \Shift|ShiftRight1~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000011000000110000010001110111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~2_combout\,
	datae => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R_Ext[8]~0_combout\);

-- Location: LABCELL_X32_Y4_N24
\Add|S[8]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(8) = ( \A[8]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[8]~7_combout\ $ (!\B[8]~input_o\)) ) ) # ( !\A[8]~input_o\ & ( !\AddnSub~input_o\ $ (!\Add|C[8]~7_combout\ $ (\B[8]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \Add|ALT_INV_C[8]~7_combout\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Add|S\(8));

-- Location: LABCELL_X32_Y4_N10
\Shift|ShiftLeft0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~12_combout\ = ( \B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # (\A[7]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & (\A[6]~input_o\)) # (\B[0]~input_o\ & ((\A[5]~input_o\))) ) ) ) # ( !\B[1]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & \A[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001000111011111001111110011110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[5]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftLeft0~12_combout\);

-- Location: MLABCELL_X31_Y4_N0
\Y_LorS_Ext[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS_Ext[8]~0_combout\ = ( !\B[3]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Add|S\(8))))) # (\ShiftFN[0]~input_o\ & ((!\B[2]~input_o\ & (((\Shift|ShiftLeft0~12_combout\)))) # (\B[2]~input_o\ & (((\Shift|ShiftLeft0~6_combout\)))))) ) ) # ( 
-- \B[3]~input_o\ & ( ((!\ShiftFN[0]~input_o\ & (((\Add|S\(8))))) # (\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100110011001100110011001100000101101011110000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \Add|ALT_INV_S\(8),
	datac => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	datag => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	combout => \Y_LorS_Ext[8]~0_combout\);

-- Location: LABCELL_X30_Y4_N24
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

-- Location: LABCELL_X32_Y4_N4
\Logic|Mux7~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux7~0_combout\ = ( \A[8]~input_o\ & ( (!\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ $ (!\B[8]~input_o\))) # (\LogicFN[1]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[8]~input_o\))) ) ) # ( !\A[8]~input_o\ & ( (\B[8]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LogicFN[1]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Logic|Mux7~0_combout\);

-- Location: MLABCELL_X29_Y4_N2
\Mux7~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = ( \FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Logic|Mux7~0_combout\) ) ) # ( !\FuncClass[0]~input_o\ & ( (!\FuncClass[1]~input_o\ & \Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \Logic|ALT_INV_Mux7~0_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: IOIBUF_X19_Y0_N32
\ExtWord~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LABCELL_X30_Y4_N10
\Mux6~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = ( !\ShiftFN[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & \ExtWord~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	dataf => \ALT_INV_ShiftFN[1]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: MLABCELL_X31_Y5_N8
\Mux6~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\ & (!\B[3]~input_o\))) # (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight1~7_combout\) # (\B[3]~input_o\)))) ) ) # ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000000111000001000011011100110100001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight1~7_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LABCELL_X30_Y3_N18
\Add|S[9]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(9) = ( \Add|C[9]~8_combout\ & ( !\AddnSub~input_o\ $ (!\A[9]~input_o\ $ (!\B[9]~input_o\)) ) ) # ( !\Add|C[9]~8_combout\ & ( !\AddnSub~input_o\ $ (!\A[9]~input_o\ $ (\B[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_B[9]~input_o\,
	dataf => \Add|ALT_INV_C[9]~8_combout\,
	combout => \Add|S\(9));

-- Location: LABCELL_X32_Y4_N12
\Shift|ShiftLeft0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~13_combout\ = ( \B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( \A[8]~input_o\ & ( (\A[9]~input_o\) # (\B[0]~input_o\) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & ((\A[7]~input_o\))) # (\B[0]~input_o\ & (\A[6]~input_o\)) ) ) ) # ( !\B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & \A[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110100111111001111110001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[6]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftLeft0~13_combout\);

-- Location: MLABCELL_X31_Y5_N6
\Mux6~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = ( \ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\)))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) 
-- # ( !\ShiftFN[0]~input_o\ & ( \Shift|ShiftLeft0~8_combout\ & ( ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\))) # (\B[2]~input_o\) ) ) ) # ( \ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~8_combout\ 
-- & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\)))) ) ) ) # ( !\ShiftFN[0]~input_o\ & ( !\Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & 
-- ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111011101110011111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_ShiftFN[0]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	combout => \Mux6~3_combout\);

-- Location: MLABCELL_X31_Y5_N28
\Mux6~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = ( \ShiftFN[0]~input_o\ & ( (!\ShiftFN[1]~input_o\) # (!\Mux6~0_combout\) ) ) # ( !\ShiftFN[0]~input_o\ & ( (\ShiftFN[1]~input_o\ & !\Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_ShiftFN[0]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: MLABCELL_X31_Y5_N32
\Mux6~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux6~5_combout\ & ( \Mux6~4_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux6~5_combout\ & ( \Mux6~3_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux6~5_combout\ & ( \Shift|ShiftRight1~6_combout\ ) ) ) # ( 
-- !\ShiftFN[1]~input_o\ & ( !\Mux6~5_combout\ & ( \Add|S\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux6~4_combout\,
	datab => \Add|ALT_INV_S\(9),
	datac => \Shift|ALT_INV_ShiftRight1~6_combout\,
	datad => \ALT_INV_Mux6~3_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux6~5_combout\,
	combout => \Mux6~6_combout\);

-- Location: LABCELL_X30_Y4_N32
\Mux6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[9]~input_o\ & (!\LogicFN[0]~input_o\ & \A[9]~input_o\)) # (\B[9]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[9]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[9]~input_o\ $ (((!\LogicFN[0]~input_o\) # 
-- (!\A[9]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LABCELL_X30_Y4_N8
\Mux6~7\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = ( \Mux6~2_combout\ & ( ((!\ExtWord~input_o\ & ((\Mux6~6_combout\))) # (\ExtWord~input_o\ & (\Y_R_Ext[8]~0_combout\))) # (\FuncClass[0]~input_o\) ) ) # ( !\Mux6~2_combout\ & ( (!\FuncClass[0]~input_o\ & ((!\ExtWord~input_o\ & 
-- ((\Mux6~6_combout\))) # (\ExtWord~input_o\ & (\Y_R_Ext[8]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datad => \ALT_INV_Mux6~6_combout\,
	dataf => \ALT_INV_Mux6~2_combout\,
	combout => \Mux6~7_combout\);

-- Location: LABCELL_X30_Y4_N34
\Mux6~8\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = ( \Y_LorS_Ext[8]~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\Mux6~7_combout\) # (\Mux6~1_combout\))) ) ) # ( !\Y_LorS_Ext[8]~0_combout\ & ( (!\FuncClass[1]~input_o\ & (!\Mux6~1_combout\ & \Mux6~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_FuncClass[1]~input_o\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_Mux6~7_combout\,
	dataf => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	combout => \Mux6~8_combout\);

-- Location: LABCELL_X30_Y4_N18
\Mux5~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \A[10]~input_o\ & ( (!\LogicFN[0]~input_o\ & ((\B[10]~input_o\) # (\LogicFN[1]~input_o\))) # (\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ $ (\B[10]~input_o\))) ) ) # ( !\A[10]~input_o\ & ( (\B[10]~input_o\ & ((!\LogicFN[0]~input_o\) 
-- # (!\LogicFN[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001011010101011110101101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LogicFN[0]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_B[10]~input_o\,
	dataf => \ALT_INV_A[10]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X32_Y5_N30
\Mux5~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((!\B[3]~input_o\ & \Shift|ShiftRight0~1_combout\)))) # (\ShiftFN[0]~input_o\ & (((\B[3]~input_o\)) # (\Shift|ShiftRight1~10_combout\))) ) ) # ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & 
-- ((!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~1_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000100001011000000010101101101010001010110110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LABCELL_X30_Y3_N4
\Add|S[10]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(10) = ( \Add|C[10]~9_combout\ & ( !\AddnSub~input_o\ $ (!\B[10]~input_o\ $ (!\A[10]~input_o\)) ) ) # ( !\Add|C[10]~9_combout\ & ( !\AddnSub~input_o\ $ (!\B[10]~input_o\ $ (\A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_B[10]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	dataf => \Add|ALT_INV_C[10]~9_combout\,
	combout => \Add|S\(10));

-- Location: LABCELL_X32_Y4_N18
\Shift|ShiftLeft0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~14_combout\ = ( \B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\) # (\A[7]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( \A[8]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\))) ) ) ) # ( 
-- \B[1]~input_o\ & ( !\A[8]~input_o\ & ( (\B[0]~input_o\ & \A[7]~input_o\) ) ) ) # ( !\B[1]~input_o\ & ( !\A[8]~input_o\ & ( (!\B[0]~input_o\ & (\A[10]~input_o\)) # (\B[0]~input_o\ & ((\A[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111000000110000001101000100011101111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[10]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[7]~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	datae => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[8]~input_o\,
	combout => \Shift|ShiftLeft0~14_combout\);

-- Location: LABCELL_X32_Y5_N24
\Mux5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = ( \B[3]~input_o\ & ( \Shift|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~3_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\ & (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( 
-- \Shift|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\) # (\Shift|ShiftLeft0~9_combout\) ) ) ) # ( \B[3]~input_o\ & ( !\Shift|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~3_combout\)))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~9_combout\ & 
-- (!\ShiftFN[0]~input_o\))) ) ) ) # ( !\B[3]~input_o\ & ( !\Shift|ShiftLeft0~14_combout\ & ( (\Shift|ShiftLeft0~9_combout\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100001101110011011101110111010001000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	datae => \ALT_INV_B[3]~input_o\,
	dataf => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	combout => \Mux5~1_combout\);

-- Location: LABCELL_X32_Y5_N34
\Mux5~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ( \ShiftFN[1]~input_o\ & ( \Mux5~1_combout\ & ( (!\Mux6~5_combout\ & (\Shift|ShiftRight1~9_combout\)) # (\Mux6~5_combout\ & ((\Mux5~2_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \Mux5~1_combout\ & ( (\Mux6~5_combout\) # 
-- (\Add|S\(10)) ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\Mux5~1_combout\ & ( (!\Mux6~5_combout\ & (\Shift|ShiftRight1~9_combout\)) # (\Mux6~5_combout\ & ((\Mux5~2_combout\))) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\Mux5~1_combout\ & ( (\Add|S\(10) & 
-- !\Mux6~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000010101010011001100001111111111110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight1~9_combout\,
	datab => \ALT_INV_Mux5~2_combout\,
	datac => \Add|ALT_INV_S\(10),
	datad => \ALT_INV_Mux6~5_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_Mux5~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: LABCELL_X30_Y4_N20
\Mux5~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = ( \Mux5~3_combout\ & ( (!\FuncClass[0]~input_o\ & ((!\ExtWord~input_o\) # ((\Y_R_Ext[8]~0_combout\)))) # (\FuncClass[0]~input_o\ & (((\Mux5~0_combout\)))) ) ) # ( !\Mux5~3_combout\ & ( (!\FuncClass[0]~input_o\ & (\ExtWord~input_o\ & 
-- (\Y_R_Ext[8]~0_combout\))) # (\FuncClass[0]~input_o\ & (((\Mux5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110001010110111111000101011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datad => \ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LABCELL_X30_Y4_N16
\Mux5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = ( \Y_LorS_Ext[8]~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\Mux5~4_combout\) # (\Mux6~1_combout\))) ) ) # ( !\Y_LorS_Ext[8]~0_combout\ & ( (!\Mux6~1_combout\ & (\Mux5~4_combout\ & !\FuncClass[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_Mux5~4_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	combout => \Mux5~5_combout\);

-- Location: LABCELL_X30_Y3_N22
\Logic|Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux4~0_combout\ = ( \A[11]~input_o\ & ( (!\B[11]~input_o\ & (!\LogicFN[1]~input_o\ $ (!\LogicFN[0]~input_o\))) # (\B[11]~input_o\ & ((!\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))) ) ) # ( !\A[11]~input_o\ & ( (\B[11]~input_o\ & 
-- ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[11]~input_o\,
	datac => \ALT_INV_LogicFN[1]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Logic|Mux4~0_combout\);

-- Location: LABCELL_X30_Y5_N0
\Shift|ShiftLeft0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~15_combout\ = ( \A[8]~input_o\ & ( \B[0]~input_o\ & ( (\A[10]~input_o\) # (\B[1]~input_o\) ) ) ) # ( !\A[8]~input_o\ & ( \B[0]~input_o\ & ( (!\B[1]~input_o\ & \A[10]~input_o\) ) ) ) # ( \A[8]~input_o\ & ( !\B[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) ) # ( !\A[8]~input_o\ & ( !\B[0]~input_o\ & ( (!\B[1]~input_o\ & ((\A[11]~input_o\))) # (\B[1]~input_o\ & (\A[9]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[10]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[11]~input_o\,
	datae => \ALT_INV_A[8]~input_o\,
	dataf => \ALT_INV_B[0]~input_o\,
	combout => \Shift|ShiftLeft0~15_combout\);

-- Location: MLABCELL_X29_Y5_N30
\Shift|ShiftLeft0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~16_combout\ = ( \Shift|ShiftLeft0~4_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~10_combout\)))) # (\B[3]~input_o\ & (!\B[2]~input_o\)) ) ) # ( 
-- !\Shift|ShiftLeft0~4_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	datad => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	combout => \Shift|ShiftLeft0~16_combout\);

-- Location: MLABCELL_X29_Y5_N28
\Shift|ShiftRight0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~4_combout\ = ( \A[15]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & ((\Shift|ShiftRight1~11_combout\))) # (\B[2]~input_o\ & (\Shift|ShiftLeft0~0_combout\)))) ) ) # ( !\A[15]~input_o\ & ( (!\B[3]~input_o\ & (!\B[2]~input_o\ & 
-- \Shift|ShiftRight1~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight1~11_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight0~4_combout\);

-- Location: LABCELL_X30_Y3_N30
\Add|S[11]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(11) = ( \B[11]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[11]~input_o\ $ (!\Add|C[11]~10_combout\)) ) ) # ( !\B[11]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[11]~input_o\ $ (\Add|C[11]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datab => \ALT_INV_A[11]~input_o\,
	datad => \Add|ALT_INV_C[11]~10_combout\,
	dataf => \ALT_INV_B[11]~input_o\,
	combout => \Add|S\(11));

-- Location: MLABCELL_X29_Y5_N14
\Shift|ShiftRight1~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = ( \A[15]~input_o\ & ( (!\Mux6~0_combout\) # (\Shift|ShiftRight1~11_combout\) ) ) # ( !\A[15]~input_o\ & ( (\Shift|ShiftRight1~11_combout\ & \Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ALT_INV_ShiftRight1~11_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: MLABCELL_X29_Y5_N34
\Y_ShiftOrArith[8]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~3_combout\ = ( \Add|S\(11) & ( \Shift|ShiftRight1~15_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\Shift|ShiftLeft0~16_combout\))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight0~4_combout\) # 
-- (\ShiftFN[0]~input_o\)))) ) ) ) # ( !\Add|S\(11) & ( \Shift|ShiftRight1~15_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Shift|ShiftLeft0~16_combout\ & (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((\Shift|ShiftRight0~4_combout\) # 
-- (\ShiftFN[0]~input_o\)))) ) ) ) # ( \Add|S\(11) & ( !\Shift|ShiftRight1~15_combout\ & ( (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\)) # (\Shift|ShiftLeft0~16_combout\))) # (\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\ & 
-- \Shift|ShiftRight0~4_combout\)))) ) ) ) # ( !\Add|S\(11) & ( !\Shift|ShiftRight1~15_combout\ & ( (!\ShiftFN[1]~input_o\ & (\Shift|ShiftLeft0~16_combout\ & (\ShiftFN[0]~input_o\))) # (\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\ & 
-- \Shift|ShiftRight0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~16_combout\,
	datac => \ALT_INV_ShiftFN[0]~input_o\,
	datad => \Shift|ALT_INV_ShiftRight0~4_combout\,
	datae => \Add|ALT_INV_S\(11),
	dataf => \Shift|ALT_INV_ShiftRight1~15_combout\,
	combout => \Y_ShiftOrArith[8]~3_combout\);

-- Location: MLABCELL_X29_Y4_N4
\Mux4~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \Logic|Mux4~0_combout\ & ( \Y_ShiftOrArith[8]~3_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\) # ((\Mux7~0_combout\) # (\FuncClass[0]~input_o\)))) ) ) ) # ( !\Logic|Mux4~0_combout\ & ( \Y_ShiftOrArith[8]~3_combout\ & ( 
-- (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & ((!\ExtWord~input_o\) # (\Mux7~0_combout\)))) ) ) ) # ( \Logic|Mux4~0_combout\ & ( !\Y_ShiftOrArith[8]~3_combout\ & ( (!\FuncClass[1]~input_o\ & (((\ExtWord~input_o\ & \Mux7~0_combout\)) # 
-- (\FuncClass[0]~input_o\))) ) ) ) # ( !\Logic|Mux4~0_combout\ & ( !\Y_ShiftOrArith[8]~3_combout\ & ( (!\FuncClass[1]~input_o\ & (\ExtWord~input_o\ & (!\FuncClass[0]~input_o\ & \Mux7~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000010100010101010000000101000001000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \ALT_INV_Mux7~0_combout\,
	datae => \Logic|ALT_INV_Mux4~0_combout\,
	dataf => \ALT_INV_Y_ShiftOrArith[8]~3_combout\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X30_Y3_N16
\Add|S[12]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[12]~0_combout\ = ( \A[12]~input_o\ & ( !\AddnSub~input_o\ $ (\B[12]~input_o\) ) ) # ( !\A[12]~input_o\ & ( !\AddnSub~input_o\ $ (!\B[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_A[12]~input_o\,
	combout => \Add|S[12]~0_combout\);

-- Location: LABCELL_X30_Y5_N24
\Shift|ShiftLeft0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~17_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\) # ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & 
-- (\B[0]~input_o\)) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\)) # (\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (\B[1]~input_o\ & ((!\B[0]~input_o\ & ((\A[10]~input_o\))) # (\B[0]~input_o\ & (\A[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101100010011100110100100011011001111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[9]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Shift|ShiftLeft0~17_combout\);

-- Location: MLABCELL_X31_Y4_N6
\Shift|ShiftLeft0~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~18_combout\ = ( \Shift|ShiftLeft0~6_combout\ & ( \Shift|ShiftLeft0~5_combout\ & ( ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\)))) # (\B[3]~input_o\) ) ) ) # ( 
-- !\Shift|ShiftLeft0~6_combout\ & ( \Shift|ShiftLeft0~5_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\))))) # (\B[3]~input_o\ & (((\B[2]~input_o\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~6_combout\ & ( !\Shift|ShiftLeft0~5_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\))))) # (\B[3]~input_o\ & (((!\B[2]~input_o\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~6_combout\ & ( !\Shift|ShiftLeft0~5_combout\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\ & (\Shift|ShiftLeft0~17_combout\)) # (\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100011101110000110001000100001111110111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~17_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~12_combout\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~6_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~5_combout\,
	combout => \Shift|ShiftLeft0~18_combout\);

-- Location: MLABCELL_X31_Y4_N30
\Y_LorS[12]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_LorS[12]~0_combout\ = ( \Shift|ShiftLeft0~18_combout\ & ( (!\Add|S[12]~0_combout\ $ (!\Add|C[12]~11_combout\)) # (\ShiftFN[0]~input_o\) ) ) # ( !\Shift|ShiftLeft0~18_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\Add|S[12]~0_combout\ $ 
-- (!\Add|C[12]~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001011111111101010101111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Add|ALT_INV_S[12]~0_combout\,
	datad => \Add|ALT_INV_C[12]~11_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~18_combout\,
	combout => \Y_LorS[12]~0_combout\);

-- Location: MLABCELL_X31_Y4_N28
\Y_R[12]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_R[12]~0_combout\ = ( \A[15]~input_o\ & ( (!\Mux6~0_combout\ & (\ShiftFN[0]~input_o\)) # (\Mux6~0_combout\ & ((\Shift|ShiftRight1~3_combout\))) ) ) # ( !\A[15]~input_o\ & ( (\Shift|ShiftRight1~3_combout\ & \Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~3_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_R[12]~0_combout\);

-- Location: MLABCELL_X31_Y4_N14
\Y_ShiftOrArith[12]~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[12]~4_combout\ = ( \Y_LorS_Ext[8]~0_combout\ & ( \Y_R[12]~0_combout\ & ( (!\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\)) # (\Y_LorS[12]~0_combout\))) # (\ExtWord~input_o\ & (((!\ShiftFN[1]~input_o\) # (\Y_R_Ext[8]~0_combout\)))) ) ) ) # ( 
-- !\Y_LorS_Ext[8]~0_combout\ & ( \Y_R[12]~0_combout\ & ( (!\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\)) # (\Y_LorS[12]~0_combout\))) # (\ExtWord~input_o\ & (((\Y_R_Ext[8]~0_combout\ & \ShiftFN[1]~input_o\)))) ) ) ) # ( \Y_LorS_Ext[8]~0_combout\ & ( 
-- !\Y_R[12]~0_combout\ & ( (!\ExtWord~input_o\ & (\Y_LorS[12]~0_combout\ & ((!\ShiftFN[1]~input_o\)))) # (\ExtWord~input_o\ & (((!\ShiftFN[1]~input_o\) # (\Y_R_Ext[8]~0_combout\)))) ) ) ) # ( !\Y_LorS_Ext[8]~0_combout\ & ( !\Y_R[12]~0_combout\ & ( 
-- (!\ExtWord~input_o\ & (\Y_LorS[12]~0_combout\ & ((!\ShiftFN[1]~input_o\)))) # (\ExtWord~input_o\ & (((\Y_R_Ext[8]~0_combout\ & \ShiftFN[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010111110000001101010000111100110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_LorS[12]~0_combout\,
	datab => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datac => \ALT_INV_ExtWord~input_o\,
	datad => \ALT_INV_ShiftFN[1]~input_o\,
	datae => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	dataf => \ALT_INV_Y_R[12]~0_combout\,
	combout => \Y_ShiftOrArith[12]~4_combout\);

-- Location: LABCELL_X30_Y3_N0
\Logic|Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux3~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[12]~input_o\ & (!\LogicFN[0]~input_o\ & \B[12]~input_o\)) # (\A[12]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[12]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[12]~input_o\ $ 
-- (((!\A[12]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111111100000000111111110000110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[12]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux3~0_combout\);

-- Location: LABCELL_X30_Y3_N2
\Mux3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\FuncClass[1]~input_o\ & ( (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[12]~4_combout\)) # (\FuncClass[0]~input_o\ & ((\Logic|Mux3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_ShiftOrArith[12]~4_combout\,
	datac => \ALT_INV_FuncClass[0]~input_o\,
	datad => \Logic|ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_FuncClass[1]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X30_Y4_N4
\Mux2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[13]~input_o\ & (!\LogicFN[0]~input_o\ & \A[13]~input_o\)) # (\B[13]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[13]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[13]~input_o\ $ (((!\LogicFN[0]~input_o\) 
-- # (!\A[13]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100111100001100110011110000110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[13]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X30_Y4_N2
\Add|S[13]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[13]~1_combout\ = ( \B[13]~input_o\ & ( !\AddnSub~input_o\ $ (\A[13]~input_o\) ) ) # ( !\B[13]~input_o\ & ( !\AddnSub~input_o\ $ (!\A[13]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	dataf => \ALT_INV_B[13]~input_o\,
	combout => \Add|S[13]~1_combout\);

-- Location: LABCELL_X30_Y5_N8
\Mux2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & (((\A[13]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[10]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & 
-- (!\B[0]~input_o\ & (\A[13]~input_o\))) # (\B[1]~input_o\ & ((!\B[0]~input_o\) # ((\A[10]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (((\A[13]~input_o\)) # (\B[0]~input_o\))) # (\B[1]~input_o\ & (\B[0]~input_o\ & 
-- ((\A[10]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[13]~input_o\))) # (\B[1]~input_o\ & (\B[0]~input_o\ & ((\A[10]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[10]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: MLABCELL_X31_Y5_N18
\Mux2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = ( \Mux2~2_combout\ & ( \Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\))) ) ) ) # ( !\Mux2~2_combout\ & ( 
-- \Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\)))) ) ) ) # ( \Mux2~2_combout\ & ( 
-- !\Shift|ShiftLeft0~8_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\)))) ) ) ) # ( !\Mux2~2_combout\ & ( 
-- !\Shift|ShiftLeft0~8_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~2_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~13_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_Mux2~2_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~8_combout\,
	combout => \Mux2~3_combout\);

-- Location: MLABCELL_X31_Y5_N10
\Mux2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\ & ((\Mux6~0_combout\)))) # (\ShiftFN[0]~input_o\ & (((!\Mux6~0_combout\) # (\Shift|ShiftRight1~7_combout\)))) ) ) # ( !\A[15]~input_o\ & ( (\Mux6~0_combout\ & 
-- ((!\ShiftFN[0]~input_o\ & (\Shift|ShiftRight0~0_combout\)) # (\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight1~7_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000111000000000100011100110011010001110011001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftRight0~0_combout\,
	datab => \ALT_INV_ShiftFN[0]~input_o\,
	datac => \Shift|ALT_INV_ShiftRight1~7_combout\,
	datad => \ALT_INV_Mux6~0_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LABCELL_X30_Y4_N28
\Mux2~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = ( \Mux2~3_combout\ & ( \Mux2~1_combout\ & ( ((!\Add|C[13]~12_combout\ $ (!\Add|S[13]~1_combout\)) # (\ShiftFN[1]~input_o\)) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\Mux2~3_combout\ & ( \Mux2~1_combout\ & ( ((!\ShiftFN[0]~input_o\ & 
-- (!\Add|C[13]~12_combout\ $ (!\Add|S[13]~1_combout\)))) # (\ShiftFN[1]~input_o\) ) ) ) # ( \Mux2~3_combout\ & ( !\Mux2~1_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\Add|C[13]~12_combout\ $ (!\Add|S[13]~1_combout\)) # (\ShiftFN[0]~input_o\))) ) ) ) # ( 
-- !\Mux2~3_combout\ & ( !\Mux2~1_combout\ & ( (!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & (!\Add|C[13]~12_combout\ $ (!\Add|S[13]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000011100001101000000101111100011110111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Add|ALT_INV_C[13]~12_combout\,
	datac => \ALT_INV_ShiftFN[1]~input_o\,
	datad => \Add|ALT_INV_S[13]~1_combout\,
	datae => \ALT_INV_Mux2~3_combout\,
	dataf => \ALT_INV_Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: LABCELL_X30_Y4_N12
\Mux2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = ( \ShiftFN[1]~input_o\ & ( \FuncClass[0]~input_o\ & ( \Mux2~0_combout\ ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \FuncClass[0]~input_o\ & ( \Mux2~0_combout\ ) ) ) # ( \ShiftFN[1]~input_o\ & ( !\FuncClass[0]~input_o\ & ( (!\ExtWord~input_o\ & 
-- ((\Mux2~4_combout\))) # (\ExtWord~input_o\ & (\Y_R_Ext[8]~0_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\FuncClass[0]~input_o\ & ( (!\ExtWord~input_o\ & \Mux2~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000100011101110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Mux2~0_combout\,
	datad => \ALT_INV_Mux2~4_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LABCELL_X30_Y4_N6
\Mux2~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = ( \Y_LorS_Ext[8]~0_combout\ & ( (!\FuncClass[1]~input_o\ & ((\Mux6~1_combout\) # (\Mux2~5_combout\))) ) ) # ( !\Y_LorS_Ext[8]~0_combout\ & ( (\Mux2~5_combout\ & !\FuncClass[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001011111000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux2~5_combout\,
	datac => \ALT_INV_Mux6~1_combout\,
	datad => \ALT_INV_FuncClass[1]~input_o\,
	dataf => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	combout => \Mux2~6_combout\);

-- Location: LABCELL_X30_Y5_N12
\Mux1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = ( \A[12]~input_o\ & ( \A[11]~input_o\ & ( ((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\)))) # (\B[1]~input_o\) ) ) ) # ( !\A[12]~input_o\ & ( \A[11]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & 
-- (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\))))) # (\B[1]~input_o\ & (((\B[0]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\))))) 
-- # (\B[1]~input_o\ & (((!\B[0]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[11]~input_o\ & ( (!\B[1]~input_o\ & ((!\B[0]~input_o\ & (\A[14]~input_o\)) # (\B[0]~input_o\ & ((\A[13]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110000101000100010010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LABCELL_X32_Y5_N38
\Mux1~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = ( \Shift|ShiftLeft0~3_combout\ & ( \Shift|ShiftLeft0~14_combout\ & ( ((!\B[3]~input_o\ & (\Mux1~1_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~9_combout\)))) # (\B[2]~input_o\) ) ) ) # ( !\Shift|ShiftLeft0~3_combout\ & ( 
-- \Shift|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Mux1~1_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~9_combout\))))) # (\B[2]~input_o\ & (((!\B[3]~input_o\)))) ) ) ) # ( \Shift|ShiftLeft0~3_combout\ & ( 
-- !\Shift|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Mux1~1_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~9_combout\))))) # (\B[2]~input_o\ & (((\B[3]~input_o\)))) ) ) ) # ( !\Shift|ShiftLeft0~3_combout\ & ( 
-- !\Shift|ShiftLeft0~14_combout\ & ( (!\B[2]~input_o\ & ((!\B[3]~input_o\ & (\Mux1~1_combout\)) # (\B[3]~input_o\ & ((\Shift|ShiftLeft0~9_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~1_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	datad => \Shift|ALT_INV_ShiftLeft0~9_combout\,
	datae => \Shift|ALT_INV_ShiftLeft0~3_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~14_combout\,
	combout => \Mux1~2_combout\);

-- Location: LABCELL_X32_Y5_N28
\Mux1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & (((\Mux6~0_combout\ & \Shift|ShiftRight0~1_combout\)))) # (\ShiftFN[0]~input_o\ & (((!\Mux6~0_combout\)) # (\Shift|ShiftRight1~10_combout\))) ) ) # ( !\A[15]~input_o\ & ( (\Mux6~0_combout\ 
-- & ((!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~1_combout\))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011000000010000101101010001010110110101000101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ShiftRight1~10_combout\,
	datac => \ALT_INV_Mux6~0_combout\,
	datad => \Shift|ALT_INV_ShiftRight0~1_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: MLABCELL_X29_Y4_N10
\Add|S[14]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S[14]~2_combout\ = !\B[14]~input_o\ $ (!\A[14]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_AddnSub~input_o\,
	combout => \Add|S[14]~2_combout\);

-- Location: MLABCELL_X29_Y4_N34
\Mux1~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = ( \Mux1~0_combout\ & ( \Add|S[14]~2_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((!\Add|C[14]~13_combout\))) # (\ShiftFN[0]~input_o\ & (\Mux1~2_combout\))) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Mux1~0_combout\ & ( \Add|S[14]~2_combout\ & ( 
-- (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((!\Add|C[14]~13_combout\))) # (\ShiftFN[0]~input_o\ & (\Mux1~2_combout\)))) ) ) ) # ( \Mux1~0_combout\ & ( !\Add|S[14]~2_combout\ & ( ((!\ShiftFN[0]~input_o\ & ((\Add|C[14]~13_combout\))) # 
-- (\ShiftFN[0]~input_o\ & (\Mux1~2_combout\))) # (\ShiftFN[1]~input_o\) ) ) ) # ( !\Mux1~0_combout\ & ( !\Add|S[14]~2_combout\ & ( (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\ & ((\Add|C[14]~13_combout\))) # (\ShiftFN[0]~input_o\ & (\Mux1~2_combout\)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110111011111000000010001001111001101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~2_combout\,
	datab => \ALT_INV_ShiftFN[1]~input_o\,
	datac => \Add|ALT_INV_C[14]~13_combout\,
	datad => \ALT_INV_ShiftFN[0]~input_o\,
	datae => \ALT_INV_Mux1~0_combout\,
	dataf => \Add|ALT_INV_S[14]~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: MLABCELL_X29_Y4_N8
\Mux1~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = ( \LogicFN[1]~input_o\ & ( (!\B[14]~input_o\ & (\A[14]~input_o\ & !\LogicFN[0]~input_o\)) # (\B[14]~input_o\ & ((!\LogicFN[0]~input_o\) # (\A[14]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[14]~input_o\ $ (((!\A[14]~input_o\) # 
-- (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011001110111000100010111011100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[14]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datad => \ALT_INV_LogicFN[0]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LABCELL_X30_Y4_N38
\Mux1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = ( \Mux1~4_combout\ & ( \FuncClass[0]~input_o\ ) ) # ( \Mux1~4_combout\ & ( !\FuncClass[0]~input_o\ & ( (\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\ & (\Y_LorS_Ext[8]~0_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R_Ext[8]~0_combout\))))) ) 
-- ) ) # ( !\Mux1~4_combout\ & ( !\FuncClass[0]~input_o\ & ( (\ExtWord~input_o\ & ((!\ShiftFN[1]~input_o\ & (\Y_LorS_Ext[8]~0_combout\)) # (\ShiftFN[1]~input_o\ & ((\Y_R_Ext[8]~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011000000100001001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Y_LorS_Ext[8]~0_combout\,
	datad => \ALT_INV_Y_R_Ext[8]~0_combout\,
	datae => \ALT_INV_Mux1~4_combout\,
	dataf => \ALT_INV_FuncClass[0]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LABCELL_X30_Y4_N22
\Mux1~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = ( \Mux1~5_combout\ & ( !\FuncClass[1]~input_o\ ) ) # ( !\Mux1~5_combout\ & ( (!\FuncClass[0]~input_o\ & (!\ExtWord~input_o\ & (!\FuncClass[1]~input_o\ & \Mux1~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[0]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_FuncClass[1]~input_o\,
	datad => \ALT_INV_Mux1~3_combout\,
	dataf => \ALT_INV_Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: MLABCELL_X29_Y4_N26
\Logic|Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = ( \LogicFN[1]~input_o\ & ( (!\A[15]~input_o\ & (!\LogicFN[0]~input_o\ & \B[15]~input_o\)) # (\A[15]~input_o\ & ((!\LogicFN[0]~input_o\) # (\B[15]~input_o\))) ) ) # ( !\LogicFN[1]~input_o\ & ( !\B[15]~input_o\ $ 
-- (((!\A[15]~input_o\) # (!\LogicFN[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datac => \ALT_INV_LogicFN[0]~input_o\,
	datad => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_LogicFN[1]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LABCELL_X30_Y5_N16
\Shift|ShiftLeft0~19\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~19_combout\ = ( \A[12]~input_o\ & ( \A[15]~input_o\ & ( (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[14]~input_o\))) # (\B[1]~input_o\ & (((\B[0]~input_o\) # (\A[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( \A[15]~input_o\ & ( 
-- (!\B[1]~input_o\ & (((!\B[0]~input_o\)) # (\A[14]~input_o\))) # (\B[1]~input_o\ & (((\A[13]~input_o\ & !\B[0]~input_o\)))) ) ) ) # ( \A[12]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & 
-- (((\B[0]~input_o\) # (\A[13]~input_o\)))) ) ) ) # ( !\A[12]~input_o\ & ( !\A[15]~input_o\ & ( (!\B[1]~input_o\ & (\A[14]~input_o\ & ((\B[0]~input_o\)))) # (\B[1]~input_o\ & (((\A[13]~input_o\ & !\B[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100010000001010111011110101111001000101010111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Shift|ShiftLeft0~19_combout\);

-- Location: MLABCELL_X29_Y5_N38
\Shift|ShiftLeft0~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = ( \Shift|ShiftLeft0~19_combout\ & ( \Shift|ShiftLeft0~10_combout\ & ( (!\B[2]~input_o\) # ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~4_combout\))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~19_combout\ & ( \Shift|ShiftLeft0~10_combout\ & ( (!\B[2]~input_o\ & (((\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~4_combout\)))) ) ) ) # ( 
-- \Shift|ShiftLeft0~19_combout\ & ( !\Shift|ShiftLeft0~10_combout\ & ( (!\B[2]~input_o\ & (((!\B[3]~input_o\)))) # (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~4_combout\)))) ) ) ) # ( 
-- !\Shift|ShiftLeft0~19_combout\ & ( !\Shift|ShiftLeft0~10_combout\ & ( (\B[2]~input_o\ & ((!\B[3]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (\B[3]~input_o\ & (\Shift|ShiftLeft0~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001110011110001000100000011110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ALT_INV_ShiftLeft0~4_combout\,
	datab => \ALT_INV_B[2]~input_o\,
	datac => \Shift|ALT_INV_ShiftLeft0~15_combout\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \Shift|ALT_INV_ShiftLeft0~19_combout\,
	dataf => \Shift|ALT_INV_ShiftLeft0~10_combout\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: MLABCELL_X29_Y4_N28
\Add|S[15]\ : arriaii_lcell_comb
-- Equation(s):
-- \Add|S\(15) = ( \A[15]~input_o\ & ( !\Add|C[15]~14_combout\ $ (!\AddnSub~input_o\ $ (!\B[15]~input_o\)) ) ) # ( !\A[15]~input_o\ & ( !\Add|C[15]~14_combout\ $ (!\AddnSub~input_o\ $ (\B[15]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100110010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[15]~14_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Add|S\(15));

-- Location: MLABCELL_X29_Y4_N38
\Y_ShiftOrArith[8]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~5_combout\ = ( \ShiftFN[1]~input_o\ & ( \A[15]~input_o\ & ( (\Shift|ShiftLeft0~1_combout\) # (\ShiftFN[0]~input_o\) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( \A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Add|S\(15)))) # 
-- (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~20_combout\)) ) ) ) # ( !\ShiftFN[1]~input_o\ & ( !\A[15]~input_o\ & ( (!\ShiftFN[0]~input_o\ & ((\Add|S\(15)))) # (\ShiftFN[0]~input_o\ & (\Shift|ShiftLeft0~20_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000000000000000000011011000110110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ShiftFN[0]~input_o\,
	datab => \Shift|ALT_INV_ShiftLeft0~20_combout\,
	datac => \Add|ALT_INV_S\(15),
	datad => \Shift|ALT_INV_ShiftLeft0~1_combout\,
	datae => \ALT_INV_ShiftFN[1]~input_o\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Y_ShiftOrArith[8]~5_combout\);

-- Location: MLABCELL_X29_Y4_N6
\Mux0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \Logic|Mux0~0_combout\ & ( \Y_ShiftOrArith[8]~5_combout\ & ( (!\FuncClass[1]~input_o\ & ((!\ExtWord~input_o\) # ((\FuncClass[0]~input_o\) # (\Mux7~0_combout\)))) ) ) ) # ( !\Logic|Mux0~0_combout\ & ( \Y_ShiftOrArith[8]~5_combout\ & ( 
-- (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & ((!\ExtWord~input_o\) # (\Mux7~0_combout\)))) ) ) ) # ( \Logic|Mux0~0_combout\ & ( !\Y_ShiftOrArith[8]~5_combout\ & ( (!\FuncClass[1]~input_o\ & (((\ExtWord~input_o\ & \Mux7~0_combout\)) # 
-- (\FuncClass[0]~input_o\))) ) ) ) # ( !\Logic|Mux0~0_combout\ & ( !\Y_ShiftOrArith[8]~5_combout\ & ( (!\FuncClass[1]~input_o\ & (\ExtWord~input_o\ & (\Mux7~0_combout\ & !\FuncClass[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000101010101010001010000000001000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FuncClass[1]~input_o\,
	datab => \ALT_INV_ExtWord~input_o\,
	datac => \ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_FuncClass[0]~input_o\,
	datae => \Logic|ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Y_ShiftOrArith[8]~5_combout\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X32_Y3_N2
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\Add|S\(2) & ( (!\Add|S\(1) & (!\Add|S\(3) & (!\A[0]~input_o\ $ (\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000100100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \Add|ALT_INV_S\(1),
	datad => \Add|ALT_INV_S\(3),
	dataf => \Add|ALT_INV_S\(2),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X31_Y3_N36
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\Add|S\(7) & ( !\Add|S\(6) & ( (!\Add|S\(8) & (!\Add|S\(5) & (\Equal0~0_combout\ & !\Add|S\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_S\(8),
	datab => \Add|ALT_INV_S\(5),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \Add|ALT_INV_S\(4),
	datae => \Add|ALT_INV_S\(7),
	dataf => \Add|ALT_INV_S\(6),
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X30_Y3_N26
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\Add|S\(10) & ( \Equal0~1_combout\ & ( (!\Add|S\(11) & (!\Add|S\(9) & (!\Add|C[12]~11_combout\ $ (\Add|S[12]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[12]~11_combout\,
	datab => \Add|ALT_INV_S\(11),
	datac => \Add|ALT_INV_S[12]~0_combout\,
	datad => \Add|ALT_INV_S\(9),
	datae => \Add|ALT_INV_S\(10),
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X30_Y4_N26
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( \Add|S[14]~2_combout\ & ( (\Equal0~2_combout\ & (\Add|C[14]~13_combout\ & (!\Add|S[13]~1_combout\ $ (\Add|C[13]~12_combout\)))) ) ) # ( !\Add|S[14]~2_combout\ & ( (\Equal0~2_combout\ & (!\Add|C[14]~13_combout\ & 
-- (!\Add|S[13]~1_combout\ $ (\Add|C[13]~12_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100000000010000010000000000000000010000010000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~2_combout\,
	datab => \Add|ALT_INV_S[13]~1_combout\,
	datac => \Add|ALT_INV_C[13]~12_combout\,
	datad => \Add|ALT_INV_C[14]~13_combout\,
	dataf => \Add|ALT_INV_S[14]~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X29_Y4_N12
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \A[15]~input_o\ & ( (\Equal0~3_combout\ & (!\Add|C[15]~14_combout\ $ (!\AddnSub~input_o\ $ (\B[15]~input_o\)))) ) ) # ( !\A[15]~input_o\ & ( (\Equal0~3_combout\ & (!\Add|C[15]~14_combout\ $ (!\AddnSub~input_o\ $ 
-- (!\B[15]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010010110000000001001011000000000011010010000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add|ALT_INV_C[15]~14_combout\,
	datab => \ALT_INV_AddnSub~input_o\,
	datac => \ALT_INV_B[15]~input_o\,
	datad => \ALT_INV_Equal0~3_combout\,
	dataf => \ALT_INV_A[15]~input_o\,
	combout => \Equal0~4_combout\);

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


