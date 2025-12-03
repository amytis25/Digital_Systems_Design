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

-- DATE "12/02/2025 19:25:30"

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
-- Y[0]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~3_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~1_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~5_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~9_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~11_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~7_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~4_combout\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Logic|Mux14~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~13_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~5_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~9_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Add|S[2]~0_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~20_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~16_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~19_combout\ : std_logic;
SIGNAL \Add|S[3]~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~21_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~22_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~20_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~21_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Add|S[4]~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~24_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Add|S[5]~3_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Add|S[6]~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~27_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Add|S[7]~5_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~25_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~10_combout\ : std_logic;
SIGNAL \Add|S[8]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~11_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~15_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Add|S[9]~7_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux5~10_combout\ : std_logic;
SIGNAL \Add|S[10]~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~11_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add|S[11]~9_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add|S[12]~10_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Add|S[13]~11_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~17_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~18_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~19_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~20_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~21_combout\ : std_logic;
SIGNAL \Add|S[14]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~16_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~22_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~26_combout\ : std_logic;
SIGNAL \Add|S[15]~13_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~23_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[8]~24_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Logic|xor_result\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Add|S\ : std_logic_vector(15 DOWNTO 0);
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

-- Location: IOOBUF_X100_Y73_N16
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

-- Location: IOOBUF_X67_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~9_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~5_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~5_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~9_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~5_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~5_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
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

-- Location: IOOBUF_X58_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~11_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~6_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
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

-- Location: IOOBUF_X96_Y73_N23
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~9_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
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

