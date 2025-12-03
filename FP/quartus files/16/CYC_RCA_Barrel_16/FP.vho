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

-- DATE "12/02/2025 17:54:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
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
-- Y[0]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~4_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~4_combout\ : std_logic;
SIGNAL \Shift|Y_LL[0]~0_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl1[4]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~1_combout\ : std_logic;
SIGNAL \Shift|rl1[2]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~5_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Logic|Mux14~0_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~10_combout\ : std_logic;
SIGNAL \Shift|rl1[5]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~11_combout\ : std_logic;
SIGNAL \Y_R[1]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~9_combout\ : std_logic;
SIGNAL \Y_R[1]~6_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Shift|ll1[1]~0_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Shift|rl1[3]~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Add|S[2]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~15_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~16_combout\ : std_logic;
SIGNAL \Y_R[1]~7_combout\ : std_logic;
SIGNAL \Y_R[1]~8_combout\ : std_logic;
SIGNAL \Y_R[1]~9_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~12_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~13_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~14_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~1_combout\ : std_logic;
SIGNAL \Shift|ll3[2]~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Add|S[3]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll3[3]~1_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Y_R[1]~10_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~18_combout\ : std_logic;
SIGNAL \Y_R[1]~11_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~17_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Add|S[4]~2_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Y_R[1]~15_combout\ : std_logic;
SIGNAL \Shift|ra2[14]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~4_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~3_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~5_combout\ : std_logic;
SIGNAL \Shift|ll3[4]~2_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add|S[5]~3_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~6_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~7_combout\ : std_logic;
SIGNAL \Shift|ll3[5]~3_combout\ : std_logic;
SIGNAL \Y_R[1]~13_combout\ : std_logic;
SIGNAL \Y_R[1]~14_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Add|S[6]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~16_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~8_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~9_combout\ : std_logic;
SIGNAL \Shift|ll3[6]~4_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Add|S[7]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~11_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~12_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~10_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Logic|Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~10_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~13_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~7_combout\ : std_logic;
SIGNAL \Add|S[8]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~9_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~11_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Y_R[1]~12_combout\ : std_logic;
SIGNAL \Shift|ll3[1]~5_combout\ : std_logic;
SIGNAL \Add|S[9]~7_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~15_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~16_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Shift|ll1[10]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~17_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~18_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add|S[10]~8_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Add|S[11]~9_combout\ : std_logic;
SIGNAL \Shift|ll1[11]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~19_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~20_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Shift|ll1[12]~3_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Add|S[12]~10_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add|S[13]~11_combout\ : std_logic;
SIGNAL \Shift|ll1[13]~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~12_combout\ : std_logic;
SIGNAL \Add|S[14]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~13_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~15_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~16_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~17_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~1_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~2_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~3_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~4_combout\ : std_logic;
SIGNAL \Add|S[15]~13_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~18_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~19_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Logic|xor_result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|ALT_INV_Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
\Add|ALT_INV_Cout~0_combout\ <= NOT \Add|Cout~0_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X89_Y73_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~8_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~5_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~9_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~7_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~7_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~5_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X85_Y73_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~7_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~6_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~4_combout\,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\AltB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_AltB~0_combout\,
	devoe => ww_devoe,
	o => \AltB~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~0_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X74_Y73_N15
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X70_Y70_N24
\Add|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X69_Y70_N16
\Add|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = (\Add|C[1]~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[1]~0_combout\ & (\A[1]~input_o\ & (\B[1]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[1]~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: LCCOMB_X69_Y70_N10
\Add|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = (\A[2]~input_o\ & ((\Add|C[2]~1_combout\) # (\B[2]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[2]~input_o\ & (\Add|C[2]~1_combout\ & (\B[2]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[2]~input_o\,
	datad => \Add|C[2]~1_combout\,
	combout => \Add|C[3]~2_combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X68_Y71_N24
\Add|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = (\Add|C[3]~2_combout\ & ((\A[3]~input_o\) # (\AddnSub~input_o\ $ (\B[3]~input_o\)))) # (!\Add|C[3]~2_combout\ & (\A[3]~input_o\ & (\AddnSub~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[3]~2_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add|C[4]~3_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X67_Y71_N24
\Add|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = (\Add|C[4]~3_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[4]~3_combout\ & (\A[4]~input_o\ & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Add|C[4]~3_combout\,
	datac => \A[4]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[5]~4_combout\);

-- Location: LCCOMB_X67_Y71_N10
\Add|C[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = (\A[5]~input_o\ & ((\Add|C[5]~4_combout\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[5]~input_o\ & (\Add|C[5]~4_combout\ & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[5]~input_o\,
	datad => \Add|C[5]~4_combout\,
	combout => \Add|C[6]~5_combout\);

-- Location: LCCOMB_X67_Y71_N28
\Add|C[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = (\A[6]~input_o\ & ((\Add|C[6]~5_combout\) # (\B[6]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[6]~input_o\ & (\Add|C[6]~5_combout\ & (\B[6]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[6]~input_o\,
	datad => \Add|C[6]~5_combout\,
	combout => \Add|C[7]~6_combout\);

-- Location: IOIBUF_X58_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X67_Y71_N22
\Add|C[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = (\Add|C[7]~6_combout\ & ((\A[7]~input_o\) # (\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[7]~6_combout\ & (\A[7]~input_o\ & (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Add|C[7]~6_combout\,
	datac => \A[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[8]~7_combout\);

-- Location: LCCOMB_X67_Y72_N24
\Add|C[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = (\A[8]~input_o\ & ((\Add|C[8]~7_combout\) # (\B[8]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[8]~input_o\ & (\Add|C[8]~7_combout\ & (\B[8]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[8]~7_combout\,
	combout => \Add|C[9]~8_combout\);

-- Location: IOIBUF_X67_Y73_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X67_Y72_N10
\Add|C[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = (\A[9]~input_o\ & ((\Add|C[9]~8_combout\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\A[9]~input_o\ & (\Add|C[9]~8_combout\ & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add|C[9]~8_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|C[10]~9_combout\);

-- Location: IOIBUF_X58_Y73_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X67_Y72_N20
\Add|C[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = (\Add|C[10]~9_combout\ & ((\A[10]~input_o\) # (\AddnSub~input_o\ $ (\B[10]~input_o\)))) # (!\Add|C[10]~9_combout\ & (\A[10]~input_o\ & (\AddnSub~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[10]~9_combout\,
	datab => \A[10]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \Add|C[11]~10_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X67_Y72_N6
\Add|C[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = (\A[11]~input_o\ & ((\Add|C[11]~10_combout\) # (\AddnSub~input_o\ $ (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\Add|C[11]~10_combout\ & (\AddnSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Add|C[11]~10_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: IOIBUF_X54_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X91_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X67_Y72_N0
\Add|C[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = (\Add|C[12]~11_combout\ & ((\A[12]~input_o\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\Add|C[12]~11_combout\ & (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[12]~11_combout\,
	datab => \A[12]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add|C[13]~12_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X67_Y70_N16
\Add|C[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = (\Add|C[13]~12_combout\ & ((\A[13]~input_o\) # (\AddnSub~input_o\ $ (\B[13]~input_o\)))) # (!\Add|C[13]~12_combout\ & (\A[13]~input_o\ & (\AddnSub~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[13]~12_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Add|C[14]~13_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X67_Y70_N2
\Add|C[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = (\A[14]~input_o\ & ((\Add|C[14]~13_combout\) # (\B[14]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[14]~input_o\ & (\Add|C[14]~13_combout\ & (\B[14]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Add|C[14]~13_combout\,
	datac => \B[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X69_Y69_N12
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\Add|C[15]~14_combout\ & ((\A[15]~input_o\) # (\AddnSub~input_o\ $ (\B[15]~input_o\)))) # (!\Add|C[15]~14_combout\ & (\A[15]~input_o\ & (\AddnSub~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[15]~14_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LCCOMB_X69_Y69_N26
\Logic|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = (\B[0]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[0]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: LCCOMB_X66_Y69_N6
\Shift|rl2[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~6_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[10]~input_o\,
	combout => \Shift|rl2[8]~6_combout\);

-- Location: LCCOMB_X66_Y69_N28
\Shift|rl2[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~5_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[9]~5_combout\);

-- Location: LCCOMB_X66_Y69_N16
\Shift|rl2[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~7_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[9]~5_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[8]~6_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[9]~5_combout\,
	combout => \Shift|rl2[8]~7_combout\);

-- Location: LCCOMB_X66_Y69_N24
\Shift|rl2[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~2_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|rl2[12]~2_combout\);

-- Location: LCCOMB_X67_Y70_N20
\Shift|rl2[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~3_combout\ = (\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[12]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[12]~3_combout\);

-- Location: LCCOMB_X66_Y69_N26
\Shift|rl2[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~4_combout\ = (\Shift|rl2[12]~2_combout\) # ((!\B[0]~input_o\ & \Shift|rl2[12]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[12]~2_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[12]~3_combout\,
	combout => \Shift|rl2[12]~4_combout\);

-- Location: LCCOMB_X68_Y69_N14
\Y_ShiftOrArith[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~4_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[12]~4_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[8]~7_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|rl2[12]~4_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[0]~4_combout\);

-- Location: LCCOMB_X67_Y69_N16
\Shift|Y_LL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[0]~0_combout\ = (\B[0]~input_o\) # ((\B[1]~input_o\) # ((\B[3]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|Y_LL[0]~0_combout\);

-- Location: IOIBUF_X69_Y73_N1
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X69_Y69_N28
\Y_ShiftOrArith[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = (\ShiftFN[0]~input_o\ & (((!\Shift|Y_LL[0]~0_combout\ & \A[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\B[0]~input_o\ $ (((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|Y_LL[0]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: LCCOMB_X66_Y70_N16
\Shift|rl1[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[4]~1_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Shift|rl1[4]~1_combout\);

-- Location: LCCOMB_X68_Y69_N18
\Shift|rl2[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~0_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[7]~input_o\)) # (!\B[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[4]~0_combout\);

-- Location: LCCOMB_X68_Y69_N4
\Shift|rl2[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~1_combout\ = (\Shift|rl2[4]~0_combout\) # ((!\B[1]~input_o\ & \Shift|rl1[4]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \Shift|rl1[4]~1_combout\,
	datad => \Shift|rl2[4]~0_combout\,
	combout => \Shift|rl2[4]~1_combout\);

-- Location: LCCOMB_X69_Y70_N20
\Y_ShiftOrArith[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~1_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[1]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~1_combout\);

-- Location: LCCOMB_X69_Y70_N30
\Shift|rl1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[2]~0_combout\ = (\B[0]~input_o\ & ((\A[3]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	combout => \Shift|rl1[2]~0_combout\);

-- Location: LCCOMB_X68_Y69_N24
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[0]~1_combout\) # ((\Shift|rl1[2]~0_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Shift|rl1[2]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: LCCOMB_X69_Y69_N30
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[0]~2_combout\) # ((\Shift|rl2[4]~1_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[4]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_ShiftOrArith[0]~2_combout\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: IOIBUF_X72_Y73_N22
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X69_Y69_N16
\Y_ShiftOrArith[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~5_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[0]~4_combout\) # ((\Y_ShiftOrArith[0]~3_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~4_combout\,
	datab => \Y_ShiftOrArith[0]~0_combout\,
	datac => \Y_ShiftOrArith[0]~3_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[0]~5_combout\);

-- Location: IOIBUF_X67_Y73_N1
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: LCCOMB_X69_Y69_N18
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\FuncClass[1]~input_o\ & (((\FuncClass[0]~input_o\)))) # (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux15~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux15~0_combout\,
	datab => \Y_ShiftOrArith[0]~5_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X69_Y69_N24
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\Add|C[15]~14_combout\ & ((\AddnSub~input_o\ $ (!\B[15]~input_o\)) # (!\A[15]~input_o\))) # (!\Add|C[15]~14_combout\ & (!\A[15]~input_o\ & (\AddnSub~input_o\ $ (!\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[15]~14_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \AltB~0_combout\);

-- Location: LCCOMB_X69_Y69_N6
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((!\FuncClass[1]~input_o\)) # (!\Add|Cout~0_combout\))) # (!\Mux15~0_combout\ & (((\FuncClass[1]~input_o\ & !\AltB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|Cout~0_combout\,
	datab => \Mux15~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \AltB~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X69_Y70_N0
\Logic|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux14~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux14~0_combout\);

-- Location: LCCOMB_X66_Y70_N4
\Shift|rl2[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~10_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[5]~10_combout\);

-- Location: LCCOMB_X66_Y70_N6
\Shift|rl1[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[5]~3_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|rl1[5]~3_combout\);

-- Location: LCCOMB_X66_Y70_N0
\Shift|rl2[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~11_combout\ = (\Shift|rl2[5]~10_combout\) # ((!\B[1]~input_o\ & \Shift|rl1[5]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \Shift|rl2[5]~10_combout\,
	datad => \Shift|rl1[5]~3_combout\,
	combout => \Shift|rl2[5]~11_combout\);

-- Location: LCCOMB_X67_Y70_N22
\Y_R[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~4_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y_R[1]~4_combout\);

-- Location: LCCOMB_X67_Y70_N0
\Y_R[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~5_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\ & ((\ShiftFN[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Y_R[1]~5_combout\);

-- Location: LCCOMB_X65_Y69_N8
\Shift|rl2[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~8_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|rl2[10]~8_combout\);

-- Location: LCCOMB_X66_Y69_N18
\Shift|rl2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~9_combout\ = (\B[0]~input_o\ & (\Shift|rl2[10]~8_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[9]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[10]~8_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[9]~5_combout\,
	combout => \Shift|rl2[9]~9_combout\);

-- Location: LCCOMB_X67_Y70_N18
\Y_R[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~6_combout\ = (\B[2]~input_o\ & ((\Y_R[1]~4_combout\) # ((\Y_R[1]~5_combout\)))) # (!\B[2]~input_o\ & (((\Shift|rl2[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~4_combout\,
	datab => \Y_R[1]~5_combout\,
	datac => \Shift|rl2[9]~9_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~6_combout\);

-- Location: LCCOMB_X68_Y71_N26
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\B[3]~input_o\ & (((\Y_R[1]~6_combout\)))) # (!\B[3]~input_o\ & (\Shift|rl2[5]~11_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[5]~11_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~6_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X69_Y70_N18
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\ShiftFN[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X69_Y70_N4
\Shift|ll1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ll1[1]~0_combout\);

-- Location: LCCOMB_X69_Y70_N6
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\) # ((\ShiftFN[0]~input_o\ & (\Shift|ll1[1]~0_combout\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Mux14~2_combout\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X66_Y70_N2
\Shift|rl1[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[3]~2_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|rl1[3]~2_combout\);

-- Location: LCCOMB_X68_Y71_N30
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\B[1]~input_o\ & (\ShiftFN[1]~input_o\ & ((\Shift|rl1[3]~2_combout\)))) # (!\B[1]~input_o\ & (((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux14~3_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl1[3]~2_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X68_Y71_N4
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X69_Y70_N8
\Add|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(1) = \Add|C[1]~0_combout\ $ (\B[1]~input_o\ $ (\A[1]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[1]~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(1));

-- Location: LCCOMB_X68_Y71_N10
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\B[2]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X68_Y71_N0
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\ & ((\Mux14~0_combout\) # ((\Mux14~1_combout\ & \Add|S\(1))))) # (!\Mux14~4_combout\ & (\Mux14~1_combout\ & (\Add|S\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Mux14~1_combout\,
	datac => \Add|S\(1),
	datad => \Mux14~0_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X68_Y71_N28
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!\FuncClass[0]~input_o\ & ((\Mux14~5_combout\) # ((\Mux14~6_combout\ & \ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~6_combout\,
	datab => \Mux14~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X68_Y71_N14
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux14~7_combout\) # ((\Logic|Mux14~0_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux14~0_combout\,
	datab => \Mux14~7_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X69_Y70_N14
\Add|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[2]~0_combout\ = \B[2]~input_o\ $ (\AddnSub~input_o\ $ (\A[2]~input_o\ $ (\Add|C[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[2]~input_o\,
	datad => \Add|C[2]~1_combout\,
	combout => \Add|S[2]~0_combout\);

-- Location: LCCOMB_X66_Y69_N4
\Shift|rl2[11]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~15_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|rl2[11]~15_combout\);

-- Location: LCCOMB_X66_Y69_N14
\Shift|rl2[10]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~16_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[11]~15_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[10]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[10]~8_combout\,
	datab => \Shift|rl2[11]~15_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[10]~16_combout\);

-- Location: LCCOMB_X67_Y70_N4
\Y_R[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~7_combout\ = (\B[1]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[14]~input_o\,
	combout => \Y_R[1]~7_combout\);

-- Location: LCCOMB_X68_Y69_N10
\Y_R[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~8_combout\ = (\B[1]~input_o\ & (((\A[15]~input_o\ & \Y_R[1]~7_combout\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\Y_R[1]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Y_R[1]~7_combout\,
	combout => \Y_R[1]~8_combout\);

-- Location: LCCOMB_X68_Y69_N20
\Y_R[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~9_combout\ = (\B[2]~input_o\ & ((\Y_R[1]~8_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[10]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[10]~16_combout\,
	datad => \Y_R[1]~8_combout\,
	combout => \Y_R[1]~9_combout\);

-- Location: LCCOMB_X68_Y71_N16
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X68_Y69_N8
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux14~0_combout\ & ((\Mux12~1_combout\ & (\Shift|rl1[4]~1_combout\)) # (!\Mux12~1_combout\ & ((\Shift|rl1[2]~0_combout\))))) # (!\Mux14~0_combout\ & (((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Shift|rl1[4]~1_combout\,
	datac => \Mux12~1_combout\,
	datad => \Shift|rl1[2]~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X65_Y69_N10
\Shift|rl2[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~12_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[6]~12_combout\);

-- Location: LCCOMB_X65_Y69_N12
\Shift|rl2[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~13_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[7]~13_combout\);

-- Location: LCCOMB_X65_Y69_N30
\Shift|rl2[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~14_combout\ = (\Shift|rl2[6]~12_combout\) # ((\B[0]~input_o\ & \Shift|rl2[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[6]~12_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[7]~13_combout\,
	combout => \Shift|rl2[6]~14_combout\);

-- Location: LCCOMB_X68_Y69_N22
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\Y_R[1]~9_combout\) # ((\Mux14~0_combout\)))) # (!\Mux13~0_combout\ & (((!\Mux14~0_combout\ & \Shift|rl2[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~9_combout\,
	datab => \Mux13~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \Shift|rl2[6]~14_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X70_Y70_N18
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X70_Y70_N14
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\B[2]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[2]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X70_Y70_N0
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X70_Y70_N28
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux12~3_combout\ & (((\Mux13~2_combout\) # (!\Mux12~2_combout\)))) # (!\Mux12~3_combout\ & (\Mux13~1_combout\ & ((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux13~2_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X69_Y70_N26
\Shift|ll2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~0_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[2]~0_combout\);

-- Location: LCCOMB_X69_Y70_N12
\Shift|ll2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~1_combout\ = (\Shift|ll2[2]~0_combout\) # ((!\B[1]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[2]~0_combout\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[2]~1_combout\);

-- Location: LCCOMB_X70_Y70_N2
\Shift|ll3[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[2]~0_combout\ = (\Shift|ll2[2]~1_combout\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[2]~1_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll3[2]~0_combout\);

-- Location: LCCOMB_X70_Y70_N20
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\ShiftFN[1]~input_o\ & (!\FuncClass[0]~input_o\ & ((!\B[3]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X70_Y70_N22
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & ((\Add|S[2]~0_combout\) # ((!\Mux12~0_combout\)))) # (!\Mux13~3_combout\ & (((\Shift|ll3[2]~0_combout\ & \Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[2]~0_combout\,
	datab => \Mux13~3_combout\,
	datac => \Shift|ll3[2]~0_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X70_Y70_N8
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux13~4_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X69_Y70_N2
\Add|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[3]~1_combout\ = \B[3]~input_o\ $ (\AddnSub~input_o\ $ (\A[3]~input_o\ $ (\Add|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[3]~input_o\,
	datad => \Add|C[3]~2_combout\,
	combout => \Add|S[3]~1_combout\);

-- Location: LCCOMB_X69_Y70_N24
\Shift|ll2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[3]~2_combout\);

-- Location: LCCOMB_X68_Y70_N0
\Shift|ll3[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[3]~1_combout\ = (!\B[2]~input_o\ & ((\Shift|ll2[3]~2_combout\) # ((\B[1]~input_o\ & \Shift|ll1[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ll2[3]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll1[1]~0_combout\,
	combout => \Shift|ll3[3]~1_combout\);

-- Location: LCCOMB_X70_Y70_N10
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\B[3]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[3]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X66_Y69_N10
\Y_R[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~10_combout\ = (\A[15]~input_o\ & ((\ShiftFN[0]~input_o\) # ((!\B[1]~input_o\ & !\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Y_R[1]~10_combout\);

-- Location: LCCOMB_X66_Y69_N12
\Shift|rl2[11]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~18_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[12]~3_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[11]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[11]~15_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[12]~3_combout\,
	combout => \Shift|rl2[11]~18_combout\);

-- Location: LCCOMB_X66_Y69_N30
\Y_R[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~11_combout\ = (\B[2]~input_o\ & (\Y_R[1]~10_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[11]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~10_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[11]~18_combout\,
	combout => \Y_R[1]~11_combout\);

-- Location: LCCOMB_X66_Y69_N0
\Shift|rl2[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~17_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[8]~6_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[7]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[7]~13_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[8]~6_combout\,
	combout => \Shift|rl2[7]~17_combout\);

-- Location: LCCOMB_X66_Y70_N10
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~1_combout\ & (((!\Mux14~0_combout\)))) # (!\Mux12~1_combout\ & ((\Mux14~0_combout\ & ((\Shift|rl1[3]~2_combout\))) # (!\Mux14~0_combout\ & (\Shift|rl2[7]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[7]~17_combout\,
	datab => \Shift|rl1[3]~2_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X66_Y70_N20
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~1_combout\ & ((\Mux12~4_combout\ & ((\Y_R[1]~11_combout\))) # (!\Mux12~4_combout\ & (\Shift|rl1[5]~3_combout\)))) # (!\Mux12~1_combout\ & (((\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[5]~3_combout\,
	datab => \Y_R[1]~11_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X70_Y70_N12
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~3_combout\ & ((\Mux12~6_combout\) # ((!\Mux12~2_combout\)))) # (!\Mux12~3_combout\ & (((\Mux12~5_combout\ & \Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux12~5_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X70_Y70_N30
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Mux12~0_combout\ & ((\Mux12~7_combout\ & (\Add|S[3]~1_combout\)) # (!\Mux12~7_combout\ & ((\Shift|ll3[3]~1_combout\))))) # (!\Mux12~0_combout\ & (((\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[3]~1_combout\,
	datab => \Mux12~0_combout\,
	datac => \Shift|ll3[3]~1_combout\,
	datad => \Mux12~7_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X70_Y70_N16
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (!\FuncClass[1]~input_o\ & \Mux12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux12~8_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X67_Y71_N2
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\B[4]~input_o\ & ((\A[4]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[4]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X67_Y71_N8
\Add|S[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[4]~2_combout\ = \B[4]~input_o\ $ (\Add|C[4]~3_combout\ $ (\A[4]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Add|C[4]~3_combout\,
	datac => \A[4]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[4]~2_combout\);

-- Location: LCCOMB_X67_Y69_N8
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\ShiftFN[1]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X68_Y69_N28
\Y_R[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~15_combout\ = (\B[2]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[15]~input_o\)))) # (!\B[2]~input_o\ & (\Shift|rl2[12]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~4_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~15_combout\);

-- Location: LCCOMB_X67_Y69_N10
\Shift|ra2[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra2[14]~0_combout\ = (!\B[0]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ra2[14]~0_combout\);

-- Location: LCCOMB_X66_Y70_N22
\Shift|ll2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~4_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[4]~4_combout\);

-- Location: LCCOMB_X69_Y70_N28
\Shift|ll2[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~3_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[4]~3_combout\);

-- Location: LCCOMB_X66_Y70_N8
\Shift|ll2[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~5_combout\ = (\Shift|ll2[4]~3_combout\) # ((\Shift|ll2[4]~4_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[4]~4_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[4]~3_combout\,
	combout => \Shift|ll2[4]~5_combout\);

-- Location: LCCOMB_X67_Y69_N12
\Shift|ll3[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[4]~2_combout\ = (\B[2]~input_o\ & (\Shift|ra2[14]~0_combout\ & ((\A[0]~input_o\)))) # (!\B[2]~input_o\ & (((\Shift|ll2[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra2[14]~0_combout\,
	datab => \Shift|ll2[4]~5_combout\,
	datac => \A[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll3[4]~2_combout\);

-- Location: LCCOMB_X67_Y69_N22
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = \B[3]~input_o\ $ (\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X68_Y69_N16
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux10~2_combout\ & ((\Y_R[1]~15_combout\) # ((\Mux10~1_combout\)))) # (!\Mux10~2_combout\ & (((\Shift|ll3[4]~2_combout\ & !\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Y_R[1]~15_combout\,
	datac => \Shift|ll3[4]~2_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X69_Y72_N16
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\B[3]~input_o\) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X68_Y69_N2
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((\Shift|rl2[8]~7_combout\) # (\Mux10~0_combout\)))) # (!\Mux11~0_combout\ & (\Shift|rl2[4]~1_combout\ & ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[4]~1_combout\,
	datab => \Mux11~0_combout\,
	datac => \Shift|rl2[8]~7_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X68_Y71_N2
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (!\FuncClass[0]~input_o\ & ((\Mux14~1_combout\ & (\Add|S[4]~2_combout\)) # (!\Mux14~1_combout\ & ((\Mux11~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[4]~2_combout\,
	datab => \Mux11~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X68_Y71_N20
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux11~2_combout\) # ((\Mux11~3_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Mux11~2_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X67_Y71_N12
\Add|S[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[5]~3_combout\ = \B[5]~input_o\ $ (\AddnSub~input_o\ $ (\A[5]~input_o\ $ (\Add|C[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[5]~input_o\,
	datad => \Add|C[5]~4_combout\,
	combout => \Add|S[5]~3_combout\);

-- Location: LCCOMB_X66_Y70_N26
\Shift|ll2[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~6_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[5]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ll2[5]~6_combout\);

-- Location: LCCOMB_X66_Y70_N28
\Shift|ll2[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~7_combout\ = (\B[0]~input_o\ & (\Shift|ll2[4]~4_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[5]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[4]~4_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[5]~6_combout\,
	combout => \Shift|ll2[5]~7_combout\);

-- Location: LCCOMB_X68_Y70_N18
\Shift|ll3[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[5]~3_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & ((\Shift|ll1[1]~0_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ll2[5]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[5]~7_combout\,
	datad => \Shift|ll1[1]~0_combout\,
	combout => \Shift|ll3[5]~3_combout\);

-- Location: LCCOMB_X67_Y69_N2
\Y_R[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~13_combout\ = (\B[2]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\B[2]~input_o\ & (\B[1]~input_o\ & ((\ShiftFN[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~13_combout\);

-- Location: LCCOMB_X67_Y70_N6
\Y_R[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~14_combout\ = (\Y_R[1]~4_combout\ & (((\A[15]~input_o\ & \Y_R[1]~13_combout\)) # (!\B[2]~input_o\))) # (!\Y_R[1]~4_combout\ & (\A[15]~input_o\ & (\Y_R[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~4_combout\,
	datab => \A[15]~input_o\,
	datac => \Y_R[1]~13_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~14_combout\);

-- Location: LCCOMB_X68_Y69_N12
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & ((\Mux10~1_combout\) # ((\Y_R[1]~14_combout\)))) # (!\Mux10~2_combout\ & (!\Mux10~1_combout\ & (\Shift|ll3[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~1_combout\,
	datac => \Shift|ll3[5]~3_combout\,
	datad => \Y_R[1]~14_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X68_Y71_N22
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux10~3_combout\ & (((\Shift|rl2[9]~9_combout\) # (\Mux10~0_combout\)))) # (!\Mux10~3_combout\ & (\Shift|rl2[5]~11_combout\ & ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Shift|rl2[5]~11_combout\,
	datac => \Shift|rl2[9]~9_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X68_Y71_N8
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (!\FuncClass[0]~input_o\ & ((\Mux14~1_combout\ & (\Add|S[5]~3_combout\)) # (!\Mux14~1_combout\ & ((\Mux10~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[5]~3_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux10~4_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X67_Y71_N6
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\B[5]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[5]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X68_Y71_N18
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux10~5_combout\) # ((\Mux10~6_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux10~5_combout\,
	datac => \Mux10~6_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X67_Y71_N26
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[6]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X67_Y71_N16
\Add|S[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[6]~4_combout\ = \B[6]~input_o\ $ (\AddnSub~input_o\ $ (\A[6]~input_o\ $ (\Add|C[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[6]~input_o\,
	datad => \Add|C[6]~5_combout\,
	combout => \Add|S[6]~4_combout\);

-- Location: LCCOMB_X68_Y69_N6
\Y_R[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~16_combout\ = (\B[2]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[15]~input_o\)))) # (!\B[2]~input_o\ & (\Y_R[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~8_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~16_combout\);

-- Location: LCCOMB_X66_Y70_N30
\Shift|ll2[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~8_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[6]~8_combout\);

-- Location: LCCOMB_X66_Y70_N24
\Shift|ll2[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~9_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[5]~6_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[6]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~8_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[5]~6_combout\,
	combout => \Shift|ll2[6]~9_combout\);

-- Location: LCCOMB_X70_Y70_N26
\Shift|ll3[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[6]~4_combout\ = (\B[2]~input_o\ & (\Shift|ll2[2]~1_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[2]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[6]~9_combout\,
	combout => \Shift|ll3[6]~4_combout\);

-- Location: LCCOMB_X68_Y69_N30
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux10~1_combout\ & (((\Mux10~2_combout\)))) # (!\Mux10~1_combout\ & ((\Mux10~2_combout\ & (\Y_R[1]~16_combout\)) # (!\Mux10~2_combout\ & ((\Shift|ll3[6]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~16_combout\,
	datab => \Mux10~1_combout\,
	datac => \Shift|ll3[6]~4_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X68_Y69_N0
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\Shift|rl2[10]~16_combout\) # (\Mux10~0_combout\)))) # (!\Mux9~0_combout\ & (\Shift|rl2[6]~14_combout\ & ((!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Shift|rl2[6]~14_combout\,
	datac => \Shift|rl2[10]~16_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X68_Y71_N12
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (!\FuncClass[0]~input_o\ & ((\Mux14~1_combout\ & (\Add|S[6]~4_combout\)) # (!\Mux14~1_combout\ & ((\Mux9~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[6]~4_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X68_Y71_N6
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux9~2_combout\) # ((\FuncClass[0]~input_o\ & \Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux9~3_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X66_Y69_N8
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[11]~18_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[7]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[11]~18_combout\,
	datab => \Shift|rl2[7]~17_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X67_Y69_N30
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\ShiftFN[0]~input_o\) # ((!\B[0]~input_o\ & (!\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X67_Y69_N24
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & (\B[3]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datac => \B[3]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X67_Y71_N14
\Add|S[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[7]~5_combout\ = \B[7]~input_o\ $ (\Add|C[7]~6_combout\ $ (\A[7]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \Add|C[7]~6_combout\,
	datac => \A[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[7]~5_combout\);

-- Location: LCCOMB_X66_Y70_N18
\Shift|ll2[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~11_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[5]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Shift|ll2[7]~11_combout\);

-- Location: LCCOMB_X66_Y70_N12
\Shift|ll2[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~12_combout\ = (\B[0]~input_o\ & (\Shift|ll2[6]~8_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[7]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~8_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[7]~11_combout\,
	combout => \Shift|ll2[7]~12_combout\);

-- Location: LCCOMB_X68_Y70_N28
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\ShiftFN[0]~input_o\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X68_Y70_N6
\Shift|ll2[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~10_combout\ = (\Shift|ll2[3]~2_combout\) # ((\B[1]~input_o\ & \Shift|ll1[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ll2[3]~2_combout\,
	datad => \Shift|ll1[1]~0_combout\,
	combout => \Shift|ll2[3]~10_combout\);

-- Location: LCCOMB_X68_Y70_N8
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\B[2]~input_o\ & ((\Shift|ll2[3]~10_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~12_combout\,
	datab => \Mux8~0_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[3]~10_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X67_Y69_N20
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (!\ShiftFN[1]~input_o\ & ((\Mux8~1_combout\) # ((!\ShiftFN[0]~input_o\ & \Add|S[7]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Add|S[7]~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X67_Y69_N26
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~2_combout\) # ((\ShiftFN[1]~input_o\ & ((\Mux8~3_combout\) # (\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux8~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X67_Y71_N4
\Logic|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux8~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[7]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux8~0_combout\);

-- Location: LCCOMB_X67_Y71_N0
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux8~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux8~6_combout\,
	datac => \Logic|Mux8~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X67_Y71_N18
\Logic|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux7~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[8]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux7~0_combout\);

-- Location: LCCOMB_X66_Y69_N2
\Y_ShiftOrArith[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~10_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[12]~4_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[8]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~4_combout\,
	datab => \Shift|rl2[8]~7_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[8]~10_combout\);

-- Location: LCCOMB_X65_Y69_N24
\Shift|ll2[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~13_combout\ = (\B[1]~input_o\ & ((\A[6]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[8]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|ll2[8]~13_combout\);

-- Location: LCCOMB_X65_Y69_N2
\Shift|ll2[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~14_combout\ = (\B[0]~input_o\ & (\Shift|ll2[7]~11_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[8]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~11_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[8]~13_combout\,
	combout => \Shift|ll2[8]~14_combout\);

-- Location: LCCOMB_X67_Y69_N28
\Y_ShiftOrArith[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~6_combout\ = (\B[3]~input_o\ & (((\A[0]~input_o\ & \Shift|ra2[14]~0_combout\)))) # (!\B[3]~input_o\ & (\Shift|ll2[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[8]~14_combout\,
	datab => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ra2[14]~0_combout\,
	combout => \Y_ShiftOrArith[8]~6_combout\);

-- Location: LCCOMB_X67_Y69_N6
\Y_ShiftOrArith[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~7_combout\ = (\B[2]~input_o\ & (\Shift|ll2[4]~5_combout\ & ((!\B[3]~input_o\)))) # (!\B[2]~input_o\ & (((\Y_ShiftOrArith[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[4]~5_combout\,
	datab => \Y_ShiftOrArith[8]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[8]~7_combout\);

-- Location: LCCOMB_X67_Y72_N26
\Add|S[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[8]~6_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[8]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[8]~7_combout\,
	combout => \Add|S[8]~6_combout\);

-- Location: LCCOMB_X67_Y69_N0
\Y_ShiftOrArith[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~8_combout\ = (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Y_ShiftOrArith[8]~7_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Add|S[8]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~7_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[8]~6_combout\,
	combout => \Y_ShiftOrArith[8]~8_combout\);

-- Location: LCCOMB_X67_Y69_N18
\Y_ShiftOrArith[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~9_combout\ = (\B[3]~input_o\ & (\ShiftFN[0]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Y_ShiftOrArith[8]~9_combout\);

-- Location: LCCOMB_X67_Y69_N4
\Y_ShiftOrArith[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~11_combout\ = (\Y_ShiftOrArith[8]~8_combout\) # ((\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[8]~10_combout\) # (\Y_ShiftOrArith[8]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~10_combout\,
	datab => \Y_ShiftOrArith[8]~8_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[8]~9_combout\,
	combout => \Y_ShiftOrArith[8]~11_combout\);

-- Location: LCCOMB_X67_Y71_N20
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux7~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[8]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Logic|Mux7~0_combout\,
	datac => \Y_ShiftOrArith[8]~11_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X67_Y72_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X68_Y72_N0
\Y_R[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~12_combout\ = (\ShiftFN[0]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \A[15]~input_o\,
	combout => \Y_R[1]~12_combout\);

-- Location: LCCOMB_X68_Y70_N10
\Shift|ll3[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[1]~5_combout\ = (!\B[1]~input_o\ & (!\B[2]~input_o\ & \Shift|ll1[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll1[1]~0_combout\,
	combout => \Shift|ll3[1]~5_combout\);

-- Location: LCCOMB_X67_Y72_N14
\Add|S[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[9]~7_combout\ = \A[9]~input_o\ $ (\Add|C[9]~8_combout\ $ (\AddnSub~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add|C[9]~8_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|S[9]~7_combout\);

-- Location: LCCOMB_X68_Y70_N20
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = ((!\B[3]~input_o\ & \B[2]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X65_Y69_N20
\Shift|ll2[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~15_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \A[9]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[9]~15_combout\);

-- Location: LCCOMB_X65_Y69_N6
\Shift|ll2[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~16_combout\ = (\Shift|ll2[9]~15_combout\) # ((\B[0]~input_o\ & \Shift|ll2[8]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[9]~15_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[8]~13_combout\,
	combout => \Shift|ll2[9]~16_combout\);

-- Location: LCCOMB_X68_Y70_N22
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux4~2_combout\ & ((\Shift|ll2[5]~7_combout\) # ((!\Mux8~0_combout\)))) # (!\Mux4~2_combout\ & (((\Shift|ll2[9]~16_combout\ & \Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[5]~7_combout\,
	datab => \Mux4~2_combout\,
	datac => \Shift|ll2[9]~16_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X68_Y70_N24
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & (((\Add|S[9]~7_combout\) # (\Mux8~0_combout\)))) # (!\Mux6~1_combout\ & (\Shift|ll3[1]~5_combout\ & ((!\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[1]~5_combout\,
	datab => \Add|S[9]~7_combout\,
	datac => \Mux6~1_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux6~2_combout\);

-- Location: IOIBUF_X85_Y73_N1
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X69_Y72_N28
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\ExtWord~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X69_Y72_N10
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ExtWord~input_o\) # ((\B[3]~input_o\ & \ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X69_Y72_N22
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux4~1_combout\ & (((\Y_R[1]~6_combout\) # (\Mux4~0_combout\)))) # (!\Mux4~1_combout\ & (\Mux6~2_combout\ & ((!\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux4~1_combout\,
	datac => \Y_R[1]~6_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X69_Y72_N24
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\ & ((\Y_R[1]~12_combout\) # ((!\Mux4~0_combout\)))) # (!\Mux6~3_combout\ & (((\Y_ShiftOrArith[8]~11_combout\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~12_combout\,
	datab => \Y_ShiftOrArith[8]~11_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X69_Y72_N2
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux6~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux6~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X67_Y72_N8
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X65_Y69_N26
\Shift|ll1[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[10]~1_combout\ = (\B[0]~input_o\ & (\A[9]~input_o\)) # (!\B[0]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll1[10]~1_combout\);

-- Location: LCCOMB_X65_Y69_N16
\Shift|ll2[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~17_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[7]~input_o\)) # (!\B[0]~input_o\ & ((\A[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[10]~17_combout\);

-- Location: LCCOMB_X65_Y69_N28
\Shift|ll2[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~18_combout\ = (\Shift|ll2[10]~17_combout\) # ((\Shift|ll1[10]~1_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[10]~1_combout\,
	datab => \Shift|ll2[10]~17_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[10]~18_combout\);

-- Location: LCCOMB_X68_Y70_N2
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux4~2_combout\ & (((!\Mux8~0_combout\)))) # (!\Mux4~2_combout\ & ((\Mux8~0_combout\ & (\Shift|ll2[10]~18_combout\)) # (!\Mux8~0_combout\ & ((\Shift|ll3[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[10]~18_combout\,
	datab => \Mux4~2_combout\,
	datac => \Shift|ll3[2]~0_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X67_Y72_N18
\Add|S[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[10]~8_combout\ = \Add|C[10]~9_combout\ $ (\A[10]~input_o\ $ (\AddnSub~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[10]~9_combout\,
	datab => \A[10]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[10]~input_o\,
	combout => \Add|S[10]~8_combout\);

-- Location: LCCOMB_X68_Y70_N12
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux5~1_combout\ & (((\Add|S[10]~8_combout\) # (!\Mux4~2_combout\)))) # (!\Mux5~1_combout\ & (\Shift|ll2[6]~9_combout\ & ((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~9_combout\,
	datab => \Mux5~1_combout\,
	datac => \Add|S[10]~8_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X69_Y72_N20
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux4~1_combout\ & (((\Mux4~0_combout\)))) # (!\Mux4~1_combout\ & ((\Mux4~0_combout\ & ((\Y_ShiftOrArith[8]~11_combout\))) # (!\Mux4~0_combout\ & (\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux4~1_combout\,
	datac => \Y_ShiftOrArith[8]~11_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X69_Y72_N6
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux5~3_combout\ & (((\Y_R[1]~12_combout\) # (!\Mux4~1_combout\)))) # (!\Mux5~3_combout\ & (\Y_R[1]~9_combout\ & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~9_combout\,
	datab => \Mux5~3_combout\,
	datac => \Y_R[1]~12_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X69_Y72_N0
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux5~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X67_Y72_N4
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X67_Y72_N30
\Add|S[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[11]~9_combout\ = \A[11]~input_o\ $ (\Add|C[11]~10_combout\ $ (\AddnSub~input_o\ $ (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Add|C[11]~10_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \Add|S[11]~9_combout\);

-- Location: LCCOMB_X65_Y69_N14
\Shift|ll1[11]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[11]~2_combout\ = (\B[0]~input_o\ & ((\A[10]~input_o\))) # (!\B[0]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll1[11]~2_combout\);

-- Location: LCCOMB_X66_Y69_N20
\Shift|ll2[11]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~19_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[8]~input_o\))) # (!\B[0]~input_o\ & (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ll2[11]~19_combout\);

-- Location: LCCOMB_X66_Y69_N22
\Shift|ll2[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~20_combout\ = (\Shift|ll2[11]~19_combout\) # ((\Shift|ll1[11]~2_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[11]~2_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ll2[11]~19_combout\,
	combout => \Shift|ll2[11]~20_combout\);

-- Location: LCCOMB_X68_Y70_N30
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux4~2_combout\ & ((\Shift|ll2[7]~12_combout\) # ((!\Mux8~0_combout\)))) # (!\Mux4~2_combout\ & (((\Shift|ll2[11]~20_combout\ & \Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~12_combout\,
	datab => \Mux4~2_combout\,
	datac => \Shift|ll2[11]~20_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X68_Y70_N16
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux8~0_combout\ & (((\Mux4~4_combout\)))) # (!\Mux8~0_combout\ & ((\Mux4~4_combout\ & (\Add|S[11]~9_combout\)) # (!\Mux4~4_combout\ & ((\Shift|ll3[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[11]~9_combout\,
	datab => \Mux8~0_combout\,
	datac => \Mux4~4_combout\,
	datad => \Shift|ll3[3]~1_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X69_Y72_N18
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~1_combout\ & (((\Y_R[1]~11_combout\) # (\Mux4~0_combout\)))) # (!\Mux4~1_combout\ & (\Mux4~5_combout\ & ((!\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux4~1_combout\,
	datac => \Y_R[1]~11_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X69_Y72_N12
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & ((\Y_R[1]~12_combout\) # ((!\Mux4~0_combout\)))) # (!\Mux4~6_combout\ & (((\Y_ShiftOrArith[8]~11_combout\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~12_combout\,
	datab => \Mux4~6_combout\,
	datac => \Y_ShiftOrArith[8]~11_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X69_Y72_N14
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux4~3_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux4~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X67_Y72_N2
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\B[12]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[12]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[12]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X65_Y69_N0
\Shift|ll1[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[12]~3_combout\ = (\B[0]~input_o\ & (\A[11]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \A[12]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll1[12]~3_combout\);

-- Location: LCCOMB_X65_Y69_N18
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux14~0_combout\ & ((\Mux12~1_combout\ & ((\Shift|ll1[10]~1_combout\))) # (!\Mux12~1_combout\ & (\Shift|ll1[12]~3_combout\)))) # (!\Mux14~0_combout\ & (((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Shift|ll1[12]~3_combout\,
	datac => \Shift|ll1[10]~1_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X65_Y69_N4
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux14~0_combout\ & (((\Mux3~1_combout\)))) # (!\Mux14~0_combout\ & ((\Mux3~1_combout\ & (\Shift|ll3[4]~2_combout\)) # (!\Mux3~1_combout\ & ((\Shift|ll2[8]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[4]~2_combout\,
	datab => \Shift|ll2[8]~14_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X68_Y72_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ShiftFN[1]~input_o\ & (\B[3]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X68_Y72_N12
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_R[1]~15_combout\) # ((\Mux3~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux3~2_combout\ & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~15_combout\,
	datab => \Mux3~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X67_Y72_N16
\Add|S[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[12]~10_combout\ = \Add|C[12]~11_combout\ $ (\A[12]~input_o\ $ (\AddnSub~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[12]~11_combout\,
	datab => \A[12]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add|S[12]~10_combout\);

-- Location: LCCOMB_X68_Y72_N30
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\ & (((\Y_R[1]~12_combout\)) # (!\Mux3~0_combout\))) # (!\Mux3~3_combout\ & (\Mux3~0_combout\ & (\Add|S[12]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add|S[12]~10_combout\,
	datad => \Y_R[1]~12_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X68_Y72_N24
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~11_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X68_Y72_N2
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux3~5_combout\) # ((\Mux3~6_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X67_Y72_N22
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X67_Y72_N12
\Add|S[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[13]~11_combout\ = \AddnSub~input_o\ $ (\A[13]~input_o\ $ (\B[13]~input_o\ $ (\Add|C[13]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \Add|C[13]~12_combout\,
	combout => \Add|S[13]~11_combout\);

-- Location: LCCOMB_X67_Y70_N8
\Shift|ll1[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[13]~4_combout\ = (\B[0]~input_o\ & ((\A[12]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[13]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll1[13]~4_combout\);

-- Location: LCCOMB_X67_Y69_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux14~0_combout\ & (((\Shift|ll1[13]~4_combout\ & !\Mux12~1_combout\)))) # (!\Mux14~0_combout\ & ((\Shift|ll2[9]~16_combout\) # ((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[9]~16_combout\,
	datab => \Shift|ll1[13]~4_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X68_Y69_N26
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux12~1_combout\ & ((\Mux2~0_combout\ & ((\Shift|ll3[5]~3_combout\))) # (!\Mux2~0_combout\ & (\Shift|ll1[11]~2_combout\)))) # (!\Mux12~1_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[11]~2_combout\,
	datab => \Shift|ll3[5]~3_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X68_Y72_N4
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_R[1]~14_combout\) # ((\Mux3~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux2~1_combout\ & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~14_combout\,
	datab => \Mux2~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X68_Y72_N14
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux3~0_combout\ & ((\Mux2~2_combout\ & ((\Y_R[1]~12_combout\))) # (!\Mux2~2_combout\ & (\Add|S[13]~11_combout\)))) # (!\Mux3~0_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[13]~11_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux2~2_combout\,
	datad => \Y_R[1]~12_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X68_Y72_N8
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~11_combout\)) # (!\ExtWord~input_o\ & ((\Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~11_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X68_Y72_N26
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux2~4_combout\) # ((\Mux2~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux2~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X67_Y70_N10
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[14]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X68_Y72_N28
\Y_ShiftOrArith[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~12_combout\ = (\ShiftFN[1]~input_o\ & ((\B[3]~input_o\ & ((\Y_R[1]~12_combout\))) # (!\B[3]~input_o\ & (\Y_R[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~16_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_R[1]~12_combout\,
	combout => \Y_ShiftOrArith[8]~12_combout\);

-- Location: LCCOMB_X67_Y70_N24
\Add|S[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[14]~12_combout\ = \A[14]~input_o\ $ (\Add|C[14]~13_combout\ $ (\B[14]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Add|C[14]~13_combout\,
	datac => \B[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[14]~12_combout\);

-- Location: LCCOMB_X67_Y70_N26
\Y_ShiftOrArith[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~13_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[13]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y_ShiftOrArith[8]~13_combout\);

-- Location: LCCOMB_X67_Y70_N28
\Y_ShiftOrArith[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~14_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[8]~13_combout\) # ((\B[1]~input_o\ & \Shift|ll1[12]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Y_ShiftOrArith[8]~13_combout\,
	datad => \Shift|ll1[12]~3_combout\,
	combout => \Y_ShiftOrArith[8]~14_combout\);

-- Location: LCCOMB_X67_Y70_N30
\Y_ShiftOrArith[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~15_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[8]~14_combout\) # ((\Shift|ll2[10]~18_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[10]~18_combout\,
	datab => \Y_ShiftOrArith[8]~14_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[8]~15_combout\);

-- Location: LCCOMB_X68_Y72_N6
\Y_ShiftOrArith[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~16_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[8]~15_combout\) # ((\B[3]~input_o\ & \Shift|ll3[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll3[6]~4_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[8]~16_combout\);

-- Location: LCCOMB_X68_Y72_N16
\Y_ShiftOrArith[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~17_combout\ = (!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[8]~16_combout\) # ((\Add|S[14]~12_combout\ & !\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[14]~12_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[8]~16_combout\,
	combout => \Y_ShiftOrArith[8]~17_combout\);

-- Location: LCCOMB_X68_Y72_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~11_combout\)) # (!\ExtWord~input_o\ & (((\Y_ShiftOrArith[8]~12_combout\) # (\Y_ShiftOrArith[8]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~11_combout\,
	datab => \Y_ShiftOrArith[8]~12_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[8]~17_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X68_Y72_N22
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux1~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux1~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X67_Y70_N12
\Shift|Y_LL[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~1_combout\ = (\B[0]~input_o\ & (\A[14]~input_o\)) # (!\B[0]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|Y_LL[15]~1_combout\);

-- Location: LCCOMB_X67_Y70_N14
\Shift|Y_LL[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~2_combout\ = (\B[1]~input_o\ & ((\Shift|ll1[13]~4_combout\))) # (!\B[1]~input_o\ & (\Shift|Y_LL[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[15]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[13]~4_combout\,
	combout => \Shift|Y_LL[15]~2_combout\);

-- Location: LCCOMB_X68_Y70_N26
\Shift|Y_LL[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~3_combout\ = (\B[3]~input_o\ & (((\B[2]~input_o\) # (\Shift|ll2[7]~12_combout\)))) # (!\B[3]~input_o\ & (\Shift|Y_LL[15]~2_combout\ & (!\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[15]~2_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[7]~12_combout\,
	combout => \Shift|Y_LL[15]~3_combout\);

-- Location: LCCOMB_X68_Y70_N4
\Shift|Y_LL[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~4_combout\ = (\Shift|Y_LL[15]~3_combout\ & (((\Shift|ll2[3]~10_combout\) # (!\B[2]~input_o\)))) # (!\Shift|Y_LL[15]~3_combout\ & (\Shift|ll2[11]~20_combout\ & (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[15]~3_combout\,
	datab => \Shift|ll2[11]~20_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[3]~10_combout\,
	combout => \Shift|Y_LL[15]~4_combout\);

-- Location: LCCOMB_X69_Y69_N2
\Add|S[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[15]~13_combout\ = \AddnSub~input_o\ $ (\Add|C[15]~14_combout\ $ (\A[15]~input_o\ $ (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[15]~14_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|S[15]~13_combout\);

-- Location: LCCOMB_X69_Y69_N4
\Y_ShiftOrArith[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~18_combout\ = (\ShiftFN[0]~input_o\ & ((\Shift|Y_LL[15]~4_combout\) # ((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (((\Add|S[15]~13_combout\ & !\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shift|Y_LL[15]~4_combout\,
	datac => \Add|S[15]~13_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[8]~18_combout\);

-- Location: LCCOMB_X69_Y69_N22
\Y_ShiftOrArith[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~19_combout\ = (\ShiftFN[1]~input_o\ & (\A[15]~input_o\ & ((\Y_ShiftOrArith[8]~18_combout\) # (!\Shift|Y_LL[0]~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[8]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Shift|Y_LL[0]~0_combout\,
	datac => \Y_ShiftOrArith[8]~18_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[8]~19_combout\);

-- Location: LCCOMB_X69_Y69_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ExtWord~input_o\ & ((\Y_ShiftOrArith[8]~11_combout\))) # (!\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~19_combout\,
	datab => \Y_ShiftOrArith[8]~11_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X69_Y69_N8
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X69_Y69_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux0~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux0~0_combout\,
	datac => \Logic|Mux0~0_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X67_Y71_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add|S[4]~2_combout\ & (!\Add|S[6]~4_combout\ & (!\Add|S[7]~5_combout\ & !\Add|S[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[4]~2_combout\,
	datab => \Add|S[6]~4_combout\,
	datac => \Add|S[7]~5_combout\,
	datad => \Add|S[5]~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X69_Y70_N22
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\Add|S[3]~1_combout\ & (!\Add|S[2]~0_combout\ & !\Add|S\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Add|S[3]~1_combout\,
	datac => \Add|S[2]~0_combout\,
	datad => \Add|S\(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X68_Y72_N10
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add|S[13]~11_combout\ & (!\Add|S[14]~12_combout\ & (!\Add|S[12]~10_combout\ & !\Add|S[15]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[13]~11_combout\,
	datab => \Add|S[14]~12_combout\,
	datac => \Add|S[12]~10_combout\,
	datad => \Add|S[15]~13_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X70_Y70_N4
\Logic|xor_result[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(0) = \A[0]~input_o\ $ (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Logic|xor_result\(0));

-- Location: LCCOMB_X68_Y70_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add|S[10]~8_combout\ & (!\Add|S[9]~7_combout\ & (!\Add|S[8]~6_combout\ & !\Add|S[11]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[10]~8_combout\,
	datab => \Add|S[9]~7_combout\,
	datac => \Add|S[8]~6_combout\,
	datad => \Add|S[11]~9_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X70_Y70_N6
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~3_combout\ & (!\Logic|xor_result\(0) & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Logic|xor_result\(0),
	datad => \Equal0~2_combout\,
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


