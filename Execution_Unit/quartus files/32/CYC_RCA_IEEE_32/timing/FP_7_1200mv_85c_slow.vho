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

-- DATE "11/30/2025 20:54:01"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
-- ExtWord	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~15_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~16_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~5_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~4_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~17_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~19_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~21_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~23_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~5_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight1~4_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~3_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~4_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~7_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~11_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~13_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~9_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~6_combout\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
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
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Add|C[16]~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Add|C[17]~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Add|C[18]~17_combout\ : std_logic;
SIGNAL \Add|C[19]~18_combout\ : std_logic;
SIGNAL \Add|C[20]~19_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Add|C[21]~20_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Add|C[22]~21_combout\ : std_logic;
SIGNAL \Add|C[23]~22_combout\ : std_logic;
SIGNAL \Add|C[24]~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Add|C[25]~24_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Add|C[26]~25_combout\ : std_logic;
SIGNAL \Add|C[27]~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Add|C[28]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \Add|C[29]~28_combout\ : std_logic;
SIGNAL \Add|C[30]~29_combout\ : std_logic;
SIGNAL \Add|C[31]~30_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~33_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~35_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~34_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~37_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~16_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~9_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~27_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~29_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~30_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~25_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~26_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~11_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Logic|xor_result[2]~0_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Add|S[2]~0_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~28_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~29_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~26_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~27_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~41_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~25_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~39_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~40_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~42_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~30_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~32_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~19_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~21_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~38_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~33_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~34_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~43_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~36_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~35_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~44_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~45_combout\ : std_logic;
SIGNAL \Add|S[3]~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~37_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~39_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~38_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~46_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~40_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~41_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \Logic|xor_result[3]~1_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \Logic|xor_result[4]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~49_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~47_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~48_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~42_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~43_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Add|S[4]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Logic|xor_result[5]~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \Add|S[5]~3_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~54_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~50_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~51_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~52_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~53_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~44_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~45_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Mux26~8_combout\ : std_logic;
SIGNAL \Mux26~9_combout\ : std_logic;
SIGNAL \Mux26~10_combout\ : std_logic;
SIGNAL \Logic|xor_result[6]~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~46_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~55_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~47_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~56_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~57_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Add|S[6]~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Logic|xor_result[7]~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~58_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~48_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~60_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~59_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Add|S[7]~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Logic|xor_result[8]~6_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux28~16_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~61_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~49_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Logic|xor_result[9]~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~62_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~50_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Logic|xor_result[10]~8_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~63_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~51_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~56_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~64_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Logic|xor_result[11]~9_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Add|S[12]~6_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~65_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~57_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~66_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~52_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Add|S[13]~7_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \Add|S[14]~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~53_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~71_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Add|S[15]~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~67_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~68_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~54_combout\ : std_logic;
SIGNAL \Add|S[16]~10_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[16]~12_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[16]~13_combout\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \Logic|Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Add|S[17]~11_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Mux14~10_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Add|S[18]~12_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Add|S[19]~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Add|S[20]~14_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Add|S[21]~15_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Add|S[22]~16_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \Add|S[23]~17_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Add|S[24]~18_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Add|S[25]~19_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Add|S[26]~20_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Add|S[27]~21_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Add|S[28]~22_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Add|S[29]~23_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Logic|Mux1~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~55_combout\ : std_logic;
SIGNAL \Add|S[30]~24_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[30]~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~69_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[30]~15_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~70_combout\ : std_logic;
SIGNAL \Add|S[31]~25_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~16_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~17_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Logic|Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(31 DOWNTO 0);
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

-- Location: IOOBUF_X18_Y73_N16
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~7_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~15_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~6_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~10_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X13_Y73_N23
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~6_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~6_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~7_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~6_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X9_Y73_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~7_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~6_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~6_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~8_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~5_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~5_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~5_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~7_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X3_Y73_N2
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~6_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\Zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Zero~output_o\);

-- Location: IOOBUF_X0_Y69_N9
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

-- Location: IOOBUF_X16_Y73_N2
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

-- Location: IOIBUF_X52_Y73_N22
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: LCCOMB_X49_Y66_N8
\Logic|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = (\B[0]~input_o\ & (\LogicFN[1]~input_o\ $ (((\LogicFN[0]~input_o\ & !\A[0]~input_o\))))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: IOIBUF_X54_Y73_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X54_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X46_Y65_N16
\Shift|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~15_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~15_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X31_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X45_Y69_N8
\Shift|ShiftRight1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~6_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~6_combout\);

-- Location: LCCOMB_X46_Y64_N8
\Shift|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~16_combout\ = (\Shift|ShiftRight0~15_combout\) # ((\Shift|ShiftRight1~6_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~15_combout\,
	datac => \Shift|ShiftRight1~6_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~16_combout\);

-- Location: IOIBUF_X0_Y66_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X45_Y66_N22
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: IOIBUF_X27_Y73_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X7_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X45_Y66_N8
\Shift|ShiftRight1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~5_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~5_combout\);

-- Location: IOIBUF_X40_Y73_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X45_Y66_N2
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[0]~2_combout\) # ((\Shift|ShiftRight1~5_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~2_combout\,
	datab => \Shift|ShiftRight1~5_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: IOIBUF_X49_Y73_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X46_Y64_N2
\Y_ShiftOrArith[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~4_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[0]~3_combout\) # ((\Shift|ShiftRight0~16_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~16_combout\,
	datab => \Y_ShiftOrArith[0]~3_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[0]~4_combout\);

-- Location: IOIBUF_X67_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X47_Y65_N8
\Shift|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~17_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftRight0~17_combout\);

-- Location: IOIBUF_X31_Y73_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X47_Y65_N18
\Shift|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~18_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~18_combout\);

-- Location: LCCOMB_X47_Y64_N16
\Shift|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~19_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~17_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~17_combout\,
	datac => \Shift|ShiftRight0~18_combout\,
	combout => \Shift|ShiftRight0~19_combout\);

-- Location: IOIBUF_X29_Y73_N1
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X46_Y65_N4
\Shift|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~21_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~21_combout\);

-- Location: IOIBUF_X7_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: IOIBUF_X20_Y73_N8
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X46_Y65_N18
\Shift|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~20_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	combout => \Shift|ShiftRight0~20_combout\);

-- Location: LCCOMB_X47_Y64_N10
\Shift|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~22_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~20_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~21_combout\,
	datab => \Shift|ShiftRight0~20_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~22_combout\);

-- Location: LCCOMB_X46_Y66_N0
\Shift|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~23_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~19_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~19_combout\,
	datad => \Shift|ShiftRight0~22_combout\,
	combout => \Shift|ShiftRight0~23_combout\);

-- Location: IOIBUF_X47_Y73_N1
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X45_Y67_N18
\Y_ShiftOrArith[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~5_combout\ = (!\B[4]~input_o\ & ((\Y_ShiftOrArith[0]~4_combout\) # ((\Shift|ShiftRight0~23_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~4_combout\,
	datab => \Shift|ShiftRight0~23_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[0]~5_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X45_Y67_N20
\Shift|ShiftRight1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~4_combout\ = (\B[0]~input_o\ & ((\A[31]~input_o\))) # (!\B[0]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~4_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X48_Y68_N24
\Shift|ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[29]~input_o\))) # (!\B[0]~input_o\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Shift|ShiftRight0~2_combout\);

-- Location: LCCOMB_X48_Y63_N8
\Shift|ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~3_combout\ = (\Shift|ShiftRight0~2_combout\) # ((\Shift|ShiftRight1~4_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \Shift|ShiftRight0~2_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~3_combout\);

-- Location: IOIBUF_X20_Y73_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X49_Y68_N16
\Shift|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~4_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Shift|ShiftRight0~4_combout\);

-- Location: IOIBUF_X60_Y73_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X49_Y68_N10
\Shift|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~5_combout\ = (\B[1]~input_o\ & ((\A[26]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|ShiftRight0~5_combout\);

-- Location: LCCOMB_X49_Y64_N8
\Shift|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~6_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~4_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~4_combout\,
	datac => \Shift|ShiftRight0~5_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~6_combout\);

-- Location: LCCOMB_X45_Y67_N6
\Shift|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~7_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~3_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~3_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~6_combout\,
	combout => \Shift|ShiftRight0~7_combout\);

-- Location: IOIBUF_X83_Y73_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X85_Y73_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X49_Y65_N26
\Shift|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~11_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|ShiftRight0~11_combout\);

-- Location: IOIBUF_X23_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X49_Y65_N12
\Shift|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~12_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~12_combout\);

-- Location: LCCOMB_X49_Y64_N30
\Shift|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~13_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~11_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~11_combout\,
	datab => \Shift|ShiftRight0~12_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~13_combout\);

-- Location: IOIBUF_X67_Y73_N1
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X49_Y65_N16
\Shift|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~9_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[22]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Shift|ShiftRight0~9_combout\);

-- Location: IOIBUF_X60_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X0_Y64_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X49_Y64_N26
\Shift|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~8_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Shift|ShiftRight0~8_combout\);

-- Location: LCCOMB_X49_Y64_N28
\Shift|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~10_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~8_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~9_combout\,
	datac => \Shift|ShiftRight0~8_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~10_combout\);

-- Location: LCCOMB_X49_Y64_N24
\Shift|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~14_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~10_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~13_combout\,
	datab => \Shift|ShiftRight0~10_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~14_combout\);

-- Location: LCCOMB_X45_Y67_N8
\Y_ShiftOrArith[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~1_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight0~7_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~7_combout\,
	datac => \Shift|ShiftRight0~14_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[0]~1_combout\);

-- Location: LCCOMB_X47_Y66_N0
\Shift|ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~4_combout\ = (\B[0]~input_o\) # ((\B[2]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~4_combout\);

-- Location: LCCOMB_X45_Y67_N16
\Shift|ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~5_combout\ = (\Shift|ShiftLeft0~4_combout\) # ((\B[4]~input_o\) # (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~4_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~5_combout\);