-- Location: IOOBUF_X69_Y73_N2
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X105_Y73_N9
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOIBUF_X60_Y73_N1
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X87_Y73_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X79_Y69_N0
\Shift|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~4_combout\ = (!\B[0]~input_o\ & (!\B[1]~input_o\ & (!\B[3]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~4_combout\);

-- Location: IOIBUF_X74_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X79_Y69_N26
\Y_ShiftOrArith[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = (\ShiftFN[0]~input_o\ & (((\Shift|ShiftRight0~4_combout\ & \A[0]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\B[0]~input_o\ $ (((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~4_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: LCCOMB_X77_Y70_N12
\Shift|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~6_combout\ = (!\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~6_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X77_Y70_N2
\Shift|ShiftRight1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~3_combout\ = (\B[0]~input_o\ & ((\A[3]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~3_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X77_Y70_N22
\Shift|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~7_combout\ = (\A[1]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X77_Y70_N0
\Y_ShiftOrArith[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~1_combout\ = (\B[1]~input_o\ & (((\Shift|ShiftRight1~3_combout\)))) # (!\B[1]~input_o\ & ((\Shift|ShiftLeft0~6_combout\) # ((\Shift|ShiftLeft0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~6_combout\,
	datab => \Shift|ShiftRight1~3_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~7_combout\,
	combout => \Y_ShiftOrArith[0]~1_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X79_Y71_N8
\Shift|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~5_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[7]~input_o\)) # (!\B[0]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~5_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X77_Y71_N26
\Shift|ShiftRight1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~2_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~2_combout\);

-- Location: LCCOMB_X80_Y71_N8
\Shift|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~6_combout\ = (\Shift|ShiftRight0~5_combout\) # ((\Shift|ShiftRight1~2_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~5_combout\,
	datab => \Shift|ShiftRight1~2_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~6_combout\);

-- Location: LCCOMB_X80_Y70_N8
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~6_combout\))) # (!\B[2]~input_o\ & (\Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_ShiftOrArith[0]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~6_combout\,
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: IOIBUF_X81_Y73_N15
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

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

-- Location: IOIBUF_X83_Y73_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X81_Y70_N28
\Shift|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~9_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|ShiftRight0~9_combout\);

-- Location: IOIBUF_X100_Y73_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X62_Y73_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X79_Y71_N2
\Shift|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~10_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftRight0~10_combout\);

-- Location: LCCOMB_X82_Y70_N16
\Shift|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~11_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~9_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~9_combout\,
	datac => \Shift|ShiftRight0~10_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~11_combout\);

-- Location: IOIBUF_X89_Y73_N8
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X94_Y73_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X81_Y70_N16
\Shift|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~7_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[13]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftRight0~7_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X81_Y70_N2
\Shift|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~4_combout\ = (\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~4_combout\);

-- Location: LCCOMB_X77_Y69_N24
\Shift|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~8_combout\ = (\Shift|ShiftRight0~7_combout\) # ((\Shift|ShiftRight1~4_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~7_combout\,
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~8_combout\);

-- Location: LCCOMB_X79_Y69_N12
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~8_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~11_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~8_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: LCCOMB_X80_Y69_N8
\Y_ShiftOrArith[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~4_combout\ = (\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[0]~2_combout\) # (\Y_ShiftOrArith[0]~3_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~0_combout\,
	datab => \Y_ShiftOrArith[0]~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[0]~3_combout\,
	combout => \Y_ShiftOrArith[0]~4_combout\);

-- Location: IOIBUF_X81_Y73_N22
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X77_Y72_N24
\Add|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \A[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: LCCOMB_X77_Y72_N10
\Add|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = (\Add|C[1]~0_combout\ & ((\A[1]~input_o\) # (\B[1]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[1]~0_combout\ & (\A[1]~input_o\ & (\B[1]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Add|C[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: LCCOMB_X77_Y72_N12
\Add|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = (\Add|C[2]~1_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[2]~1_combout\ & (\A[2]~input_o\ & (\B[2]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[2]~1_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[3]~2_combout\);

-- Location: LCCOMB_X77_Y72_N14
\Add|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = (\Add|C[3]~2_combout\ & ((\A[3]~input_o\) # (\B[3]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[3]~2_combout\ & (\A[3]~input_o\ & (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[3]~2_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[4]~3_combout\);

-- Location: LCCOMB_X77_Y72_N16
\Add|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = (\A[4]~input_o\ & ((\Add|C[4]~3_combout\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[4]~input_o\ & (\Add|C[4]~3_combout\ & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \Add|C[4]~3_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[5]~4_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X77_Y71_N8
\Add|C[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = (\Add|C[5]~4_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[5]~4_combout\ & (\A[5]~input_o\ & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[5]~4_combout\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[6]~5_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X79_Y72_N0
\Add|C[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = (\Add|C[6]~5_combout\ & ((\A[6]~input_o\) # (\AddnSub~input_o\ $ (\B[6]~input_o\)))) # (!\Add|C[6]~5_combout\ & (\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[6]~5_combout\,
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|C[7]~6_combout\);

-- Location: LCCOMB_X79_Y72_N10
\Add|C[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = (\A[7]~input_o\ & ((\Add|C[7]~6_combout\) # (\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[7]~input_o\ & (\Add|C[7]~6_combout\ & (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[7]~6_combout\,
	combout => \Add|C[8]~7_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X76_Y69_N8
\Add|C[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = (\Add|C[8]~7_combout\ & ((\A[8]~input_o\) # (\B[8]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[8]~7_combout\ & (\A[8]~input_o\ & (\B[8]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[8]~7_combout\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[9]~8_combout\);

-- Location: IOIBUF_X72_Y73_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X76_Y69_N2
\Add|C[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = (\A[9]~input_o\ & ((\Add|C[9]~8_combout\) # (\B[9]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[9]~input_o\ & (\Add|C[9]~8_combout\ & (\B[9]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add|C[9]~8_combout\,
	datac => \B[9]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[10]~9_combout\);

-- Location: LCCOMB_X76_Y69_N20
\Add|C[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = (\Add|C[10]~9_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[10]~9_combout\ & (\A[10]~input_o\ & (\B[10]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Add|C[10]~9_combout\,
	datac => \A[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[11]~10_combout\);

-- Location: LCCOMB_X76_Y69_N14
\Add|C[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = (\Add|C[11]~10_combout\ & ((\A[11]~input_o\) # (\B[11]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[11]~10_combout\ & (\A[11]~input_o\ & (\B[11]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Add|C[11]~10_combout\,
	datac => \A[11]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: IOIBUF_X85_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X81_Y69_N24
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

-- Location: IOIBUF_X85_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X81_Y69_N2
\Add|C[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = (\Add|C[13]~12_combout\ & ((\A[13]~input_o\) # (\AddnSub~input_o\ $ (\B[13]~input_o\)))) # (!\Add|C[13]~12_combout\ & (\A[13]~input_o\ & (\AddnSub~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[13]~12_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|C[14]~13_combout\);

-- Location: IOIBUF_X89_Y73_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X81_Y69_N28
\Add|C[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = (\A[14]~input_o\ & ((\Add|C[14]~13_combout\) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\Add|C[14]~13_combout\ & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Add|C[14]~13_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X89_Y73_N22
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X81_Y69_N6
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\A[15]~input_o\ & (\Add|C[15]~14_combout\ & (\AddnSub~input_o\ $ (!\B[15]~input_o\)))) # (!\A[15]~input_o\ & ((\Add|C[15]~14_combout\) # (\AddnSub~input_o\ $ (!\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Add|C[15]~14_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[15]~input_o\,
	combout => \AltB~0_combout\);

-- Location: LCCOMB_X80_Y69_N10
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\) # ((!\AltB~0_combout\)))) # (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[0]~4_combout\,
	datad => \AltB~0_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X81_Y69_N8
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\A[15]~input_o\ & ((\Add|C[15]~14_combout\) # (\AddnSub~input_o\ $ (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\Add|C[15]~14_combout\ & (\AddnSub~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Add|C[15]~14_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: LCCOMB_X77_Y70_N16
\Logic|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: LCCOMB_X80_Y69_N20
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((!\FuncClass[0]~input_o\)) # (!\Add|Cout~0_combout\))) # (!\Mux15~0_combout\ & (((\FuncClass[0]~input_o\ & \Logic|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Add|Cout~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux15~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X77_Y70_N26
\Logic|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux14~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[1]~input_o\ & (\A[1]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux14~0_combout\);

-- Location: LCCOMB_X79_Y71_N6
\Shift|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~5_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~5_combout\);

-- Location: LCCOMB_X79_Y71_N20
\Shift|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~12_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~12_combout\);

-- Location: LCCOMB_X79_Y71_N16
\Shift|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~13_combout\ = (\Shift|ShiftRight0~12_combout\) # ((\Shift|ShiftRight1~5_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~5_combout\,
	datab => \Shift|ShiftRight0~12_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~13_combout\);

-- Location: LCCOMB_X77_Y71_N12
\Shift|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~6_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~6_combout\);

-- Location: LCCOMB_X77_Y70_N28
\Shift|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~14_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ShiftRight0~14_combout\);

-- Location: LCCOMB_X80_Y70_N26
\Y_ShiftOrArith[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~5_combout\ = (\Shift|ShiftRight0~14_combout\) # ((\Shift|ShiftRight1~6_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~6_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight0~14_combout\,
	combout => \Y_ShiftOrArith[1]~5_combout\);

-- Location: LCCOMB_X80_Y70_N12
\Y_ShiftOrArith[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~6_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~13_combout\)) # (!\B[2]~input_o\ & ((\Y_ShiftOrArith[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~13_combout\,
	datab => \B[2]~input_o\,
	datac => \Y_ShiftOrArith[1]~5_combout\,
	combout => \Y_ShiftOrArith[1]~6_combout\);

-- Location: LCCOMB_X77_Y72_N26
\Add|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(1) = \B[1]~input_o\ $ (\Add|C[1]~0_combout\ $ (\A[1]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Add|C[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(1));

-- Location: LCCOMB_X77_Y70_N30
\Shift|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~8_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X76_Y70_N10
\Shift|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~44_combout\ = (!\B[3]~input_o\ & (!\B[1]~input_o\ & (\Shift|ShiftLeft0~8_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~8_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X79_Y70_N24
\Y_ShiftOrArith[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~7_combout\ = (\ShiftFN[0]~input_o\ & (((\Shift|ShiftLeft0~44_combout\) # (\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\Add|S\(1) & ((!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(1),
	datab => \Shift|ShiftLeft0~44_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~7_combout\);

-- Location: LCCOMB_X82_Y70_N30
\Shift|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~17_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftRight0~17_combout\);

-- Location: LCCOMB_X82_Y70_N4
\Shift|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~16_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[14]~input_o\)) # (!\B[0]~input_o\ & ((\A[13]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftRight0~16_combout\);

-- Location: LCCOMB_X81_Y70_N14
\Shift|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~7_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftRight1~7_combout\);

-- Location: LCCOMB_X82_Y70_N2
\Shift|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~15_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~7_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~7_combout\,
	datab => \Shift|ShiftRight0~9_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~15_combout\);

-- Location: LCCOMB_X82_Y70_N24
\Shift|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~18_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~17_combout\) # ((\Shift|ShiftRight0~16_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~17_combout\,
	datab => \Shift|ShiftRight0~16_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~15_combout\,
	combout => \Shift|ShiftRight0~18_combout\);

-- Location: LCCOMB_X82_Y70_N18
\Shift|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = (\B[1]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: LCCOMB_X82_Y70_N28
\Shift|ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftRight0~16_combout\) # (\Shift|ShiftRight1~8_combout\)))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~15_combout\,
	datab => \Shift|ShiftRight0~16_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~8_combout\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: LCCOMB_X79_Y70_N26
\Y_ShiftOrArith[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~8_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[1]~7_combout\ & ((\Shift|ShiftRight1~9_combout\))) # (!\Y_ShiftOrArith[1]~7_combout\ & (\Shift|ShiftRight0~18_combout\)))) # (!\ShiftFN[1]~input_o\ & 
-- (\Y_ShiftOrArith[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_ShiftOrArith[1]~7_combout\,
	datac => \Shift|ShiftRight0~18_combout\,
	datad => \Shift|ShiftRight1~9_combout\,
	combout => \Y_ShiftOrArith[1]~8_combout\);

-- Location: LCCOMB_X79_Y69_N8
\Y_ShiftOrArith[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~9_combout\ = (\B[3]~input_o\ & (((\Y_ShiftOrArith[1]~8_combout\)))) # (!\B[3]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[1]~6_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~6_combout\,
	datab => \B[3]~input_o\,
	datac => \Y_ShiftOrArith[1]~8_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~9_combout\);

-- Location: LCCOMB_X77_Y69_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux14~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux14~0_combout\,
	datab => \Y_ShiftOrArith[1]~9_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X79_Y70_N6
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X77_Y72_N28
\Add|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[2]~0_combout\ = \Add|C[2]~1_combout\ $ (\A[2]~input_o\ $ (\B[2]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[2]~1_combout\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[2]~0_combout\);

-- Location: LCCOMB_X79_Y70_N4
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X77_Y70_N8
\Shift|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~9_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[0]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X76_Y70_N16
\Shift|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~10_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~9_combout\) # ((\Shift|ShiftLeft0~7_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~7_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~9_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X79_Y70_N8
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~6_combout\ & (((\Mux13~5_combout\ & \Shift|ShiftLeft0~10_combout\)))) # (!\Mux13~6_combout\ & ((\Add|S[2]~0_combout\) # ((!\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~6_combout\,
	datab => \Add|S[2]~0_combout\,
	datac => \Mux13~5_combout\,
	datad => \Shift|ShiftLeft0~10_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X82_Y70_N6
\Shift|ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = (\B[1]~input_o\ & (((\A[15]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[15]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: LCCOMB_X82_Y70_N0
\Shift|ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: LCCOMB_X82_Y70_N10
\Shift|ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~11_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~7_combout\,
	datab => \Shift|ShiftRight1~11_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: LCCOMB_X82_Y70_N20
\Shift|ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~10_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~10_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~12_combout\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: LCCOMB_X80_Y71_N6
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\B[2]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X80_Y71_N2
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\B[3]~input_o\ & ((\B[1]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X80_Y71_N20
\Shift|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~20_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\Shift|ShiftRight1~4_combout\))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~12_combout\,
	combout => \Shift|ShiftRight0~20_combout\);

-- Location: LCCOMB_X80_Y71_N16
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & ((\Mux13~1_combout\) # ((\Shift|ShiftRight0~20_combout\)))) # (!\Mux13~2_combout\ & (!\Mux13~1_combout\ & (\Shift|ShiftRight1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux13~1_combout\,
	datac => \Shift|ShiftRight1~3_combout\,
	datad => \Shift|ShiftRight0~20_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X79_Y71_N10
\Shift|ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~14_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~14_combout\);

-- Location: LCCOMB_X79_Y71_N28
\Shift|ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: LCCOMB_X79_Y71_N22
\Shift|ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~16_combout\ = (\Shift|ShiftRight1~14_combout\) # ((\Shift|ShiftRight1~15_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~14_combout\,
	datab => \Shift|ShiftRight1~15_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~16_combout\);

-- Location: LCCOMB_X80_Y71_N10
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux13~3_combout\ & (((\Shift|ShiftRight1~16_combout\) # (!\Mux13~1_combout\)))) # (!\Mux13~3_combout\ & (\Shift|ShiftRight1~2_combout\ & ((\Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~2_combout\,
	datab => \Mux13~3_combout\,
	datac => \Shift|ShiftRight1~16_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X79_Y70_N18
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux13~7_combout\ & ((\Mux13~4_combout\))) # (!\Mux13~7_combout\ & (\Shift|ShiftRight1~13_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Mux13~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux13~7_combout\,
	datac => \Shift|ShiftRight1~13_combout\,
	datad => \Mux13~4_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X76_Y69_N24
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X77_Y69_N12
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux13~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux13~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~8_combout\,
	datab => \Mux13~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X82_Y70_N14
\Shift|ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~17_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[14]~input_o\))) # (!\B[1]~input_o\ & (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[12]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~17_combout\);

-- Location: LCCOMB_X82_Y70_N8
\Shift|ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~18_combout\ = (\Shift|ShiftRight1~17_combout\) # ((\Shift|ShiftRight1~11_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~11_combout\,
	datac => \Shift|ShiftRight1~17_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~18_combout\);

-- Location: LCCOMB_X80_Y70_N6
\Shift|ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~19_combout\ = (\B[2]~input_o\ & ((\A[15]~input_o\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~18_combout\,
	datab => \A[15]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftRight1~19_combout\);

-- Location: LCCOMB_X77_Y72_N30
\Add|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[3]~1_combout\ = \Add|C[3]~2_combout\ $ (\B[3]~input_o\ $ (\A[3]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[3]~2_combout\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[3]~1_combout\);

-- Location: LCCOMB_X77_Y70_N4
\Shift|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~11_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X76_Y70_N2
\Shift|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~12_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~11_combout\) # ((\B[1]~input_o\ & \Shift|ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~11_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~8_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X79_Y70_N20
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux13~5_combout\ & ((\Mux13~6_combout\ & ((\Shift|ShiftLeft0~12_combout\))) # (!\Mux13~6_combout\ & (\Add|S[3]~1_combout\)))) # (!\Mux13~5_combout\ & (((!\Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[3]~1_combout\,
	datab => \Mux13~5_combout\,
	datac => \Shift|ShiftLeft0~12_combout\,
	datad => \Mux13~6_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X82_Y70_N26
\Shift|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~21_combout\ = (!\B[0]~input_o\ & \A[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftRight0~21_combout\);

-- Location: LCCOMB_X82_Y70_N12
\Shift|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~22_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~21_combout\ & ((!\B[1]~input_o\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~21_combout\,
	datab => \Shift|ShiftRight1~18_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~22_combout\);

-- Location: LCCOMB_X80_Y71_N28
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux13~2_combout\ & ((\Mux13~1_combout\) # ((\Shift|ShiftRight0~22_combout\)))) # (!\Mux13~2_combout\ & (!\Mux13~1_combout\ & ((\Shift|ShiftRight1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux13~1_combout\,
	datac => \Shift|ShiftRight0~22_combout\,
	datad => \Shift|ShiftRight1~6_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X79_Y71_N24
\Shift|ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~20_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~10_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~15_combout\,
	datad => \Shift|ShiftRight0~10_combout\,
	combout => \Shift|ShiftRight1~20_combout\);

-- Location: LCCOMB_X80_Y71_N30
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~1_combout\ & ((\Shift|ShiftRight1~20_combout\) # ((!\Mux13~1_combout\)))) # (!\Mux12~1_combout\ & (((\Shift|ShiftRight1~5_combout\ & \Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Shift|ShiftRight1~20_combout\,
	datac => \Shift|ShiftRight1~5_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X79_Y70_N30
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~3_combout\ & (((\Mux12~2_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux12~3_combout\ & (\Shift|ShiftRight1~19_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~19_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux12~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X77_Y70_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[3]~input_o\ & (\A[3]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X80_Y69_N14
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux12~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux12~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X77_Y71_N10
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\B[4]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[4]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X79_Y72_N28
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X79_Y72_N30
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\FuncClass[0]~input_o\) # ((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X81_Y70_N24
\Shift|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~23_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~7_combout\) # ((\B[1]~input_o\ & \Shift|ShiftRight1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight0~7_combout\,
	datac => \Shift|ShiftRight1~4_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~23_combout\);

-- Location: LCCOMB_X80_Y70_N10
\Shift|ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~21_combout\ = (\Shift|ShiftRight0~23_combout\) # ((\A[15]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[15]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Shift|ShiftRight1~21_combout\);

-- Location: LCCOMB_X80_Y72_N2
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\B[3]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[3]~input_o\ & ((\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X80_Y70_N16
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux10~1_combout\ & (((\B[3]~input_o\)))) # (!\Mux10~1_combout\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~23_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Shift|ShiftRight0~6_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X80_Y70_N4
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux10~1_combout\ & ((\Mux11~1_combout\ & (\Shift|ShiftRight1~21_combout\)) # (!\Mux11~1_combout\ & ((\Shift|ShiftRight0~11_combout\))))) # (!\Mux10~1_combout\ & (((\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~21_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux11~1_combout\,
	datad => \Shift|ShiftRight0~11_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X79_Y72_N24
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux10~2_combout\ & ((\Mux10~3_combout\ & (\Mux11~0_combout\)) # (!\Mux10~3_combout\ & ((\Mux11~2_combout\))))) # (!\Mux10~2_combout\ & (((!\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X77_Y71_N22
\Shift|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~14_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X77_Y70_N6
\Shift|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~13_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X77_Y71_N16
\Shift|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~15_combout\ = (\Shift|ShiftLeft0~13_combout\) # ((\Shift|ShiftLeft0~14_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~14_combout\,
	datac => \Shift|ShiftLeft0~13_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X80_Y71_N0
\Shift|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~16_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\Shift|ShiftLeft0~6_combout\))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftLeft0~6_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~15_combout\,
	combout => \Shift|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X77_Y72_N8
\Add|S[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[4]~2_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\Add|C[4]~3_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \Add|C[4]~3_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[4]~2_combout\);

-- Location: LCCOMB_X80_Y72_N16
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((!\B[3]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X77_Y72_N18
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & (((\Add|S[4]~2_combout\) # (!\Mux10~0_combout\)))) # (!\Mux11~3_combout\ & (\Shift|ShiftLeft0~16_combout\ & ((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Shift|ShiftLeft0~16_combout\,
	datac => \Add|S[4]~2_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X77_Y72_N20
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X77_Y71_N28
\Shift|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~17_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X77_Y71_N30
\Shift|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~18_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~14_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~17_combout\,
	datac => \Shift|ShiftLeft0~14_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X76_Y70_N12
\Shift|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~19_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~8_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~8_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftLeft0~18_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X77_Y71_N0
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\B[5]~input_o\ & ((\A[5]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[5]~input_o\ & (\A[5]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X81_Y70_N18
\Shift|ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~22_combout\ = (\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~22_combout\);

-- Location: LCCOMB_X80_Y70_N22
\Shift|ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~24_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\A[15]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~22_combout\,
	combout => \Shift|ShiftRight1~24_combout\);

-- Location: LCCOMB_X82_Y70_N22
\Shift|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~24_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~16_combout\) # ((\Shift|ShiftRight0~21_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~21_combout\,
	datab => \Shift|ShiftRight0~16_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~24_combout\);

-- Location: LCCOMB_X80_Y70_N14
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~1_combout\ & (((\B[3]~input_o\)))) # (!\Mux10~1_combout\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~24_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~13_combout\,
	datab => \Mux10~1_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~24_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X80_Y70_N0
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & ((\Shift|ShiftRight1~24_combout\) # ((!\Mux10~1_combout\)))) # (!\Mux10~5_combout\ & (((\Shift|ShiftRight0~15_combout\ & \Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~24_combout\,
	datab => \Mux10~5_combout\,
	datac => \Shift|ShiftRight0~15_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X79_Y72_N26
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~3_combout\ & (\Mux10~2_combout\ & (\Mux10~4_combout\))) # (!\Mux10~3_combout\ & (((\Mux10~6_combout\)) # (!\Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux10~4_combout\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X77_Y72_N22
\Add|S[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[5]~3_combout\ = \A[5]~input_o\ $ (\Add|C[5]~4_combout\ $ (\B[5]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Add|C[5]~4_combout\,
	datac => \B[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[5]~3_combout\);

-- Location: LCCOMB_X77_Y72_N0
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~7_combout\ & (((\Add|S[5]~3_combout\) # (!\Mux10~0_combout\)))) # (!\Mux10~7_combout\ & (\Shift|ShiftLeft0~19_combout\ & ((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~19_combout\,
	datab => \Mux10~7_combout\,
	datac => \Add|S[5]~3_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X77_Y72_N2
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (!\FuncClass[1]~input_o\ & \Mux10~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux10~8_combout\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X77_Y70_N24
\Shift|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~22_combout\ = (\B[0]~input_o\ & (\A[1]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X77_Y71_N18
\Shift|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[6]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X77_Y71_N20
\Shift|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~21_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~17_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~17_combout\,
	datad => \Shift|ShiftLeft0~20_combout\,
	combout => \Shift|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X76_Y70_N14
\Shift|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~23_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~22_combout\) # ((\Shift|ShiftLeft0~9_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~22_combout\,
	datab => \Shift|ShiftLeft0~9_combout\,
	datac => \Shift|ShiftLeft0~21_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X79_Y72_N4
\Add|S[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[6]~4_combout\ = \Add|C[6]~5_combout\ $ (\A[6]~input_o\ $ (\AddnSub~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[6]~5_combout\,
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|S[6]~4_combout\);

-- Location: LCCOMB_X79_Y69_N6
\Shift|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~19_combout\ = (!\B[1]~input_o\ & !\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~19_combout\);

-- Location: LCCOMB_X80_Y72_N6
\Shift|ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~23_combout\ = (\B[0]~input_o\ & (((\A[15]~input_o\)))) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~19_combout\ & ((\A[14]~input_o\))) # (!\Shift|ShiftRight0~19_combout\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~19_combout\,
	datac => \A[15]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftRight1~23_combout\);

-- Location: LCCOMB_X80_Y72_N10
\Shift|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~27_combout\ = (\Shift|ShiftRight1~4_combout\ & (!\B[2]~input_o\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~27_combout\);

-- Location: LCCOMB_X80_Y72_N28
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~27_combout\) # ((\Mux10~1_combout\)))) # (!\B[3]~input_o\ & (((\Shift|ShiftRight1~16_combout\ & !\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~27_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~16_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X80_Y72_N8
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux9~1_combout\ & ((\Shift|ShiftRight1~23_combout\) # ((!\Mux10~1_combout\)))) # (!\Mux9~1_combout\ & (((\Shift|ShiftRight1~12_combout\ & \Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~23_combout\,
	datab => \Mux9~1_combout\,
	datac => \Shift|ShiftRight1~12_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X79_Y72_N6
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\B[6]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[6]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X79_Y72_N16
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux10~3_combout\ & (\Mux10~2_combout\ & ((\Mux9~0_combout\)))) # (!\Mux10~3_combout\ & (((\Mux9~2_combout\)) # (!\Mux10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~3_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux9~2_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X79_Y72_N2
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux10~0_combout\ & ((\Mux9~3_combout\ & ((\Add|S[6]~4_combout\))) # (!\Mux9~3_combout\ & (\Shift|ShiftLeft0~23_combout\)))) # (!\Mux10~0_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~23_combout\,
	datab => \Add|S[6]~4_combout\,
	datac => \Mux10~0_combout\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X80_Y69_N16
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X79_Y72_N20
\Add|S[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[7]~5_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \B[7]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[7]~6_combout\,
	combout => \Add|S[7]~5_combout\);

-- Location: LCCOMB_X79_Y72_N22
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[7]~input_o\ & (\A[7]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X80_Y72_N26
\Shift|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~25_combout\ = (!\B[0]~input_o\ & (!\B[2]~input_o\ & (\A[15]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~25_combout\);

-- Location: LCCOMB_X80_Y72_N20
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~25_combout\) # ((\Mux10~1_combout\)))) # (!\B[3]~input_o\ & (((\Shift|ShiftRight1~20_combout\ & !\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~25_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~20_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X80_Y72_N22
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux10~1_combout\ & ((\Mux8~1_combout\ & (\A[15]~input_o\)) # (!\Mux8~1_combout\ & ((\Shift|ShiftRight1~18_combout\))))) # (!\Mux10~1_combout\ & (((\Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Mux10~1_combout\,
	datac => \Shift|ShiftRight1~18_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X79_Y72_N8
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux10~2_combout\ & ((\Mux10~3_combout\ & (\Mux8~0_combout\)) # (!\Mux10~3_combout\ & ((\Mux8~2_combout\))))) # (!\Mux10~2_combout\ & (((!\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X77_Y71_N6
\Shift|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~24_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X77_Y71_N24
\Shift|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~25_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~20_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~24_combout\,
	datab => \Shift|ShiftLeft0~20_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X77_Y70_N10
\Shift|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~26_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X76_Y70_N0
\Shift|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~27_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftLeft0~26_combout\) # (\Shift|ShiftLeft0~11_combout\)))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~25_combout\,
	datab => \Shift|ShiftLeft0~26_combout\,
	datac => \Shift|ShiftLeft0~11_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X79_Y72_N18
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux8~3_combout\ & ((\Add|S[7]~5_combout\) # ((!\Mux10~0_combout\)))) # (!\Mux8~3_combout\ & (((\Mux10~0_combout\ & \Shift|ShiftLeft0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[7]~5_combout\,
	datab => \Mux8~3_combout\,
	datac => \Mux10~0_combout\,
	datad => \Shift|ShiftLeft0~27_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X79_Y72_N12
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (!\FuncClass[1]~input_o\ & \Mux8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux8~4_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X76_Y69_N10
\Logic|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux7~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[8]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Logic|Mux7~0_combout\);

-- Location: LCCOMB_X79_Y69_N16
\Y_ShiftOrArith[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~14_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~8_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~11_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~8_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[8]~14_combout\);

-- Location: LCCOMB_X79_Y69_N22
\Y_ShiftOrArith[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~13_combout\ = (\ShiftFN[0]~input_o\ & (\B[3]~input_o\ & \A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[15]~input_o\,
	combout => \Y_ShiftOrArith[8]~13_combout\);

-- Location: LCCOMB_X79_Y71_N26
\Shift|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~28_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X79_Y71_N12
\Shift|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~29_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~24_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~24_combout\,
	datac => \Shift|ShiftLeft0~28_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X80_Y71_N18
\Y_ShiftOrArith[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~10_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~15_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~29_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~15_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[8]~10_combout\);

-- Location: LCCOMB_X76_Y69_N28
\Add|S[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[8]~6_combout\ = \Add|C[8]~7_combout\ $ (\B[8]~input_o\ $ (\A[8]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[8]~7_combout\,
	datab => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[8]~6_combout\);

-- Location: LCCOMB_X79_Y69_N2
\Y_ShiftOrArith[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~11_combout\ = (\Shift|ShiftRight0~19_combout\ & (\A[0]~input_o\ & (\B[3]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~19_combout\,
	datab => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_ShiftOrArith[8]~11_combout\);

-- Location: LCCOMB_X79_Y69_N28
\Y_ShiftOrArith[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~12_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[8]~10_combout\) # ((\Y_ShiftOrArith[8]~11_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Add|S[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~10_combout\,
	datab => \Add|S[8]~6_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_ShiftOrArith[8]~11_combout\,
	combout => \Y_ShiftOrArith[8]~12_combout\);

-- Location: LCCOMB_X79_Y69_N18
\Y_ShiftOrArith[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~15_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[8]~14_combout\) # ((\Y_ShiftOrArith[8]~13_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_ShiftOrArith[8]~14_combout\,
	datac => \Y_ShiftOrArith[8]~13_combout\,
	datad => \Y_ShiftOrArith[8]~12_combout\,
	combout => \Y_ShiftOrArith[8]~15_combout\);

-- Location: LCCOMB_X77_Y69_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux7~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[8]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux7~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Y_ShiftOrArith[8]~15_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X76_Y69_N16
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: IOIBUF_X102_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X79_Y70_N0
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X79_Y70_N12
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\ShiftFN[1]~input_o\ & ((\B[3]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X76_Y70_N26
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\B[3]~input_o\) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X76_Y70_N20
\Shift|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~45_combout\ = (\Shift|ShiftLeft0~8_combout\ & (!\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~8_combout\,
	datab => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X76_Y70_N28
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = ((!\B[3]~input_o\ & \B[2]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X79_Y71_N14
\Shift|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~30_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X79_Y71_N0
\Shift|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~31_combout\ = (\Shift|ShiftLeft0~30_combout\) # ((\Shift|ShiftLeft0~28_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~30_combout\,
	datac => \Shift|ShiftLeft0~28_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X76_Y70_N22
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux5~1_combout\ & (\Mux5~2_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & (\Shift|ShiftLeft0~18_combout\)) # (!\Mux5~2_combout\ & ((\Shift|ShiftLeft0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \Shift|ShiftLeft0~18_combout\,
	datad => \Shift|ShiftLeft0~31_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X76_Y69_N22
\Add|S[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[9]~7_combout\ = \A[9]~input_o\ $ (\Add|C[9]~8_combout\ $ (\B[9]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \Add|C[9]~8_combout\,
	datac => \B[9]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[9]~7_combout\);

-- Location: LCCOMB_X76_Y70_N24
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux5~1_combout\ & ((\Mux6~0_combout\ & ((\Add|S[9]~7_combout\))) # (!\Mux6~0_combout\ & (\Shift|ShiftLeft0~45_combout\)))) # (!\Mux5~1_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Shift|ShiftLeft0~45_combout\,
	datac => \Mux6~0_combout\,
	datad => \Add|S[9]~7_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X79_Y70_N2
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = ((!\B[3]~input_o\ & !\ShiftFN[0]~input_o\)) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X79_Y70_N22
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux5~4_combout\ & (((\Shift|ShiftRight0~18_combout\ & \Mux5~3_combout\)))) # (!\Mux5~4_combout\ & ((\Mux6~1_combout\) # ((!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux6~1_combout\,
	datac => \Shift|ShiftRight0~18_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X79_Y70_N16
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux5~0_combout\ & ((\Mux6~2_combout\ & (\Shift|ShiftRight1~9_combout\)) # (!\Mux6~2_combout\ & ((\A[15]~input_o\))))) # (!\Mux5~0_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~9_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux6~2_combout\,
	datad => \A[15]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X77_Y69_N8
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[8]~15_combout\))) # (!\ExtWord~input_o\ & (\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Mux6~3_combout\,
	datac => \Y_ShiftOrArith[8]~15_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X77_Y69_N18
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux6~4_combout\) # ((\Mux6~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \Mux6~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X76_Y69_N4
\Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~10_combout\ = (\B[10]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[10]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[10]~input_o\ & (\A[10]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[10]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux5~10_combout\);

-- Location: LCCOMB_X76_Y69_N18
\Add|S[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[10]~8_combout\ = \B[10]~input_o\ $ (\Add|C[10]~9_combout\ $ (\A[10]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Add|C[10]~9_combout\,
	datac => \A[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[10]~8_combout\);

-- Location: LCCOMB_X79_Y71_N18
\Shift|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~32_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X79_Y71_N4
\Shift|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~33_combout\ = (\B[0]~input_o\ & (\A[9]~input_o\)) # (!\B[0]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[10]~input_o\,
	combout => \Shift|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X79_Y71_N30
\Shift|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~34_combout\ = (\Shift|ShiftLeft0~32_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftLeft0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftLeft0~32_combout\,
	datac => \Shift|ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X76_Y70_N18
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~1_combout\ & ((\Mux5~2_combout\) # ((\Shift|ShiftLeft0~10_combout\)))) # (!\Mux5~1_combout\ & (!\Mux5~2_combout\ & (\Shift|ShiftLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \Shift|ShiftLeft0~34_combout\,
	datad => \Shift|ShiftLeft0~10_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X76_Y70_N4
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~5_combout\ & ((\Add|S[10]~8_combout\) # ((!\Mux5~2_combout\)))) # (!\Mux5~5_combout\ & (((\Shift|ShiftLeft0~21_combout\ & \Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[10]~8_combout\,
	datab => \Mux5~5_combout\,
	datac => \Shift|ShiftLeft0~21_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X79_Y70_N10
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~4_combout\ & (\Mux5~3_combout\ & ((\Shift|ShiftRight0~20_combout\)))) # (!\Mux5~4_combout\ & (((\Mux5~6_combout\)) # (!\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Mux5~3_combout\,
	datac => \Mux5~6_combout\,
	datad => \Shift|ShiftRight0~20_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X79_Y70_N28
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~7_combout\ & (((\Shift|ShiftRight1~13_combout\)) # (!\Mux5~0_combout\))) # (!\Mux5~7_combout\ & (\Mux5~0_combout\ & ((\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~7_combout\,
	datab => \Mux5~0_combout\,
	datac => \Shift|ShiftRight1~13_combout\,
	datad => \A[15]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X77_Y69_N28
\Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[8]~15_combout\))) # (!\ExtWord~input_o\ & (\Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[8]~15_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X77_Y69_N14
\Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~11_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux5~9_combout\) # ((\Mux5~10_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~10_combout\,
	datab => \Mux5~9_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux5~11_combout\);

-- Location: LCCOMB_X76_Y69_N0
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[11]~input_o\ & (\A[11]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \A[11]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X81_Y70_N4
\Shift|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~35_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X81_Y70_N22
\Shift|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~36_combout\ = (\B[0]~input_o\ & (\A[10]~input_o\)) # (!\B[0]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X81_Y70_N8
\Shift|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~37_combout\ = (\Shift|ShiftLeft0~35_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftLeft0~35_combout\,
	datac => \Shift|ShiftLeft0~36_combout\,
	combout => \Shift|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X76_Y70_N30
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux5~1_combout\ & (\Mux5~2_combout\)) # (!\Mux5~1_combout\ & ((\Mux5~2_combout\ & ((\Shift|ShiftLeft0~25_combout\))) # (!\Mux5~2_combout\ & (\Shift|ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~2_combout\,
	datac => \Shift|ShiftLeft0~37_combout\,
	datad => \Shift|ShiftLeft0~25_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X76_Y69_N30
\Add|S[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[11]~9_combout\ = \B[11]~input_o\ $ (\Add|C[11]~10_combout\ $ (\A[11]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Add|C[11]~10_combout\,
	datac => \A[11]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[11]~9_combout\);

-- Location: LCCOMB_X76_Y70_N8
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\Add|S[11]~9_combout\) # (!\Mux5~1_combout\)))) # (!\Mux4~0_combout\ & (\Shift|ShiftLeft0~12_combout\ & (\Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Shift|ShiftLeft0~12_combout\,
	datac => \Mux5~1_combout\,
	datad => \Add|S[11]~9_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X80_Y70_N18
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux5~4_combout\ & (\Shift|ShiftRight0~22_combout\ & ((\Mux5~3_combout\)))) # (!\Mux5~4_combout\ & (((\Mux4~1_combout\) # (!\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \Shift|ShiftRight0~22_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X80_Y70_N20
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux5~0_combout\ & ((\Mux4~2_combout\ & ((\Shift|ShiftRight1~19_combout\))) # (!\Mux4~2_combout\ & (\A[15]~input_o\)))) # (!\Mux5~0_combout\ & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux4~2_combout\,
	datac => \A[15]~input_o\,
	datad => \Shift|ShiftRight1~19_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X77_Y69_N0
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[8]~15_combout\))) # (!\ExtWord~input_o\ & (\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \Mux4~3_combout\,
	datac => \Y_ShiftOrArith[8]~15_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X77_Y69_N2
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux4~4_combout\) # ((\Mux4~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~5_combout\,
	datab => \Mux4~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X77_Y69_N20
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\FuncClass[0]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X80_Y71_N4
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X81_Y70_N10
\Shift|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~38_combout\ = (\B[0]~input_o\ & (\A[11]~input_o\)) # (!\B[0]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X80_Y71_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux13~2_combout\ & ((\Mux2~1_combout\) # ((\Shift|ShiftLeft0~29_combout\)))) # (!\Mux13~2_combout\ & (!\Mux2~1_combout\ & (\Shift|ShiftLeft0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux2~1_combout\,
	datac => \Shift|ShiftLeft0~38_combout\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X80_Y71_N24
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((\Shift|ShiftLeft0~16_combout\)) # (!\Mux2~1_combout\))) # (!\Mux3~0_combout\ & (\Mux2~1_combout\ & (\Shift|ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Shift|ShiftLeft0~33_combout\,
	datad => \Shift|ShiftLeft0~16_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X80_Y70_N30
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & (\Shift|ShiftRight0~23_combout\)) # (!\Mux5~4_combout\ & ((\Mux3~1_combout\))))) # (!\Mux5~3_combout\ & (((!\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Shift|ShiftRight0~23_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X80_Y70_N24
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\Shift|ShiftRight1~21_combout\) # (!\Mux5~0_combout\)))) # (!\Mux3~2_combout\ & (\A[15]~input_o\ & (\Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \A[15]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \Shift|ShiftRight1~21_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X80_Y69_N26
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \ExtWord~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X81_Y69_N18
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

-- Location: LCCOMB_X80_Y69_N4
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux0~2_combout\ & ((\Mux2~0_combout\ & ((\Add|S[12]~10_combout\))) # (!\Mux2~0_combout\ & (\Mux3~3_combout\)))) # (!\Mux0~2_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mux2~0_combout\,
	datad => \Add|S[12]~10_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X81_Y69_N4
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X80_Y69_N6
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux0~2_combout\ & (((\Mux3~4_combout\)))) # (!\Mux0~2_combout\ & ((\Mux3~4_combout\ & ((\Mux3~5_combout\))) # (!\Mux3~4_combout\ & (\Y_ShiftOrArith[8]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X80_Y69_N24
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X81_Y69_N0
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\B[13]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[13]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[13]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X81_Y69_N14
\Add|S[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[13]~11_combout\ = \AddnSub~input_o\ $ (\Add|C[13]~12_combout\ $ (\B[13]~input_o\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[13]~12_combout\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|S[13]~11_combout\);

-- Location: LCCOMB_X81_Y70_N12
\Shift|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~39_combout\ = (\B[0]~input_o\ & ((\A[12]~input_o\))) # (!\B[0]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X80_Y71_N26
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux13~2_combout\ & ((\Mux2~1_combout\) # ((\Shift|ShiftLeft0~31_combout\)))) # (!\Mux13~2_combout\ & (!\Mux2~1_combout\ & ((\Shift|ShiftLeft0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Mux2~1_combout\,
	datac => \Shift|ShiftLeft0~31_combout\,
	datad => \Shift|ShiftLeft0~39_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X80_Y71_N12
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~1_combout\ & ((\Mux2~2_combout\ & (\Shift|ShiftLeft0~19_combout\)) # (!\Mux2~2_combout\ & ((\Shift|ShiftLeft0~36_combout\))))) # (!\Mux2~1_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~19_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~2_combout\,
	datad => \Shift|ShiftLeft0~36_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X80_Y70_N2
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux5~3_combout\ & ((\Mux5~4_combout\ & (\Shift|ShiftRight0~24_combout\)) # (!\Mux5~4_combout\ & ((\Mux2~3_combout\))))) # (!\Mux5~3_combout\ & (((!\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Shift|ShiftRight0~24_combout\,
	datac => \Mux2~3_combout\,
	datad => \Mux5~4_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X80_Y70_N28
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux5~0_combout\ & ((\Mux2~4_combout\ & (\Shift|ShiftRight1~24_combout\)) # (!\Mux2~4_combout\ & ((\A[15]~input_o\))))) # (!\Mux5~0_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~24_combout\,
	datab => \A[15]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X80_Y69_N18
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux0~2_combout\ & (((!\Mux2~0_combout\ & \Mux2~5_combout\)))) # (!\Mux0~2_combout\ & ((\Y_ShiftOrArith[8]~15_combout\) # ((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~15_combout\,
	datab => \Mux0~2_combout\,
	datac => \Mux2~0_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X80_Y69_N28
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~0_combout\ & ((\Mux2~6_combout\ & (\Mux2~7_combout\)) # (!\Mux2~6_combout\ & ((\Add|S[13]~11_combout\))))) # (!\Mux2~0_combout\ & (((\Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux2~7_combout\,
	datac => \Add|S[13]~11_combout\,
	datad => \Mux2~6_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X80_Y69_N22
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (!\FuncClass[1]~input_o\ & \Mux2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X81_Y69_N10
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & (\A[14]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y69_N6
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\FuncClass[0]~input_o\ & (\Logic|Mux1~0_combout\)) # (!\FuncClass[0]~input_o\ & (((\Y_ShiftOrArith[8]~15_combout\ & \ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux1~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[8]~15_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X80_Y72_N18
\Y_ShiftOrArith[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~17_combout\ = (\ShiftFN[1]~input_o\ & ((\B[3]~input_o\ & (\A[15]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[15]~input_o\,
	datad => \Shift|ShiftRight1~23_combout\,
	combout => \Y_ShiftOrArith[8]~17_combout\);

-- Location: LCCOMB_X81_Y70_N6
\Y_ShiftOrArith[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~18_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[13]~input_o\)) # (!\B[0]~input_o\ & ((\A[14]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Y_ShiftOrArith[8]~18_combout\);

-- Location: LCCOMB_X81_Y70_N0
\Y_ShiftOrArith[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~19_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[8]~18_combout\) # ((\Shift|ShiftLeft0~38_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~18_combout\,
	datab => \Shift|ShiftLeft0~38_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_ShiftOrArith[8]~19_combout\);

-- Location: LCCOMB_X80_Y72_N12
\Y_ShiftOrArith[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~20_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[8]~19_combout\) # ((\Shift|ShiftLeft0~34_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~34_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y_ShiftOrArith[8]~19_combout\,
	combout => \Y_ShiftOrArith[8]~20_combout\);

-- Location: LCCOMB_X80_Y72_N30
\Y_ShiftOrArith[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~21_combout\ = (!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[8]~20_combout\) # ((\Shift|ShiftLeft0~23_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~23_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[8]~20_combout\,
	combout => \Y_ShiftOrArith[8]~21_combout\);

-- Location: LCCOMB_X81_Y69_N12
\Add|S[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[14]~12_combout\ = \A[14]~input_o\ $ (\Add|C[14]~13_combout\ $ (\AddnSub~input_o\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \Add|C[14]~13_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|S[14]~12_combout\);

-- Location: LCCOMB_X80_Y72_N24
\Y_ShiftOrArith[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~16_combout\ = (\ShiftFN[1]~input_o\ & (\Shift|ShiftRight0~27_combout\ & ((!\B[3]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((\Add|S[14]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~27_combout\,
	datab => \Add|S[14]~12_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[8]~16_combout\);

-- Location: LCCOMB_X80_Y72_N0
\Y_ShiftOrArith[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~22_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[8]~17_combout\) # ((\Y_ShiftOrArith[8]~21_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Y_ShiftOrArith[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_ShiftOrArith[8]~17_combout\,
	datac => \Y_ShiftOrArith[8]~21_combout\,
	datad => \Y_ShiftOrArith[8]~16_combout\,
	combout => \Y_ShiftOrArith[8]~22_combout\);

-- Location: LCCOMB_X77_Y69_N16
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux1~0_combout\) # ((\Y_ShiftOrArith[8]~22_combout\ & \Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Y_ShiftOrArith[8]~22_combout\,
	datad => \Mux0~2_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X79_Y69_N30
\Shift|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~26_combout\ = (\Shift|ShiftRight0~19_combout\ & (\A[15]~input_o\ & (!\B[3]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~19_combout\,
	datab => \A[15]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~26_combout\);

-- Location: LCCOMB_X81_Y69_N16
\Add|S[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[15]~13_combout\ = \A[15]~input_o\ $ (\Add|C[15]~14_combout\ $ (\AddnSub~input_o\ $ (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \Add|C[15]~14_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|S[15]~13_combout\);

-- Location: LCCOMB_X79_Y69_N24
\Y_ShiftOrArith[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~23_combout\ = (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shift|ShiftRight0~26_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Add|S[15]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~26_combout\,
	datab => \Add|S[15]~13_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[8]~23_combout\);

-- Location: LCCOMB_X81_Y70_N20
\Shift|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~41_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[14]~input_o\))) # (!\B[0]~input_o\ & (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[15]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Shift|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X81_Y70_N30
\Shift|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~42_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~41_combout\) # ((\Shift|ShiftLeft0~39_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~39_combout\,
	datab => \Shift|ShiftLeft0~41_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X81_Y70_N26
\Shift|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~40_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~35_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftLeft0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftLeft0~35_combout\,
	datac => \Shift|ShiftLeft0~36_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X79_Y69_N20
\Shift|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~43_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~27_combout\)) # (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~42_combout\) # (\Shift|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~27_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~42_combout\,
	datad => \Shift|ShiftLeft0~40_combout\,
	combout => \Shift|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X79_Y69_N10
\Y_ShiftOrArith[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[8]~24_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[8]~23_combout\ & (\A[15]~input_o\)) # (!\Y_ShiftOrArith[8]~23_combout\ & ((\Shift|ShiftLeft0~43_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Y_ShiftOrArith[8]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_ShiftOrArith[8]~23_combout\,
	datac => \A[15]~input_o\,
	datad => \Shift|ShiftLeft0~43_combout\,
	combout => \Y_ShiftOrArith[8]~24_combout\);

-- Location: LCCOMB_X77_Y69_N10
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\ExtWord~input_o\ & ((\Y_ShiftOrArith[8]~15_combout\))) # (!\ExtWord~input_o\ & (\Y_ShiftOrArith[8]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[8]~24_combout\,
	datac => \Y_ShiftOrArith[8]~15_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X81_Y69_N30
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[15]~input_o\ & (\A[15]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y69_N4
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux0~0_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Logic|Mux0~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X76_Y69_N26
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add|S[11]~9_combout\ & (!\Add|S[8]~6_combout\ & (!\Add|S[9]~7_combout\ & !\Add|S[10]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[11]~9_combout\,
	datab => \Add|S[8]~6_combout\,
	datac => \Add|S[9]~7_combout\,
	datad => \Add|S[10]~8_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X77_Y72_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Add|S[5]~3_combout\ & (!\Add|S[7]~5_combout\ & (!\Add|S[4]~2_combout\ & !\Add|S[6]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[5]~3_combout\,
	datab => \Add|S[7]~5_combout\,
	datac => \Add|S[4]~2_combout\,
	datad => \Add|S[6]~4_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X77_Y72_N6
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add|S\(1) & (\Equal0~0_combout\ & (!\Add|S[3]~1_combout\ & !\Add|S[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(1),
	datab => \Equal0~0_combout\,
	datac => \Add|S[3]~1_combout\,
	datad => \Add|S[2]~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X81_Y69_N26
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add|S[14]~12_combout\ & (!\Add|S[12]~10_combout\ & (!\Add|S[13]~11_combout\ & !\Add|S[15]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[14]~12_combout\,
	datab => \Add|S[12]~10_combout\,
	datac => \Add|S[13]~11_combout\,
	datad => \Add|S[15]~13_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X81_Y69_N20
\Logic|xor_result[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(0) = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Logic|xor_result\(0));

-- Location: LCCOMB_X81_Y69_N22
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~2_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & !\Logic|xor_result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Logic|xor_result\(0),
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