-- Location: IOIBUF_X38_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X45_Y67_N2
\Y_ShiftOrArith[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = (\ShiftFN[0]~input_o\ & (\A[0]~input_o\ & (!\Shift|ShiftLeft0~5_combout\))) # (!\ShiftFN[0]~input_o\ & (\A[0]~input_o\ $ (((\B[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Shift|ShiftLeft0~5_combout\,
	datac => \B[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: LCCOMB_X45_Y67_N4
\Y_ShiftOrArith[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~6_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[0]~5_combout\) # ((\Y_ShiftOrArith[0]~1_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_ShiftOrArith[0]~5_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Y_ShiftOrArith[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~6_combout\);

-- Location: IOIBUF_X40_Y73_N1
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X23_Y73_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X13_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X5_Y73_N22
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X45_Y66_N0
\Add|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: LCCOMB_X45_Y66_N26
\Add|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = (\Add|C[1]~0_combout\ & ((\A[1]~input_o\) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\Add|C[1]~0_combout\ & (\A[1]~input_o\ & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Add|C[2]~1_combout\);

-- Location: LCCOMB_X45_Y66_N28
\Add|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[3]~2_combout\ = (\Add|C[2]~1_combout\ & ((\A[2]~input_o\) # (\AddnSub~input_o\ $ (\B[2]~input_o\)))) # (!\Add|C[2]~1_combout\ & (\A[2]~input_o\ & (\AddnSub~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[2]~input_o\,
	datac => \Add|C[2]~1_combout\,
	datad => \A[2]~input_o\,
	combout => \Add|C[3]~2_combout\);

-- Location: LCCOMB_X45_Y65_N0
\Add|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = (\Add|C[3]~2_combout\ & ((\A[3]~input_o\) # (\AddnSub~input_o\ $ (\B[3]~input_o\)))) # (!\Add|C[3]~2_combout\ & (\A[3]~input_o\ & (\AddnSub~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[3]~2_combout\,
	datab => \A[3]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add|C[4]~3_combout\);

-- Location: LCCOMB_X45_Y65_N18
\Add|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = (\A[4]~input_o\ & ((\Add|C[4]~3_combout\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[4]~input_o\ & (\Add|C[4]~3_combout\ & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[4]~3_combout\,
	combout => \Add|C[5]~4_combout\);

-- Location: LCCOMB_X45_Y65_N20
\Add|C[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = (\A[5]~input_o\ & ((\Add|C[5]~4_combout\) # (\AddnSub~input_o\ $ (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\Add|C[5]~4_combout\ & (\AddnSub~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Add|C[5]~4_combout\,
	combout => \Add|C[6]~5_combout\);

-- Location: LCCOMB_X46_Y67_N0
\Add|C[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = (\A[6]~input_o\ & ((\Add|C[6]~5_combout\) # (\AddnSub~input_o\ $ (\B[6]~input_o\)))) # (!\A[6]~input_o\ & (\Add|C[6]~5_combout\ & (\AddnSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[6]~input_o\,
	datad => \Add|C[6]~5_combout\,
	combout => \Add|C[7]~6_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X45_Y68_N16
\Add|C[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = (\Add|C[7]~6_combout\ & ((\A[7]~input_o\) # (\AddnSub~input_o\ $ (\B[7]~input_o\)))) # (!\Add|C[7]~6_combout\ & (\A[7]~input_o\ & (\AddnSub~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[7]~6_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Add|C[8]~7_combout\);

-- Location: LCCOMB_X45_Y68_N18
\Add|C[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[9]~8_combout\ = (\A[8]~input_o\ & ((\Add|C[8]~7_combout\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Add|C[8]~7_combout\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	datad => \Add|C[8]~7_combout\,
	combout => \Add|C[9]~8_combout\);

-- Location: LCCOMB_X41_Y69_N0
\Add|C[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = (\A[9]~input_o\ & ((\Add|C[9]~8_combout\) # (\B[9]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[9]~input_o\ & (\Add|C[9]~8_combout\ & (\B[9]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[9]~8_combout\,
	combout => \Add|C[10]~9_combout\);

-- Location: IOIBUF_X38_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X42_Y69_N16
\Add|C[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = (\Add|C[10]~9_combout\ & ((\A[10]~input_o\) # (\B[10]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[10]~9_combout\ & (\A[10]~input_o\ & (\B[10]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[10]~9_combout\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[11]~10_combout\);

-- Location: LCCOMB_X42_Y69_N26
\Add|C[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = (\Add|C[11]~10_combout\ & ((\A[11]~input_o\) # (\B[11]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[11]~10_combout\ & (\A[11]~input_o\ & (\B[11]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Add|C[11]~10_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[11]~input_o\,
	combout => \Add|C[12]~11_combout\);

-- Location: IOIBUF_X62_Y73_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X49_Y66_N2
\Add|C[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = (\Add|C[12]~11_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[12]~11_combout\ & (\A[12]~input_o\ & (\B[12]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[12]~11_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[13]~12_combout\);

-- Location: IOIBUF_X83_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X50_Y67_N16
\Add|C[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[14]~13_combout\ = (\Add|C[13]~12_combout\ & ((\A[13]~input_o\) # (\AddnSub~input_o\ $ (\B[13]~input_o\)))) # (!\Add|C[13]~12_combout\ & (\A[13]~input_o\ & (\AddnSub~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[13]~12_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|C[14]~13_combout\);

-- Location: LCCOMB_X50_Y67_N26
\Add|C[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = (\A[14]~input_o\ & ((\Add|C[14]~13_combout\) # (\B[14]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[14]~input_o\ & (\Add|C[14]~13_combout\ & (\B[14]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[14]~13_combout\,
	combout => \Add|C[15]~14_combout\);

-- Location: IOIBUF_X69_Y73_N15
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X50_Y66_N24
\Add|C[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[16]~15_combout\ = (\A[15]~input_o\ & ((\Add|C[15]~14_combout\) # (\AddnSub~input_o\ $ (\B[15]~input_o\)))) # (!\A[15]~input_o\ & (\Add|C[15]~14_combout\ & (\AddnSub~input_o\ $ (\B[15]~input_o\))))

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
	combout => \Add|C[16]~15_combout\);

-- Location: IOIBUF_X0_Y67_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X47_Y68_N24
\Add|C[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[17]~16_combout\ = (\Add|C[16]~15_combout\ & ((\A[16]~input_o\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\Add|C[16]~15_combout\ & (\A[16]~input_o\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[16]~15_combout\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Add|C[17]~16_combout\);

-- Location: IOIBUF_X67_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X47_Y70_N0
\Add|C[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[18]~17_combout\ = (\Add|C[17]~16_combout\ & ((\A[17]~input_o\) # (\AddnSub~input_o\ $ (\B[17]~input_o\)))) # (!\Add|C[17]~16_combout\ & (\A[17]~input_o\ & (\AddnSub~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[17]~16_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Add|C[18]~17_combout\);

-- Location: LCCOMB_X47_Y70_N26
\Add|C[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[19]~18_combout\ = (\A[18]~input_o\ & ((\Add|C[18]~17_combout\) # (\AddnSub~input_o\ $ (\B[18]~input_o\)))) # (!\A[18]~input_o\ & (\Add|C[18]~17_combout\ & (\AddnSub~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[18]~input_o\,
	datad => \Add|C[18]~17_combout\,
	combout => \Add|C[19]~18_combout\);

-- Location: LCCOMB_X47_Y69_N0
\Add|C[20]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[20]~19_combout\ = (\A[19]~input_o\ & ((\Add|C[19]~18_combout\) # (\AddnSub~input_o\ $ (\B[19]~input_o\)))) # (!\A[19]~input_o\ & (\Add|C[19]~18_combout\ & (\AddnSub~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Add|C[19]~18_combout\,
	combout => \Add|C[20]~19_combout\);

-- Location: IOIBUF_X52_Y73_N1
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X47_Y69_N26
\Add|C[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[21]~20_combout\ = (\Add|C[20]~19_combout\ & ((\A[20]~input_o\) # (\AddnSub~input_o\ $ (\B[20]~input_o\)))) # (!\Add|C[20]~19_combout\ & (\A[20]~input_o\ & (\AddnSub~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[20]~19_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Add|C[21]~20_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X47_Y69_N4
\Add|C[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[22]~21_combout\ = (\Add|C[21]~20_combout\ & ((\A[21]~input_o\) # (\AddnSub~input_o\ $ (\B[21]~input_o\)))) # (!\Add|C[21]~20_combout\ & (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[21]~20_combout\,
	datab => \A[21]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|C[22]~21_combout\);

-- Location: LCCOMB_X42_Y69_N28
\Add|C[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[23]~22_combout\ = (\Add|C[22]~21_combout\ & ((\A[22]~input_o\) # (\B[22]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[22]~21_combout\ & (\A[22]~input_o\ & (\B[22]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[22]~21_combout\,
	datad => \A[22]~input_o\,
	combout => \Add|C[23]~22_combout\);

-- Location: LCCOMB_X42_Y69_N6
\Add|C[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[24]~23_combout\ = (\A[23]~input_o\ & ((\Add|C[23]~22_combout\) # (\AddnSub~input_o\ $ (\B[23]~input_o\)))) # (!\A[23]~input_o\ & (\Add|C[23]~22_combout\ & (\AddnSub~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[23]~input_o\,
	datad => \Add|C[23]~22_combout\,
	combout => \Add|C[24]~23_combout\);

-- Location: IOIBUF_X60_Y73_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X49_Y66_N4
\Add|C[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[25]~24_combout\ = (\A[24]~input_o\ & ((\Add|C[24]~23_combout\) # (\AddnSub~input_o\ $ (\B[24]~input_o\)))) # (!\A[24]~input_o\ & (\Add|C[24]~23_combout\ & (\AddnSub~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[24]~input_o\,
	datac => \Add|C[24]~23_combout\,
	datad => \B[24]~input_o\,
	combout => \Add|C[25]~24_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X50_Y67_N20
\Add|C[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[26]~25_combout\ = (\A[25]~input_o\ & ((\Add|C[25]~24_combout\) # (\AddnSub~input_o\ $ (\B[25]~input_o\)))) # (!\A[25]~input_o\ & (\Add|C[25]~24_combout\ & (\AddnSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Add|C[25]~24_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add|C[26]~25_combout\);

-- Location: LCCOMB_X50_Y67_N30
\Add|C[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[27]~26_combout\ = (\A[26]~input_o\ & ((\Add|C[26]~25_combout\) # (\AddnSub~input_o\ $ (\B[26]~input_o\)))) # (!\A[26]~input_o\ & (\Add|C[26]~25_combout\ & (\AddnSub~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	datad => \Add|C[26]~25_combout\,
	combout => \Add|C[27]~26_combout\);

-- Location: IOIBUF_X74_Y73_N15
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X50_Y66_N10
\Add|C[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[28]~27_combout\ = (\A[27]~input_o\ & ((\Add|C[27]~26_combout\) # (\AddnSub~input_o\ $ (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\Add|C[27]~26_combout\ & (\AddnSub~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[27]~26_combout\,
	datad => \B[27]~input_o\,
	combout => \Add|C[28]~27_combout\);

-- Location: IOIBUF_X79_Y73_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X50_Y66_N12
\Add|C[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[29]~28_combout\ = (\Add|C[28]~27_combout\ & ((\A[28]~input_o\) # (\AddnSub~input_o\ $ (\B[28]~input_o\)))) # (!\Add|C[28]~27_combout\ & (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[28]~27_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Add|C[29]~28_combout\);

-- Location: LCCOMB_X47_Y70_N20
\Add|C[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[30]~29_combout\ = (\Add|C[29]~28_combout\ & ((\A[29]~input_o\) # (\B[29]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[29]~28_combout\ & (\A[29]~input_o\ & (\B[29]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[29]~28_combout\,
	datad => \A[29]~input_o\,
	combout => \Add|C[30]~29_combout\);

-- Location: LCCOMB_X47_Y70_N30
\Add|C[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[31]~30_combout\ = (\A[30]~input_o\ & ((\Add|C[30]~29_combout\) # (\B[30]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[30]~input_o\ & (\Add|C[30]~29_combout\ & (\B[30]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[30]~input_o\,
	datad => \Add|C[30]~29_combout\,
	combout => \Add|C[31]~30_combout\);

-- Location: LCCOMB_X46_Y69_N24
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\Add|C[31]~30_combout\ & ((\AddnSub~input_o\ $ (!\B[31]~input_o\)) # (!\A[31]~input_o\))) # (!\Add|C[31]~30_combout\ & (!\A[31]~input_o\ & (\AddnSub~input_o\ $ (!\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[31]~input_o\,
	datac => \Add|C[31]~30_combout\,
	datad => \A[31]~input_o\,
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X38_Y73_N8
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: LCCOMB_X46_Y69_N18
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\FuncClass[1]~input_o\ & (((\FuncClass[0]~input_o\) # (!\AltB~0_combout\)))) # (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~6_combout\ & ((!\FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~6_combout\,
	datab => \AltB~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X46_Y69_N20
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\Add|C[31]~30_combout\ & ((\A[31]~input_o\) # (\AddnSub~input_o\ $ (\B[31]~input_o\)))) # (!\Add|C[31]~30_combout\ & (\A[31]~input_o\ & (\AddnSub~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[31]~input_o\,
	datac => \Add|C[31]~30_combout\,
	datad => \A[31]~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: LCCOMB_X46_Y69_N6
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\ & (((!\FuncClass[0]~input_o\) # (!\Add|Cout~0_combout\)))) # (!\Mux31~0_combout\ & (\Logic|Mux31~0_combout\ & ((\FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux31~0_combout\,
	datab => \Mux31~0_combout\,
	datac => \Add|Cout~0_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X45_Y66_N12
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\A[1]~input_o\ & (\LogicFN[1]~input_o\ $ (((\LogicFN[0]~input_o\ & !\B[1]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X49_Y68_N28
\Shift|ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: LCCOMB_X49_Y64_N2
\Shift|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~31_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~11_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~11_combout\,
	datac => \Shift|ShiftRight0~8_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~31_combout\);

-- Location: LCCOMB_X49_Y65_N30
\Shift|ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: LCCOMB_X49_Y64_N20
\Shift|ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~32_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~12_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~11_combout\,
	datac => \Shift|ShiftRight1~12_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~32_combout\);

-- Location: LCCOMB_X49_Y64_N6
\Shift|ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~33_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~31_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~31_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~32_combout\,
	combout => \Shift|ShiftRight0~33_combout\);

-- Location: LCCOMB_X48_Y63_N26
\Shift|ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~35_combout\ = (!\B[0]~input_o\ & \A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight0~35_combout\);

-- Location: LCCOMB_X47_Y70_N8
\Shift|ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~14_combout\ = (\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Shift|ShiftRight1~14_combout\);

-- Location: LCCOMB_X48_Y63_N28
\Shift|ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~36_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\Shift|ShiftRight0~35_combout\)) # (!\B[1]~input_o\ & ((\Shift|ShiftRight1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftRight0~35_combout\,
	datad => \Shift|ShiftRight1~14_combout\,
	combout => \Shift|ShiftRight0~36_combout\);

-- Location: LCCOMB_X48_Y68_N10
\Shift|ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: LCCOMB_X49_Y64_N16
\Shift|ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~34_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & ((\Shift|ShiftRight1~13_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~4_combout\,
	datac => \Shift|ShiftRight1~13_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~34_combout\);

-- Location: LCCOMB_X48_Y63_N6
\Shift|ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~37_combout\ = (\B[3]~input_o\ & (((\Shift|ShiftRight0~36_combout\) # (\Shift|ShiftRight0~34_combout\)))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~33_combout\,
	datab => \Shift|ShiftRight0~36_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~34_combout\,
	combout => \Shift|ShiftRight0~37_combout\);

-- Location: LCCOMB_X48_Y63_N24
\Shift|ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\Shift|ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~14_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: LCCOMB_X48_Y63_N18
\Shift|ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~16_combout\ = (\B[3]~input_o\ & (((\Shift|ShiftRight1~15_combout\) # (\Shift|ShiftRight0~34_combout\)))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~33_combout\,
	datab => \Shift|ShiftRight1~15_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~34_combout\,
	combout => \Shift|ShiftRight1~16_combout\);

-- Location: LCCOMB_X45_Y66_N10
\Add|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(1) = \AddnSub~input_o\ $ (\Add|C[1]~0_combout\ $ (\A[1]~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[1]~0_combout\,
	datac => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Add|S\(1));

-- Location: LCCOMB_X48_Y63_N4
\Shift|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~6_combout\ = (!\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X45_Y66_N24
\Shift|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~7_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X48_Y69_N16
\Shift|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~8_combout\ = (\Shift|ShiftLeft0~6_combout\ & (!\B[4]~input_o\ & (\Shift|ShiftLeft0~7_combout\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~6_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~7_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X48_Y66_N8
\Y_ShiftOrArith[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~9_combout\ = (\ShiftFN[0]~input_o\ & (((\Shift|ShiftLeft0~8_combout\) # (\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & (\Add|S\(1) & ((!\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(1),
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ShiftLeft0~8_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~9_combout\);

-- Location: LCCOMB_X48_Y66_N10
\Y_ShiftOrArith[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~10_combout\ = (\Y_ShiftOrArith[1]~9_combout\ & (((\Shift|ShiftRight1~16_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Y_ShiftOrArith[1]~9_combout\ & (\Shift|ShiftRight0~37_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~37_combout\,
	datab => \Shift|ShiftRight1~16_combout\,
	datac => \Y_ShiftOrArith[1]~9_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~10_combout\);

-- Location: LCCOMB_X45_Y66_N30
\Shift|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~27_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~27_combout\);

-- Location: LCCOMB_X46_Y64_N28
\Shift|ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: LCCOMB_X46_Y64_N30
\Shift|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~28_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~27_combout\) # ((\Shift|ShiftRight1~9_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~27_combout\,
	datab => \Shift|ShiftRight1~9_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~28_combout\);

-- Location: LCCOMB_X46_Y64_N24
\Shift|ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: LCCOMB_X46_Y65_N30
\Shift|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~29_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~29_combout\);

-- Location: LCCOMB_X46_Y64_N10
\Shift|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~30_combout\ = (\Shift|ShiftRight0~29_combout\) # ((\Shift|ShiftRight1~10_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~10_combout\,
	datac => \Shift|ShiftRight0~29_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~30_combout\);

-- Location: LCCOMB_X46_Y64_N20
\Y_ShiftOrArith[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~7_combout\ = (\Shift|ShiftRight0~28_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~28_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~30_combout\,
	combout => \Y_ShiftOrArith[1]~7_combout\);

-- Location: LCCOMB_X47_Y64_N12
\Shift|ShiftRight1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~7_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~7_combout\);

-- Location: LCCOMB_X47_Y64_N30
\Shift|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~24_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~7_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~7_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~17_combout\,
	combout => \Shift|ShiftRight0~24_combout\);

-- Location: LCCOMB_X47_Y65_N4
\Shift|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[12]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: LCCOMB_X47_Y64_N24
\Shift|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~25_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~8_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~8_combout\,
	datab => \Shift|ShiftRight0~20_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~25_combout\);

-- Location: LCCOMB_X47_Y64_N26
\Shift|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~26_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~24_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~25_combout\,
	combout => \Shift|ShiftRight0~26_combout\);

-- Location: LCCOMB_X46_Y64_N14
\Y_ShiftOrArith[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~8_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~26_combout\))) # (!\B[3]~input_o\ & (\Y_ShiftOrArith[1]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_ShiftOrArith[1]~7_combout\,
	datac => \Shift|ShiftRight0~26_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_ShiftOrArith[1]~8_combout\);

-- Location: LCCOMB_X48_Y66_N4
\Y_ShiftOrArith[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~11_combout\ = (\B[4]~input_o\ & (\Y_ShiftOrArith[1]~10_combout\)) # (!\B[4]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[1]~8_combout\))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~10_combout\,
	datab => \B[4]~input_o\,
	datac => \Y_ShiftOrArith[1]~8_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~11_combout\);

-- Location: LCCOMB_X48_Y66_N14
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux30~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X47_Y69_N22
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (!\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X41_Y69_N18
\Logic|xor_result[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[2]~0_combout\ = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Logic|xor_result[2]~0_combout\);

-- Location: LCCOMB_X47_Y68_N10
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\FuncClass[0]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X45_Y66_N16
\Add|S[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[2]~0_combout\ = \AddnSub~input_o\ $ (\B[2]~input_o\ $ (\Add|C[2]~1_combout\ $ (\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[2]~input_o\,
	datac => \Add|C[2]~1_combout\,
	datad => \A[2]~input_o\,
	combout => \Add|S[2]~0_combout\);

-- Location: LCCOMB_X45_Y65_N24
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\ShiftFN[1]~input_o\ & \B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X45_Y65_N14
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\) # (!\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X49_Y65_N18
\Shift|ShiftRight1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~28_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|ShiftRight1~28_combout\);

-- Location: LCCOMB_X49_Y64_N10
\Shift|ShiftRight1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~29_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~28_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~28_combout\,
	datac => \Shift|ShiftRight1~12_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~29_combout\);

-- Location: LCCOMB_X49_Y68_N30
\Shift|ShiftRight1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~26_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~26_combout\);

-- Location: LCCOMB_X49_Y68_N8
\Shift|ShiftRight1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~27_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~26_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~11_combout\,
	datac => \Shift|ShiftRight1~26_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~27_combout\);

-- Location: LCCOMB_X49_Y67_N6
\Shift|ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~41_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~27_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~29_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~27_combout\,
	combout => \Shift|ShiftRight0~41_combout\);

-- Location: LCCOMB_X48_Y68_N18
\Shift|ShiftRight1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~25_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|ShiftRight1~25_combout\);

-- Location: LCCOMB_X48_Y68_N8
\Shift|ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~24_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[29]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[27]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Shift|ShiftRight1~24_combout\);

-- Location: LCCOMB_X49_Y67_N10
\Shift|ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~39_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight1~25_combout\) # (\Shift|ShiftRight1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~25_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~24_combout\,
	combout => \Shift|ShiftRight0~39_combout\);

-- Location: LCCOMB_X49_Y67_N4
\Shift|ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~40_combout\ = (\Shift|ShiftRight0~39_combout\) # ((\B[2]~input_o\ & (\Shift|ShiftRight1~4_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight0~39_combout\,
	combout => \Shift|ShiftRight0~40_combout\);

-- Location: LCCOMB_X49_Y67_N0
\Shift|ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~42_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~40_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~41_combout\,
	datac => \Shift|ShiftRight0~40_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~42_combout\);

-- Location: LCCOMB_X45_Y65_N10
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux28~4_combout\ & (((\Mux28~3_combout\) # (\Shift|ShiftRight0~42_combout\)))) # (!\Mux28~4_combout\ & (\Add|S[2]~0_combout\ & (!\Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[2]~0_combout\,
	datab => \Mux28~4_combout\,
	datac => \Mux28~3_combout\,
	datad => \Shift|ShiftRight0~42_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X48_Y68_N28
\Shift|ShiftRight1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~30_combout\ = (\B[1]~input_o\ & (((\A[31]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[31]~input_o\))) # (!\B[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~30_combout\);

-- Location: LCCOMB_X49_Y67_N26
\Shift|ShiftRight1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~31_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftRight1~30_combout\)))) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~25_combout\) # ((\Shift|ShiftRight1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~25_combout\,
	datab => \Shift|ShiftRight1~30_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~24_combout\,
	combout => \Shift|ShiftRight1~31_combout\);

-- Location: LCCOMB_X49_Y67_N20
\Shift|ShiftRight1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~32_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~31_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~41_combout\,
	datac => \Shift|ShiftRight1~31_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~32_combout\);

-- Location: LCCOMB_X48_Y68_N30
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X48_Y68_N12
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\B[2]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X46_Y65_N26
\Shift|ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~18_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Shift|ShiftRight1~18_combout\);

-- Location: LCCOMB_X46_Y65_N8
\Shift|ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~17_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~17_combout\);

-- Location: LCCOMB_X47_Y64_N28
\Shift|ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~19_combout\ = (\Shift|ShiftRight1~17_combout\) # ((\Shift|ShiftRight1~18_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~18_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~17_combout\,
	combout => \Shift|ShiftRight1~19_combout\);

-- Location: LCCOMB_X46_Y64_N16
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux28~2_combout\ & (((\Mux28~1_combout\)))) # (!\Mux28~2_combout\ & ((\Mux28~1_combout\ & ((\Shift|ShiftRight1~19_combout\))) # (!\Mux28~1_combout\ & (\Shift|ShiftRight1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Shift|ShiftRight1~5_combout\,
	datac => \Mux28~1_combout\,
	datad => \Shift|ShiftRight1~19_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X49_Y65_N0
\Shift|ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~20_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Shift|ShiftRight1~20_combout\);

-- Location: LCCOMB_X46_Y64_N18
\Shift|ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~21_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~20_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~7_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~20_combout\,
	combout => \Shift|ShiftRight1~21_combout\);

-- Location: LCCOMB_X47_Y65_N14
\Shift|ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~22_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftRight1~22_combout\);

-- Location: LCCOMB_X47_Y65_N0
\Shift|ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~23_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~22_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~8_combout\,
	datad => \Shift|ShiftRight1~22_combout\,
	combout => \Shift|ShiftRight1~23_combout\);

-- Location: LCCOMB_X49_Y67_N24
\Shift|ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~38_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~21_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~21_combout\,
	datab => \Shift|ShiftRight1~23_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~38_combout\);

-- Location: LCCOMB_X46_Y64_N12
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux29~1_combout\ & (((\Shift|ShiftRight0~38_combout\) # (!\Mux28~2_combout\)))) # (!\Mux29~1_combout\ & (\Shift|ShiftRight1~6_combout\ & ((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~6_combout\,
	datab => \Mux29~1_combout\,
	datac => \Shift|ShiftRight0~38_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X45_Y65_N12
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux29~3_combout\ & ((\Shift|ShiftRight1~32_combout\) # ((!\Mux28~3_combout\)))) # (!\Mux29~3_combout\ & (((\Mux28~3_combout\ & \Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~3_combout\,
	datab => \Shift|ShiftRight1~32_combout\,
	datac => \Mux28~3_combout\,
	datad => \Mux29~2_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X41_Y69_N28
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\Logic|xor_result[2]~0_combout\)) # (!\Mux28~6_combout\ & ((\Mux29~4_combout\))))) # (!\Mux28~5_combout\ & (((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Logic|xor_result[2]~0_combout\,
	datac => \Mux28~6_combout\,
	datad => \Mux29~4_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X47_Y69_N8
\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\LogicFN[1]~input_o\ & \FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LogicFN[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X41_Y69_N22
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\A[2]~input_o\ & ((\Mux29~5_combout\) # ((\B[2]~input_o\ & \Mux28~7_combout\)))) # (!\A[2]~input_o\ & (\Mux29~5_combout\ & ((\B[2]~input_o\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mux29~5_combout\,
	datac => \B[2]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X46_Y69_N8
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\ShiftFN[0]~input_o\ & (!\FuncClass[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X45_Y66_N20
\Shift|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~9_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X45_Y66_N14
\Shift|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~10_combout\ = (\Shift|ShiftLeft0~9_combout\) # ((\A[1]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \Shift|ShiftLeft0~9_combout\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X46_Y69_N10
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Shift|ShiftLeft0~10_combout\ & (\Mux28~0_combout\ & (!\Mux28~1_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~10_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux28~1_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X46_Y69_N12
\Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux29~0_combout\) # ((\Mux29~6_combout\ & !\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux29~6_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X45_Y66_N18
\Shift|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~11_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X46_Y68_N0
\Shift|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~12_combout\ = (\Shift|ShiftLeft0~11_combout\) # ((\Shift|ShiftLeft0~7_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~11_combout\,
	datac => \Shift|ShiftLeft0~7_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X46_Y69_N22
\Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Shift|ShiftLeft0~12_combout\ & (\Mux28~0_combout\ & (!\Mux28~1_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~12_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux28~1_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X48_Y68_N14
\Shift|ShiftRight1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~33_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[28]~input_o\))) # (!\B[0]~input_o\ & (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~33_combout\);

-- Location: LCCOMB_X47_Y65_N10
\Shift|ShiftRight1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~34_combout\ = (\Shift|ShiftRight1~33_combout\) # ((\Shift|ShiftRight1~14_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~33_combout\,
	datac => \Shift|ShiftRight1~14_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~34_combout\);

-- Location: LCCOMB_X48_Y65_N24
\Shift|ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~43_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftRight0~35_combout\ & !\B[1]~input_o\)))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~34_combout\,
	datab => \Shift|ShiftRight0~35_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~43_combout\);

-- Location: LCCOMB_X49_Y64_N12
\Shift|ShiftRight1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~36_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~9_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~9_combout\,
	datac => \Shift|ShiftRight1~28_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~36_combout\);

-- Location: LCCOMB_X49_Y68_N18
\Shift|ShiftRight1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~35_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~5_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~5_combout\,
	datac => \Shift|ShiftRight1~26_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~35_combout\);

-- Location: LCCOMB_X48_Y65_N2
\Shift|ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~44_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~35_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~36_combout\,
	datab => \Shift|ShiftRight1~35_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~44_combout\);

-- Location: LCCOMB_X48_Y65_N28
\Shift|ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~45_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~43_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~43_combout\,
	datad => \Shift|ShiftRight0~44_combout\,
	combout => \Shift|ShiftRight0~45_combout\);

-- Location: LCCOMB_X45_Y65_N6
\Add|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[3]~1_combout\ = \Add|C[3]~2_combout\ $ (\A[3]~input_o\ $ (\AddnSub~input_o\ $ (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[3]~2_combout\,
	datab => \A[3]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[3]~input_o\,
	combout => \Add|S[3]~1_combout\);

-- Location: LCCOMB_X47_Y64_N14
\Shift|ShiftRight1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~37_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~21_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~21_combout\,
	datab => \Shift|ShiftRight1~18_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~37_combout\);

-- Location: LCCOMB_X46_Y64_N22
\Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\Mux28~2_combout\ & (((\Mux28~1_combout\)))) # (!\Mux28~2_combout\ & ((\Mux28~1_combout\ & (\Shift|ShiftRight1~37_combout\)) # (!\Mux28~1_combout\ & ((\Shift|ShiftRight1~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Shift|ShiftRight1~37_combout\,
	datac => \Mux28~1_combout\,
	datad => \Shift|ShiftRight1~9_combout\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X47_Y64_N8
\Shift|ShiftRight1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~39_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~18_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~22_combout\,
	datac => \Shift|ShiftRight0~18_combout\,
	combout => \Shift|ShiftRight1~39_combout\);

-- Location: LCCOMB_X49_Y64_N14
\Shift|ShiftRight1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~38_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~12_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~12_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~20_combout\,
	combout => \Shift|ShiftRight1~38_combout\);

-- Location: LCCOMB_X46_Y64_N0
\Shift|ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~46_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~38_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~39_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~38_combout\,
	combout => \Shift|ShiftRight0~46_combout\);

-- Location: LCCOMB_X46_Y64_N26
\Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\Mux28~2_combout\ & ((\Mux28~9_combout\ & ((\Shift|ShiftRight0~46_combout\))) # (!\Mux28~9_combout\ & (\Shift|ShiftRight1~10_combout\)))) # (!\Mux28~2_combout\ & (((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Shift|ShiftRight1~10_combout\,
	datac => \Mux28~9_combout\,
	datad => \Shift|ShiftRight0~46_combout\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X48_Y65_N22
\Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\Mux28~4_combout\ & (\Mux28~3_combout\)) # (!\Mux28~4_combout\ & ((\Mux28~3_combout\ & ((\Mux28~10_combout\))) # (!\Mux28~3_combout\ & (\Add|S[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux28~3_combout\,
	datac => \Add|S[3]~1_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X48_Y65_N8
\Shift|ShiftRight1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~40_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\A[31]~input_o\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~34_combout\,
	datab => \A[31]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~40_combout\);

-- Location: LCCOMB_X48_Y65_N18
\Shift|ShiftRight1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~41_combout\ = (\Shift|ShiftRight1~40_combout\) # ((\Shift|ShiftRight0~44_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~44_combout\,
	datac => \Shift|ShiftRight1~40_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~41_combout\);

-- Location: LCCOMB_X47_Y65_N12
\Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\Mux28~11_combout\ & (((\Shift|ShiftRight1~41_combout\) # (!\Mux28~4_combout\)))) # (!\Mux28~11_combout\ & (\Shift|ShiftRight0~45_combout\ & (\Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~45_combout\,
	datab => \Mux28~11_combout\,
	datac => \Mux28~4_combout\,
	datad => \Shift|ShiftRight1~41_combout\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X43_Y69_N24
\Logic|xor_result[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[3]~1_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Logic|xor_result[3]~1_combout\);

-- Location: LCCOMB_X43_Y69_N10
\Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & ((\Logic|xor_result[3]~1_combout\))) # (!\Mux28~6_combout\ & (\Mux28~12_combout\)))) # (!\Mux28~5_combout\ & (((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Mux28~12_combout\,
	datac => \Mux28~6_combout\,
	datad => \Logic|xor_result[3]~1_combout\,
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X43_Y69_N20
\Mux28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~13_combout\ & (((\A[3]~input_o\) # (\B[3]~input_o\)) # (!\Mux28~7_combout\))) # (!\Mux28~13_combout\ & (\Mux28~7_combout\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~13_combout\,
	datab => \Mux28~7_combout\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X46_Y69_N0
\Mux28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux28~8_combout\) # ((\Mux28~14_combout\ & !\Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \Mux28~14_combout\,
	datac => \Mux28~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X45_Y69_N10
\Logic|xor_result[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[4]~2_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Logic|xor_result[4]~2_combout\);

-- Location: LCCOMB_X46_Y66_N26
\Shift|ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~49_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~13_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~13_combout\,
	datac => \Shift|ShiftRight0~19_combout\,
	combout => \Shift|ShiftRight0~49_combout\);

-- Location: LCCOMB_X49_Y64_N0
\Shift|ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~47_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~6_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~10_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~6_combout\,
	combout => \Shift|ShiftRight0~47_combout\);

-- Location: LCCOMB_X46_Y66_N30
\Shift|ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~48_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & (\Shift|ShiftRight0~3_combout\))) # (!\B[3]~input_o\ & (((\Shift|ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~3_combout\,
	datac => \Shift|ShiftRight0~47_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~48_combout\);

-- Location: LCCOMB_X47_Y64_N2
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\B[4]~input_o\ & ((\B[2]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X48_Y64_N8
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\B[4]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X46_Y66_N16
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux26~0_combout\ & (((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & (\Shift|ShiftRight0~48_combout\)) # (!\Mux26~1_combout\ & ((\Shift|ShiftRight0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~48_combout\,
	datab => \Mux26~0_combout\,
	datac => \Shift|ShiftRight0~16_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X46_Y66_N12
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & ((\Shift|ShiftRight0~49_combout\) # ((!\Mux26~0_combout\)))) # (!\Mux27~0_combout\ & (((\Mux26~0_combout\ & \Shift|ShiftRight0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~49_combout\,
	datab => \Mux27~0_combout\,
	datac => \Mux26~0_combout\,
	datad => \Shift|ShiftRight0~22_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X46_Y66_N18
\Shift|ShiftRight1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~42_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\A[31]~input_o\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~3_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~42_combout\);

-- Location: LCCOMB_X46_Y66_N28
\Shift|ShiftRight1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~43_combout\ = (\Shift|ShiftRight1~42_combout\) # ((\Shift|ShiftRight0~47_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~42_combout\,
	datac => \Shift|ShiftRight0~47_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~43_combout\);

-- Location: LCCOMB_X45_Y65_N4
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\ShiftFN[0]~input_o\ & ((\B[4]~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X45_Y65_N16
\Add|S[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[4]~2_combout\ = \B[4]~input_o\ $ (\A[4]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[4]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[4]~3_combout\,
	combout => \Add|S[4]~2_combout\);

-- Location: LCCOMB_X47_Y66_N10
\Shift|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~13_combout\ = (!\B[0]~input_o\ & (\B[2]~input_o\ & (\A[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X45_Y66_N6
\Shift|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~15_combout\ = (\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X45_Y66_N4
\Shift|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~14_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X47_Y66_N4
\Shift|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~16_combout\ = (\Shift|ShiftLeft0~14_combout\) # ((\Shift|ShiftLeft0~15_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~15_combout\,
	datac => \Shift|ShiftLeft0~14_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X47_Y66_N30
\Shift|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~17_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~13_combout\) # ((\Shift|ShiftLeft0~16_combout\ & !\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~13_combout\,
	datab => \Shift|ShiftLeft0~16_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X45_Y65_N2
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (!\ShiftFN[1]~input_o\ & ((!\B[4]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X46_Y66_N22
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux26~3_combout\ & (((\Shift|ShiftLeft0~17_combout\ & \Mux26~2_combout\)))) # (!\Mux26~3_combout\ & ((\Add|S[4]~2_combout\) # ((!\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~3_combout\,
	datab => \Add|S[4]~2_combout\,
	datac => \Shift|ShiftLeft0~17_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X46_Y66_N8
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~2_combout\ & ((\Mux27~1_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux27~2_combout\ & (((\Shift|ShiftRight1~43_combout\ & \ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Shift|ShiftRight1~43_combout\,
	datac => \Mux27~2_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X45_Y69_N28
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Mux28~6_combout\ & (\Logic|xor_result[4]~2_combout\ & ((\Mux28~5_combout\)))) # (!\Mux28~6_combout\ & (((\Mux27~3_combout\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[4]~2_combout\,
	datab => \Mux28~6_combout\,
	datac => \Mux27~3_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X45_Y69_N30
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux28~7_combout\ & ((\Mux27~4_combout\ & ((\A[4]~input_o\) # (\B[4]~input_o\))) # (!\Mux27~4_combout\ & (\A[4]~input_o\ & \B[4]~input_o\)))) # (!\Mux28~7_combout\ & (\Mux27~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux27~4_combout\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X45_Y69_N0
\Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux27~5_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X45_Y65_N30
\Logic|xor_result[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[5]~3_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Logic|xor_result[5]~3_combout\);

-- Location: LCCOMB_X46_Y64_N4
\Shift|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~18_combout\ = (\B[1]~input_o\ & ((\A[3]~input_o\))) # (!\B[1]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X47_Y66_N16
\Shift|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~19_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~15_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~15_combout\,
	datab => \Shift|ShiftLeft0~18_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X48_Y69_N10
\Shift|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~7_combout\ & ((!\B[1]~input_o\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~7_combout\,
	datab => \Shift|ShiftLeft0~19_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X48_Y69_N12
\Shift|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~21_combout\ = (\Shift|ShiftLeft0~20_combout\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~20_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X45_Y65_N8
\Add|S[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[5]~3_combout\ = \AddnSub~input_o\ $ (\A[5]~input_o\ $ (\B[5]~input_o\ $ (\Add|C[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Add|C[5]~4_combout\,
	combout => \Add|S[5]~3_combout\);

-- Location: LCCOMB_X45_Y65_N26
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux26~3_combout\ & (\Shift|ShiftLeft0~21_combout\ & ((\Mux26~2_combout\)))) # (!\Mux26~3_combout\ & (((\Add|S[5]~3_combout\) # (!\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~21_combout\,
	datab => \Add|S[5]~3_combout\,
	datac => \Mux26~3_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X47_Y64_N6
\Shift|ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~54_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~32_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~24_combout\,
	datac => \Shift|ShiftRight0~32_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~54_combout\);

-- Location: LCCOMB_X49_Y64_N18
\Shift|ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~50_combout\ = (\B[2]~input_o\ & ((\B[0]~input_o\ & ((\Shift|ShiftRight1~13_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~4_combout\,
	datac => \Shift|ShiftRight1~13_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~50_combout\);

-- Location: LCCOMB_X49_Y64_N4
\Shift|ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~51_combout\ = (\Shift|ShiftRight0~50_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~50_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~31_combout\,
	combout => \Shift|ShiftRight0~51_combout\);

-- Location: LCCOMB_X48_Y63_N10
\Shift|ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~52_combout\ = (\B[1]~input_o\ & (((!\B[0]~input_o\ & \A[31]~input_o\)))) # (!\B[1]~input_o\ & (\Shift|ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~14_combout\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight0~52_combout\);

-- Location: LCCOMB_X48_Y63_N12
\Shift|ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~53_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftRight0~52_combout\)))) # (!\B[3]~input_o\ & (((\Shift|ShiftRight0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~51_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~52_combout\,
	combout => \Shift|ShiftRight0~53_combout\);

-- Location: LCCOMB_X47_Y64_N4
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux26~0_combout\ & (((\Mux26~1_combout\)))) # (!\Mux26~0_combout\ & ((\Mux26~1_combout\ & ((\Shift|ShiftRight0~53_combout\))) # (!\Mux26~1_combout\ & (\Shift|ShiftRight0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~30_combout\,
	datab => \Mux26~0_combout\,
	datac => \Shift|ShiftRight0~53_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X47_Y64_N0
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux26~4_combout\ & ((\Shift|ShiftRight0~54_combout\) # ((!\Mux26~0_combout\)))) # (!\Mux26~4_combout\ & (((\Shift|ShiftRight0~25_combout\ & \Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~54_combout\,
	datab => \Shift|ShiftRight0~25_combout\,
	datac => \Mux26~4_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X48_Y63_N14
\Shift|ShiftRight1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~44_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~6_combout\ & (\Shift|ShiftRight1~14_combout\)) # (!\Shift|ShiftLeft0~6_combout\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~14_combout\,
	datab => \Shift|ShiftLeft0~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~44_combout\);

-- Location: LCCOMB_X48_Y63_N16
\Shift|ShiftRight1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~45_combout\ = (\Shift|ShiftRight1~44_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftRight0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~44_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~51_combout\,
	combout => \Shift|ShiftRight1~45_combout\);

-- Location: LCCOMB_X45_Y65_N28
\Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~6_combout\ & ((\Mux26~5_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux26~6_combout\ & (((\ShiftFN[1]~input_o\ & \Shift|ShiftRight1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~6_combout\,
	datab => \Mux26~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight1~45_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X45_Y65_N22
\Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~8_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\Logic|xor_result[5]~3_combout\)) # (!\Mux28~6_combout\ & ((\Mux26~7_combout\))))) # (!\Mux28~5_combout\ & (((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[5]~3_combout\,
	datab => \Mux26~7_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux28~6_combout\,
	combout => \Mux26~8_combout\);

-- Location: LCCOMB_X45_Y69_N18
\Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~9_combout\ = (\Mux28~7_combout\ & ((\B[5]~input_o\ & ((\Mux26~8_combout\) # (\A[5]~input_o\))) # (!\B[5]~input_o\ & (\Mux26~8_combout\ & \A[5]~input_o\)))) # (!\Mux28~7_combout\ & (((\Mux26~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \B[5]~input_o\,
	datac => \Mux26~8_combout\,
	datad => \A[5]~input_o\,
	combout => \Mux26~9_combout\);

-- Location: LCCOMB_X45_Y69_N12
\Mux26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~10_combout\ = (!\FuncClass[1]~input_o\ & \Mux26~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux26~9_combout\,
	combout => \Mux26~10_combout\);

-- Location: LCCOMB_X46_Y67_N2
\Logic|xor_result[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[6]~4_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[6]~input_o\,
	datac => \A[6]~input_o\,
	combout => \Logic|xor_result[6]~4_combout\);

-- Location: LCCOMB_X45_Y67_N14
\Shift|ShiftRight1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~46_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~4_combout\ & ((\A[31]~input_o\))) # (!\Shift|ShiftLeft0~4_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~4_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~46_combout\);

-- Location: LCCOMB_X49_Y67_N22
\Shift|ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~55_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~25_combout\) # ((\Shift|ShiftRight1~24_combout\)))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~25_combout\,
	datab => \Shift|ShiftRight1~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~27_combout\,
	combout => \Shift|ShiftRight0~55_combout\);

-- Location: LCCOMB_X46_Y67_N28
\Shift|ShiftRight1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~47_combout\ = (\Shift|ShiftRight1~46_combout\) # ((\Shift|ShiftRight0~55_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~46_combout\,
	datab => \Shift|ShiftRight0~55_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~47_combout\);

-- Location: LCCOMB_X46_Y67_N6
\Shift|ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~56_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~4_combout\ & (\Shift|ShiftLeft0~6_combout\))) # (!\B[3]~input_o\ & (((\Shift|ShiftRight0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \Shift|ShiftLeft0~6_combout\,
	datad => \Shift|ShiftRight0~55_combout\,
	combout => \Shift|ShiftRight0~56_combout\);

-- Location: LCCOMB_X46_Y67_N16
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux26~1_combout\ & (((\Mux26~0_combout\) # (\Shift|ShiftRight0~56_combout\)))) # (!\Mux26~1_combout\ & (\Shift|ShiftRight1~19_combout\ & (!\Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~19_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux26~0_combout\,
	datad => \Shift|ShiftRight0~56_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X49_Y67_N16
\Shift|ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~57_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~29_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~21_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~29_combout\,
	combout => \Shift|ShiftRight0~57_combout\);

-- Location: LCCOMB_X46_Y67_N26
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\Shift|ShiftRight0~57_combout\) # (!\Mux26~0_combout\)))) # (!\Mux25~0_combout\ & (\Shift|ShiftRight1~23_combout\ & (\Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~23_combout\,
	datab => \Mux25~0_combout\,
	datac => \Mux26~0_combout\,
	datad => \Shift|ShiftRight0~57_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X46_Y67_N22
\Add|S[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[6]~4_combout\ = \A[6]~input_o\ $ (\AddnSub~input_o\ $ (\B[6]~input_o\ $ (\Add|C[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[6]~input_o\,
	datad => \Add|C[6]~5_combout\,
	combout => \Add|S[6]~4_combout\);

-- Location: LCCOMB_X45_Y69_N6
\Shift|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~22_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X46_Y66_N2
\Shift|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~23_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~18_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~18_combout\,
	datac => \Shift|ShiftLeft0~22_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X46_Y67_N4
\Shift|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~24_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~10_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~23_combout\,
	datab => \Shift|ShiftLeft0~10_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X46_Y67_N24
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux26~3_combout\ & (((\Shift|ShiftLeft0~24_combout\ & \Mux26~2_combout\)))) # (!\Mux26~3_combout\ & ((\Add|S[6]~4_combout\) # ((!\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[6]~4_combout\,
	datab => \Mux26~3_combout\,
	datac => \Shift|ShiftLeft0~24_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X46_Y67_N18
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux25~2_combout\ & ((\Mux25~1_combout\))) # (!\Mux25~2_combout\ & (\Shift|ShiftRight1~47_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Shift|ShiftRight1~47_combout\,
	datac => \Mux25~1_combout\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X46_Y67_N20
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\Logic|xor_result[6]~4_combout\)) # (!\Mux28~6_combout\ & ((\Mux25~3_combout\))))) # (!\Mux28~5_combout\ & (((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Logic|xor_result[6]~4_combout\,
	datac => \Mux28~6_combout\,
	datad => \Mux25~3_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X46_Y67_N14
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\A[6]~input_o\ & ((\Mux25~4_combout\) # ((\B[6]~input_o\ & \Mux28~7_combout\)))) # (!\A[6]~input_o\ & (\Mux25~4_combout\ & ((\B[6]~input_o\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \Mux25~4_combout\,
	datac => \B[6]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X47_Y67_N24
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux25~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux25~5_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X45_Y68_N4
\Logic|xor_result[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[7]~5_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Logic|xor_result[7]~5_combout\);

-- Location: LCCOMB_X48_Y65_N12
\Shift|ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~58_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~34_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~34_combout\,
	datab => \Shift|ShiftRight1~35_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~58_combout\);

-- Location: LCCOMB_X48_Y64_N2
\Shift|ShiftRight1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~48_combout\ = (\B[3]~input_o\ & ((\A[31]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~58_combout\,
	datab => \B[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~48_combout\);

-- Location: LCCOMB_X49_Y64_N22
\Shift|ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~60_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~36_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~38_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~36_combout\,
	combout => \Shift|ShiftRight0~60_combout\);

-- Location: LCCOMB_X48_Y64_N12
\Shift|ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~59_combout\ = (\B[3]~input_o\ & (((!\Shift|ShiftLeft0~4_combout\ & \A[31]~input_o\)))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~58_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~4_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight0~59_combout\);

-- Location: LCCOMB_X47_Y64_N18
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux26~1_combout\ & (((\Shift|ShiftRight0~59_combout\) # (\Mux26~0_combout\)))) # (!\Mux26~1_combout\ & (\Shift|ShiftRight1~37_combout\ & ((!\Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Shift|ShiftRight1~37_combout\,
	datac => \Shift|ShiftRight0~59_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X47_Y64_N20
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & ((\Shift|ShiftRight0~60_combout\) # ((!\Mux26~0_combout\)))) # (!\Mux24~0_combout\ & (((\Shift|ShiftRight1~39_combout\ & \Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~60_combout\,
	datab => \Mux24~0_combout\,
	datac => \Shift|ShiftRight1~39_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X45_Y68_N14
\Add|S[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[7]~5_combout\ = \AddnSub~input_o\ $ (\Add|C[7]~6_combout\ $ (\B[7]~input_o\ $ (\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[7]~6_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Add|S[7]~5_combout\);

-- Location: LCCOMB_X46_Y65_N12
\Shift|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~25_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X45_Y69_N16
\Shift|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~26_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~22_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~22_combout\,
	datac => \Shift|ShiftLeft0~25_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X46_Y68_N18
\Shift|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~27_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~26_combout\,
	datac => \Shift|ShiftLeft0~12_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X45_Y68_N24
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux26~3_combout\ & (((\Mux26~2_combout\ & \Shift|ShiftLeft0~27_combout\)))) # (!\Mux26~3_combout\ & ((\Add|S[7]~5_combout\) # ((!\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~3_combout\,
	datab => \Add|S[7]~5_combout\,
	datac => \Mux26~2_combout\,
	datad => \Shift|ShiftLeft0~27_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X47_Y64_N22
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux24~2_combout\ & ((\Mux24~1_combout\))) # (!\Mux24~2_combout\ & (\Shift|ShiftRight1~48_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~48_combout\,
	datab => \Mux24~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X45_Y68_N26
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux28~6_combout\ & (\Logic|xor_result[7]~5_combout\ & (\Mux28~5_combout\))) # (!\Mux28~6_combout\ & (((\Mux24~3_combout\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Logic|xor_result[7]~5_combout\,
	datac => \Mux28~5_combout\,
	datad => \Mux24~3_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X45_Y68_N12
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux24~4_combout\ & (((\B[7]~input_o\) # (\A[7]~input_o\)) # (!\Mux28~7_combout\))) # (!\Mux24~4_combout\ & (\Mux28~7_combout\ & (\B[7]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \Mux28~7_combout\,
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X45_Y69_N26
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux24~5_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux24~5_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X46_Y65_N22
\Shift|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~28_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X46_Y65_N0
\Shift|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~29_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~25_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~25_combout\,
	datac => \Shift|ShiftLeft0~28_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X47_Y66_N2
\Shift|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~30_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~16_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~29_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~16_combout\,
	combout => \Shift|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X47_Y68_N12
\Shift|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~31_combout\ = (\B[3]~input_o\ & (!\Shift|ShiftLeft0~4_combout\ & (\A[0]~input_o\))) # (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~4_combout\,
	datab => \A[0]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~30_combout\,
	combout => \Shift|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X45_Y68_N30
\Logic|xor_result[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[8]~6_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Logic|xor_result[8]~6_combout\);

-- Location: LCCOMB_X45_Y68_N0
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!\ShiftFN[0]~input_o\ & (\Logic|xor_result[8]~6_combout\ $ (\AddnSub~input_o\ $ (\Add|C[8]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[8]~6_combout\,
	datab => \AddnSub~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|C[8]~7_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X45_Y67_N24
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (!\B[4]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X49_Y69_N16
\Mux28~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~16_combout\ = (\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux28~16_combout\);

-- Location: LCCOMB_X45_Y68_N10
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (!\Mux28~16_combout\ & ((\Mux23~0_combout\) # ((\Shift|ShiftLeft0~31_combout\ & \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~31_combout\,
	datab => \Mux23~0_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux28~16_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X45_Y67_N10
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\B[4]~input_o\ & ((\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X45_Y67_N28
\Shift|ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~61_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~3_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~3_combout\,
	datab => \Shift|ShiftRight0~6_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~61_combout\);

-- Location: LCCOMB_X45_Y67_N30
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux21~0_combout\ & (((\B[4]~input_o\)))) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & (\Shift|ShiftRight0~61_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Shift|ShiftRight0~61_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X48_Y64_N6
\Shift|ShiftRight1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~49_combout\ = (\Shift|ShiftRight0~61_combout\) # ((\B[3]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~61_combout\,
	datab => \B[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~49_combout\);

-- Location: LCCOMB_X45_Y68_N28
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux21~0_combout\ & ((\Mux23~3_combout\ & ((\Shift|ShiftRight1~49_combout\))) # (!\Mux23~3_combout\ & (\Shift|ShiftRight0~14_combout\)))) # (!\Mux21~0_combout\ & (((\Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Shift|ShiftRight0~14_combout\,
	datac => \Mux23~3_combout\,
	datad => \Shift|ShiftRight1~49_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X45_Y68_N6
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\Mux28~6_combout\ & (((\Mux28~5_combout\ & \Logic|xor_result[8]~6_combout\)))) # (!\Mux28~6_combout\ & ((\Mux23~4_combout\) # ((!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \Mux23~4_combout\,
	datac => \Mux28~5_combout\,
	datad => \Logic|xor_result[8]~6_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X45_Y68_N8
\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\A[8]~input_o\ & ((\Mux23~5_combout\) # ((\Mux28~7_combout\ & \B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Mux23~5_combout\ & ((\B[8]~input_o\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Mux28~7_combout\,
	datac => \B[8]~input_o\,
	datad => \Mux23~5_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X45_Y68_N2
\Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux23~2_combout\) # ((\Mux23~6_combout\ & \Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \Mux23~6_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux28~16_combout\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X41_Y69_N24
\Logic|xor_result[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[9]~7_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Logic|xor_result[9]~7_combout\);

-- Location: LCCOMB_X46_Y64_N6
\Shift|ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~62_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftRight0~34_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~52_combout\,
	datac => \Shift|ShiftRight0~34_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~62_combout\);

-- Location: LCCOMB_X48_Y64_N24
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux21~0_combout\ & (\B[4]~input_o\)) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & ((\Shift|ShiftRight0~62_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~26_combout\,
	datad => \Shift|ShiftRight0~62_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X48_Y63_N30
\Shift|ShiftRight1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~50_combout\ = (\B[3]~input_o\ & (((\A[31]~input_o\)))) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~34_combout\) # ((\Shift|ShiftRight1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~34_combout\,
	datab => \Shift|ShiftRight1~15_combout\,
	datac => \B[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~50_combout\);

-- Location: LCCOMB_X48_Y64_N18
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux21~0_combout\ & ((\Mux22~2_combout\ & (\Shift|ShiftRight1~50_combout\)) # (!\Mux22~2_combout\ & ((\Shift|ShiftRight0~33_combout\))))) # (!\Mux21~0_combout\ & (\Mux22~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux22~2_combout\,
	datac => \Shift|ShiftRight1~50_combout\,
	datad => \Shift|ShiftRight0~33_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X41_Y69_N30
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\Logic|xor_result[9]~7_combout\)) # (!\Mux28~6_combout\ & ((\Mux22~3_combout\))))) # (!\Mux28~5_combout\ & (((!\Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Logic|xor_result[9]~7_combout\,
	datac => \Mux28~6_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X41_Y69_N8
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\A[9]~input_o\ & ((\Mux22~4_combout\) # ((\B[9]~input_o\ & \Mux28~7_combout\)))) # (!\A[9]~input_o\ & (\Mux22~4_combout\ & ((\B[9]~input_o\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \Mux22~4_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X41_Y69_N10
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (!\ShiftFN[0]~input_o\ & (\Logic|xor_result[9]~7_combout\ $ (\AddnSub~input_o\ $ (\Add|C[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Logic|xor_result[9]~7_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[9]~8_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X46_Y65_N2
\Shift|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~32_combout\ = (\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Shift|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X46_Y65_N20
\Shift|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~33_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~28_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~32_combout\,
	datac => \Shift|ShiftLeft0~28_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X48_Y69_N6
\Shift|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~34_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~19_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~33_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~19_combout\,
	combout => \Shift|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X48_Y69_N8
\Shift|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~35_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~6_combout\ & (\Shift|ShiftLeft0~7_combout\))) # (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~6_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~7_combout\,
	datad => \Shift|ShiftLeft0~34_combout\,
	combout => \Shift|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X41_Y69_N12
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (!\Mux28~16_combout\ & ((\Mux22~0_combout\) # ((\Shift|ShiftLeft0~35_combout\ & \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Shift|ShiftLeft0~35_combout\,
	datac => \Mux28~16_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X41_Y69_N2
\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux22~1_combout\) # ((\Mux22~5_combout\ & \Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux22~5_combout\,
	datac => \Mux28~16_combout\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X41_Y69_N4
\Logic|xor_result[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[10]~8_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	combout => \Logic|xor_result[10]~8_combout\);

-- Location: LCCOMB_X41_Y69_N6
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!\ShiftFN[0]~input_o\ & (\Logic|xor_result[10]~8_combout\ $ (\AddnSub~input_o\ $ (\Add|C[10]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Logic|xor_result[10]~8_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[10]~9_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X46_Y65_N6
\Shift|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~36_combout\ = (\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[8]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X46_Y65_N24
\Shift|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~37_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~32_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~36_combout\,
	datab => \Shift|ShiftLeft0~32_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X47_Y67_N26
\Shift|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~38_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~23_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~37_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~23_combout\,
	combout => \Shift|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X47_Y67_N12
\Shift|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~39_combout\ = (\B[3]~input_o\ & (((\Shift|ShiftLeft0~10_combout\ & !\B[2]~input_o\)))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~38_combout\,
	datab => \Shift|ShiftLeft0~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X41_Y69_N16
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (!\Mux28~16_combout\ & ((\Mux21~1_combout\) # ((\Shift|ShiftLeft0~39_combout\ & \Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \Shift|ShiftLeft0~39_combout\,
	datac => \Mux28~16_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X48_Y67_N8
\Shift|ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~63_combout\ = (\Shift|ShiftRight0~40_combout\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Shift|ShiftRight0~40_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~63_combout\);

-- Location: LCCOMB_X49_Y67_N2
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\B[4]~input_o\ & (((\Mux21~0_combout\) # (\Shift|ShiftRight0~63_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~38_combout\ & (!\Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~38_combout\,
	datac => \Mux21~0_combout\,
	datad => \Shift|ShiftRight0~63_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X49_Y67_N28
\Shift|ShiftRight1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~51_combout\ = (\B[3]~input_o\ & ((\A[31]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~31_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~51_combout\);

-- Location: LCCOMB_X49_Y67_N30
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux21~3_combout\ & (((\Shift|ShiftRight1~51_combout\) # (!\Mux21~0_combout\)))) # (!\Mux21~3_combout\ & (\Shift|ShiftRight0~41_combout\ & (\Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~41_combout\,
	datab => \Mux21~3_combout\,
	datac => \Mux21~0_combout\,
	datad => \Shift|ShiftRight1~51_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X41_Y69_N26
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux28~5_combout\ & ((\Mux28~6_combout\ & (\Logic|xor_result[10]~8_combout\)) # (!\Mux28~6_combout\ & ((\Mux21~4_combout\))))) # (!\Mux28~5_combout\ & (!\Mux28~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Mux28~6_combout\,
	datac => \Logic|xor_result[10]~8_combout\,
	datad => \Mux21~4_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X41_Y69_N20
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\B[10]~input_o\ & ((\Mux21~5_combout\) # ((\Mux28~7_combout\ & \A[10]~input_o\)))) # (!\B[10]~input_o\ & (\Mux21~5_combout\ & ((\A[10]~input_o\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Mux28~7_combout\,
	datac => \Mux21~5_combout\,
	datad => \A[10]~input_o\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X41_Y69_N14
\Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux21~2_combout\) # ((\Mux28~16_combout\ & \Mux21~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux21~2_combout\,
	datac => \Mux28~16_combout\,
	datad => \Mux21~6_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X48_Y65_N6
\Shift|ShiftRight1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~56_combout\ = (\B[2]~input_o\ & (((\A[31]~input_o\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\A[31]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~34_combout\,
	datab => \A[31]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~56_combout\);

-- Location: LCCOMB_X48_Y65_N30
\Shift|ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~64_combout\ = (\Shift|ShiftRight0~43_combout\ & !\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~43_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~64_combout\);

-- Location: LCCOMB_X48_Y65_N16
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux21~0_combout\ & (((\B[4]~input_o\)))) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & ((\Shift|ShiftRight0~64_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~46_combout\,
	datab => \Mux21~0_combout\,
	datac => \Shift|ShiftRight0~64_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X48_Y65_N10
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~2_combout\ & ((\Shift|ShiftRight1~56_combout\) # ((!\Mux21~0_combout\)))) # (!\Mux20~2_combout\ & (((\Mux21~0_combout\ & \Shift|ShiftRight0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~56_combout\,
	datab => \Mux20~2_combout\,
	datac => \Mux21~0_combout\,
	datad => \Shift|ShiftRight0~44_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X42_Y69_N0
\Logic|xor_result[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[11]~9_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \Logic|xor_result[11]~9_combout\);

-- Location: LCCOMB_X42_Y69_N22
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux28~6_combout\ & (((\Logic|xor_result[11]~9_combout\ & \Mux28~5_combout\)))) # (!\Mux28~6_combout\ & ((\Mux20~3_combout\) # ((!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Logic|xor_result[11]~9_combout\,
	datac => \Mux28~6_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X42_Y69_N8
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux20~4_combout\ & ((\A[11]~input_o\) # ((\B[11]~input_o\) # (!\Mux28~7_combout\)))) # (!\Mux20~4_combout\ & (\A[11]~input_o\ & (\Mux28~7_combout\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \A[11]~input_o\,
	datac => \Mux28~7_combout\,
	datad => \B[11]~input_o\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X42_Y69_N10
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!\ShiftFN[0]~input_o\ & (\AddnSub~input_o\ $ (\Logic|xor_result[11]~9_combout\ $ (\Add|C[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Logic|xor_result[11]~9_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|C[11]~10_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X46_Y65_N10
\Shift|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~40_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[11]~input_o\,
	combout => \Shift|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X46_Y65_N28
\Shift|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~41_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~36_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~36_combout\,
	datac => \Shift|ShiftLeft0~40_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X46_Y68_N28
\Shift|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~42_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~26_combout\,
	datac => \Shift|ShiftLeft0~41_combout\,
	combout => \Shift|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X46_Y68_N14
\Shift|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~43_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\)))) # (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~42_combout\,
	datac => \Shift|ShiftLeft0~12_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X42_Y69_N12
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (!\Mux28~16_combout\ & ((\Mux20~0_combout\) # ((\Mux23~1_combout\ & \Shift|ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \Mux23~1_combout\,
	datac => \Shift|ShiftLeft0~43_combout\,
	datad => \Mux28~16_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X42_Y69_N18
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux20~1_combout\) # ((\Mux28~16_combout\ & \Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~16_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux20~5_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X49_Y66_N6
\Add|S[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[12]~6_combout\ = \Add|C[12]~11_combout\ $ (\B[12]~input_o\ $ (\A[12]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[12]~11_combout\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[12]~6_combout\);

-- Location: LCCOMB_X48_Y66_N2
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((!\B[4]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X47_Y66_N12
\Shift|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~44_combout\ = (\Shift|ShiftLeft0~13_combout\) # ((\Shift|ShiftLeft0~16_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~16_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~13_combout\,
	combout => \Shift|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X47_Y65_N22
\Shift|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~45_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[12]~input_o\,
	combout => \Shift|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X46_Y65_N14
\Shift|ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~46_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~40_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~40_combout\,
	datab => \Shift|ShiftLeft0~45_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X47_Y66_N14
\Shift|ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~47_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~29_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~29_combout\,
	datad => \Shift|ShiftLeft0~46_combout\,
	combout => \Shift|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X48_Y66_N24
\Shift|ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~48_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~44_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~44_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~47_combout\,
	combout => \Shift|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X48_Y66_N12
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\FuncClass[0]~input_o\) # ((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X48_Y63_N0
\Shift|ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~65_combout\ = (!\Mux28~1_combout\ & ((\Shift|ShiftRight0~2_combout\) # ((\Shift|ShiftRight1~4_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~4_combout\,
	datab => \Mux28~1_combout\,
	datac => \Shift|ShiftRight0~2_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~65_combout\);

-- Location: LCCOMB_X46_Y66_N20
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftRight0~65_combout\) # (\Mux21~0_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~49_combout\ & ((!\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~49_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~65_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X46_Y66_N6
\Shift|ShiftRight1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~57_combout\ = (\Shift|ShiftRight0~65_combout\) # ((\A[31]~input_o\ & ((\B[2]~input_o\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~65_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~57_combout\);

-- Location: LCCOMB_X49_Y66_N0
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux19~1_combout\ & (((\Shift|ShiftRight1~57_combout\)) # (!\Mux21~0_combout\))) # (!\Mux19~1_combout\ & (\Mux21~0_combout\ & ((\Shift|ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux21~0_combout\,
	datac => \Shift|ShiftRight1~57_combout\,
	datad => \Shift|ShiftRight0~47_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X49_Y66_N20
\Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[12]~input_o\ & \B[12]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[12]~input_o\) # (\B[12]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X49_Y66_N14
\Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (\Mux19~7_combout\ & ((\B[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux19~7_combout\,
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X49_Y66_N10
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux19~3_combout\ & (((\Mux19~8_combout\ & \Mux28~16_combout\)))) # (!\Mux19~3_combout\ & ((\Mux19~2_combout\) # ((!\Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux19~8_combout\,
	datad => \Mux28~16_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X49_Y66_N12
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~0_combout\ & ((\Mux19~4_combout\ & (\Add|S[12]~6_combout\)) # (!\Mux19~4_combout\ & ((\Shift|ShiftLeft0~48_combout\))))) # (!\Mux19~0_combout\ & (((\Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[12]~6_combout\,
	datab => \Mux19~0_combout\,
	datac => \Shift|ShiftLeft0~48_combout\,
	datad => \Mux19~4_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X45_Y69_N4
\Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux19~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux19~5_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X47_Y65_N16
\Shift|ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~49_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[11]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X47_Y65_N2
\Shift|ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~50_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~45_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~45_combout\,
	datab => \Shift|ShiftLeft0~49_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X48_Y69_N2
\Shift|ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~51_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~33_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~33_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~50_combout\,
	combout => \Shift|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X48_Y69_N4
\Shift|ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~52_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~20_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~20_combout\,
	datab => \Shift|ShiftLeft0~51_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X50_Y67_N28
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[13]~input_o\ & \A[13]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[13]~input_o\) # (\A[13]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X50_Y67_N14
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Mux18~5_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X48_Y63_N2
\Shift|ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~66_combout\ = (!\Mux28~1_combout\ & ((\B[1]~input_o\ & ((\Shift|ShiftRight0~35_combout\))) # (!\B[1]~input_o\ & (\Shift|ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~14_combout\,
	datab => \Mux28~1_combout\,
	datac => \Shift|ShiftRight0~35_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~66_combout\);

-- Location: LCCOMB_X48_Y67_N18
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux21~0_combout\ & (((\B[4]~input_o\)))) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & (\Shift|ShiftRight0~66_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~54_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~66_combout\,
	datab => \Mux21~0_combout\,
	datac => \Shift|ShiftRight0~54_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X48_Y63_N20
\Shift|ShiftRight1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~52_combout\ = (\Shift|ShiftLeft0~6_combout\ & ((\B[3]~input_o\ & ((\A[31]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~14_combout\)))) # (!\Shift|ShiftLeft0~6_combout\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~14_combout\,
	datab => \Shift|ShiftLeft0~6_combout\,
	datac => \B[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~52_combout\);

-- Location: LCCOMB_X48_Y67_N4
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\Shift|ShiftRight1~52_combout\) # (!\Mux21~0_combout\)))) # (!\Mux18~0_combout\ & (\Shift|ShiftRight0~51_combout\ & (\Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Shift|ShiftRight0~51_combout\,
	datac => \Mux21~0_combout\,
	datad => \Shift|ShiftRight1~52_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X48_Y67_N30
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux28~16_combout\ & ((\Mux19~3_combout\ & (\Mux18~6_combout\)) # (!\Mux19~3_combout\ & ((\Mux18~1_combout\))))) # (!\Mux28~16_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~16_combout\,
	datab => \Mux18~6_combout\,
	datac => \Mux18~1_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X50_Y67_N8
\Add|S[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[13]~7_combout\ = \Add|C[13]~12_combout\ $ (\AddnSub~input_o\ $ (\B[13]~input_o\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[13]~12_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|S[13]~7_combout\);

-- Location: LCCOMB_X48_Y67_N24
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux19~0_combout\ & ((\Mux18~2_combout\ & ((\Add|S[13]~7_combout\))) # (!\Mux18~2_combout\ & (\Shift|ShiftLeft0~52_combout\)))) # (!\Mux19~0_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Shift|ShiftLeft0~52_combout\,
	datac => \Mux18~2_combout\,
	datad => \Add|S[13]~7_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X47_Y68_N14
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux18~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X47_Y65_N28
\Shift|ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~54_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X47_Y65_N30
\Shift|ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~55_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~49_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~49_combout\,
	datad => \Shift|ShiftLeft0~54_combout\,
	combout => \Shift|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X47_Y67_N0
\Shift|ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~56_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~37_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~37_combout\,
	datac => \Shift|ShiftLeft0~55_combout\,
	combout => \Shift|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X47_Y67_N30
\Shift|ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~53_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~10_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~23_combout\,
	datab => \Shift|ShiftLeft0~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X47_Y67_N2
\Shift|ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~57_combout\ = (\Shift|ShiftLeft0~53_combout\) # ((\Shift|ShiftLeft0~56_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~56_combout\,
	datac => \Shift|ShiftLeft0~53_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X50_Y67_N2
\Add|S[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[14]~8_combout\ = \B[14]~input_o\ $ (\A[14]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[14]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[14]~13_combout\,
	combout => \Add|S[14]~8_combout\);

-- Location: LCCOMB_X45_Y67_N0
\Shift|ShiftRight1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~53_combout\ = (\B[3]~input_o\ & (((\A[31]~input_o\)))) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~4_combout\ & ((\A[31]~input_o\))) # (!\Shift|ShiftLeft0~4_combout\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~4_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~53_combout\);

-- Location: LCCOMB_X49_Y67_N14
\Shift|ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~71_combout\ = (!\B[2]~input_o\ & (\Shift|ShiftRight1~4_combout\ & (!\B[1]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~4_combout\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~71_combout\);

-- Location: LCCOMB_X49_Y67_N8
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~71_combout\) # ((\Mux21~0_combout\)))) # (!\B[4]~input_o\ & (((!\Mux21~0_combout\ & \Shift|ShiftRight0~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~71_combout\,
	datac => \Mux21~0_combout\,
	datad => \Shift|ShiftRight0~57_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X48_Y67_N26
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux17~0_combout\ & (((\Shift|ShiftRight1~53_combout\) # (!\Mux21~0_combout\)))) # (!\Mux17~0_combout\ & (\Shift|ShiftRight0~55_combout\ & ((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~55_combout\,
	datab => \Shift|ShiftRight1~53_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X50_Y67_N0
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[14]~input_o\ & \A[14]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[14]~input_o\) # (\A[14]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[14]~input_o\,
	datad => \A[14]~input_o\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X50_Y67_N18
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~5_combout\ & ((\LogicFN[0]~input_o\) # ((\B[2]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux17~5_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X48_Y67_N12
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux19~3_combout\ & (((\Mux17~6_combout\ & \Mux28~16_combout\)))) # (!\Mux19~3_combout\ & ((\Mux17~1_combout\) # ((!\Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux19~3_combout\,
	datac => \Mux17~6_combout\,
	datad => \Mux28~16_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X48_Y67_N22
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux19~0_combout\ & ((\Mux17~2_combout\ & ((\Add|S[14]~8_combout\))) # (!\Mux17~2_combout\ & (\Shift|ShiftLeft0~57_combout\)))) # (!\Mux19~0_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Shift|ShiftLeft0~57_combout\,
	datac => \Add|S[14]~8_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X45_Y69_N14
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux17~3_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux17~3_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X50_Y66_N6
\Add|S[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[15]~9_combout\ = \A[15]~input_o\ $ (\Add|C[15]~14_combout\ $ (\AddnSub~input_o\ $ (\B[15]~input_o\)))

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
	combout => \Add|S[15]~9_combout\);

-- Location: LCCOMB_X47_Y65_N24
\Shift|ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~59_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X47_Y65_N26
\Shift|ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~60_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~54_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~54_combout\,
	datad => \Shift|ShiftLeft0~59_combout\,
	combout => \Shift|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X46_Y68_N10
\Shift|ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~61_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~41_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~60_combout\,
	datac => \Shift|ShiftLeft0~41_combout\,
	combout => \Shift|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X46_Y68_N8
\Shift|ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~58_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~12_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~26_combout\,
	datac => \Shift|ShiftLeft0~12_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X46_Y68_N12
\Shift|ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~62_combout\ = (\Shift|ShiftLeft0~58_combout\) # ((\Shift|ShiftLeft0~61_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~61_combout\,
	datac => \Shift|ShiftLeft0~58_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X50_Y66_N2
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\A[15]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[15]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[15]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[15]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[15]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X49_Y66_N18
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~5_combout\ & ((\B[3]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~5_combout\,
	datab => \B[3]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X48_Y64_N4
\Shift|ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~67_combout\ = (!\B[3]~input_o\ & (!\Shift|ShiftLeft0~4_combout\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~4_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight0~67_combout\);

-- Location: LCCOMB_X48_Y64_N22
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux21~0_combout\ & (\B[4]~input_o\)) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & ((\Shift|ShiftRight0~67_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~60_combout\,
	datad => \Shift|ShiftRight0~67_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X50_Y66_N16
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\A[31]~input_o\)) # (!\Mux21~0_combout\))) # (!\Mux16~0_combout\ & (\Mux21~0_combout\ & (\Shift|ShiftRight0~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux21~0_combout\,
	datac => \Shift|ShiftRight0~58_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X50_Y66_N18
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux19~3_combout\ & (\Mux16~6_combout\ & (\Mux28~16_combout\))) # (!\Mux19~3_combout\ & (((\Mux16~1_combout\) # (!\Mux28~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux16~6_combout\,
	datac => \Mux28~16_combout\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X50_Y66_N20
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux19~0_combout\ & ((\Mux16~2_combout\ & (\Add|S[15]~9_combout\)) # (!\Mux16~2_combout\ & ((\Shift|ShiftLeft0~62_combout\))))) # (!\Mux19~0_combout\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[15]~9_combout\,
	datab => \Mux19~0_combout\,
	datac => \Shift|ShiftLeft0~62_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X47_Y67_N20
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux16~3_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux16~3_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X45_Y67_N26
\Shift|ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~68_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight0~7_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~7_combout\,
	datac => \Shift|ShiftRight0~14_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~68_combout\);

-- Location: LCCOMB_X47_Y68_N8
\Shift|ShiftRight1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~54_combout\ = (\Shift|ShiftRight0~68_combout\) # ((\A[31]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Shift|ShiftRight0~68_combout\,
	datac => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~54_combout\);

-- Location: LCCOMB_X47_Y68_N20
\Add|S[16]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[16]~10_combout\ = \AddnSub~input_o\ $ (\Add|C[16]~15_combout\ $ (\B[16]~input_o\ $ (\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[16]~15_combout\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Add|S[16]~10_combout\);

-- Location: LCCOMB_X47_Y68_N30
\Y_ShiftOrArith[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[16]~12_combout\ = (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shift|ShiftRight0~68_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Add|S[16]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shift|ShiftRight0~68_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Add|S[16]~10_combout\,
	combout => \Y_ShiftOrArith[16]~12_combout\);

-- Location: LCCOMB_X47_Y65_N20
\Shift|ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~63_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X47_Y65_N6
\Shift|ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~64_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~59_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~59_combout\,
	datad => \Shift|ShiftLeft0~63_combout\,
	combout => \Shift|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X47_Y66_N8
\Shift|ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~65_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~46_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~46_combout\,
	datab => \Shift|ShiftLeft0~64_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X47_Y68_N16
\Shift|ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~66_combout\ = (\B[4]~input_o\ & (!\Shift|ShiftLeft0~4_combout\ & ((\A[0]~input_o\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~4_combout\,
	datab => \Shift|ShiftLeft0~65_combout\,
	datac => \B[4]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X47_Y68_N18
\Shift|ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~67_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~30_combout\ & (!\B[4]~input_o\))) # (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~30_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~66_combout\,
	combout => \Shift|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X47_Y68_N2
\Y_ShiftOrArith[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[16]~13_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[16]~12_combout\ & (\Shift|ShiftRight1~54_combout\)) # (!\Y_ShiftOrArith[16]~12_combout\ & ((\Shift|ShiftLeft0~67_combout\))))) # (!\ShiftFN[0]~input_o\ & 
-- (((\Y_ShiftOrArith[16]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shift|ShiftRight1~54_combout\,
	datac => \Y_ShiftOrArith[16]~12_combout\,
	datad => \Shift|ShiftLeft0~67_combout\,
	combout => \Y_ShiftOrArith[16]~13_combout\);

-- Location: LCCOMB_X47_Y68_N26
\Logic|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[16]~input_o\) # (\A[16]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[16]~input_o\ $ (\A[16]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: LCCOMB_X47_Y68_N4
\Logic|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux15~1_combout\ = (\Logic|Mux15~0_combout\ & ((\LogicFN[1]~input_o\) # ((\B[4]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Logic|Mux15~0_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux15~1_combout\);

-- Location: LCCOMB_X47_Y68_N28
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux15~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[16]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_ShiftOrArith[16]~13_combout\,
	datac => \Logic|Mux15~1_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X48_Y66_N0
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = ((!\ShiftFN[0]~input_o\ & !\B[4]~input_o\)) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X48_Y66_N26
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\ShiftFN[1]~input_o\ & ((\B[4]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X48_Y69_N30
\Shift|ShiftLeft0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~112_combout\ = (\Shift|ShiftLeft0~7_combout\ & (!\B[3]~input_o\ & (!\B[1]~input_o\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~7_combout\,
	datab => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X49_Y69_N26
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\ShiftFN[0]~input_o\ & ((\B[4]~input_o\) # (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X49_Y65_N4
\Shift|ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~68_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	combout => \Shift|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X48_Y65_N4
\Shift|ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~69_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~63_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~68_combout\,
	datab => \Shift|ShiftLeft0~63_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X48_Y69_N14
\Shift|ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~70_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~50_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~69_combout\,
	datad => \Shift|ShiftLeft0~50_combout\,
	combout => \Shift|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X47_Y70_N2
\Add|S[17]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[17]~11_combout\ = \Add|C[17]~16_combout\ $ (\AddnSub~input_o\ $ (\B[17]~input_o\ $ (\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[17]~16_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[17]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Add|S[17]~11_combout\);

-- Location: LCCOMB_X48_Y69_N24
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux14~1_combout\ & (!\Mux23~1_combout\)) # (!\Mux14~1_combout\ & ((\Mux23~1_combout\ & (\Shift|ShiftLeft0~70_combout\)) # (!\Mux23~1_combout\ & ((\Add|S[17]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux23~1_combout\,
	datac => \Shift|ShiftLeft0~70_combout\,
	datad => \Add|S[17]~11_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X48_Y69_N26
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & ((\Shift|ShiftLeft0~112_combout\) # ((!\Mux14~1_combout\)))) # (!\Mux14~2_combout\ & (((\Mux14~1_combout\ & \Shift|ShiftLeft0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~112_combout\,
	datab => \Mux14~2_combout\,
	datac => \Mux14~1_combout\,
	datad => \Shift|ShiftLeft0~34_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X48_Y66_N20
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux14~4_combout\ & ((\Mux14~5_combout\ & (\Shift|ShiftRight0~37_combout\)) # (!\Mux14~5_combout\ & ((\Mux14~3_combout\))))) # (!\Mux14~4_combout\ & (((!\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~37_combout\,
	datab => \Mux14~4_combout\,
	datac => \Mux14~5_combout\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X48_Y66_N30
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X48_Y66_N22
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux14~6_combout\ & (((\Shift|ShiftRight1~16_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~6_combout\ & (\A[31]~input_o\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux14~6_combout\,
	datac => \Mux14~0_combout\,
	datad => \Shift|ShiftRight1~16_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X47_Y70_N12
\Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[17]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[17]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[17]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[17]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X47_Y70_N6
\Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~10_combout\ = (\Mux14~9_combout\ & ((\LogicFN[0]~input_o\) # ((\B[5]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~9_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux14~10_combout\);

-- Location: LCCOMB_X48_Y66_N16
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux14~10_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~7_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux14~10_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X47_Y70_N18
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[18]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[18]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[18]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[18]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X46_Y67_N30
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~5_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[6]~input_o\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X47_Y70_N28
\Add|S[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[18]~12_combout\ = \A[18]~input_o\ $ (\AddnSub~input_o\ $ (\B[18]~input_o\ $ (\Add|C[18]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[18]~input_o\,
	datad => \Add|C[18]~17_combout\,
	combout => \Add|S[18]~12_combout\);

-- Location: LCCOMB_X49_Y65_N14
\Shift|ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~71_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X49_Y65_N8
\Shift|ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~72_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~68_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~68_combout\,
	datac => \Shift|ShiftLeft0~71_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X47_Y67_N22
\Shift|ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~73_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~55_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~55_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~72_combout\,
	combout => \Shift|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X47_Y67_N8
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux23~1_combout\ & ((\Mux14~1_combout\ & (\Shift|ShiftLeft0~38_combout\)) # (!\Mux14~1_combout\ & ((\Shift|ShiftLeft0~73_combout\))))) # (!\Mux23~1_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~38_combout\,
	datab => \Mux23~1_combout\,
	datac => \Shift|ShiftLeft0~73_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X47_Y67_N14
\Shift|ShiftLeft0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~113_combout\ = (\Shift|ShiftLeft0~10_combout\ & (!\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~10_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X47_Y67_N10
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & (((\Shift|ShiftLeft0~113_combout\) # (\Mux23~1_combout\)))) # (!\Mux13~0_combout\ & (\Add|S[18]~12_combout\ & ((!\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[18]~12_combout\,
	datab => \Mux13~0_combout\,
	datac => \Shift|ShiftLeft0~113_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X48_Y66_N18
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux14~5_combout\ & (((\Shift|ShiftRight0~42_combout\ & \Mux14~4_combout\)))) # (!\Mux14~5_combout\ & ((\Mux13~1_combout\) # ((!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Mux13~1_combout\,
	datac => \Shift|ShiftRight0~42_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X48_Y66_N28
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux14~0_combout\ & ((\Mux13~2_combout\ & (\Shift|ShiftRight1~32_combout\)) # (!\Mux13~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux14~0_combout\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Shift|ShiftRight1~32_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X48_Y66_N6
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux13~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux13~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux13~6_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X46_Y68_N26
\Shift|ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~77_combout\ = (!\Mux28~1_combout\ & ((\Shift|ShiftLeft0~11_combout\) # ((\Shift|ShiftLeft0~7_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~11_combout\,
	datab => \Mux28~1_combout\,
	datac => \Shift|ShiftLeft0~7_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X47_Y69_N18
\Add|S[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[19]~13_combout\ = \AddnSub~input_o\ $ (\A[19]~input_o\ $ (\B[19]~input_o\ $ (\Add|C[19]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Add|C[19]~18_combout\,
	combout => \Add|S[19]~13_combout\);

-- Location: LCCOMB_X49_Y65_N10
\Shift|ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~74_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X49_Y65_N20
\Shift|ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~75_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~71_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~74_combout\,
	datac => \Shift|ShiftLeft0~71_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X46_Y68_N30
\Shift|ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~76_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~60_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~60_combout\,
	datad => \Shift|ShiftLeft0~75_combout\,
	combout => \Shift|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X46_Y68_N24
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux23~1_combout\ & (((\Shift|ShiftLeft0~76_combout\ & !\Mux14~1_combout\)))) # (!\Mux23~1_combout\ & ((\Add|S[19]~13_combout\) # ((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Add|S[19]~13_combout\,
	datac => \Shift|ShiftLeft0~76_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X46_Y68_N4
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux14~1_combout\ & ((\Mux12~0_combout\ & ((\Shift|ShiftLeft0~77_combout\))) # (!\Mux12~0_combout\ & (\Shift|ShiftLeft0~42_combout\)))) # (!\Mux14~1_combout\ & (((\Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Shift|ShiftLeft0~42_combout\,
	datac => \Shift|ShiftLeft0~77_combout\,
	datad => \Mux12~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X48_Y65_N14
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux14~5_combout\ & (\Shift|ShiftRight0~45_combout\ & ((\Mux14~4_combout\)))) # (!\Mux14~5_combout\ & (((\Mux12~1_combout\) # (!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Shift|ShiftRight0~45_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X48_Y65_N0
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux14~0_combout\ & ((\Mux12~2_combout\ & ((\Shift|ShiftRight1~41_combout\))) # (!\Mux12~2_combout\ & (\A[31]~input_o\)))) # (!\Mux14~0_combout\ & (\Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux12~2_combout\,
	datac => \A[31]~input_o\,
	datad => \Shift|ShiftRight1~41_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X47_Y69_N20
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[19]~input_o\ & ((\A[19]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) # (!\A[19]~input_o\ & (!\LogicFN[1]~input_o\ & 
-- !\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X47_Y69_N30
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux12~5_combout\ & ((\B[7]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X47_Y69_N28
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux12~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~3_combout\,
	datab => \Mux12~6_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X47_Y69_N24
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[20]~input_o\ & \B[20]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[20]~input_o\) # (\B[20]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[20]~input_o\ $ (\B[20]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X47_Y69_N10
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~5_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[8]~input_o\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X49_Y65_N22
\Shift|ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~78_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[18]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X49_Y65_N24
\Shift|ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~79_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~74_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~74_combout\,
	datac => \Shift|ShiftLeft0~78_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X47_Y66_N18
\Shift|ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~80_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~64_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~64_combout\,
	datac => \Shift|ShiftLeft0~79_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X47_Y66_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux23~1_combout\ & ((\Mux14~1_combout\ & ((\Shift|ShiftLeft0~47_combout\))) # (!\Mux14~1_combout\ & (\Shift|ShiftLeft0~80_combout\)))) # (!\Mux23~1_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Shift|ShiftLeft0~80_combout\,
	datac => \Shift|ShiftLeft0~47_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X47_Y69_N6
\Add|S[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[20]~14_combout\ = \AddnSub~input_o\ $ (\Add|C[20]~19_combout\ $ (\A[20]~input_o\ $ (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[20]~19_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Add|S[20]~14_combout\);

-- Location: LCCOMB_X47_Y66_N22
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux23~1_combout\ & (\Mux11~0_combout\)) # (!\Mux23~1_combout\ & ((\Mux11~0_combout\ & (\Shift|ShiftLeft0~17_combout\)) # (!\Mux11~0_combout\ & ((\Add|S[20]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux11~0_combout\,
	datac => \Shift|ShiftLeft0~17_combout\,
	datad => \Add|S[20]~14_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X46_Y66_N14
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux14~5_combout\ & (((\Shift|ShiftRight0~48_combout\ & \Mux14~4_combout\)))) # (!\Mux14~5_combout\ & ((\Mux11~1_combout\) # ((!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Mux11~1_combout\,
	datac => \Shift|ShiftRight0~48_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X46_Y66_N24
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux14~0_combout\ & ((\Mux11~2_combout\ & (\Shift|ShiftRight1~43_combout\)) # (!\Mux11~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux14~0_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Shift|ShiftRight1~43_combout\,
	datac => \Mux11~2_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X47_Y69_N16
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux11~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux11~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \Mux11~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X47_Y69_N2
\Add|S[21]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[21]~15_combout\ = \Add|C[21]~20_combout\ $ (\A[21]~input_o\ $ (\AddnSub~input_o\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[21]~20_combout\,
	datab => \A[21]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|S[21]~15_combout\);

-- Location: LCCOMB_X49_Y65_N2
\Shift|ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~81_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X49_Y65_N28
\Shift|ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~82_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~78_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~81_combout\,
	datac => \Shift|ShiftLeft0~78_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X48_Y69_N28
\Shift|ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~83_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~69_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~69_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~82_combout\,
	combout => \Shift|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X48_Y69_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux23~1_combout\ & (((!\Mux14~1_combout\ & \Shift|ShiftLeft0~83_combout\)))) # (!\Mux23~1_combout\ & ((\Add|S[21]~15_combout\) # ((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[21]~15_combout\,
	datab => \Mux23~1_combout\,
	datac => \Mux14~1_combout\,
	datad => \Shift|ShiftLeft0~83_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X48_Y69_N0
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & (((\Shift|ShiftLeft0~21_combout\) # (!\Mux14~1_combout\)))) # (!\Mux10~0_combout\ & (\Shift|ShiftLeft0~51_combout\ & (\Mux14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Shift|ShiftLeft0~51_combout\,
	datac => \Mux14~1_combout\,
	datad => \Shift|ShiftLeft0~21_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X48_Y64_N16
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux14~5_combout\ & (((\Shift|ShiftRight0~53_combout\ & \Mux14~4_combout\)))) # (!\Mux14~5_combout\ & ((\Mux10~1_combout\) # ((!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux14~5_combout\,
	datac => \Shift|ShiftRight0~53_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X48_Y64_N26
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux14~0_combout\ & ((\Mux10~2_combout\ & (\Shift|ShiftRight1~45_combout\)) # (!\Mux10~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux14~0_combout\ & (\Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux10~2_combout\,
	datac => \Shift|ShiftRight1~45_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X47_Y69_N12
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\B[21]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[21]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[21]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \A[21]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[21]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[21]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X47_Y69_N14
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~5_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X45_Y69_N24
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux10~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux10~3_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux10~6_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X42_Y69_N20
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[22]~input_o\ & ((\A[22]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[22]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X42_Y69_N14
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~5_combout\ & ((\LogicFN[0]~input_o\) # ((\B[10]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Mux9~5_combout\,
	datac => \B[10]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X42_Y69_N4
\Add|S[22]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[22]~16_combout\ = \B[22]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[22]~21_combout\ $ (\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[22]~21_combout\,
	datad => \A[22]~input_o\,
	combout => \Add|S[22]~16_combout\);

-- Location: LCCOMB_X49_Y65_N6
\Shift|ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~84_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[22]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Shift|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X47_Y67_N4
\Shift|ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~85_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~81_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~84_combout\,
	datac => \Shift|ShiftLeft0~81_combout\,
	combout => \Shift|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X47_Y67_N6
\Shift|ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~86_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~72_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~85_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~72_combout\,
	combout => \Shift|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X47_Y67_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux14~1_combout\ & (((\Shift|ShiftLeft0~56_combout\) # (!\Mux23~1_combout\)))) # (!\Mux14~1_combout\ & (\Shift|ShiftLeft0~86_combout\ & ((\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~86_combout\,
	datab => \Shift|ShiftLeft0~56_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux23~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X46_Y67_N8
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux23~1_combout\ & (((\Mux9~0_combout\)))) # (!\Mux23~1_combout\ & ((\Mux9~0_combout\ & ((\Shift|ShiftLeft0~24_combout\))) # (!\Mux9~0_combout\ & (\Add|S[22]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Add|S[22]~16_combout\,
	datac => \Shift|ShiftLeft0~24_combout\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X46_Y67_N10
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux14~5_combout\ & (\Shift|ShiftRight0~56_combout\ & ((\Mux14~4_combout\)))) # (!\Mux14~5_combout\ & (((\Mux9~1_combout\) # (!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~56_combout\,
	datab => \Mux14~5_combout\,
	datac => \Mux9~1_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X46_Y67_N12
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & ((\Shift|ShiftRight1~47_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux9~2_combout\ & (((\A[31]~input_o\ & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Shift|ShiftRight1~47_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux14~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X45_Y69_N2
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux9~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux9~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux9~6_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X49_Y68_N12
\Shift|ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~87_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Shift|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X49_Y68_N14
\Shift|ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~88_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~84_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~87_combout\,
	datab => \Shift|ShiftLeft0~84_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X46_Y68_N6
\Shift|ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~89_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~75_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~75_combout\,
	datad => \Shift|ShiftLeft0~88_combout\,
	combout => \Shift|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X42_Y69_N30
\Add|S[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[23]~17_combout\ = \A[23]~input_o\ $ (\AddnSub~input_o\ $ (\B[23]~input_o\ $ (\Add|C[23]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[23]~input_o\,
	datad => \Add|C[23]~22_combout\,
	combout => \Add|S[23]~17_combout\);

-- Location: LCCOMB_X46_Y68_N16
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux23~1_combout\ & (\Shift|ShiftLeft0~89_combout\ & ((!\Mux14~1_combout\)))) # (!\Mux23~1_combout\ & (((\Add|S[23]~17_combout\) # (\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~89_combout\,
	datab => \Add|S[23]~17_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X46_Y68_N2
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\Shift|ShiftLeft0~27_combout\) # (!\Mux14~1_combout\)))) # (!\Mux8~0_combout\ & (\Shift|ShiftLeft0~61_combout\ & ((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~61_combout\,
	datab => \Shift|ShiftLeft0~27_combout\,
	datac => \Mux8~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X48_Y64_N20
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux14~5_combout\ & (\Shift|ShiftRight0~59_combout\ & ((\Mux14~4_combout\)))) # (!\Mux14~5_combout\ & (((\Mux8~1_combout\) # (!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~59_combout\,
	datab => \Mux14~5_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X48_Y64_N14
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux14~0_combout\ & ((\Mux8~2_combout\ & (\Shift|ShiftRight1~48_combout\)) # (!\Mux8~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux14~0_combout\ & (\Mux8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux8~2_combout\,
	datac => \Shift|ShiftRight1~48_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X42_Y69_N24
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[23]~input_o\ & ((\B[23]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[23]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X42_Y69_N2
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\Mux8~5_combout\ & ((\B[11]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Mux8~5_combout\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X49_Y69_N12
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux8~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux8~3_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux8~6_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X49_Y66_N22
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\B[24]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[24]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[24]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[24]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[24]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X49_Y66_N16
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux7~7_combout\,
	datad => \B[12]~input_o\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X49_Y66_N30
\Add|S[24]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[24]~18_combout\ = \AddnSub~input_o\ $ (\A[24]~input_o\ $ (\Add|C[24]~23_combout\ $ (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[24]~input_o\,
	datac => \Add|C[24]~23_combout\,
	datad => \B[24]~input_o\,
	combout => \Add|S[24]~18_combout\);

-- Location: LCCOMB_X48_Y64_N0
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux14~5_combout\ & (\Mux14~4_combout\ & (\Shift|ShiftRight0~61_combout\))) # (!\Mux14~5_combout\ & (((\Add|S[24]~18_combout\)) # (!\Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Mux14~4_combout\,
	datac => \Shift|ShiftRight0~61_combout\,
	datad => \Add|S[24]~18_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X48_Y64_N10
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & ((\Shift|ShiftRight1~49_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux7~0_combout\ & (((\Mux14~0_combout\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~49_combout\,
	datab => \Mux7~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X49_Y68_N0
\Shift|ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~90_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X49_Y68_N2
\Shift|ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~91_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~87_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~87_combout\,
	datab => \Shift|ShiftLeft0~90_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X48_Y67_N0
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X47_Y68_N6
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux26~1_combout\ & (((\Shift|ShiftLeft0~65_combout\) # (\Mux7~2_combout\)))) # (!\Mux26~1_combout\ & (\Shift|ShiftLeft0~91_combout\ & ((!\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~91_combout\,
	datab => \Mux26~1_combout\,
	datac => \Shift|ShiftLeft0~65_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X47_Y68_N0
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~3_combout\ & (((\Shift|ShiftLeft0~31_combout\)) # (!\Mux7~2_combout\))) # (!\Mux7~3_combout\ & (\Mux7~2_combout\ & ((\Shift|ShiftLeft0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux7~2_combout\,
	datac => \Shift|ShiftLeft0~31_combout\,
	datad => \Shift|ShiftLeft0~79_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X49_Y69_N6
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Mux7~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux7~4_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux7~4_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X49_Y69_N24
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux7~8_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux7~8_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux7~5_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X50_Y67_N12
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[25]~input_o\ & \B[25]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[25]~input_o\) # (\B[25]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X50_Y67_N6
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[13]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[13]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux6~6_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X50_Y67_N4
\Add|S[25]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[25]~19_combout\ = \A[25]~input_o\ $ (\Add|C[25]~24_combout\ $ (\AddnSub~input_o\ $ (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \Add|C[25]~24_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add|S[25]~19_combout\);

-- Location: LCCOMB_X48_Y64_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux14~5_combout\ & (\Shift|ShiftRight0~62_combout\ & ((\Mux14~4_combout\)))) # (!\Mux14~5_combout\ & (((\Add|S[25]~19_combout\) # (!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~62_combout\,
	datab => \Mux14~5_combout\,
	datac => \Add|S[25]~19_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X48_Y64_N30
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux14~0_combout\ & ((\Mux6~0_combout\ & (\Shift|ShiftRight1~50_combout\)) # (!\Mux6~0_combout\ & ((\A[31]~input_o\))))) # (!\Mux14~0_combout\ & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \Shift|ShiftRight1~50_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X49_Y68_N20
\Shift|ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~92_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[23]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X49_Y68_N6
\Shift|ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~93_combout\ = (\Shift|ShiftLeft0~92_combout\) # ((\B[0]~input_o\ & \Shift|ShiftLeft0~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~92_combout\,
	datad => \Shift|ShiftLeft0~90_combout\,
	combout => \Shift|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X48_Y69_N18
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux26~1_combout\ & ((\Mux7~2_combout\) # ((\Shift|ShiftLeft0~70_combout\)))) # (!\Mux26~1_combout\ & (!\Mux7~2_combout\ & ((\Shift|ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux7~2_combout\,
	datac => \Shift|ShiftLeft0~70_combout\,
	datad => \Shift|ShiftLeft0~93_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X48_Y69_N20
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\Shift|ShiftLeft0~35_combout\)) # (!\Mux7~2_combout\))) # (!\Mux6~2_combout\ & (\Mux7~2_combout\ & ((\Shift|ShiftLeft0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux7~2_combout\,
	datac => \Shift|ShiftLeft0~35_combout\,
	datad => \Shift|ShiftLeft0~82_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X49_Y69_N18
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Mux6~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux6~3_combout\))))) # (!\ShiftFN[0]~input_o\ & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X49_Y69_N28
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux6~7_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux6~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux6~7_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X50_Y67_N22
\Add|S[26]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[26]~20_combout\ = \A[26]~input_o\ $ (\AddnSub~input_o\ $ (\B[26]~input_o\ $ (\Add|C[26]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	datad => \Add|C[26]~25_combout\,
	combout => \Add|S[26]~20_combout\);

-- Location: LCCOMB_X49_Y67_N18
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux14~5_combout\ & (((\Mux14~4_combout\ & \Shift|ShiftRight0~63_combout\)))) # (!\Mux14~5_combout\ & ((\Add|S[26]~20_combout\) # ((!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Add|S[26]~20_combout\,
	datac => \Mux14~4_combout\,
	datad => \Shift|ShiftRight0~63_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X49_Y67_N12
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\Shift|ShiftRight1~51_combout\) # (!\Mux14~0_combout\)))) # (!\Mux5~0_combout\ & (\A[31]~input_o\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Mux5~0_combout\,
	datac => \Mux14~0_combout\,
	datad => \Shift|ShiftRight1~51_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X49_Y68_N26
\Shift|ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~95_combout\ = (\B[0]~input_o\ & (\A[25]~input_o\)) # (!\B[0]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[25]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X49_Y68_N24
\Shift|ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~94_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[23]~input_o\)) # (!\B[0]~input_o\ & ((\A[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[23]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X49_Y68_N4
\Shift|ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~96_combout\ = (\Shift|ShiftLeft0~94_combout\) # ((\Shift|ShiftLeft0~95_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~95_combout\,
	datab => \Shift|ShiftLeft0~94_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X47_Y67_N18
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux7~2_combout\ & (((\Mux26~1_combout\)))) # (!\Mux7~2_combout\ & ((\Mux26~1_combout\ & (\Shift|ShiftLeft0~73_combout\)) # (!\Mux26~1_combout\ & ((\Shift|ShiftLeft0~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~73_combout\,
	datab => \Mux7~2_combout\,
	datac => \Shift|ShiftLeft0~96_combout\,
	datad => \Mux26~1_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X47_Y67_N28
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & ((\Shift|ShiftLeft0~39_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux5~2_combout\ & (((\Shift|ShiftLeft0~85_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~39_combout\,
	datab => \Mux5~2_combout\,
	datac => \Shift|ShiftLeft0~85_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X49_Y69_N30
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\ShiftFN[1]~input_o\ & (\Mux5~1_combout\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Mux5~3_combout\))) # (!\ShiftFN[0]~input_o\ & (\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~1_combout\,
	datab => \Mux5~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X50_Y67_N24
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[26]~input_o\ & \A[26]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[26]~input_o\) # (\A[26]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X50_Y67_N10
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~6_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[14]~input_o\,
	datad => \Mux5~6_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X49_Y69_N0
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux5~7_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X48_Y68_N16
\Shift|ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~98_combout\ = (\B[0]~input_o\ & ((\A[26]~input_o\))) # (!\B[0]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[27]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X49_Y68_N22
\Shift|ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~97_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[24]~input_o\))) # (!\B[0]~input_o\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X48_Y68_N26
\Shift|ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~99_combout\ = (\Shift|ShiftLeft0~97_combout\) # ((\Shift|ShiftLeft0~98_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~98_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~97_combout\,
	combout => \Shift|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X46_Y68_N20
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux26~1_combout\ & ((\Shift|ShiftLeft0~76_combout\) # ((\Mux7~2_combout\)))) # (!\Mux26~1_combout\ & (((!\Mux7~2_combout\ & \Shift|ShiftLeft0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~76_combout\,
	datab => \Mux26~1_combout\,
	datac => \Mux7~2_combout\,
	datad => \Shift|ShiftLeft0~99_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X46_Y68_N22
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux7~2_combout\ & ((\Mux4~2_combout\ & (\Shift|ShiftLeft0~43_combout\)) # (!\Mux4~2_combout\ & ((\Shift|ShiftLeft0~88_combout\))))) # (!\Mux7~2_combout\ & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux4~2_combout\,
	datac => \Shift|ShiftLeft0~43_combout\,
	datad => \Shift|ShiftLeft0~88_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X50_Y66_N30
\Add|S[27]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[27]~21_combout\ = \A[27]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[27]~26_combout\ $ (\B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[27]~26_combout\,
	datad => \B[27]~input_o\,
	combout => \Add|S[27]~21_combout\);

-- Location: LCCOMB_X48_Y65_N26
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux14~5_combout\ & (\Shift|ShiftRight0~64_combout\ & ((\Mux14~4_combout\)))) # (!\Mux14~5_combout\ & (((\Add|S[27]~21_combout\) # (!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~64_combout\,
	datab => \Add|S[27]~21_combout\,
	datac => \Mux14~5_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X48_Y65_N20
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\Shift|ShiftRight1~56_combout\) # (!\Mux14~0_combout\)))) # (!\Mux4~0_combout\ & (\A[31]~input_o\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \A[31]~input_o\,
	datac => \Mux14~0_combout\,
	datad => \Shift|ShiftRight1~56_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X49_Y69_N2
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & ((\Mux4~1_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux4~3_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X50_Y66_N22
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\A[27]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[27]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[27]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[27]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[27]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X50_Y66_N8
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X49_Y69_N4
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux4~7_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux4~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X49_Y69_N14
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\FuncClass[0]~input_o\) # ((\B[4]~input_o\ & (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X50_Y66_N0
\Shift|ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~100_combout\ = (\B[0]~input_o\ & ((\A[27]~input_o\))) # (!\B[0]~input_o\ & (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[28]~input_o\,
	datac => \A[27]~input_o\,
	combout => \Shift|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X47_Y66_N24
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux28~2_combout\ & (((\Mux28~1_combout\)))) # (!\Mux28~2_combout\ & ((\Mux28~1_combout\ & (\Shift|ShiftLeft0~91_combout\)) # (!\Mux28~1_combout\ & ((\Shift|ShiftLeft0~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~91_combout\,
	datab => \Shift|ShiftLeft0~100_combout\,
	datac => \Mux28~2_combout\,
	datad => \Mux28~1_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X47_Y66_N26
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux28~2_combout\ & ((\Mux3~1_combout\ & (\Shift|ShiftLeft0~80_combout\)) # (!\Mux3~1_combout\ & ((\Shift|ShiftLeft0~95_combout\))))) # (!\Mux28~2_combout\ & (((\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Shift|ShiftLeft0~80_combout\,
	datac => \Shift|ShiftLeft0~95_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X50_Y66_N26
\Add|S[28]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[28]~22_combout\ = \Add|C[28]~27_combout\ $ (\AddnSub~input_o\ $ (\A[28]~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[28]~27_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Add|S[28]~22_combout\);

-- Location: LCCOMB_X46_Y66_N10
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux14~5_combout\ & (((\Shift|ShiftRight0~65_combout\ & \Mux14~4_combout\)))) # (!\Mux14~5_combout\ & ((\Add|S[28]~22_combout\) # ((!\Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~5_combout\,
	datab => \Add|S[28]~22_combout\,
	datac => \Shift|ShiftRight0~65_combout\,
	datad => \Mux14~4_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X46_Y66_N4
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux14~0_combout\ & ((\Mux3~3_combout\ & (\Shift|ShiftRight1~57_combout\)) # (!\Mux3~3_combout\ & ((\A[31]~input_o\))))) # (!\Mux14~0_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~57_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux3~3_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X49_Y66_N24
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux28~0_combout\ & ((\Mux3~2_combout\) # ((\Mux3~0_combout\)))) # (!\Mux28~0_combout\ & (((\Mux3~4_combout\ & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux28~0_combout\,
	datac => \Mux3~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X50_Y66_N4
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[28]~input_o\ & \B[28]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[28]~input_o\) # (\B[28]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[28]~input_o\ $ (\B[28]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X49_Y66_N28
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux3~8_combout\ & ((\LogicFN[0]~input_o\) # ((\B[16]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~8_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[16]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X49_Y66_N26
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~0_combout\ & ((\Mux3~5_combout\ & (\Shift|ShiftLeft0~48_combout\)) # (!\Mux3~5_combout\ & ((\Mux3~9_combout\))))) # (!\Mux3~0_combout\ & (\Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~5_combout\,
	datac => \Shift|ShiftLeft0~48_combout\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X45_Y68_N20
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!\FuncClass[1]~input_o\ & \Mux3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X47_Y70_N22
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\B[29]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[29]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[29]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[29]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X47_Y70_N24
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & ((\LogicFN[0]~input_o\) # ((\B[17]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~7_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[17]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X47_Y70_N14
\Add|S[29]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[29]~23_combout\ = \B[29]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[29]~28_combout\ $ (\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[29]~28_combout\,
	datad => \A[29]~input_o\,
	combout => \Add|S[29]~23_combout\);

-- Location: LCCOMB_X48_Y67_N2
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux14~4_combout\ & ((\Mux14~5_combout\ & (\Shift|ShiftRight0~66_combout\)) # (!\Mux14~5_combout\ & ((\Add|S[29]~23_combout\))))) # (!\Mux14~4_combout\ & (((!\Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~66_combout\,
	datab => \Mux14~4_combout\,
	datac => \Mux14~5_combout\,
	datad => \Add|S[29]~23_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X48_Y67_N28
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux14~0_combout\ & ((\Mux2~2_combout\ & ((\Shift|ShiftRight1~52_combout\))) # (!\Mux2~2_combout\ & (\A[31]~input_o\)))) # (!\Mux14~0_combout\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mux2~2_combout\,
	datac => \A[31]~input_o\,
	datad => \Shift|ShiftRight1~52_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X48_Y68_N4
\Shift|ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~101_combout\ = (\B[0]~input_o\ & (\A[28]~input_o\)) # (!\B[0]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[28]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Shift|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X48_Y68_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux28~1_combout\ & (((\Mux28~2_combout\) # (\Shift|ShiftLeft0~93_combout\)))) # (!\Mux28~1_combout\ & (\Shift|ShiftLeft0~101_combout\ & (!\Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Shift|ShiftLeft0~101_combout\,
	datac => \Mux28~2_combout\,
	datad => \Shift|ShiftLeft0~93_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X48_Y68_N0
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux28~2_combout\ & ((\Mux2~0_combout\ & ((\Shift|ShiftLeft0~83_combout\))) # (!\Mux2~0_combout\ & (\Shift|ShiftLeft0~98_combout\)))) # (!\Mux28~2_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Shift|ShiftLeft0~98_combout\,
	datac => \Shift|ShiftLeft0~83_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X48_Y67_N14
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux28~0_combout\ & (((\Mux2~1_combout\) # (\Mux3~0_combout\)))) # (!\Mux28~0_combout\ & (\Mux2~3_combout\ & ((!\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux2~3_combout\,
	datac => \Mux2~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X48_Y67_N16
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & (((\Shift|ShiftLeft0~52_combout\) # (!\Mux3~0_combout\)))) # (!\Mux2~4_combout\ & (\Mux2~8_combout\ & ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datab => \Shift|ShiftLeft0~52_combout\,
	datac => \Mux2~4_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X45_Y69_N20
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X47_Y70_N10
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[30]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[30]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[30]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[30]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y70_N4
\Logic|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~1_combout\ = (\Logic|Mux1~0_combout\ & ((\LogicFN[1]~input_o\) # ((\B[18]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux1~0_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[18]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux1~1_combout\);

-- Location: LCCOMB_X45_Y67_N12
\Shift|ShiftRight1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~55_combout\ = (\Shift|ShiftLeft0~5_combout\ & ((\A[31]~input_o\))) # (!\Shift|ShiftLeft0~5_combout\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Shift|ShiftLeft0~5_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight1~55_combout\);

-- Location: LCCOMB_X47_Y70_N16
\Add|S[30]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[30]~24_combout\ = \B[30]~input_o\ $ (\AddnSub~input_o\ $ (\A[30]~input_o\ $ (\Add|C[30]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[30]~input_o\,
	datad => \Add|C[30]~29_combout\,
	combout => \Add|S[30]~24_combout\);

-- Location: LCCOMB_X47_Y66_N20
\Shift|ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~102_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[29]~input_o\))) # (!\B[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Shift|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X47_Y66_N6
\Shift|ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~103_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~102_combout\) # ((\B[1]~input_o\ & \Shift|ShiftLeft0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~100_combout\,
	datad => \Shift|ShiftLeft0~102_combout\,
	combout => \Shift|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X48_Y67_N10
\Shift|ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~104_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~103_combout\) # ((\Shift|ShiftLeft0~96_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~96_combout\,
	datab => \Shift|ShiftLeft0~103_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X48_Y67_N20
\Shift|ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~105_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~104_combout\) # ((\Shift|ShiftLeft0~86_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~104_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~86_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X48_Y67_N6
\Shift|ShiftLeft0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~106_combout\ = (\Shift|ShiftLeft0~105_combout\) # ((\Shift|ShiftLeft0~57_combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~57_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~105_combout\,
	combout => \Shift|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X49_Y69_N8
\Y_ShiftOrArith[30]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[30]~14_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Shift|ShiftLeft0~106_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S[30]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[30]~24_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Shift|ShiftLeft0~106_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[30]~14_combout\);

-- Location: LCCOMB_X48_Y63_N22
\Shift|ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~69_combout\ = (!\B[4]~input_o\ & (\Shift|ShiftLeft0~6_combout\ & (!\B[3]~input_o\ & \Shift|ShiftRight1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~6_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~4_combout\,
	combout => \Shift|ShiftRight0~69_combout\);

-- Location: LCCOMB_X49_Y69_N10
\Y_ShiftOrArith[30]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[30]~15_combout\ = (\Y_ShiftOrArith[30]~14_combout\ & ((\Shift|ShiftRight1~55_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Y_ShiftOrArith[30]~14_combout\ & (((\ShiftFN[1]~input_o\ & \Shift|ShiftRight0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~55_combout\,
	datab => \Y_ShiftOrArith[30]~14_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight0~69_combout\,
	combout => \Y_ShiftOrArith[30]~15_combout\);

-- Location: LCCOMB_X49_Y69_N20
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux1~1_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[30]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Logic|Mux1~1_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[30]~15_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X48_Y68_N2
\Shift|ShiftLeft0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~107_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X48_Y68_N20
\Shift|ShiftLeft0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~108_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~107_combout\) # ((\Shift|ShiftLeft0~101_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~101_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~107_combout\,
	combout => \Shift|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X48_Y68_N6
\Shift|ShiftLeft0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~109_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~108_combout\) # ((\B[2]~input_o\ & \Shift|ShiftLeft0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~108_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~99_combout\,
	combout => \Shift|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X49_Y69_N22
\Shift|ShiftLeft0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~110_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~109_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~109_combout\,
	datad => \Shift|ShiftLeft0~89_combout\,
	combout => \Shift|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X46_Y69_N2
\Shift|ShiftLeft0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~111_combout\ = (\Shift|ShiftLeft0~110_combout\) # ((\Shift|ShiftLeft0~62_combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~62_combout\,
	datac => \Shift|ShiftLeft0~110_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X45_Y67_N22
\Shift|ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~70_combout\ = (!\Shift|ShiftLeft0~4_combout\ & (!\B[3]~input_o\ & (!\B[4]~input_o\ & \A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~4_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight0~70_combout\);

-- Location: LCCOMB_X46_Y69_N4
\Add|S[31]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[31]~25_combout\ = \AddnSub~input_o\ $ (\B[31]~input_o\ $ (\Add|C[31]~30_combout\ $ (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[31]~input_o\,
	datac => \Add|C[31]~30_combout\,
	datad => \A[31]~input_o\,
	combout => \Add|S[31]~25_combout\);

-- Location: LCCOMB_X46_Y69_N14
\Y_ShiftOrArith[31]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~16_combout\ = (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shift|ShiftRight0~70_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Add|S[31]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shift|ShiftRight0~70_combout\,
	datac => \Add|S[31]~25_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[31]~16_combout\);

-- Location: LCCOMB_X46_Y69_N16
\Y_ShiftOrArith[31]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~17_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[31]~16_combout\ & ((\A[31]~input_o\))) # (!\Y_ShiftOrArith[31]~16_combout\ & (\Shift|ShiftLeft0~111_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Y_ShiftOrArith[31]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Shift|ShiftLeft0~111_combout\,
	datac => \Y_ShiftOrArith[31]~16_combout\,
	datad => \A[31]~input_o\,
	combout => \Y_ShiftOrArith[31]~17_combout\);

-- Location: LCCOMB_X46_Y69_N28
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\LogicFN[0]~input_o\ & ((\B[31]~input_o\ & (\LogicFN[1]~input_o\ $ (!\A[31]~input_o\))) # (!\B[31]~input_o\ & (!\LogicFN[1]~input_o\ & \A[31]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[31]~input_o\) # ((\A[31]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[31]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y69_N30
\Logic|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~1_combout\ = (\Logic|Mux0~0_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Logic|Mux0~0_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Logic|Mux0~1_combout\);

-- Location: LCCOMB_X46_Y69_N26
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux0~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[31]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_ShiftOrArith[31]~17_combout\,
	datac => \Logic|Mux0~1_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\ExtWord~input\ : cycloneive_io_ibuf
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


