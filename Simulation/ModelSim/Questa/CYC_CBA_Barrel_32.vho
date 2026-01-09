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

-- DATE "11/30/2025 20:58:26"

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
-- Y[0]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[7]~2_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~4_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[6]~22_combout\ : std_logic;
SIGNAL \Logic|xor_result[23]~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~23_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~6_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[4]~5_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~7_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~8_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[2]~9_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~10_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~11_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~13_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~14_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~12_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~15_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[3]~16_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~17_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~18_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~30_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[3]~31_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~28_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~29_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \Logic|xor_result[19]~0_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~19_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~20_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~21_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~24_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[7]~27_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Add|Cout~1_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Add|Cout~2_combout\ : std_logic;
SIGNAL \Add|Cout~3_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~19_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~18_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~20_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~16_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~15_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~17_combout\ : std_logic;
SIGNAL \Shift|rl3[8]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~13_combout\ : std_logic;
SIGNAL \Shift|rl1[4]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~1_combout\ : std_logic;
SIGNAL \Shift|rl1[2]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~4_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_R[0]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[16]~11_combout\ : std_logic;
SIGNAL \Shift|rl2[17]~10_combout\ : std_logic;
SIGNAL \Shift|rl2[16]~12_combout\ : std_logic;
SIGNAL \Shift|rl2[21]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[20]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[20]~9_combout\ : std_logic;
SIGNAL \Shift|rl3[16]~0_combout\ : std_logic;
SIGNAL \Shift|rl1[30]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[28]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[28]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[24]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[25]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[24]~6_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~5_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shift|ll3[0]~0_combout\ : std_logic;
SIGNAL \Shift|Y_RA[30]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~7_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~29_combout\ : std_logic;
SIGNAL \Shift|rl2[17]~30_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~27_combout\ : std_logic;
SIGNAL \Shift|rl2[21]~28_combout\ : std_logic;
SIGNAL \Shift|rl3[17]~3_combout\ : std_logic;
SIGNAL \Shift|rl1[29]~5_combout\ : std_logic;
SIGNAL \Shift|ra3[25]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~31_combout\ : std_logic;
SIGNAL \Shift|rl3[25]~4_combout\ : std_logic;
SIGNAL \Shift|ra4[17]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[29]~32_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~3_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~5_combout\ : std_logic;
SIGNAL \Y_R[1]~1_combout\ : std_logic;
SIGNAL \Shift|rl1[3]~3_combout\ : std_logic;
SIGNAL \Y_R[1]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~21_combout\ : std_logic;
SIGNAL \Shift|rl1[5]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~22_combout\ : std_logic;
SIGNAL \Y_R[1]~3_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~25_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~26_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~23_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~24_combout\ : std_logic;
SIGNAL \Shift|rl3[9]~2_combout\ : std_logic;
SIGNAL \Y_R[1]~4_combout\ : std_logic;
SIGNAL \Y_R[1]~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll1[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~4_combout\ : std_logic;
SIGNAL \Shift|Y_LL[0]~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Shift|ll4[2]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C~1_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~1_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~34_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~35_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~36_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~37_combout\ : std_logic;
SIGNAL \Shift|rl3[18]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~33_combout\ : std_logic;
SIGNAL \Shift|rl3[26]~5_combout\ : std_logic;
SIGNAL \Shift|rl4[26]~5_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~41_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~42_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~43_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~44_combout\ : std_logic;
SIGNAL \Shift|rl3[10]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~38_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~39_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~40_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Shift|ra3[26]~1_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~45_combout\ : std_logic;
SIGNAL \Shift|ra3[26]~2_combout\ : std_logic;
SIGNAL \Shift|ra4[18]~5_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Add|P[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~3_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~46_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~47_combout\ : std_logic;
SIGNAL \Shift|ra4[19]~6_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~49_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~48_combout\ : std_logic;
SIGNAL \Shift|rl3[19]~8_combout\ : std_logic;
SIGNAL \Shift|ra4[19]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~50_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~52_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~51_combout\ : std_logic;
SIGNAL \Shift|rl3[11]~9_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Shift|rl4[27]~7_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~8_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Shift|rl3[12]~11_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Shift|rl3[20]~10_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~9_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~4_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~6_combout\ : std_logic;
SIGNAL \Shift|ll3[4]~1_combout\ : std_logic;
SIGNAL \Shift|ll4[4]~6_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Shift|ra4[20]~8_combout\ : std_logic;
SIGNAL \Shift|ra4[20]~9_combout\ : std_logic;
SIGNAL \Mux27~8_combout\ : std_logic;
SIGNAL \Mux27~9_combout\ : std_logic;
SIGNAL \Mux27~10_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~25_combout\ : std_logic;
SIGNAL \Mux27~11_combout\ : std_logic;
SIGNAL \Mux27~12_combout\ : std_logic;
SIGNAL \Shift|rl3[21]~12_combout\ : std_logic;
SIGNAL \Shift|rl3[21]~13_combout\ : std_logic;
SIGNAL \Shift|rl2[29]~53_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~10_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Shift|rl3[13]~14_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~7_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[5]~8_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Shift|ra4[21]~10_combout\ : std_logic;
SIGNAL \Shift|ra4[21]~11_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|rl3[14]~16_combout\ : std_logic;
SIGNAL \Shift|rl3[22]~15_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~11_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~9_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~10_combout\ : std_logic;
SIGNAL \Shift|ll4[6]~9_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Shift|ra4[22]~12_combout\ : std_logic;
SIGNAL \Shift|ra4[22]~13_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Logic|xor_result[7]~2_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Shift|rl3[15]~17_combout\ : std_logic;
SIGNAL \Shift|ra4[23]~14_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~12_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~11_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~12_combout\ : std_logic;
SIGNAL \Shift|ll4[7]~10_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Shift|ra4[23]~15_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~13_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~14_combout\ : std_logic;
SIGNAL \Shift|Y_LL[16]~1_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~11_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~13_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Shift|ra4[24]~16_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Shift|ra4[25]~17_combout\ : std_logic;
SIGNAL \Shift|rl4[25]~14_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~15_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~16_combout\ : std_logic;
SIGNAL \Shift|ll3[9]~2_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~12_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Shift|rl4[26]~15_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Shift|ra4[26]~18_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~17_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~18_combout\ : std_logic;
SIGNAL \Shift|ll3[10]~3_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~13_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~8_combout\ : std_logic;
SIGNAL \Mux21~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~19_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~20_combout\ : std_logic;
SIGNAL \Shift|ll3[11]~4_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~14_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Shift|ra4[27]~21_combout\ : std_logic;
SIGNAL \Shift|rl4[27]~16_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Logic|xor_result[11]~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~21_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~22_combout\ : std_logic;
SIGNAL \Shift|ll3[12]~6_combout\ : std_logic;
SIGNAL \Shift|ll3[4]~5_combout\ : std_logic;
SIGNAL \Shift|ll4[12]~15_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Shift|rl4[28]~17_combout\ : std_logic;
SIGNAL \Shift|ra4[28]~22_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Shift|rl4[29]~18_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Shift|ra4[29]~19_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~23_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~24_combout\ : std_logic;
SIGNAL \Shift|ll3[13]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~16_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Shift|ll4[14]~17_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~25_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~26_combout\ : std_logic;
SIGNAL \Shift|ll3[14]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[14]~18_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Shift|ra4[30]~20_combout\ : std_logic;
SIGNAL \Shift|rl4[30]~19_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|Y_RL[15]~1_combout\ : std_logic;
SIGNAL \Shift|Y_RL[15]~0_combout\ : std_logic;
SIGNAL \Shift|Y_RL[15]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[15]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~19_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~27_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~28_combout\ : std_logic;
SIGNAL \Shift|ll3[15]~9_combout\ : std_logic;
SIGNAL \Shift|Y_LL[15]~2_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~3_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[15]~9_combout\ : std_logic;
SIGNAL \Logic|Mux16~0_combout\ : std_logic;
SIGNAL \Logic|Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Logic|Mux15~0_combout\ : std_logic;
SIGNAL \Logic|Mux15~1_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~29_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~30_combout\ : std_logic;
SIGNAL \Shift|ll3[16]~10_combout\ : std_logic;
SIGNAL \Shift|Y_LL[16]~3_combout\ : std_logic;
SIGNAL \Shift|Y_LL[16]~4_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[16]~10_combout\ : std_logic;
SIGNAL \Shift|Y_RL[16]~3_combout\ : std_logic;
SIGNAL \Shift|Y_RA[15]~4_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[16]~11_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~31_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~32_combout\ : std_logic;
SIGNAL \Shift|ll3[17]~11_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll4[1]~21_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ll4[2]~22_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~33_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~34_combout\ : std_logic;
SIGNAL \Shift|ll3[18]~12_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~35_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~36_combout\ : std_logic;
SIGNAL \Shift|ll3[19]~13_combout\ : std_logic;
SIGNAL \Shift|ll4[3]~20_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux11~11_combout\ : std_logic;
SIGNAL \Mux11~12_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~37_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~38_combout\ : std_logic;
SIGNAL \Shift|ll3[20]~14_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Mux11~10_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~39_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~40_combout\ : std_logic;
SIGNAL \Shift|ll3[21]~15_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~41_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~42_combout\ : std_logic;
SIGNAL \Shift|ll3[22]~16_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~43_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~44_combout\ : std_logic;
SIGNAL \Shift|ll3[23]~17_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~45_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~46_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[1]~4_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~47_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~48_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~49_combout\ : std_logic;
SIGNAL \Shift|ll1[26]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~50_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[3]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[3]~6_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~51_combout\ : std_logic;
SIGNAL \Shift|ll1[27]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~52_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Shift|ll1[28]~3_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Shift|ll1[29]~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[1]~2_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Logic|Mux1~1_combout\ : std_logic;
SIGNAL \Shift|Y_LL[30]~5_combout\ : std_logic;
SIGNAL \Shift|Y_LL[30]~6_combout\ : std_logic;
SIGNAL \Shift|Y_LL[30]~7_combout\ : std_logic;
SIGNAL \Shift|Y_LL[30]~8_combout\ : std_logic;
SIGNAL \Shift|Y_LL[30]~9_combout\ : std_logic;
SIGNAL \Shift|Y_RL[30]~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[30]~12_combout\ : std_logic;
SIGNAL \Shift|Y_RA[30]~5_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[30]~13_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~10_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~11_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~12_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~13_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~14_combout\ : std_logic;
SIGNAL \Shift|Y_LL[31]~15_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~15_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Logic|Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Add|G\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Logic|xor_result\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Add|P\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|S\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Add|S_internal\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_AltB~0_combout\ : std_logic;
SIGNAL \Add|ALT_INV_Cout~3_combout\ : std_logic;

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
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
\Add|ALT_INV_Cout~3_combout\ <= NOT \Add|Cout~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X83_Y73_N23
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

-- Location: IOOBUF_X7_Y73_N23
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~8_combout\,
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

-- Location: IOOBUF_X33_Y73_N2
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~12_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~7_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N2
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

-- Location: IOOBUF_X13_Y73_N23
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~7_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X18_Y73_N23
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~6_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X42_Y0_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~9_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
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

-- Location: IOOBUF_X16_Y73_N9
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X5_Y73_N9
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

-- Location: IOOBUF_X72_Y73_N2
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

-- Location: IOOBUF_X20_Y73_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~0_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
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

-- Location: IOOBUF_X79_Y73_N9
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X89_Y73_N16
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

-- Location: IOOBUF_X74_Y73_N23
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~6_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~10_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
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

-- Location: IOOBUF_X0_Y68_N2
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

-- Location: IOOBUF_X72_Y73_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~6_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~5_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X20_Y73_N9
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

-- Location: IOOBUF_X83_Y73_N16
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~8_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N2
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

-- Location: IOOBUF_X83_Y73_N9
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X62_Y73_N23
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

-- Location: IOOBUF_X81_Y73_N9
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~3_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X49_Y71_N30
\Add|block_carry_in[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~2_combout\ = (\A[26]~input_o\ & (\AddnSub~input_o\ $ (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Add|block_carry_in[7]~2_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X16_Y73_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X65_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X49_Y71_N2
\Add|P[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(25) = \B[25]~input_o\ $ (\AddnSub~input_o\ $ (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[25]~input_o\,
	combout => \Add|P\(25));

-- Location: IOIBUF_X62_Y73_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X49_Y71_N28
\Add|GEN_BLOCKS:6:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ = (\Add|P\(25) & (\A[24]~input_o\ $ (\AddnSub~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \Add|P\(25),
	datac => \AddnSub~input_o\,
	datad => \B[24]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X49_Y71_N8
\Add|P[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(26) = \AddnSub~input_o\ $ (\B[26]~input_o\ $ (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Add|P\(26));

-- Location: LCCOMB_X49_Y67_N16
\Add|G[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(24) = (\A[24]~input_o\ & (\AddnSub~input_o\ $ (\B[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[24]~input_o\,
	combout => \Add|G\(24));

-- Location: LCCOMB_X49_Y71_N0
\Add|block_carry_in[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~3_combout\ = (\Add|G\(24) & ((\A[25]~input_o\) # (\B[25]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(24) & (\A[25]~input_o\ & (\B[25]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Add|G\(24),
	datac => \AddnSub~input_o\,
	datad => \A[25]~input_o\,
	combout => \Add|block_carry_in[7]~3_combout\);

-- Location: LCCOMB_X49_Y71_N10
\Add|block_carry_in[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~4_combout\ = (\Add|P\(26) & (!\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[7]~2_combout\) # (\Add|block_carry_in[7]~3_combout\)))) # (!\Add|P\(26) & (\Add|block_carry_in[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~2_combout\,
	datab => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(26),
	datad => \Add|block_carry_in[7]~3_combout\,
	combout => \Add|block_carry_in[7]~4_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

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

-- Location: IOIBUF_X85_Y73_N8
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X53_Y70_N16
\Add|G[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(22) = (\A[22]~input_o\ & (\AddnSub~input_o\ $ (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \B[22]~input_o\,
	combout => \Add|G\(22));

-- Location: LCCOMB_X53_Y70_N18
\Add|GEN_BLOCKS:5:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\ = (\A[23]~input_o\ & ((\Add|G\(22)) # (\B[23]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[23]~input_o\ & (\Add|G\(22) & (\B[23]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[23]~input_o\,
	datad => \Add|G\(22),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X58_Y73_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X52_Y70_N0
\Add|G[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(20) = (\A[20]~input_o\ & (\AddnSub~input_o\ $ (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Add|G\(20));

-- Location: IOIBUF_X74_Y73_N15
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X52_Y70_N26
\Add|block_carry_in[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~22_combout\ = (\Add|G\(20) & ((\A[21]~input_o\) # (\AddnSub~input_o\ $ (\B[21]~input_o\)))) # (!\Add|G\(20) & (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(20),
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|block_carry_in[6]~22_combout\);

-- Location: LCCOMB_X53_Y70_N22
\Logic|xor_result[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[23]~1_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	combout => \Logic|xor_result[23]~1_combout\);

-- Location: LCCOMB_X53_Y70_N20
\Add|P[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(22) = \A[22]~input_o\ $ (\AddnSub~input_o\ $ (\B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \B[22]~input_o\,
	combout => \Add|P\(22));

-- Location: LCCOMB_X52_Y70_N4
\Add|block_carry_in[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~23_combout\ = (\Add|block_carry_in[6]~22_combout\ & (\Add|P\(22) & (\Logic|xor_result[23]~1_combout\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~22_combout\,
	datab => \Logic|xor_result[23]~1_combout\,
	datac => \Add|P\(22),
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[6]~23_combout\);

-- Location: IOIBUF_X23_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X11_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X46_Y72_N2
\Add|P[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(13) = \B[13]~input_o\ $ (\A[13]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(13));

-- Location: LCCOMB_X46_Y72_N12
\Add|GEN_BLOCKS:3:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ = (\Add|P\(13) & (\AddnSub~input_o\ $ (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \Add|P\(13),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X46_Y72_N0
\Add|G[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(12) = (\A[12]~input_o\ & (\B[12]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(12));

-- Location: LCCOMB_X46_Y72_N18
\Add|block_carry_in[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~6_combout\ = (\A[13]~input_o\ & ((\Add|G\(12)) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[13]~input_o\ & (\Add|G\(12) & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[13]~input_o\,
	datad => \Add|G\(12),
	combout => \Add|block_carry_in[4]~6_combout\);

-- Location: IOIBUF_X23_Y73_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X46_Y72_N14
\Add|block_carry_in[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~5_combout\ = (\A[14]~input_o\ & (\B[14]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[4]~5_combout\);

-- Location: LCCOMB_X46_Y72_N24
\Add|P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(14) = \A[14]~input_o\ $ (\B[14]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(14));

-- Location: LCCOMB_X46_Y72_N28
\Add|block_carry_in[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~7_combout\ = (\Add|P\(14) & (!\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[4]~6_combout\) # (\Add|block_carry_in[4]~5_combout\)))) # (!\Add|P\(14) & (((\Add|block_carry_in[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[4]~6_combout\,
	datac => \Add|block_carry_in[4]~5_combout\,
	datad => \Add|P\(14),
	combout => \Add|block_carry_in[4]~7_combout\);

-- Location: IOIBUF_X13_Y73_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X3_Y73_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X45_Y70_N2
\Add|P[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(9) = \B[9]~input_o\ $ (\AddnSub~input_o\ $ (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|P\(9));

-- Location: IOIBUF_X31_Y73_N1
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X45_Y70_N12
\Add|GEN_BLOCKS:2:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = (\Add|P\(9) & (\A[8]~input_o\ $ (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Add|P\(9),
	datac => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X42_Y73_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X43_Y68_N6
\Add|block_carry_in[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~8_combout\ = (\A[4]~input_o\ & (\AddnSub~input_o\ $ (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add|block_carry_in[2]~8_combout\);

-- Location: IOIBUF_X29_Y73_N8
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X43_Y68_N28
\Add|G[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(5) = (\A[5]~input_o\ & (\AddnSub~input_o\ $ (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Add|G\(5));

-- Location: LCCOMB_X43_Y68_N26
\Add|P[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(5) = \AddnSub~input_o\ $ (\A[5]~input_o\ $ (\B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Add|P\(5));

-- Location: IOIBUF_X35_Y73_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X43_Y68_N16
\Add|P[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(6) = \A[6]~input_o\ $ (\AddnSub~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|P\(6));

-- Location: LCCOMB_X43_Y68_N8
\Add|block_carry_in[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~9_combout\ = (\Add|P\(6) & ((\Add|G\(5)) # ((\Add|block_carry_in[2]~8_combout\ & \Add|P\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[2]~8_combout\,
	datab => \Add|G\(5),
	datac => \Add|P\(5),
	datad => \Add|P\(6),
	combout => \Add|block_carry_in[2]~9_combout\);

-- Location: LCCOMB_X45_Y68_N8
\Add|block_carry_in[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~10_combout\ = (\Add|block_carry_in[2]~9_combout\) # ((\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[2]~9_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Add|block_carry_in[2]~10_combout\);

-- Location: LCCOMB_X45_Y68_N10
\Add|block_carry_in[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~11_combout\ = (\A[7]~input_o\ & ((\Add|block_carry_in[2]~10_combout\) # (\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[7]~input_o\ & (\Add|block_carry_in[2]~10_combout\ & (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Add|block_carry_in[2]~10_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[2]~11_combout\);

-- Location: IOIBUF_X54_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

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

-- Location: IOIBUF_X31_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X42_Y69_N24
\Add|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(1) = \A[1]~input_o\ $ (\AddnSub~input_o\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	combout => \Add|P\(1));

-- Location: LCCOMB_X42_Y69_N10
\Add|GEN_BLOCKS:0:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = (\Add|P\(1) & (\B[0]~input_o\ $ (\A[0]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X42_Y69_N16
\Add|G[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(0) = (\A[0]~input_o\ & (\B[0]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|G\(0));

-- Location: LCCOMB_X42_Y69_N2
\Add|block_carry_in[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~13_combout\ = (\A[1]~input_o\ & ((\Add|G\(0)) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|G\(0) & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \Add|G\(0),
	combout => \Add|block_carry_in[1]~13_combout\);

-- Location: IOIBUF_X20_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X42_Y69_N14
\Add|G[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(2) = (\A[2]~input_o\ & (\AddnSub~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[2]~input_o\,
	combout => \Add|G\(2));

-- Location: LCCOMB_X45_Y69_N4
\Add|GEN_BLOCKS:0:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ = (\A[3]~input_o\ & ((\Add|G\(2)) # (\B[3]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[3]~input_o\ & (\Add|G\(2) & (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(2),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X42_Y69_N4
\Add|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(2) = \A[2]~input_o\ $ (\AddnSub~input_o\ $ (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[2]~input_o\,
	combout => \Add|P\(2));

-- Location: LCCOMB_X45_Y69_N16
\Add|GEN_BLOCKS:0:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = (\Add|P\(2) & (\A[3]~input_o\ $ (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(2),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X45_Y69_N6
\Add|block_carry_in[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~14_combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[1]~13_combout\) # (\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\)))) # 
-- (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (((\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[1]~13_combout\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[1]~14_combout\);

-- Location: LCCOMB_X43_Y68_N18
\Add|GEN_BLOCKS:1:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = (\Add|P\(5) & (\AddnSub~input_o\ $ (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[4]~input_o\,
	datac => \Add|P\(5),
	datad => \B[4]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X46_Y71_N16
\Add|GEN_BLOCKS:1:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ = (\Add|P\(6) & (\AddnSub~input_o\ $ (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Add|P\(6),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X46_Y71_N18
\Add|GEN_BLOCKS:1:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X45_Y69_N2
\Add|block_carry_in[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~12_combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & (\AddnSub~input_o\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[1]~12_combout\);

-- Location: LCCOMB_X45_Y70_N0
\Add|block_carry_in[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~15_combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[1]~14_combout\) # (\Add|block_carry_in[1]~12_combout\)))) # (!\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & (\Add|block_carry_in[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[2]~11_combout\,
	datab => \Add|block_carry_in[1]~14_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\,
	datad => \Add|block_carry_in[1]~12_combout\,
	combout => \Add|block_carry_in[2]~15_combout\);

-- Location: IOIBUF_X16_Y73_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X45_Y70_N18
\Add|block_carry_in[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~16_combout\ = (\A[10]~input_o\ & (\AddnSub~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[10]~input_o\,
	combout => \Add|block_carry_in[3]~16_combout\);

-- Location: LCCOMB_X45_Y70_N28
\Add|G[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(8) = (\A[8]~input_o\ & (\AddnSub~input_o\ $ (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \Add|G\(8));

-- Location: LCCOMB_X45_Y70_N22
\Add|block_carry_in[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~17_combout\ = (\A[9]~input_o\ & ((\Add|G\(8)) # (\B[9]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[9]~input_o\ & (\Add|G\(8) & (\B[9]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(8),
	combout => \Add|block_carry_in[3]~17_combout\);

-- Location: LCCOMB_X46_Y70_N16
\Add|P[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(10) = \B[10]~input_o\ $ (\A[10]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(10));

-- Location: LCCOMB_X45_Y70_N16
\Add|block_carry_in[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~18_combout\ = (\Add|block_carry_in[3]~16_combout\) # ((\Add|block_carry_in[3]~17_combout\ & \Add|P\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|block_carry_in[3]~16_combout\,
	datac => \Add|block_carry_in[3]~17_combout\,
	datad => \Add|P\(10),
	combout => \Add|block_carry_in[3]~18_combout\);

-- Location: LCCOMB_X45_Y70_N30
\Add|block_carry_in[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~30_combout\ = (\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ((\Add|P\(10) & (\Add|block_carry_in[2]~15_combout\)) # (!\Add|P\(10) & ((\Add|block_carry_in[3]~18_combout\))))) # (!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & 
-- (((\Add|block_carry_in[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[2]~15_combout\,
	datac => \Add|block_carry_in[3]~18_combout\,
	datad => \Add|P\(10),
	combout => \Add|block_carry_in[3]~30_combout\);

-- Location: IOIBUF_X7_Y73_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X46_Y69_N22
\Add|block_carry_in[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~31_combout\ = (\A[11]~input_o\ & ((\Add|block_carry_in[3]~30_combout\) # (\AddnSub~input_o\ $ (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\Add|block_carry_in[3]~30_combout\ & (\AddnSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[3]~30_combout\,
	datad => \B[11]~input_o\,
	combout => \Add|block_carry_in[3]~31_combout\);

-- Location: LCCOMB_X46_Y72_N30
\Add|block_carry_in[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~28_combout\ = (\Add|block_carry_in[4]~7_combout\) # ((\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[3]~31_combout\ & \Add|P\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[4]~7_combout\,
	datac => \Add|block_carry_in[3]~31_combout\,
	datad => \Add|P\(14),
	combout => \Add|block_carry_in[4]~28_combout\);

-- Location: LCCOMB_X46_Y71_N30
\Add|block_carry_in[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~29_combout\ = (\A[15]~input_o\ & ((\Add|block_carry_in[4]~28_combout\) # (\B[15]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[15]~input_o\ & (\Add|block_carry_in[4]~28_combout\ & (\B[15]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \B[15]~input_o\,
	datac => \Add|block_carry_in[4]~28_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[4]~29_combout\);

-- Location: IOIBUF_X20_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X50_Y70_N28
\Logic|xor_result[19]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[19]~0_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Logic|xor_result[19]~0_combout\);

-- Location: IOIBUF_X0_Y69_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X53_Y68_N24
\Add|P[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(18) = \B[18]~input_o\ $ (\AddnSub~input_o\ $ (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[18]~input_o\,
	combout => \Add|P\(18));

-- Location: IOIBUF_X60_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X53_Y68_N12
\Add|P[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(17) = \AddnSub~input_o\ $ (\A[17]~input_o\ $ (\B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|P\(17));

-- Location: IOIBUF_X85_Y73_N1
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X53_Y69_N26
\Add|GEN_BLOCKS:4:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ = (\Add|P\(17) & (\A[16]~input_o\ $ (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Add|P\(17),
	datac => \AddnSub~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X53_Y68_N26
\Add|GEN_BLOCKS:4:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ = (\Add|P\(18) & (\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & (\Logic|xor_result[19]~0_combout\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[19]~0_combout\,
	datab => \Add|P\(18),
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X50_Y70_N16
\Add|G[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(18) = (\A[18]~input_o\ & (\AddnSub~input_o\ $ (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Add|G\(18));

-- Location: LCCOMB_X50_Y70_N2
\Add|GEN_BLOCKS:4:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\ = (\A[19]~input_o\ & ((\Add|G\(18)) # (\AddnSub~input_o\ $ (\B[19]~input_o\)))) # (!\A[19]~input_o\ & (\Add|G\(18) & (\AddnSub~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Add|G\(18),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X53_Y68_N10
\Add|G[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(17) = (\A[17]~input_o\ & (\AddnSub~input_o\ $ (\B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|G\(17));

-- Location: LCCOMB_X53_Y69_N8
\Add|G[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(16) = (\A[16]~input_o\ & (\AddnSub~input_o\ $ (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add|G\(16));

-- Location: LCCOMB_X53_Y68_N6
\Add|block_carry_in[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~19_combout\ = (\Add|P\(18) & ((\Add|G\(17)) # ((\Add|P\(17) & \Add|G\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(17),
	datab => \Add|P\(18),
	datac => \Add|P\(17),
	datad => \Add|G\(16),
	combout => \Add|block_carry_in[5]~19_combout\);

-- Location: LCCOMB_X53_Y68_N8
\Add|block_carry_in[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~20_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\) # ((\Add|block_carry_in[5]~19_combout\ & (\Logic|xor_result[19]~0_combout\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[19]~0_combout\,
	datab => \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[5]~19_combout\,
	combout => \Add|block_carry_in[5]~20_combout\);

-- Location: LCCOMB_X53_Y68_N4
\Add|block_carry_in[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~21_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & (\Add|block_carry_in[4]~29_combout\)) # (!\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[5]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|block_carry_in[4]~29_combout\,
	datac => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\,
	datad => \Add|block_carry_in[5]~20_combout\,
	combout => \Add|block_carry_in[5]~21_combout\);

-- Location: LCCOMB_X52_Y70_N6
\Add|P[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(21) = \AddnSub~input_o\ $ (\A[21]~input_o\ $ (\B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|P\(21));

-- Location: LCCOMB_X52_Y70_N24
\Add|GEN_BLOCKS:5:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ = (\Add|P\(21) & (\AddnSub~input_o\ $ (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[20]~input_o\,
	datac => \B[20]~input_o\,
	datad => \Add|P\(21),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X52_Y70_N18
\Add|GEN_BLOCKS:5:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & (\Add|P\(22) & (\AddnSub~input_o\ $ (\Logic|xor_result[23]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(22),
	datad => \Logic|xor_result[23]~1_combout\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X52_Y70_N12
\Add|block_carry_in[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~24_combout\ = (\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[5]~21_combout\)))) # (!\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ((\Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\) # 
-- ((\Add|block_carry_in[6]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\,
	datab => \Add|block_carry_in[6]~23_combout\,
	datac => \Add|block_carry_in[5]~21_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\,
	combout => \Add|block_carry_in[6]~24_combout\);

-- Location: LCCOMB_X49_Y71_N22
\Add|block_carry_in[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~26_combout\ = (\Add|block_carry_in[7]~4_combout\) # ((\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & (\Add|P\(26) & \Add|block_carry_in[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~4_combout\,
	datab => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(26),
	datad => \Add|block_carry_in[6]~24_combout\,
	combout => \Add|block_carry_in[7]~26_combout\);

-- Location: IOIBUF_X72_Y73_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X53_Y69_N30
\Add|block_carry_in[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~27_combout\ = (\Add|block_carry_in[7]~26_combout\ & ((\A[27]~input_o\) # (\AddnSub~input_o\ $ (\B[27]~input_o\)))) # (!\Add|block_carry_in[7]~26_combout\ & (\A[27]~input_o\ & (\AddnSub~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~26_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[27]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Add|block_carry_in[7]~27_combout\);

-- Location: IOIBUF_X69_Y73_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X85_Y73_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: LCCOMB_X55_Y69_N14
\Add|P[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(29) = \B[29]~input_o\ $ (\AddnSub~input_o\ $ (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[29]~input_o\,
	combout => \Add|P\(29));

-- Location: IOIBUF_X58_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X55_Y69_N2
\Add|GEN_BLOCKS:7:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ = (\Add|P\(29) & (\A[28]~input_o\ & (\B[28]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|P\(29),
	datad => \A[28]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X55_Y69_N4
\Add|GEN_BLOCKS:7:LACG_INST|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\ = (\Add|P\(29) & (\B[28]~input_o\ $ (\AddnSub~input_o\ $ (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|P\(29),
	datad => \A[28]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\);

-- Location: LCCOMB_X55_Y69_N8
\Add|G[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(29) = (\A[29]~input_o\ & (\B[29]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[29]~input_o\,
	combout => \Add|G\(29));

-- Location: IOIBUF_X60_Y73_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X55_Y69_N12
\Add|P[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(30) = \A[30]~input_o\ $ (\B[30]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(30));

-- Location: LCCOMB_X55_Y69_N20
\Add|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~1_combout\ = (\Add|P\(30) & ((\Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\) # (\Add|G\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:7:LACG_INST|g_int~1_combout\,
	datab => \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\,
	datac => \Add|G\(29),
	datad => \Add|P\(30),
	combout => \Add|Cout~1_combout\);

-- Location: LCCOMB_X55_Y69_N24
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\A[30]~input_o\ & (\B[30]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|Cout~0_combout\);

-- Location: LCCOMB_X55_Y69_N6
\Add|Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~2_combout\ = (\Add|Cout~1_combout\ & ((\Add|block_carry_in[7]~27_combout\) # ((!\Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\)))) # (!\Add|Cout~1_combout\ & (((\Add|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~27_combout\,
	datab => \Add|Cout~1_combout\,
	datac => \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\,
	datad => \Add|Cout~0_combout\,
	combout => \Add|Cout~2_combout\);

-- Location: LCCOMB_X54_Y69_N18
\Add|Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~3_combout\ = (\A[31]~input_o\ & ((\Add|Cout~2_combout\) # (\AddnSub~input_o\ $ (\B[31]~input_o\)))) # (!\A[31]~input_o\ & (\Add|Cout~2_combout\ & (\AddnSub~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[31]~input_o\,
	datad => \Add|Cout~2_combout\,
	combout => \Add|Cout~3_combout\);

-- Location: IOIBUF_X40_Y73_N1
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LCCOMB_X54_Y69_N8
\Logic|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = (\A[0]~input_o\ & (\LogicFN[1]~input_o\ $ (((\LogicFN[0]~input_o\ & !\B[0]~input_o\))))) # (!\A[0]~input_o\ & (\B[0]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: LCCOMB_X45_Y67_N10
\Shift|rl2[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~19_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|rl2[8]~19_combout\);

-- Location: LCCOMB_X45_Y67_N16
\Shift|rl2[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~18_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|rl2[9]~18_combout\);

-- Location: LCCOMB_X45_Y67_N20
\Shift|rl2[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~20_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[9]~18_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[8]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[8]~19_combout\,
	datab => \Shift|rl2[9]~18_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[8]~20_combout\);

-- Location: LCCOMB_X46_Y66_N26
\Shift|rl2[12]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~16_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[12]~16_combout\);

-- Location: LCCOMB_X46_Y66_N24
\Shift|rl2[13]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~15_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[13]~15_combout\);

-- Location: LCCOMB_X46_Y66_N28
\Shift|rl2[12]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~17_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[13]~15_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[12]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~16_combout\,
	datab => \Shift|rl2[13]~15_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[12]~17_combout\);

-- Location: LCCOMB_X47_Y68_N26
\Shift|rl3[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[8]~1_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[12]~17_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[8]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[8]~20_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[12]~17_combout\,
	combout => \Shift|rl3[8]~1_combout\);

-- Location: LCCOMB_X45_Y68_N20
\Shift|rl2[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~13_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

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
	combout => \Shift|rl2[4]~13_combout\);

-- Location: LCCOMB_X45_Y68_N6
\Shift|rl1[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[4]~2_combout\ = (\B[0]~input_o\ & (\A[5]~input_o\)) # (!\B[0]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl1[4]~2_combout\);

-- Location: LCCOMB_X45_Y68_N0
\Shift|rl2[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~14_combout\ = (\Shift|rl2[4]~13_combout\) # ((!\B[1]~input_o\ & \Shift|rl1[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[4]~13_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl1[4]~2_combout\,
	combout => \Shift|rl2[4]~14_combout\);

-- Location: LCCOMB_X45_Y69_N8
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

-- Location: LCCOMB_X43_Y69_N16
\Shift|rl1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[2]~1_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl1[2]~1_combout\);

-- Location: LCCOMB_X48_Y69_N0
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[0]~1_combout\) # ((\B[1]~input_o\ & \Shift|rl1[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Shift|rl1[2]~1_combout\,
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: LCCOMB_X47_Y68_N8
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[0]~2_combout\) # ((\Shift|rl2[4]~14_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[4]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_ShiftOrArith[0]~2_combout\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: LCCOMB_X48_Y68_N0
\Y_ShiftOrArith[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~4_combout\ = (!\B[4]~input_o\ & ((\Y_ShiftOrArith[0]~3_combout\) # ((\Shift|rl3[8]~1_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[8]~1_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Y_ShiftOrArith[0]~3_combout\,
	combout => \Y_ShiftOrArith[0]~4_combout\);

-- Location: IOIBUF_X54_Y73_N1
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X52_Y69_N8
\Y_R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[0]~0_combout\ = (\ShiftFN[0]~input_o\ & \A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \A[31]~input_o\,
	combout => \Y_R[0]~0_combout\);

-- Location: LCCOMB_X48_Y66_N26
\Shift|rl2[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~11_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Shift|rl2[16]~11_combout\);

-- Location: LCCOMB_X48_Y66_N16
\Shift|rl2[17]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~10_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[19]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[17]~10_combout\);

-- Location: LCCOMB_X48_Y66_N20
\Shift|rl2[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~12_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[17]~10_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[16]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[16]~11_combout\,
	datab => \Shift|rl2[17]~10_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[16]~12_combout\);

-- Location: LCCOMB_X49_Y67_N2
\Shift|rl2[21]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~7_combout\ = (\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|rl2[21]~7_combout\);

-- Location: LCCOMB_X50_Y67_N14
\Shift|rl2[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~8_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[20]~input_o\,
	datac => \A[22]~input_o\,
	combout => \Shift|rl2[20]~8_combout\);

-- Location: LCCOMB_X50_Y67_N0
\Shift|rl2[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~9_combout\ = (\B[0]~input_o\ & (\Shift|rl2[21]~7_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[20]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[21]~7_combout\,
	datab => \Shift|rl2[20]~8_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[20]~9_combout\);

-- Location: LCCOMB_X50_Y67_N10
\Shift|rl3[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[16]~0_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[20]~9_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[16]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[16]~12_combout\,
	datad => \Shift|rl2[20]~9_combout\,
	combout => \Shift|rl3[16]~0_combout\);

-- Location: LCCOMB_X49_Y69_N26
\Shift|rl1[30]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[30]~0_combout\ = (\B[0]~input_o\ & (\A[31]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl1[30]~0_combout\);

-- Location: LCCOMB_X49_Y69_N24
\Shift|rl2[28]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[29]~input_o\))) # (!\B[0]~input_o\ & (\A[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Shift|rl2[28]~2_combout\);

-- Location: LCCOMB_X49_Y69_N4
\Shift|rl2[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~3_combout\ = (\Shift|rl2[28]~2_combout\) # ((\Shift|rl1[30]~0_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl1[30]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl2[28]~2_combout\,
	combout => \Shift|rl2[28]~3_combout\);

-- Location: LCCOMB_X50_Y67_N18
\Shift|rl2[24]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~5_combout\ = (\B[1]~input_o\ & ((\A[26]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|rl2[24]~5_combout\);

-- Location: LCCOMB_X50_Y67_N8
\Shift|rl2[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~4_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Shift|rl2[25]~4_combout\);

-- Location: LCCOMB_X50_Y67_N12
\Shift|rl2[24]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~6_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[25]~4_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[24]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|rl2[24]~5_combout\,
	datac => \Shift|rl2[25]~4_combout\,
	combout => \Shift|rl2[24]~6_combout\);

-- Location: LCCOMB_X50_Y68_N8
\Shift|rl4[24]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~2_combout\ = (\B[2]~input_o\ & (\Shift|rl2[28]~3_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[24]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[28]~3_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[24]~6_combout\,
	combout => \Shift|rl4[24]~2_combout\);

-- Location: LCCOMB_X50_Y66_N0
\Y_ShiftOrArith[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl4[24]~2_combout\))) # (!\B[3]~input_o\ & (\Shift|rl3[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|rl3[16]~0_combout\,
	datad => \Shift|rl4[24]~2_combout\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: LCCOMB_X50_Y66_N2
\Y_ShiftOrArith[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~5_combout\ = (\B[5]~input_o\ & (((\Y_R[0]~0_combout\)))) # (!\B[5]~input_o\ & ((\Y_ShiftOrArith[0]~4_combout\) # ((\Y_ShiftOrArith[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~4_combout\,
	datab => \B[5]~input_o\,
	datac => \Y_R[0]~0_combout\,
	datad => \Y_ShiftOrArith[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~5_combout\);

-- Location: IOIBUF_X29_Y73_N1
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X48_Y67_N24
\Shift|ll3[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[0]~0_combout\ = (\B[2]~input_o\) # ((\B[1]~input_o\) # (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll3[0]~0_combout\);

-- Location: LCCOMB_X47_Y67_N0
\Shift|Y_RA[30]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[30]~2_combout\ = (!\B[3]~input_o\ & (!\Shift|ll3[0]~0_combout\ & (!\B[5]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[0]~0_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|Y_RA[30]~2_combout\);

-- Location: LCCOMB_X54_Y69_N28
\Y_ShiftOrArith[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~6_combout\ = (\ShiftFN[0]~input_o\ & (\Shift|Y_RA[30]~2_combout\ & (\A[0]~input_o\))) # (!\ShiftFN[0]~input_o\ & ((\A[0]~input_o\ $ (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_RA[30]~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~6_combout\);

-- Location: LCCOMB_X54_Y69_N30
\Y_ShiftOrArith[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~7_combout\ = (\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[0]~5_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[0]~6_combout\,
	combout => \Y_ShiftOrArith[0]~7_combout\);

-- Location: IOIBUF_X47_Y73_N15
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: LCCOMB_X55_Y69_N16
\Add|G[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(28) = (\A[28]~input_o\ & (\B[28]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \A[28]~input_o\,
	combout => \Add|G\(28));

-- Location: LCCOMB_X55_Y69_N10
\Add|GEN_BLOCKS:7:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\ = (\A[30]~input_o\ & ((\Add|G\(29)) # (\AddnSub~input_o\ $ (\B[30]~input_o\)))) # (!\A[30]~input_o\ & (\Add|G\(29) & (\AddnSub~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \Add|G\(29),
	datac => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X55_Y69_N26
\Add|GEN_BLOCKS:7:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ = (\Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\) # ((\Add|P\(30) & (\Add|G\(28) & \Add|P\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(30),
	datab => \Add|G\(28),
	datac => \Add|P\(29),
	datad => \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X55_Y69_N22
\Add|GEN_BLOCKS:7:LACG_INST|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C\(3) = (\Add|GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\) # ((\Add|block_carry_in[7]~27_combout\ & (\Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\ & \Add|P\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~27_combout\,
	datab => \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\,
	datac => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\,
	datad => \Add|P\(30),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C\(3));

-- Location: LCCOMB_X54_Y69_N2
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\A[31]~input_o\ & (\Add|GEN_BLOCKS:7:LACG_INST|C\(3) & (\AddnSub~input_o\ $ (!\B[31]~input_o\)))) # (!\A[31]~input_o\ & ((\Add|GEN_BLOCKS:7:LACG_INST|C\(3)) # (\AddnSub~input_o\ $ (!\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[31]~input_o\,
	datad => \Add|GEN_BLOCKS:7:LACG_INST|C\(3),
	combout => \AltB~0_combout\);

-- Location: LCCOMB_X54_Y69_N16
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\FuncClass[0]~input_o\ & (((\FuncClass[1]~input_o\)))) # (!\FuncClass[0]~input_o\ & ((\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) # (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~7_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \AltB~0_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X54_Y69_N4
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\FuncClass[0]~input_o\ & ((\Mux31~0_combout\ & (!\Add|Cout~3_combout\)) # (!\Mux31~0_combout\ & ((\Logic|Mux31~0_combout\))))) # (!\FuncClass[0]~input_o\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|Cout~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Logic|Mux31~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X48_Y70_N16
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\A[1]~input_o\ & (\LogicFN[1]~input_o\ $ (((!\B[1]~input_o\ & \LogicFN[0]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X48_Y66_N6
\Shift|rl2[18]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~29_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Shift|rl2[18]~29_combout\);

-- Location: LCCOMB_X48_Y66_N0
\Shift|rl2[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~30_combout\ = (\B[0]~input_o\ & (\Shift|rl2[18]~29_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[17]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[18]~29_combout\,
	datab => \Shift|rl2[17]~10_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[17]~30_combout\);

-- Location: LCCOMB_X49_Y67_N12
\Shift|rl2[22]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~27_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|rl2[22]~27_combout\);

-- Location: LCCOMB_X49_Y67_N22
\Shift|rl2[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~28_combout\ = (\B[0]~input_o\ & (\Shift|rl2[22]~27_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[21]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[22]~27_combout\,
	datab => \Shift|rl2[21]~7_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[21]~28_combout\);

-- Location: LCCOMB_X48_Y67_N26
\Shift|rl3[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[17]~3_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[21]~28_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[17]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[17]~30_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[21]~28_combout\,
	combout => \Shift|rl3[17]~3_combout\);

-- Location: LCCOMB_X48_Y67_N22
\Shift|rl1[29]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[29]~5_combout\ = (\B[0]~input_o\ & ((\A[30]~input_o\))) # (!\B[0]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|rl1[29]~5_combout\);

-- Location: LCCOMB_X48_Y67_N0
\Shift|ra3[25]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[25]~0_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\Shift|rl1[29]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|rl1[29]~5_combout\,
	datad => \A[31]~input_o\,
	combout => \Shift|ra3[25]~0_combout\);

-- Location: LCCOMB_X49_Y69_N14
\Shift|rl2[26]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~31_combout\ = (\B[1]~input_o\ & (\A[28]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[26]~31_combout\);

-- Location: LCCOMB_X48_Y67_N4
\Shift|rl3[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[25]~4_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\Shift|rl2[26]~31_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[25]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[26]~31_combout\,
	datac => \Shift|rl2[25]~4_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl3[25]~4_combout\);

-- Location: LCCOMB_X48_Y67_N10
\Shift|ra4[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[17]~4_combout\ = (\B[3]~input_o\ & (((\Shift|ra3[25]~0_combout\) # (\Shift|rl3[25]~4_combout\)))) # (!\B[3]~input_o\ & (\Shift|rl3[17]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[17]~3_combout\,
	datab => \Shift|ra3[25]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[25]~4_combout\,
	combout => \Shift|ra4[17]~4_combout\);

-- Location: LCCOMB_X48_Y67_N12
\Shift|rl2[29]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[29]~32_combout\ = (\A[31]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[29]~32_combout\);

-- Location: LCCOMB_X48_Y67_N14
\Shift|rl4[17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~3_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & ((\Shift|rl2[29]~32_combout\))) # (!\B[1]~input_o\ & (\Shift|rl1[29]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|rl1[29]~5_combout\,
	datad => \Shift|rl2[29]~32_combout\,
	combout => \Shift|rl4[17]~3_combout\);

-- Location: LCCOMB_X48_Y67_N8
\Shift|rl4[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~4_combout\ = (\B[3]~input_o\ & ((\Shift|rl4[17]~3_combout\) # ((\Shift|rl3[25]~4_combout\)))) # (!\B[3]~input_o\ & (((\Shift|rl3[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl4[17]~3_combout\,
	datac => \Shift|rl3[17]~3_combout\,
	datad => \Shift|rl3[25]~4_combout\,
	combout => \Shift|rl4[17]~4_combout\);

-- Location: LCCOMB_X52_Y69_N18
\Y_R[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~5_combout\ = (\B[4]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Shift|ra4[17]~4_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Shift|rl4[17]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ra4[17]~4_combout\,
	datad => \Shift|rl4[17]~4_combout\,
	combout => \Y_R[1]~5_combout\);

-- Location: LCCOMB_X43_Y69_N10
\Y_R[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~1_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Y_R[1]~1_combout\);

-- Location: LCCOMB_X43_Y69_N12
\Shift|rl1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[3]~3_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl1[3]~3_combout\);

-- Location: LCCOMB_X43_Y69_N14
\Y_R[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~2_combout\ = (!\B[2]~input_o\ & ((\Y_R[1]~1_combout\) # ((\Shift|rl1[3]~3_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~1_combout\,
	datab => \Shift|rl1[3]~3_combout\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~2_combout\);

-- Location: LCCOMB_X45_Y68_N26
\Shift|rl2[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~21_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

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
	combout => \Shift|rl2[5]~21_combout\);

-- Location: LCCOMB_X45_Y68_N4
\Shift|rl1[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[5]~4_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl1[5]~4_combout\);

-- Location: LCCOMB_X45_Y68_N30
\Shift|rl2[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~22_combout\ = (\Shift|rl2[5]~21_combout\) # ((\Shift|rl1[5]~4_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[5]~21_combout\,
	datab => \Shift|rl1[5]~4_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[5]~22_combout\);

-- Location: LCCOMB_X47_Y68_N4
\Y_R[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~3_combout\ = (!\B[3]~input_o\ & ((\Y_R[1]~2_combout\) # ((\B[2]~input_o\ & \Shift|rl2[5]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~2_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[5]~22_combout\,
	combout => \Y_R[1]~3_combout\);

-- Location: LCCOMB_X45_Y67_N30
\Shift|rl2[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~25_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|rl2[10]~25_combout\);

-- Location: LCCOMB_X45_Y67_N0
\Shift|rl2[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~26_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[10]~25_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[9]~18_combout\,
	datac => \Shift|rl2[10]~25_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[9]~26_combout\);

-- Location: LCCOMB_X46_Y66_N6
\Shift|rl2[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~23_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[14]~23_combout\);

-- Location: LCCOMB_X46_Y66_N16
\Shift|rl2[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~24_combout\ = (\B[0]~input_o\ & (\Shift|rl2[14]~23_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[13]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[14]~23_combout\,
	datab => \Shift|rl2[13]~15_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[13]~24_combout\);

-- Location: LCCOMB_X47_Y68_N22
\Shift|rl3[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[9]~2_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[13]~24_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[9]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[9]~26_combout\,
	datab => \Shift|rl2[13]~24_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl3[9]~2_combout\);

-- Location: LCCOMB_X47_Y68_N0
\Y_R[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~4_combout\ = (!\B[4]~input_o\ & ((\Y_R[1]~3_combout\) # ((\B[3]~input_o\ & \Shift|rl3[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~3_combout\,
	datad => \Shift|rl3[9]~2_combout\,
	combout => \Y_R[1]~4_combout\);

-- Location: LCCOMB_X52_Y69_N28
\Y_R[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~6_combout\ = (\B[5]~input_o\ & (\Y_R[0]~0_combout\)) # (!\B[5]~input_o\ & (((\Y_R[1]~5_combout\) # (\Y_R[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[0]~0_combout\,
	datab => \Y_R[1]~5_combout\,
	datac => \B[5]~input_o\,
	datad => \Y_R[1]~4_combout\,
	combout => \Y_R[1]~6_combout\);

-- Location: LCCOMB_X42_Y69_N12
\Add|GEN_BLOCKS:0:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X48_Y67_N18
\Shift|ll1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[1]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll1[1]~0_combout\);

-- Location: LCCOMB_X49_Y68_N8
\Shift|ll4[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~4_combout\ = (!\B[2]~input_o\ & !\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll4[9]~4_combout\);

-- Location: LCCOMB_X50_Y66_N4
\Shift|Y_LL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[0]~0_combout\ = (!\B[5]~input_o\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Shift|Y_LL[0]~0_combout\);

-- Location: LCCOMB_X47_Y66_N8
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Shift|ll1[1]~0_combout\ & (!\B[3]~input_o\ & (\Shift|ll4[9]~4_combout\ & \Shift|Y_LL[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[1]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll4[9]~4_combout\,
	datad => \Shift|Y_LL[0]~0_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X42_Y69_N6
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\ShiftFN[0]~input_o\ & (((\Mux30~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (\Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ $ ((\Add|P\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\,
	datab => \Add|P\(1),
	datac => \Mux30~0_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X52_Y69_N6
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (!\FuncClass[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Y_R[1]~6_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux30~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_R[1]~6_combout\,
	datac => \Mux30~1_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X48_Y70_N26
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux30~2_combout\) # ((\Mux30~3_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux30~3_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X48_Y69_N20
\Shift|ll4[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[2]~5_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[2]~5_combout\);

-- Location: LCCOMB_X42_Y69_N26
\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ = (\A[1]~input_o\ & ((\Add|G\(0)) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|G\(0) & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \Add|G\(0),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X42_Y69_N0
\Add|GEN_BLOCKS:0:LACG_INST|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C~1_combout\ = (\AddnSub~input_o\ & (\Add|P\(1) & (\B[0]~input_o\ $ (!\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C~1_combout\);

-- Location: LCCOMB_X42_Y69_N28
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (!\ShiftFN[0]~input_o\ & (\Add|P\(2) $ (((\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\) # (\Add|GEN_BLOCKS:0:LACG_INST|C~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|C~1_combout\,
	datac => \Add|P\(2),
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X52_Y69_N2
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\ShiftFN[0]~input_o\ & (!\B[5]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X42_Y69_N22
\Shift|ll2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~0_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[0]~input_o\)) # (!\B[1]~input_o\ & ((\A[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ll2[2]~0_combout\);

-- Location: LCCOMB_X42_Y69_N8
\Shift|ll2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~1_combout\ = (\Shift|ll2[2]~0_combout\) # ((!\B[1]~input_o\ & (\B[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ll2[2]~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ll2[2]~1_combout\);

-- Location: LCCOMB_X46_Y67_N0
\Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux29~6_combout\) # ((!\Shift|ll4[2]~5_combout\ & (\Mux11~0_combout\ & \Shift|ll2[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[2]~5_combout\,
	datab => \Mux29~6_combout\,
	datac => \Mux11~0_combout\,
	datad => \Shift|ll2[2]~1_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X46_Y69_N24
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = ((!\LogicFN[1]~input_o\ & \LogicFN[0]~input_o\)) # (!\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X42_Y68_N16
\Logic|xor_result[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Logic|xor_result\(2));

-- Location: LCCOMB_X46_Y69_N2
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\FuncClass[0]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X52_Y69_N24
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\B[5]~input_o\) # ((\ShiftFN[0]~input_o\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X52_Y68_N0
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\B[4]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X50_Y67_N28
\Shift|rl2[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~34_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[23]~34_combout\);

-- Location: LCCOMB_X50_Y67_N6
\Shift|rl2[22]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~35_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[23]~34_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[22]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[22]~27_combout\,
	datab => \Shift|rl2[23]~34_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[22]~35_combout\);

-- Location: LCCOMB_X49_Y67_N8
\Shift|rl2[19]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~36_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|rl2[19]~36_combout\);

-- Location: LCCOMB_X48_Y66_N2
\Shift|rl2[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~37_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[19]~36_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[18]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[18]~29_combout\,
	datab => \Shift|rl2[19]~36_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[18]~37_combout\);

-- Location: LCCOMB_X49_Y69_N6
\Shift|rl3[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[18]~6_combout\ = (\B[2]~input_o\ & (\Shift|rl2[22]~35_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[18]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[22]~35_combout\,
	datac => \Shift|rl2[18]~37_combout\,
	combout => \Shift|rl3[18]~6_combout\);

-- Location: LCCOMB_X49_Y69_N16
\Shift|rl2[26]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~33_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[29]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))))

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
	combout => \Shift|rl2[26]~33_combout\);

-- Location: LCCOMB_X49_Y69_N10
\Shift|rl3[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[26]~5_combout\ = (!\B[2]~input_o\ & ((\Shift|rl2[26]~33_combout\) # ((!\B[0]~input_o\ & \Shift|rl2[26]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[26]~33_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[26]~31_combout\,
	combout => \Shift|rl3[26]~5_combout\);

-- Location: LCCOMB_X49_Y69_N12
\Shift|rl4[26]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[26]~5_combout\ = (\Shift|rl3[26]~5_combout\) # ((\B[2]~input_o\ & (\Shift|rl1[30]~0_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl1[30]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl3[26]~5_combout\,
	combout => \Shift|rl4[26]~5_combout\);

-- Location: LCCOMB_X50_Y69_N8
\Shift|rl4[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~6_combout\ = (\B[3]~input_o\ & ((\Shift|rl4[26]~5_combout\))) # (!\B[3]~input_o\ & (\Shift|rl3[18]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl3[18]~6_combout\,
	datad => \Shift|rl4[26]~5_combout\,
	combout => \Shift|rl4[18]~6_combout\);

-- Location: LCCOMB_X46_Y66_N18
\Shift|rl2[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~41_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[15]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Shift|rl2[15]~41_combout\);

-- Location: LCCOMB_X46_Y66_N4
\Shift|rl2[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~42_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[15]~41_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[14]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[14]~23_combout\,
	datab => \Shift|rl2[15]~41_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[14]~42_combout\);

-- Location: LCCOMB_X48_Y70_N4
\Shift|rl2[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~43_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[11]~43_combout\);

-- Location: LCCOMB_X46_Y66_N22
\Shift|rl2[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~44_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[11]~43_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[10]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[10]~25_combout\,
	datab => \Shift|rl2[11]~43_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[10]~44_combout\);

-- Location: LCCOMB_X48_Y69_N16
\Shift|rl3[10]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[10]~7_combout\ = (\B[2]~input_o\ & (\Shift|rl2[14]~42_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[10]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[14]~42_combout\,
	datac => \Shift|rl2[10]~44_combout\,
	combout => \Shift|rl3[10]~7_combout\);

-- Location: LCCOMB_X45_Y67_N18
\Shift|rl2[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~38_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

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
	combout => \Shift|rl2[6]~38_combout\);

-- Location: LCCOMB_X45_Y67_N4
\Shift|rl2[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~39_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Shift|rl2[7]~39_combout\);

-- Location: LCCOMB_X45_Y67_N6
\Shift|rl2[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~40_combout\ = (\Shift|rl2[6]~38_combout\) # ((\Shift|rl2[7]~39_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[6]~38_combout\,
	datac => \Shift|rl2[7]~39_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[6]~40_combout\);

-- Location: LCCOMB_X48_Y69_N18
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X48_Y69_N14
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Shift|ll4[2]~5_combout\ & (((\Shift|rl2[6]~40_combout\) # (\Mux28~2_combout\)))) # (!\Shift|ll4[2]~5_combout\ & (\Shift|rl1[2]~1_combout\ & ((!\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[2]~1_combout\,
	datab => \Shift|ll4[2]~5_combout\,
	datac => \Shift|rl2[6]~40_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X48_Y69_N26
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & (((\Shift|rl3[10]~7_combout\) # (!\Mux28~2_combout\)))) # (!\Mux29~0_combout\ & (\Shift|rl1[4]~2_combout\ & ((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[4]~2_combout\,
	datab => \Shift|rl3[10]~7_combout\,
	datac => \Mux29~0_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X50_Y69_N18
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux28~1_combout\ & ((\Shift|rl4[18]~6_combout\) # ((\Mux28~0_combout\)))) # (!\Mux28~1_combout\ & (((!\Mux28~0_combout\ & \Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Shift|rl4[18]~6_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X49_Y69_N0
\Shift|ra3[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[26]~1_combout\ = (\B[1]~input_o\ & (((\A[31]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[31]~input_o\))) # (!\B[0]~input_o\ & (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ra3[26]~1_combout\);

-- Location: LCCOMB_X49_Y69_N2
\Shift|rl2[26]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~45_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[26]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[26]~45_combout\);

-- Location: LCCOMB_X49_Y69_N20
\Shift|ra3[26]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[26]~2_combout\ = (\B[2]~input_o\ & (\Shift|ra3[26]~1_combout\)) # (!\B[2]~input_o\ & (((\Shift|rl2[26]~45_combout\) # (\Shift|rl2[26]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ra3[26]~1_combout\,
	datac => \Shift|rl2[26]~45_combout\,
	datad => \Shift|rl2[26]~33_combout\,
	combout => \Shift|ra3[26]~2_combout\);

-- Location: LCCOMB_X50_Y69_N4
\Shift|ra4[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[18]~5_combout\ = (\B[3]~input_o\ & (\Shift|ra3[26]~2_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl3[18]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ra3[26]~2_combout\,
	datac => \Shift|rl3[18]~6_combout\,
	combout => \Shift|ra4[18]~5_combout\);

-- Location: LCCOMB_X50_Y69_N30
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux28~0_combout\ & ((\Mux29~2_combout\ & (\Shift|ra4[18]~5_combout\)) # (!\Mux29~2_combout\ & ((\Y_R[0]~0_combout\))))) # (!\Mux28~0_combout\ & (\Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux29~2_combout\,
	datac => \Shift|ra4[18]~5_combout\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X42_Y68_N2
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\Mux28~3_combout\ & ((\Mux28~4_combout\ & (\Logic|xor_result\(2))) # (!\Mux28~4_combout\ & ((\Mux29~3_combout\))))) # (!\Mux28~3_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Logic|xor_result\(2),
	datac => \Mux28~4_combout\,
	datad => \Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X46_Y71_N28
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\FuncClass[0]~input_o\ & \LogicFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X42_Y68_N4
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\A[2]~input_o\ & ((\Mux29~4_combout\) # ((\Mux28~5_combout\ & \B[2]~input_o\)))) # (!\A[2]~input_o\ & (\Mux29~4_combout\ & ((\B[2]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \Mux29~4_combout\,
	datac => \Mux28~5_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X42_Y68_N14
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\ShiftFN[1]~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X42_Y68_N0
\Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux28~6_combout\ & ((\Mux29~5_combout\))) # (!\Mux28~6_combout\ & (\Mux29~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~7_combout\,
	datab => \Mux29~5_combout\,
	datac => \Mux28~6_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X42_Y68_N18
\Add|P[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[3]~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \Add|P[3]~0_combout\);

-- Location: LCCOMB_X42_Y69_N18
\Add|G[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(1) = (\A[1]~input_o\ & (\AddnSub~input_o\ $ (\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	combout => \Add|G\(1));

-- Location: LCCOMB_X42_Y69_N20
\Add|GEN_BLOCKS:0:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = (\Add|G\(1) & ((\A[2]~input_o\) # (\B[2]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(1) & (\A[2]~input_o\ & (\B[2]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Add|G\(1),
	datac => \AddnSub~input_o\,
	datad => \A[2]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X42_Y69_N30
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\) # ((\Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ & (\Add|P\(2) & \Add|P\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\,
	datac => \Add|P\(2),
	datad => \Add|P\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X42_Y68_N24
\Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (!\ShiftFN[0]~input_o\ & (\AddnSub~input_o\ $ (\Add|P[3]~0_combout\ $ (\Add|GEN_BLOCKS:0:LACG_INST|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|P[3]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~2_combout\,
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X43_Y69_N30
\Shift|ll2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[3]~2_combout\);

-- Location: LCCOMB_X47_Y66_N10
\Shift|ll2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~3_combout\ = (\Shift|ll2[3]~2_combout\) # ((\Shift|ll1[1]~0_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[1]~0_combout\,
	datab => \Shift|ll2[3]~2_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[3]~3_combout\);

-- Location: LCCOMB_X42_Y68_N10
\Mux28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~13_combout\) # ((!\Shift|ll4[2]~5_combout\ & (\Shift|ll2[3]~3_combout\ & \Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[2]~5_combout\,
	datab => \Mux28~13_combout\,
	datac => \Shift|ll2[3]~3_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X49_Y69_N30
\Shift|rl2[27]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~46_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[28]~input_o\)) # (!\B[0]~input_o\ & ((\A[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[27]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[27]~46_combout\);

-- Location: LCCOMB_X49_Y68_N26
\Shift|rl2[27]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~47_combout\ = (\Shift|rl2[27]~46_combout\) # ((\Shift|rl1[29]~5_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[29]~5_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|rl2[27]~46_combout\,
	combout => \Shift|rl2[27]~47_combout\);

-- Location: LCCOMB_X49_Y68_N24
\Shift|ra4[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[19]~6_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\A[31]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|rl2[27]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shift|rl2[27]~47_combout\,
	combout => \Shift|ra4[19]~6_combout\);

-- Location: LCCOMB_X50_Y67_N2
\Shift|rl2[19]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~49_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[20]~8_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[19]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[19]~36_combout\,
	datab => \Shift|rl2[20]~8_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[19]~49_combout\);

-- Location: LCCOMB_X50_Y67_N16
\Shift|rl2[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~48_combout\ = (\B[0]~input_o\ & (\Shift|rl2[24]~5_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[23]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[24]~5_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[23]~34_combout\,
	combout => \Shift|rl2[23]~48_combout\);

-- Location: LCCOMB_X50_Y67_N20
\Shift|rl3[19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[19]~8_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[23]~48_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[19]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[19]~49_combout\,
	datad => \Shift|rl2[23]~48_combout\,
	combout => \Shift|rl3[19]~8_combout\);

-- Location: LCCOMB_X49_Y68_N10
\Shift|ra4[19]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[19]~7_combout\ = (\Shift|ra4[19]~6_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[19]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ra4[19]~6_combout\,
	datac => \Shift|rl3[19]~8_combout\,
	combout => \Shift|ra4[19]~7_combout\);

-- Location: LCCOMB_X45_Y67_N24
\Shift|rl2[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~50_combout\ = (\B[0]~input_o\ & (\Shift|rl2[8]~19_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[7]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[8]~19_combout\,
	datac => \Shift|rl2[7]~39_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[7]~50_combout\);

-- Location: LCCOMB_X43_Y69_N0
\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Shift|ll4[2]~5_combout\ & (((\Shift|rl2[7]~50_combout\) # (\Mux28~2_combout\)))) # (!\Shift|ll4[2]~5_combout\ & (\Shift|rl1[3]~3_combout\ & ((!\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[3]~3_combout\,
	datab => \Shift|ll4[2]~5_combout\,
	datac => \Shift|rl2[7]~50_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X46_Y66_N8
\Shift|rl2[11]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~52_combout\ = (\B[0]~input_o\ & (\Shift|rl2[12]~16_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[11]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~16_combout\,
	datab => \Shift|rl2[11]~43_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[11]~52_combout\);

-- Location: LCCOMB_X48_Y66_N12
\Shift|rl2[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~51_combout\ = (\B[0]~input_o\ & (\Shift|rl2[16]~11_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[15]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[16]~11_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[15]~41_combout\,
	combout => \Shift|rl2[15]~51_combout\);

-- Location: LCCOMB_X43_Y69_N18
\Shift|rl3[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[11]~9_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[15]~51_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[11]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|rl2[11]~52_combout\,
	datad => \Shift|rl2[15]~51_combout\,
	combout => \Shift|rl3[11]~9_combout\);

-- Location: LCCOMB_X43_Y69_N28
\Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (\Mux28~7_combout\ & (((\Shift|rl3[11]~9_combout\) # (!\Mux28~2_combout\)))) # (!\Mux28~7_combout\ & (\Shift|rl1[5]~4_combout\ & ((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[5]~4_combout\,
	datab => \Mux28~7_combout\,
	datac => \Shift|rl3[11]~9_combout\,
	datad => \Mux28~2_combout\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X50_Y69_N24
\Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\Mux28~0_combout\ & (((\Mux28~1_combout\) # (\Y_R[0]~0_combout\)))) # (!\Mux28~0_combout\ & (\Mux28~8_combout\ & (!\Mux28~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~0_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux28~1_combout\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X49_Y68_N28
\Shift|rl4[27]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[27]~7_combout\ = (\B[2]~input_o\ & (\Shift|rl2[29]~32_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|rl2[27]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[29]~32_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl2[27]~47_combout\,
	combout => \Shift|rl4[27]~7_combout\);

-- Location: LCCOMB_X49_Y68_N14
\Shift|rl4[19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~8_combout\ = (\B[3]~input_o\ & (\Shift|rl4[27]~7_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl3[19]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl4[27]~7_combout\,
	datac => \Shift|rl3[19]~8_combout\,
	combout => \Shift|rl4[19]~8_combout\);

-- Location: LCCOMB_X50_Y69_N10
\Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\Mux28~9_combout\ & ((\Shift|ra4[19]~7_combout\) # ((!\Mux28~1_combout\)))) # (!\Mux28~9_combout\ & (((\Mux28~1_combout\ & \Shift|rl4[19]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[19]~7_combout\,
	datab => \Mux28~9_combout\,
	datac => \Mux28~1_combout\,
	datad => \Shift|rl4[19]~8_combout\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X42_Y68_N20
\Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\Mux28~3_combout\ & ((\Mux28~4_combout\ & (\Add|P[3]~0_combout\)) # (!\Mux28~4_combout\ & ((\Mux28~10_combout\))))) # (!\Mux28~3_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Add|P[3]~0_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux28~10_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X42_Y68_N22
\Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\B[3]~input_o\ & ((\Mux28~11_combout\) # ((\A[3]~input_o\ & \Mux28~5_combout\)))) # (!\B[3]~input_o\ & (\Mux28~11_combout\ & ((\A[3]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \Mux28~5_combout\,
	datad => \Mux28~11_combout\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X42_Y68_N28
\Mux28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux28~6_combout\ & ((\Mux28~12_combout\))) # (!\Mux28~6_combout\ & (\Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~14_combout\,
	datab => \Mux28~6_combout\,
	datac => \Mux28~12_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X46_Y68_N16
\Logic|xor_result[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(4) = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Logic|xor_result\(4));

-- Location: LCCOMB_X47_Y69_N24
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\B[5]~input_o\) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X47_Y68_N18
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\) # (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X47_Y68_N14
\Shift|rl3[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[12]~11_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[16]~12_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[12]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~17_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[16]~12_combout\,
	combout => \Shift|rl3[12]~11_combout\);

-- Location: LCCOMB_X49_Y66_N8
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\B[3]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X50_Y67_N22
\Shift|rl3[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[20]~10_combout\ = (\B[2]~input_o\ & (\Shift|rl2[24]~6_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[20]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[24]~6_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|rl2[20]~9_combout\,
	combout => \Shift|rl3[20]~10_combout\);

-- Location: LCCOMB_X50_Y68_N2
\Shift|rl4[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~9_combout\ = (\B[3]~input_o\ & (\Shift|rl2[28]~3_combout\ & (!\B[2]~input_o\))) # (!\B[3]~input_o\ & (((\Shift|rl3[20]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[28]~3_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[20]~10_combout\,
	combout => \Shift|rl4[20]~9_combout\);

-- Location: LCCOMB_X47_Y68_N28
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux27~1_combout\ & (((\Shift|rl4[20]~9_combout\) # (\Mux27~0_combout\)))) # (!\Mux27~1_combout\ & (\Shift|rl2[4]~14_combout\ & ((!\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Shift|rl2[4]~14_combout\,
	datac => \Shift|rl4[20]~9_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X47_Y68_N24
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~0_combout\ & ((\Mux27~2_combout\ & ((\Shift|rl3[12]~11_combout\))) # (!\Mux27~2_combout\ & (\Shift|rl2[8]~20_combout\)))) # (!\Mux27~0_combout\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[8]~20_combout\,
	datab => \Mux27~0_combout\,
	datac => \Shift|rl3[12]~11_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X47_Y69_N10
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\ShiftFN[1]~input_o\ & (\B[5]~input_o\)) # (!\ShiftFN[1]~input_o\ & (!\B[5]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X47_Y69_N28
\Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X43_Y69_N24
\Shift|ll2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~4_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[4]~4_combout\);

-- Location: LCCOMB_X43_Y69_N2
\Shift|ll2[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~5_combout\ = (\B[1]~input_o\ & (\A[2]~input_o\)) # (!\B[1]~input_o\ & ((\A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \A[4]~input_o\,
	combout => \Shift|ll2[4]~5_combout\);

-- Location: LCCOMB_X43_Y69_N4
\Shift|ll2[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~6_combout\ = (\Shift|ll2[4]~4_combout\) # ((\Shift|ll2[4]~5_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[4]~4_combout\,
	datac => \Shift|ll2[4]~5_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[4]~6_combout\);

-- Location: LCCOMB_X45_Y69_N26
\Shift|ll3[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[4]~1_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\A[0]~input_o\ & !\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll3[4]~1_combout\);

-- Location: LCCOMB_X45_Y69_N28
\Shift|ll4[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[4]~6_combout\ = (!\B[3]~input_o\ & ((\Shift|ll3[4]~1_combout\) # ((!\B[2]~input_o\ & \Shift|ll2[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[4]~6_combout\,
	datac => \Shift|ll3[4]~1_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[4]~6_combout\);

-- Location: LCCOMB_X46_Y68_N26
\Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux27~5_combout\ & ((\Mux27~6_combout\ & ((\Y_R[0]~0_combout\))) # (!\Mux27~6_combout\ & (\Shift|ll4[4]~6_combout\)))) # (!\Mux27~5_combout\ & (\Mux27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datab => \Mux27~6_combout\,
	datac => \Shift|ll4[4]~6_combout\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X50_Y68_N12
\Shift|ra4[20]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[20]~8_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\A[31]~input_o\))) # (!\B[2]~input_o\ & (\Shift|rl2[28]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[28]~3_combout\,
	datab => \B[2]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ra4[20]~8_combout\);

-- Location: LCCOMB_X50_Y68_N6
\Shift|ra4[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[20]~9_combout\ = (\Shift|ra4[20]~8_combout\) # ((\Shift|rl3[20]~10_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl3[20]~10_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ra4[20]~8_combout\,
	combout => \Shift|ra4[20]~9_combout\);

-- Location: LCCOMB_X46_Y68_N4
\Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~8_combout\ = (\Mux27~4_combout\ & (((\Mux27~7_combout\)))) # (!\Mux27~4_combout\ & ((\Mux27~7_combout\ & ((\Shift|ra4[20]~9_combout\))) # (!\Mux27~7_combout\ & (\Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~4_combout\,
	datab => \Mux27~3_combout\,
	datac => \Mux27~7_combout\,
	datad => \Shift|ra4[20]~9_combout\,
	combout => \Mux27~8_combout\);

-- Location: LCCOMB_X46_Y68_N14
\Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~9_combout\ = (\Mux28~3_combout\ & ((\Mux28~4_combout\ & (\Logic|xor_result\(4))) # (!\Mux28~4_combout\ & ((\Mux27~8_combout\))))) # (!\Mux28~3_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Logic|xor_result\(4),
	datac => \Mux27~8_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux27~9_combout\);

-- Location: LCCOMB_X46_Y68_N24
\Mux27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~10_combout\ = (\A[4]~input_o\ & ((\Mux27~9_combout\) # ((\B[4]~input_o\ & \Mux28~5_combout\)))) # (!\A[4]~input_o\ & (\Mux27~9_combout\ & ((\B[4]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Mux27~9_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux27~10_combout\);

-- Location: LCCOMB_X45_Y69_N30
\Add|block_carry_in[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~25_combout\ = (\Add|block_carry_in[1]~14_combout\) # ((\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & \AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[1]~14_combout\,
	combout => \Add|block_carry_in[1]~25_combout\);

-- Location: LCCOMB_X43_Y68_N20
\Add|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(4) = \A[4]~input_o\ $ (\Add|block_carry_in[1]~25_combout\ $ (\AddnSub~input_o\ $ (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Add|block_carry_in[1]~25_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add|S\(4));

-- Location: LCCOMB_X52_Y68_N18
\Mux27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~11_combout\ = (\FuncClass[0]~input_o\) # ((\ShiftFN[1]~input_o\) # (\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux27~11_combout\);

-- Location: LCCOMB_X42_Y68_N6
\Mux27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~12_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux27~11_combout\ & (\Mux27~10_combout\)) # (!\Mux27~11_combout\ & ((\Add|S\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~10_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Add|S\(4),
	datad => \Mux27~11_combout\,
	combout => \Mux27~12_combout\);

-- Location: LCCOMB_X48_Y67_N20
\Shift|rl3[21]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[21]~12_combout\ = (\B[2]~input_o\ & ((\B[0]~input_o\ & (\Shift|rl2[26]~31_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[25]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[26]~31_combout\,
	datac => \Shift|rl2[25]~4_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl3[21]~12_combout\);

-- Location: LCCOMB_X48_Y67_N6
\Shift|rl3[21]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[21]~13_combout\ = (\Shift|rl3[21]~12_combout\) # ((!\B[2]~input_o\ & \Shift|rl2[21]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl3[21]~12_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[21]~28_combout\,
	combout => \Shift|rl3[21]~13_combout\);

-- Location: LCCOMB_X48_Y68_N20
\Shift|rl2[29]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[29]~53_combout\ = (\B[1]~input_o\ & (!\B[0]~input_o\ & (\A[31]~input_o\))) # (!\B[1]~input_o\ & (((\Shift|rl1[29]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shift|rl1[29]~5_combout\,
	combout => \Shift|rl2[29]~53_combout\);

-- Location: LCCOMB_X48_Y68_N18
\Shift|rl4[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~10_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|rl2[29]~53_combout\)))) # (!\B[3]~input_o\ & (((\Shift|rl3[21]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl3[21]~13_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[29]~53_combout\,
	combout => \Shift|rl4[21]~10_combout\);

-- Location: LCCOMB_X47_Y68_N10
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux27~1_combout\ & ((\Mux27~0_combout\) # ((\Shift|rl4[21]~10_combout\)))) # (!\Mux27~1_combout\ & (!\Mux27~0_combout\ & ((\Shift|rl2[5]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \Shift|rl4[21]~10_combout\,
	datad => \Shift|rl2[5]~22_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X47_Y68_N12
\Shift|rl3[13]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[13]~14_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[17]~30_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[13]~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[17]~30_combout\,
	combout => \Shift|rl3[13]~14_combout\);

-- Location: LCCOMB_X47_Y68_N6
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux26~1_combout\ & (((\Shift|rl3[13]~14_combout\)) # (!\Mux27~0_combout\))) # (!\Mux26~1_combout\ & (\Mux27~0_combout\ & (\Shift|rl2[9]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \Shift|rl2[9]~26_combout\,
	datad => \Shift|rl3[13]~14_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X43_Y69_N22
\Shift|ll2[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~7_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[5]~7_combout\);

-- Location: LCCOMB_X43_Y69_N8
\Shift|ll2[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~8_combout\ = (\B[0]~input_o\ & (\Shift|ll2[4]~5_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[4]~5_combout\,
	datac => \Shift|ll2[5]~7_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[5]~8_combout\);

-- Location: LCCOMB_X47_Y66_N28
\Shift|ll4[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~7_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\Shift|ll1[1]~0_combout\))) # (!\B[2]~input_o\ & (((\Shift|ll2[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \Shift|ll2[5]~8_combout\,
	combout => \Shift|ll4[13]~7_combout\);

-- Location: LCCOMB_X47_Y66_N6
\Shift|ll4[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[5]~8_combout\ = (!\B[3]~input_o\ & \Shift|ll4[13]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[13]~7_combout\,
	combout => \Shift|ll4[5]~8_combout\);

-- Location: LCCOMB_X46_Y68_N28
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux27~6_combout\ & (((\Y_R[0]~0_combout\) # (!\Mux27~5_combout\)))) # (!\Mux27~6_combout\ & (\Shift|ll4[5]~8_combout\ & (\Mux27~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[5]~8_combout\,
	datab => \Mux27~6_combout\,
	datac => \Mux27~5_combout\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X48_Y68_N12
\Shift|ra4[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[21]~10_combout\ = (\B[3]~input_o\ & ((\Shift|ll4[9]~4_combout\ & ((\Shift|rl1[29]~5_combout\))) # (!\Shift|ll4[9]~4_combout\ & (\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[9]~4_combout\,
	datab => \B[3]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shift|rl1[29]~5_combout\,
	combout => \Shift|ra4[21]~10_combout\);

-- Location: LCCOMB_X48_Y68_N6
\Shift|ra4[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[21]~11_combout\ = (\Shift|ra4[21]~10_combout\) # ((\Shift|rl3[21]~13_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl3[21]~13_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ra4[21]~10_combout\,
	combout => \Shift|ra4[21]~11_combout\);

-- Location: LCCOMB_X46_Y68_N22
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Mux26~3_combout\ & (((\Mux27~4_combout\) # (\Shift|ra4[21]~11_combout\)))) # (!\Mux26~3_combout\ & (\Mux26~2_combout\ & (!\Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~2_combout\,
	datab => \Mux26~3_combout\,
	datac => \Mux27~4_combout\,
	datad => \Shift|ra4[21]~11_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X46_Y68_N10
\Logic|xor_result[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(5) = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Logic|xor_result\(5));

-- Location: LCCOMB_X46_Y68_N0
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux28~4_combout\ & (((\Mux28~3_combout\ & \Logic|xor_result\(5))))) # (!\Mux28~4_combout\ & ((\Mux26~4_combout\) # ((!\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~4_combout\,
	datab => \Mux28~4_combout\,
	datac => \Mux28~3_combout\,
	datad => \Logic|xor_result\(5),
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X46_Y68_N18
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\A[5]~input_o\ & ((\Mux26~5_combout\) # ((\B[5]~input_o\ & \Mux28~5_combout\)))) # (!\A[5]~input_o\ & (\Mux26~5_combout\ & ((\B[5]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Mux26~5_combout\,
	datac => \B[5]~input_o\,
	datad => \Mux28~5_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X43_Y68_N14
\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ = (\A[4]~input_o\ & ((\Add|block_carry_in[1]~25_combout\) # (\AddnSub~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\Add|block_carry_in[1]~25_combout\ & (\AddnSub~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Add|block_carry_in[1]~25_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X42_Y68_N8
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (!\Mux27~11_combout\ & (\Add|P\(5) $ (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|P\(5),
	datac => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\,
	datad => \Mux27~11_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X42_Y68_N26
\Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux26~0_combout\) # ((\Mux26~6_combout\ & \Mux27~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~6_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux26~0_combout\,
	datad => \Mux27~11_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X43_Y68_N0
\Add|G[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(4) = (\A[4]~input_o\ & (\AddnSub~input_o\ $ (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add|G\(4));

-- Location: LCCOMB_X43_Y68_N2
\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = (\A[5]~input_o\ & ((\Add|G\(4)) # (\AddnSub~input_o\ $ (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\Add|G\(4) & (\AddnSub~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Add|G\(4),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X43_Y68_N12
\Add|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(6) = \Add|P\(6) $ (((\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\,
	datac => \Add|block_carry_in[1]~25_combout\,
	datad => \Add|P\(6),
	combout => \Add|S\(6));

-- Location: LCCOMB_X48_Y69_N28
\Shift|rl3[14]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[14]~16_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[18]~37_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[14]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[14]~42_combout\,
	datac => \Shift|rl2[18]~37_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl3[14]~16_combout\);

-- Location: LCCOMB_X49_Y69_N8
\Shift|rl3[22]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[22]~15_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[26]~45_combout\) # ((\Shift|rl2[26]~33_combout\)))) # (!\B[2]~input_o\ & (((\Shift|rl2[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[26]~45_combout\,
	datac => \Shift|rl2[22]~35_combout\,
	datad => \Shift|rl2[26]~33_combout\,
	combout => \Shift|rl3[22]~15_combout\);

-- Location: LCCOMB_X50_Y66_N6
\Shift|rl4[22]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~11_combout\ = (\B[3]~input_o\ & (((\Shift|ll4[9]~4_combout\ & \Shift|rl1[30]~0_combout\)))) # (!\B[3]~input_o\ & (\Shift|rl3[22]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[22]~15_combout\,
	datab => \Shift|ll4[9]~4_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl1[30]~0_combout\,
	combout => \Shift|rl4[22]~11_combout\);

-- Location: LCCOMB_X47_Y68_N16
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux27~1_combout\ & ((\Mux27~0_combout\) # ((\Shift|rl4[22]~11_combout\)))) # (!\Mux27~1_combout\ & (!\Mux27~0_combout\ & (\Shift|rl2[6]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux27~0_combout\,
	datac => \Shift|rl2[6]~40_combout\,
	datad => \Shift|rl4[22]~11_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X47_Y68_N2
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux27~0_combout\ & ((\Mux25~0_combout\ & (\Shift|rl3[14]~16_combout\)) # (!\Mux25~0_combout\ & ((\Shift|rl2[10]~44_combout\))))) # (!\Mux27~0_combout\ & (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[14]~16_combout\,
	datab => \Mux27~0_combout\,
	datac => \Shift|rl2[10]~44_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X43_Y69_N26
\Shift|ll2[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~9_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[4]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|ll2[6]~9_combout\);

-- Location: LCCOMB_X43_Y69_N20
\Shift|ll2[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~10_combout\ = (\B[0]~input_o\ & (\Shift|ll2[5]~7_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[5]~7_combout\,
	datac => \Shift|ll2[6]~9_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[6]~10_combout\);

-- Location: LCCOMB_X46_Y67_N18
\Shift|ll4[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[6]~9_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[2]~1_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[6]~10_combout\,
	datad => \Shift|ll2[2]~1_combout\,
	combout => \Shift|ll4[6]~9_combout\);

-- Location: LCCOMB_X46_Y68_N20
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux27~5_combout\ & ((\Mux27~6_combout\ & ((\Y_R[0]~0_combout\))) # (!\Mux27~6_combout\ & (\Shift|ll4[6]~9_combout\)))) # (!\Mux27~5_combout\ & (\Mux27~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datab => \Mux27~6_combout\,
	datac => \Shift|ll4[6]~9_combout\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X47_Y67_N10
\Shift|ra4[22]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[22]~12_combout\ = (\B[3]~input_o\ & ((\Shift|ll3[0]~0_combout\ & (\A[31]~input_o\)) # (!\Shift|ll3[0]~0_combout\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[0]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|ra4[22]~12_combout\);

-- Location: LCCOMB_X52_Y68_N4
\Shift|ra4[22]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[22]~13_combout\ = (\Shift|ra4[22]~12_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[22]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[22]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[22]~15_combout\,
	combout => \Shift|ra4[22]~13_combout\);

-- Location: LCCOMB_X46_Y68_N30
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux25~2_combout\ & (((\Mux27~4_combout\) # (\Shift|ra4[22]~13_combout\)))) # (!\Mux25~2_combout\ & (\Mux25~1_combout\ & (!\Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Mux25~2_combout\,
	datac => \Mux27~4_combout\,
	datad => \Shift|ra4[22]~13_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X45_Y68_N16
\Logic|xor_result[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(6) = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Logic|xor_result\(6));

-- Location: LCCOMB_X46_Y68_N8
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux28~3_combout\ & ((\Mux28~4_combout\ & ((\Logic|xor_result\(6)))) # (!\Mux28~4_combout\ & (\Mux25~3_combout\)))) # (!\Mux28~3_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \Logic|xor_result\(6),
	datac => \Mux28~3_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X45_Y68_N2
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux28~5_combout\ & ((\Mux25~4_combout\ & ((\B[6]~input_o\) # (\A[6]~input_o\))) # (!\Mux25~4_combout\ & (\B[6]~input_o\ & \A[6]~input_o\)))) # (!\Mux28~5_combout\ & (\Mux25~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \Mux25~4_combout\,
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X43_Y68_N22
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux27~11_combout\ & ((\Mux25~5_combout\))) # (!\Mux27~11_combout\ & (\Add|S\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(6),
	datab => \FuncClass[1]~input_o\,
	datac => \Mux25~5_combout\,
	datad => \Mux27~11_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X43_Y68_N10
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ = (\A[4]~input_o\ & ((\Add|block_carry_in[1]~25_combout\) # (\AddnSub~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\Add|block_carry_in[1]~25_combout\ & (\AddnSub~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \Add|block_carry_in[1]~25_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X43_Y68_N24
\Add|GEN_BLOCKS:1:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = (\A[6]~input_o\ & ((\Add|G\(5)) # (\B[6]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[6]~input_o\ & (\Add|G\(5) & (\B[6]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(5),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X43_Y68_N4
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ & (\Add|P\(5) & \Add|P\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\,
	datab => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\,
	datac => \Add|P\(5),
	datad => \Add|P\(6),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X45_Y68_N28
\Logic|xor_result[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[7]~2_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	combout => \Logic|xor_result[7]~2_combout\);

-- Location: LCCOMB_X42_Y68_N12
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (!\Mux27~11_combout\ & (\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ $ (\Logic|xor_result[7]~2_combout\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\,
	datab => \Mux27~11_combout\,
	datac => \Logic|xor_result[7]~2_combout\,
	datad => \AddnSub~input_o\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X46_Y67_N12
\Shift|rl3[15]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[15]~17_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[19]~49_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[15]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[15]~51_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[19]~49_combout\,
	combout => \Shift|rl3[15]~17_combout\);

-- Location: LCCOMB_X50_Y67_N24
\Shift|ra4[23]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[23]~14_combout\ = (\B[2]~input_o\ & (\Shift|rl2[27]~47_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[23]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[27]~47_combout\,
	datad => \Shift|rl2[23]~48_combout\,
	combout => \Shift|ra4[23]~14_combout\);

-- Location: LCCOMB_X47_Y67_N4
\Shift|rl4[23]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~12_combout\ = (\B[3]~input_o\ & (!\Shift|ll3[0]~0_combout\ & (\A[31]~input_o\))) # (!\B[3]~input_o\ & (((\Shift|ra4[23]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[0]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \Shift|ra4[23]~14_combout\,
	combout => \Shift|rl4[23]~12_combout\);

-- Location: LCCOMB_X47_Y68_N20
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux27~1_combout\ & ((\Shift|rl4[23]~12_combout\) # ((\Mux27~0_combout\)))) # (!\Mux27~1_combout\ & (((\Shift|rl2[7]~50_combout\ & !\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Shift|rl4[23]~12_combout\,
	datac => \Shift|rl2[7]~50_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X47_Y68_N30
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux27~0_combout\ & ((\Mux24~1_combout\ & ((\Shift|rl3[15]~17_combout\))) # (!\Mux24~1_combout\ & (\Shift|rl2[11]~52_combout\)))) # (!\Mux27~0_combout\ & (((\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[11]~52_combout\,
	datab => \Mux27~0_combout\,
	datac => \Shift|rl3[15]~17_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X45_Y68_N22
\Shift|ll2[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~11_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[7]~11_combout\);

-- Location: LCCOMB_X43_Y69_N6
\Shift|ll2[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~12_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[6]~9_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[7]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[7]~11_combout\,
	datac => \Shift|ll2[6]~9_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[7]~12_combout\);

-- Location: LCCOMB_X48_Y65_N16
\Shift|ll4[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[7]~10_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[3]~3_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[7]~12_combout\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll4[7]~10_combout\);

-- Location: LCCOMB_X46_Y68_N2
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux27~6_combout\ & (((\Y_R[0]~0_combout\) # (!\Mux27~5_combout\)))) # (!\Mux27~6_combout\ & (\Shift|ll4[7]~10_combout\ & (\Mux27~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[7]~10_combout\,
	datab => \Mux27~6_combout\,
	datac => \Mux27~5_combout\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X47_Y67_N14
\Shift|ra4[23]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[23]~15_combout\ = (\B[3]~input_o\ & ((\A[31]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ra4[23]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ra4[23]~14_combout\,
	datac => \A[31]~input_o\,
	combout => \Shift|ra4[23]~15_combout\);

-- Location: LCCOMB_X46_Y68_N12
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\Mux24~3_combout\ & (((\Mux27~4_combout\) # (\Shift|ra4[23]~15_combout\)))) # (!\Mux24~3_combout\ & (\Mux24~2_combout\ & (!\Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux24~3_combout\,
	datac => \Mux27~4_combout\,
	datad => \Shift|ra4[23]~15_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X46_Y68_N6
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux28~3_combout\ & ((\Mux28~4_combout\ & ((\Logic|xor_result[7]~2_combout\))) # (!\Mux28~4_combout\ & (\Mux24~4_combout\)))) # (!\Mux28~3_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \Logic|xor_result[7]~2_combout\,
	datac => \Mux28~3_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X45_Y68_N24
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\B[7]~input_o\ & ((\Mux24~5_combout\) # ((\A[7]~input_o\ & \Mux28~5_combout\)))) # (!\B[7]~input_o\ & (\Mux24~5_combout\ & ((\A[7]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Mux28~5_combout\,
	datad => \Mux24~5_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X43_Y68_N30
\Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux24~0_combout\) # ((\Mux24~6_combout\ & \Mux27~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux24~6_combout\,
	datad => \Mux27~11_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X45_Y68_N18
\Shift|ll2[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~13_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ll2[8]~13_combout\);

-- Location: LCCOMB_X45_Y68_N12
\Shift|ll2[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~14_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[7]~11_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[8]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[8]~13_combout\,
	datac => \Shift|ll2[7]~11_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[8]~14_combout\);

-- Location: LCCOMB_X45_Y69_N14
\Shift|Y_LL[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[16]~1_combout\ = (\B[2]~input_o\ & (\Shift|ll2[4]~6_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[8]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ll2[4]~6_combout\,
	datad => \Shift|ll2[8]~14_combout\,
	combout => \Shift|Y_LL[16]~1_combout\);

-- Location: LCCOMB_X47_Y67_N24
\Shift|ll4[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~11_combout\ = (\B[3]~input_o\ & (\A[0]~input_o\ & (!\Shift|ll3[0]~0_combout\))) # (!\B[3]~input_o\ & (((\Shift|Y_LL[16]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Shift|ll3[0]~0_combout\,
	datac => \Shift|Y_LL[16]~1_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[8]~11_combout\);

-- Location: LCCOMB_X46_Y70_N20
\Add|S[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(8) = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\Add|block_carry_in[2]~15_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \Add|block_carry_in[2]~15_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(8));

-- Location: LCCOMB_X47_Y69_N6
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (!\ShiftFN[1]~input_o\ & (((!\B[4]~input_o\ & !\B[5]~input_o\)) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X47_Y69_N0
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\ShiftFN[1]~input_o\ & (\B[5]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X46_Y70_N22
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux21~1_combout\ & ((\Mux21~2_combout\ & ((\Add|S\(8)))) # (!\Mux21~2_combout\ & (\Shift|ll4[8]~11_combout\)))) # (!\Mux21~1_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[8]~11_combout\,
	datab => \Add|S\(8),
	datac => \Mux21~1_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X49_Y68_N20
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\B[4]~input_o\ & ((\ShiftFN[0]~input_o\))) # (!\B[4]~input_o\ & (\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X50_Y68_N24
\Shift|rl4[24]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~13_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[28]~3_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[24]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[28]~3_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[24]~6_combout\,
	combout => \Shift|rl4[24]~13_combout\);

-- Location: LCCOMB_X49_Y68_N30
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux21~0_combout\ & (((\B[4]~input_o\)))) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & ((\Shift|rl4[24]~13_combout\))) # (!\B[4]~input_o\ & (\Shift|rl3[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Shift|rl3[8]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|rl4[24]~13_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X50_Y68_N18
\Shift|ra4[24]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[24]~16_combout\ = (\Shift|rl4[24]~13_combout\) # ((\A[31]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Shift|rl4[24]~13_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ra4[24]~16_combout\);

-- Location: LCCOMB_X49_Y68_N0
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\Shift|ra4[24]~16_combout\)) # (!\Mux21~0_combout\))) # (!\Mux23~0_combout\ & (\Mux21~0_combout\ & (\Shift|rl3[16]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Mux21~0_combout\,
	datac => \Shift|rl3[16]~0_combout\,
	datad => \Shift|ra4[24]~16_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X46_Y70_N8
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & (((\Y_R[0]~0_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux23~2_combout\ & (\Mux23~1_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~2_combout\,
	datab => \Mux23~1_combout\,
	datac => \Y_R[0]~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X46_Y70_N2
\Logic|xor_result[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(8) = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => \Logic|xor_result\(8));

-- Location: LCCOMB_X46_Y70_N10
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux28~4_combout\ & (\Mux28~3_combout\ & ((\Logic|xor_result\(8))))) # (!\Mux28~4_combout\ & (((\Mux23~3_combout\)) # (!\Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux28~3_combout\,
	datac => \Mux23~3_combout\,
	datad => \Logic|xor_result\(8),
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X46_Y71_N14
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\A[8]~input_o\ & ((\Mux23~4_combout\) # ((\B[8]~input_o\ & \Mux28~5_combout\)))) # (!\A[8]~input_o\ & (\Mux23~4_combout\ & ((\B[8]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Mux23~4_combout\,
	datac => \B[8]~input_o\,
	datad => \Mux28~5_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X46_Y71_N24
\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~5_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux23~5_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X48_Y67_N16
\Shift|ra4[25]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[25]~17_combout\ = (\B[3]~input_o\ & (((\A[31]~input_o\)))) # (!\B[3]~input_o\ & ((\Shift|rl3[25]~4_combout\) # ((\Shift|ra3[25]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[25]~4_combout\,
	datab => \Shift|ra3[25]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ra4[25]~17_combout\);

-- Location: LCCOMB_X48_Y68_N8
\Shift|rl4[25]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[25]~14_combout\ = (!\B[3]~input_o\ & ((\Shift|rl3[25]~4_combout\) # ((\B[2]~input_o\ & \Shift|rl2[29]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[29]~53_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[25]~4_combout\,
	combout => \Shift|rl4[25]~14_combout\);

-- Location: LCCOMB_X49_Y68_N18
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\B[4]~input_o\ & ((\Mux21~0_combout\) # ((\Shift|rl4[25]~14_combout\)))) # (!\B[4]~input_o\ & (!\Mux21~0_combout\ & (\Shift|rl3[9]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Mux21~0_combout\,
	datac => \Shift|rl3[9]~2_combout\,
	datad => \Shift|rl4[25]~14_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X49_Y68_N4
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & ((\Shift|ra4[25]~17_combout\) # ((!\Mux21~0_combout\)))) # (!\Mux22~0_combout\ & (((\Mux21~0_combout\ & \Shift|rl3[17]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[25]~17_combout\,
	datab => \Mux22~0_combout\,
	datac => \Mux21~0_combout\,
	datad => \Shift|rl3[17]~3_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X45_Y67_N26
\Shift|ll2[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~15_combout\ = (\B[1]~input_o\ & ((\A[7]~input_o\))) # (!\B[1]~input_o\ & (\A[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datac => \A[7]~input_o\,
	combout => \Shift|ll2[9]~15_combout\);

-- Location: LCCOMB_X46_Y67_N30
\Shift|ll2[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~16_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[8]~13_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[9]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[9]~15_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[8]~13_combout\,
	combout => \Shift|ll2[9]~16_combout\);

-- Location: LCCOMB_X47_Y66_N0
\Shift|ll3[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[9]~2_combout\ = (\B[2]~input_o\ & (\Shift|ll2[5]~8_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[9]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[5]~8_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[9]~16_combout\,
	combout => \Shift|ll3[9]~2_combout\);

-- Location: LCCOMB_X47_Y66_N2
\Shift|ll4[9]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~12_combout\ = (\B[3]~input_o\ & (\Shift|ll1[1]~0_combout\ & ((\Shift|ll4[9]~4_combout\)))) # (!\B[3]~input_o\ & (((\Shift|ll3[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[1]~0_combout\,
	datab => \Shift|ll3[9]~2_combout\,
	datac => \Shift|ll4[9]~4_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[9]~12_combout\);

-- Location: LCCOMB_X46_Y70_N30
\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ = (\A[8]~input_o\ & ((\Add|block_carry_in[2]~15_combout\) # (\B[8]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[8]~input_o\ & (\Add|block_carry_in[2]~15_combout\ & (\B[8]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \Add|block_carry_in[2]~15_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X46_Y70_N18
\Add|S[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(9) = \AddnSub~input_o\ $ (\B[9]~input_o\ $ (\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ $ (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[9]~input_o\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\,
	datad => \A[9]~input_o\,
	combout => \Add|S\(9));

-- Location: LCCOMB_X46_Y70_N0
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux21~1_combout\ & ((\Mux21~2_combout\ & ((\Add|S\(9)))) # (!\Mux21~2_combout\ & (\Shift|ll4[9]~12_combout\)))) # (!\Mux21~1_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[9]~12_combout\,
	datab => \Add|S\(9),
	datac => \Mux21~1_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X46_Y70_N26
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux22~2_combout\ & ((\Y_R[0]~0_combout\))) # (!\Mux22~2_combout\ & (\Mux22~1_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux22~1_combout\,
	datac => \Y_R[0]~0_combout\,
	datad => \Mux22~2_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X46_Y70_N28
\Logic|xor_result[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(9) = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	combout => \Logic|xor_result\(9));

-- Location: LCCOMB_X46_Y70_N4
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux28~4_combout\ & (\Mux28~3_combout\ & ((\Logic|xor_result\(9))))) # (!\Mux28~4_combout\ & (((\Mux22~3_combout\)) # (!\Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux28~3_combout\,
	datac => \Mux22~3_combout\,
	datad => \Logic|xor_result\(9),
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X45_Y70_N14
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (\Mux22~4_combout\ & ((\A[9]~input_o\) # ((\B[9]~input_o\) # (!\Mux28~5_combout\)))) # (!\Mux22~4_combout\ & (\A[9]~input_o\ & (\B[9]~input_o\ & \Mux28~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~4_combout\,
	datab => \A[9]~input_o\,
	datac => \B[9]~input_o\,
	datad => \Mux28~5_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X49_Y70_N0
\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux22~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux22~5_combout\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X46_Y70_N14
\Logic|xor_result[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(10) = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Logic|xor_result\(10));

-- Location: LCCOMB_X50_Y69_N12
\Shift|rl4[26]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[26]~15_combout\ = (!\B[3]~input_o\ & \Shift|rl4[26]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \Shift|rl4[26]~5_combout\,
	combout => \Shift|rl4[26]~15_combout\);

-- Location: LCCOMB_X50_Y69_N22
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~0_combout\ & (\B[4]~input_o\)) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & ((\Shift|rl4[26]~15_combout\))) # (!\B[4]~input_o\ & (\Shift|rl3[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|rl3[10]~7_combout\,
	datad => \Shift|rl4[26]~15_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X50_Y69_N0
\Shift|ra4[26]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[26]~18_combout\ = (\B[3]~input_o\ & ((\A[31]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ra3[26]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ra3[26]~2_combout\,
	datac => \A[31]~input_o\,
	combout => \Shift|ra4[26]~18_combout\);

-- Location: LCCOMB_X50_Y69_N26
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux21~0_combout\ & ((\Mux21~3_combout\ & ((\Shift|ra4[26]~18_combout\))) # (!\Mux21~3_combout\ & (\Shift|rl3[18]~6_combout\)))) # (!\Mux21~0_combout\ & (((\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Shift|rl3[18]~6_combout\,
	datac => \Mux21~3_combout\,
	datad => \Shift|ra4[26]~18_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X45_Y70_N24
\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ = (\A[9]~input_o\ & ((\Add|G\(8)) # (\B[9]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[9]~input_o\ & (\Add|G\(8) & (\B[9]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(8),
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X45_Y70_N10
\Add|S[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(10) = \Add|P\(10) $ (((\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[2]~15_combout\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|P\(10),
	combout => \Add|S\(10));

-- Location: LCCOMB_X45_Y67_N28
\Shift|ll2[10]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~17_combout\ = (\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ll2[10]~17_combout\);

-- Location: LCCOMB_X45_Y67_N14
\Shift|ll2[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~18_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[9]~15_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[10]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[10]~17_combout\,
	datac => \Shift|ll2[9]~15_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[10]~18_combout\);

-- Location: LCCOMB_X46_Y67_N16
\Shift|ll3[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[10]~3_combout\ = (\B[2]~input_o\ & (\Shift|ll2[6]~10_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[6]~10_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[10]~18_combout\,
	combout => \Shift|ll3[10]~3_combout\);

-- Location: LCCOMB_X46_Y67_N26
\Shift|ll4[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~13_combout\ = (\B[3]~input_o\ & (\Shift|ll2[2]~1_combout\ & (!\B[2]~input_o\))) # (!\B[3]~input_o\ & (((\Shift|ll3[10]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[2]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll3[10]~3_combout\,
	combout => \Shift|ll4[10]~13_combout\);

-- Location: LCCOMB_X47_Y69_N18
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\Mux21~1_combout\ & ((\Mux21~2_combout\ & (\Add|S\(10))) # (!\Mux21~2_combout\ & ((\Shift|ll4[10]~13_combout\))))) # (!\Mux21~1_combout\ & (\Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \Mux21~2_combout\,
	datac => \Add|S\(10),
	datad => \Shift|ll4[10]~13_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X47_Y69_N4
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux21~5_combout\ & (\Y_R[0]~0_combout\)) # (!\Mux21~5_combout\ & ((\Mux21~4_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[0]~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux21~4_combout\,
	datad => \Mux21~5_combout\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X46_Y70_N24
\Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux28~4_combout\ & (\Mux28~3_combout\ & (\Logic|xor_result\(10)))) # (!\Mux28~4_combout\ & (((\Mux21~6_combout\)) # (!\Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \Mux28~3_combout\,
	datac => \Logic|xor_result\(10),
	datad => \Mux21~6_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X45_Y70_N4
\Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~8_combout\ = (\A[10]~input_o\ & ((\Mux21~7_combout\) # ((\B[10]~input_o\ & \Mux28~5_combout\)))) # (!\A[10]~input_o\ & (\Mux21~7_combout\ & ((\B[10]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \Mux21~7_combout\,
	datac => \B[10]~input_o\,
	datad => \Mux28~5_combout\,
	combout => \Mux21~8_combout\);

-- Location: LCCOMB_X46_Y69_N4
\Mux21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~9_combout\ = (\Mux21~8_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux21~8_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux21~9_combout\);

-- Location: LCCOMB_X45_Y70_N26
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ = (\A[8]~input_o\ & ((\Add|block_carry_in[2]~15_combout\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Add|block_carry_in[2]~15_combout\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Add|block_carry_in[2]~15_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X45_Y70_N6
\Add|G[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(9) = (\A[9]~input_o\ & (\B[9]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|G\(9));

-- Location: LCCOMB_X45_Y70_N8
\Add|GEN_BLOCKS:2:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ = (\A[10]~input_o\ & ((\Add|G\(9)) # (\AddnSub~input_o\ $ (\B[10]~input_o\)))) # (!\A[10]~input_o\ & (\Add|G\(9) & (\AddnSub~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[10]~input_o\,
	datad => \Add|G\(9),
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X45_Y70_N20
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ & (\Add|P\(9) & \Add|P\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\,
	datab => \Add|P\(9),
	datac => \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\,
	datad => \Add|P\(10),
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X46_Y69_N8
\Add|S[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(11) = \A[11]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ $ (\B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\,
	datad => \B[11]~input_o\,
	combout => \Add|S\(11));

-- Location: LCCOMB_X45_Y67_N8
\Shift|ll2[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~19_combout\ = (\B[1]~input_o\ & (\A[9]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[9]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Shift|ll2[12]~19_combout\);

-- Location: LCCOMB_X45_Y67_N2
\Shift|ll2[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~20_combout\ = (\B[0]~input_o\ & (\Shift|ll2[10]~17_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[12]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[10]~17_combout\,
	datac => \Shift|ll2[12]~19_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[11]~20_combout\);

-- Location: LCCOMB_X48_Y65_N26
\Shift|ll3[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[11]~4_combout\ = (\B[2]~input_o\ & (\Shift|ll2[7]~12_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[11]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~12_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll2[11]~20_combout\,
	combout => \Shift|ll3[11]~4_combout\);

-- Location: LCCOMB_X48_Y65_N28
\Shift|ll4[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~14_combout\ = (\B[3]~input_o\ & (!\B[2]~input_o\ & ((\Shift|ll2[3]~3_combout\)))) # (!\B[3]~input_o\ & (((\Shift|ll3[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll3[11]~4_combout\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll4[11]~14_combout\);

-- Location: LCCOMB_X46_Y69_N10
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux21~1_combout\ & ((\Mux21~2_combout\ & (\Add|S\(11))) # (!\Mux21~2_combout\ & ((\Shift|ll4[11]~14_combout\))))) # (!\Mux21~1_combout\ & (\Mux21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \Mux21~2_combout\,
	datac => \Add|S\(11),
	datad => \Shift|ll4[11]~14_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X49_Y68_N22
\Shift|ra4[27]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[27]~21_combout\ = (\B[3]~input_o\ & (((\A[31]~input_o\)))) # (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\A[31]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|rl2[27]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shift|rl2[27]~47_combout\,
	combout => \Shift|ra4[27]~21_combout\);

-- Location: LCCOMB_X49_Y68_N6
\Shift|rl4[27]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[27]~16_combout\ = (!\B[3]~input_o\ & \Shift|rl4[27]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \Shift|rl4[27]~7_combout\,
	combout => \Shift|rl4[27]~16_combout\);

-- Location: LCCOMB_X49_Y68_N16
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\B[4]~input_o\ & ((\Mux21~0_combout\) # ((\Shift|rl4[27]~16_combout\)))) # (!\B[4]~input_o\ & (!\Mux21~0_combout\ & (\Shift|rl3[11]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Mux21~0_combout\,
	datac => \Shift|rl3[11]~9_combout\,
	datad => \Shift|rl4[27]~16_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X49_Y68_N2
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux21~0_combout\ & ((\Mux20~0_combout\ & (\Shift|ra4[27]~21_combout\)) # (!\Mux20~0_combout\ & ((\Shift|rl3[19]~8_combout\))))) # (!\Mux21~0_combout\ & (((\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[27]~21_combout\,
	datab => \Mux21~0_combout\,
	datac => \Shift|rl3[19]~8_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X46_Y69_N28
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux20~2_combout\ & (((\Y_R[0]~0_combout\)) # (!\ShiftFN[1]~input_o\))) # (!\Mux20~2_combout\ & (\ShiftFN[1]~input_o\ & ((\Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_R[0]~0_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X46_Y69_N30
\Logic|xor_result[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[11]~3_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \Logic|xor_result[11]~3_combout\);

-- Location: LCCOMB_X46_Y69_N6
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux28~3_combout\ & ((\Mux28~4_combout\ & ((\Logic|xor_result[11]~3_combout\))) # (!\Mux28~4_combout\ & (\Mux20~3_combout\)))) # (!\Mux28~3_combout\ & (((!\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Mux20~3_combout\,
	datac => \Logic|xor_result[11]~3_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X46_Y69_N0
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\B[11]~input_o\ & ((\Mux20~4_combout\) # ((\Mux28~5_combout\ & \A[11]~input_o\)))) # (!\B[11]~input_o\ & (\Mux20~4_combout\ & ((\A[11]~input_o\) # (!\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[11]~input_o\,
	datab => \Mux28~5_combout\,
	datac => \A[11]~input_o\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X46_Y69_N26
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux20~5_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~5_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X46_Y69_N12
\Add|S[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(12) = \Add|block_carry_in[3]~31_combout\ $ (\AddnSub~input_o\ $ (\B[12]~input_o\ $ (\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~31_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Add|S\(12));

-- Location: LCCOMB_X45_Y67_N12
\Shift|ll2[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~21_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ll2[13]~21_combout\);

-- Location: LCCOMB_X45_Y67_N22
\Shift|ll2[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~22_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[12]~19_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[13]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[13]~21_combout\,
	datac => \Shift|ll2[12]~19_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[12]~22_combout\);

-- Location: LCCOMB_X45_Y69_N18
\Shift|ll3[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[12]~6_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[8]~14_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[12]~22_combout\,
	datad => \Shift|ll2[8]~14_combout\,
	combout => \Shift|ll3[12]~6_combout\);

-- Location: LCCOMB_X45_Y69_N0
\Shift|ll3[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[4]~5_combout\ = (\Shift|ll3[4]~1_combout\) # ((!\B[2]~input_o\ & \Shift|ll2[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[4]~6_combout\,
	datac => \Shift|ll3[4]~1_combout\,
	combout => \Shift|ll3[4]~5_combout\);

-- Location: LCCOMB_X45_Y69_N20
\Shift|ll4[12]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[12]~15_combout\ = (\B[3]~input_o\ & ((\Shift|ll3[4]~5_combout\))) # (!\B[3]~input_o\ & (\Shift|ll3[12]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll3[12]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll3[4]~5_combout\,
	combout => \Shift|ll4[12]~15_combout\);

-- Location: LCCOMB_X46_Y69_N14
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux21~2_combout\ & ((\Add|S\(12)) # ((!\Mux21~1_combout\)))) # (!\Mux21~2_combout\ & (((\Shift|ll4[12]~15_combout\ & \Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(12),
	datab => \Shift|ll4[12]~15_combout\,
	datac => \Mux21~2_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X48_Y69_N30
\Shift|rl4[28]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[28]~17_combout\ = (!\Shift|ll4[2]~5_combout\ & ((\Shift|rl2[28]~2_combout\) # ((\B[1]~input_o\ & \Shift|rl1[30]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ll4[2]~5_combout\,
	datac => \Shift|rl1[30]~0_combout\,
	datad => \Shift|rl2[28]~2_combout\,
	combout => \Shift|rl4[28]~17_combout\);

-- Location: LCCOMB_X50_Y68_N30
\Shift|ra4[28]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[28]~22_combout\ = (\Shift|rl4[28]~17_combout\) # ((\A[31]~input_o\ & ((\B[2]~input_o\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[28]~17_combout\,
	datab => \B[2]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ra4[28]~22_combout\);

-- Location: LCCOMB_X50_Y68_N28
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux21~0_combout\ & (((\B[4]~input_o\)))) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & ((\Shift|rl4[28]~17_combout\))) # (!\B[4]~input_o\ & (\Shift|rl3[12]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[12]~11_combout\,
	datab => \Mux21~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|rl4[28]~17_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X50_Y68_N22
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux21~0_combout\ & ((\Mux19~0_combout\ & ((\Shift|ra4[28]~22_combout\))) # (!\Mux19~0_combout\ & (\Shift|rl3[20]~10_combout\)))) # (!\Mux21~0_combout\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Shift|rl3[20]~10_combout\,
	datac => \Shift|ra4[28]~22_combout\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X47_Y69_N22
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\ & (((\Y_R[0]~0_combout\)) # (!\ShiftFN[1]~input_o\))) # (!\Mux19~2_combout\ & (\ShiftFN[1]~input_o\ & (\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux19~1_combout\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X46_Y69_N18
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & ((\A[12]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) # (!\A[12]~input_o\ & (!\LogicFN[1]~input_o\ & 
-- !\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X46_Y69_N20
\Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux19~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[0]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Mux19~5_combout\,
	datac => \B[0]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X46_Y69_N16
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux19~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux19~6_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X48_Y67_N2
\Shift|rl4[29]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[29]~18_combout\ = (!\Shift|ll4[2]~5_combout\ & ((\B[1]~input_o\ & ((\Shift|rl2[29]~32_combout\))) # (!\B[1]~input_o\ & (\Shift|rl1[29]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[29]~5_combout\,
	datab => \Shift|rl2[29]~32_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ll4[2]~5_combout\,
	combout => \Shift|rl4[29]~18_combout\);

-- Location: LCCOMB_X48_Y68_N10
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux21~0_combout\ & (((\B[4]~input_o\)))) # (!\Mux21~0_combout\ & ((\B[4]~input_o\ & ((\Shift|rl4[29]~18_combout\))) # (!\B[4]~input_o\ & (\Shift|rl3[13]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[13]~14_combout\,
	datab => \Shift|rl4[29]~18_combout\,
	datac => \Mux21~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X48_Y68_N4
\Shift|ra4[29]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[29]~19_combout\ = (\Shift|ll4[9]~4_combout\ & ((\B[3]~input_o\ & (\A[31]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|rl1[29]~5_combout\))))) # (!\Shift|ll4[9]~4_combout\ & (((\A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[9]~4_combout\,
	datab => \B[3]~input_o\,
	datac => \A[31]~input_o\,
	datad => \Shift|rl1[29]~5_combout\,
	combout => \Shift|ra4[29]~19_combout\);

-- Location: LCCOMB_X48_Y68_N14
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux18~0_combout\ & (((\Shift|ra4[29]~19_combout\) # (!\Mux21~0_combout\)))) # (!\Mux18~0_combout\ & (\Shift|rl3[21]~13_combout\ & ((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Shift|rl3[21]~13_combout\,
	datac => \Shift|ra4[29]~19_combout\,
	datad => \Mux21~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X46_Y72_N22
\Add|GEN_BLOCKS:3:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ = (\A[12]~input_o\ & ((\Add|block_carry_in[3]~31_combout\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\A[12]~input_o\ & (\Add|block_carry_in[3]~31_combout\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \Add|block_carry_in[3]~31_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X46_Y72_N4
\Add|S[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(13) = \B[13]~input_o\ $ (\A[13]~input_o\ $ (\Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(13));

-- Location: LCCOMB_X48_Y70_N6
\Shift|ll2[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~23_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[14]~23_combout\);

-- Location: LCCOMB_X46_Y67_N28
\Shift|ll2[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~24_combout\ = (\B[0]~input_o\ & (\Shift|ll2[13]~21_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[14]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[13]~21_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[14]~23_combout\,
	combout => \Shift|ll2[13]~24_combout\);

-- Location: LCCOMB_X47_Y66_N4
\Shift|ll3[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[13]~7_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[9]~16_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[13]~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[9]~16_combout\,
	combout => \Shift|ll3[13]~7_combout\);

-- Location: LCCOMB_X47_Y66_N22
\Shift|ll4[13]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~16_combout\ = (\B[3]~input_o\ & ((\Shift|ll4[13]~7_combout\))) # (!\B[3]~input_o\ & (\Shift|ll3[13]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ll3[13]~7_combout\,
	datad => \Shift|ll4[13]~7_combout\,
	combout => \Shift|ll4[13]~16_combout\);

-- Location: LCCOMB_X47_Y69_N16
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux21~2_combout\ & ((\Add|S\(13)) # ((!\Mux21~1_combout\)))) # (!\Mux21~2_combout\ & (((\Shift|ll4[13]~16_combout\ & \Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(13),
	datab => \Shift|ll4[13]~16_combout\,
	datac => \Mux21~2_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X47_Y69_N2
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux18~2_combout\ & (((\Y_R[0]~0_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux18~2_combout\ & (\Mux18~1_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \Mux18~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_R[0]~0_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X48_Y70_N22
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\A[13]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[13]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[13]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \B[13]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[13]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[13]~input_o\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X48_Y70_N24
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~5_combout\ & ((\B[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~5_combout\,
	datab => \B[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X48_Y70_N0
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux18~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux18~3_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux18~6_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X46_Y67_N6
\Shift|ll4[14]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[14]~17_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[2]~1_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[6]~10_combout\,
	datad => \Shift|ll2[2]~1_combout\,
	combout => \Shift|ll4[14]~17_combout\);

-- Location: LCCOMB_X46_Y66_N2
\Shift|ll2[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~25_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[12]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[15]~25_combout\);

-- Location: LCCOMB_X46_Y67_N8
\Shift|ll2[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~26_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[14]~23_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[15]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[15]~25_combout\,
	datad => \Shift|ll2[14]~23_combout\,
	combout => \Shift|ll2[14]~26_combout\);

-- Location: LCCOMB_X46_Y67_N2
\Shift|ll3[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[14]~8_combout\ = (\B[2]~input_o\ & (\Shift|ll2[10]~18_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[14]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[10]~18_combout\,
	datab => \Shift|ll2[14]~26_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll3[14]~8_combout\);

-- Location: LCCOMB_X46_Y67_N4
\Shift|ll4[14]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[14]~18_combout\ = (\Shift|ll4[14]~17_combout\) # ((!\B[3]~input_o\ & \Shift|ll3[14]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[14]~17_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll3[14]~8_combout\,
	combout => \Shift|ll4[14]~18_combout\);

-- Location: LCCOMB_X46_Y72_N8
\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ = (\A[13]~input_o\ & ((\Add|G\(12)) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[13]~input_o\ & (\Add|G\(12) & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[13]~input_o\,
	datad => \Add|G\(12),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X46_Y72_N10
\Add|S[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(14) = \Add|P\(14) $ (((\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[3]~31_combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|P\(14),
	combout => \Add|S\(14));

-- Location: LCCOMB_X47_Y69_N30
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux21~2_combout\ & (((\Add|S\(14)) # (!\Mux21~1_combout\)))) # (!\Mux21~2_combout\ & (\Shift|ll4[14]~18_combout\ & ((\Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[14]~18_combout\,
	datab => \Mux21~2_combout\,
	datac => \Add|S\(14),
	datad => \Mux21~1_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X47_Y67_N26
\Shift|ra4[30]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[30]~20_combout\ = (\B[3]~input_o\ & (((\A[31]~input_o\)))) # (!\B[3]~input_o\ & ((\Shift|ll3[0]~0_combout\ & (\A[31]~input_o\)) # (!\Shift|ll3[0]~0_combout\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[0]~0_combout\,
	datac => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|ra4[30]~20_combout\);

-- Location: LCCOMB_X48_Y69_N6
\Shift|rl4[30]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[30]~19_combout\ = (!\B[1]~input_o\ & (!\B[3]~input_o\ & (\Shift|rl1[30]~0_combout\ & !\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|rl1[30]~0_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl4[30]~19_combout\);

-- Location: LCCOMB_X48_Y69_N24
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\B[4]~input_o\ & ((\Shift|rl4[30]~19_combout\) # ((\Mux21~0_combout\)))) # (!\B[4]~input_o\ & (((\Shift|rl3[14]~16_combout\ & !\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[30]~19_combout\,
	datab => \Shift|rl3[14]~16_combout\,
	datac => \B[4]~input_o\,
	datad => \Mux21~0_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X47_Y69_N20
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux21~0_combout\ & ((\Mux17~0_combout\ & (\Shift|ra4[30]~20_combout\)) # (!\Mux17~0_combout\ & ((\Shift|rl3[22]~15_combout\))))) # (!\Mux21~0_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[30]~20_combout\,
	datab => \Mux21~0_combout\,
	datac => \Shift|rl3[22]~15_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X47_Y69_N8
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux17~2_combout\ & (\Y_R[0]~0_combout\)) # (!\Mux17~2_combout\ & ((\Mux17~1_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[0]~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux17~2_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X48_Y70_N18
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[14]~input_o\ & ((\B[14]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X48_Y70_N28
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~5_combout\ & ((\B[2]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mux17~5_combout\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X47_Y69_N26
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux17~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux17~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux17~6_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X46_Y72_N20
\Add|G[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(13) = (\A[13]~input_o\ & (\B[13]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datac => \A[13]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(13));

-- Location: LCCOMB_X46_Y72_N6
\Add|GEN_BLOCKS:3:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ = (\A[14]~input_o\ & ((\Add|G\(13)) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\A[14]~input_o\ & (\Add|G\(13) & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[14]~input_o\,
	datac => \B[14]~input_o\,
	datad => \Add|G\(13),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X46_Y72_N16
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = (\A[12]~input_o\ & ((\Add|block_carry_in[3]~31_combout\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\A[12]~input_o\ & (\Add|block_carry_in[3]~31_combout\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \Add|block_carry_in[3]~31_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X46_Y72_N26
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\) # ((\Add|P\(14) & (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ & \Add|P\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|g_int~1_combout\,
	datab => \Add|P\(14),
	datac => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\,
	datad => \Add|P\(13),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X47_Y67_N12
\Add|S[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(15) = \A[15]~input_o\ $ (\AddnSub~input_o\ $ (\B[15]~input_o\ $ (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[15]~input_o\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(15));

-- Location: LCCOMB_X47_Y67_N16
\Shift|Y_RL[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[15]~1_combout\ = (!\B[3]~input_o\ & (\B[4]~input_o\ & !\Shift|ll3[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll3[0]~0_combout\,
	combout => \Shift|Y_RL[15]~1_combout\);

-- Location: LCCOMB_X47_Y67_N6
\Shift|Y_RL[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[15]~0_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & (\Shift|ra4[23]~14_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl3[15]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ra4[23]~14_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|rl3[15]~17_combout\,
	combout => \Shift|Y_RL[15]~0_combout\);

-- Location: LCCOMB_X47_Y67_N18
\Shift|Y_RL[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[15]~2_combout\ = (!\B[5]~input_o\ & ((\Shift|Y_RL[15]~0_combout\) # ((\Shift|Y_RL[15]~1_combout\ & \A[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|Y_RL[15]~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Shift|Y_RL[15]~0_combout\,
	combout => \Shift|Y_RL[15]~2_combout\);

-- Location: LCCOMB_X47_Y67_N22
\Y_ShiftOrArith[15]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[15]~8_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\) # (\Shift|Y_RL[15]~2_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Add|S\(15) & (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(15),
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|Y_RL[15]~2_combout\,
	combout => \Y_ShiftOrArith[15]~8_combout\);

-- Location: LCCOMB_X48_Y65_N6
\Shift|ll4[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~19_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[3]~3_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[7]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[7]~12_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll4[15]~19_combout\);

-- Location: LCCOMB_X46_Y66_N12
\Shift|ll2[16]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~27_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[15]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[16]~27_combout\);

-- Location: LCCOMB_X46_Y66_N30
\Shift|ll2[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~28_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[15]~25_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[16]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[16]~27_combout\,
	datab => \Shift|ll2[15]~25_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[15]~28_combout\);

-- Location: LCCOMB_X48_Y65_N8
\Shift|ll3[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[15]~9_combout\ = (\B[2]~input_o\ & (\Shift|ll2[11]~20_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[15]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[11]~20_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll2[15]~28_combout\,
	combout => \Shift|ll3[15]~9_combout\);

-- Location: LCCOMB_X47_Y67_N20
\Shift|Y_LL[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[15]~2_combout\ = (\Shift|Y_LL[0]~0_combout\ & ((\B[3]~input_o\ & (\Shift|ll4[15]~19_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll3[15]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll4[15]~19_combout\,
	datac => \Shift|Y_LL[0]~0_combout\,
	datad => \Shift|ll3[15]~9_combout\,
	combout => \Shift|Y_LL[15]~2_combout\);

-- Location: LCCOMB_X47_Y67_N8
\Shift|Y_RA[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~3_combout\ = (\Shift|Y_LL[0]~0_combout\ & ((\B[3]~input_o\ & ((\Shift|ra4[23]~14_combout\))) # (!\B[3]~input_o\ & (\Shift|rl3[15]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[15]~17_combout\,
	datab => \Shift|Y_LL[0]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ra4[23]~14_combout\,
	combout => \Shift|Y_RA[15]~3_combout\);

-- Location: LCCOMB_X47_Y67_N30
\Shift|Y_RA[15]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~6_combout\ = (\Shift|Y_RA[15]~3_combout\) # ((\A[31]~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|Y_RA[15]~3_combout\,
	datac => \A[31]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|Y_RA[15]~6_combout\);

-- Location: LCCOMB_X47_Y67_N2
\Y_ShiftOrArith[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[15]~9_combout\ = (\Y_ShiftOrArith[15]~8_combout\ & (((\Shift|Y_RA[15]~6_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Y_ShiftOrArith[15]~8_combout\ & (\Shift|Y_LL[15]~2_combout\ & (\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[15]~8_combout\,
	datab => \Shift|Y_LL[15]~2_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|Y_RA[15]~6_combout\,
	combout => \Y_ShiftOrArith[15]~9_combout\);

-- Location: LCCOMB_X46_Y71_N2
\Logic|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux16~0_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[15]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[15]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[15]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[15]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Logic|Mux16~0_combout\);

-- Location: LCCOMB_X46_Y71_N20
\Logic|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux16~1_combout\ = (\Logic|Mux16~0_combout\ & ((\LogicFN[1]~input_o\) # ((\B[3]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Logic|Mux16~0_combout\,
	datac => \B[3]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux16~1_combout\);

-- Location: LCCOMB_X46_Y71_N10
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux16~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[15]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[15]~9_combout\,
	datab => \Logic|Mux16~1_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X53_Y69_N18
\Logic|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux15~0_combout\ = (\A[16]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[16]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[16]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \B[16]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[16]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Logic|Mux15~0_combout\);

-- Location: LCCOMB_X53_Y69_N12
\Logic|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux15~1_combout\ = (\Logic|Mux15~0_combout\ & ((\B[4]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Logic|Mux15~0_combout\,
	combout => \Logic|Mux15~1_combout\);

-- Location: LCCOMB_X50_Y66_N12
\Add|S[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(16) = \Add|block_carry_in[4]~29_combout\ $ (\AddnSub~input_o\ $ (\A[16]~input_o\ $ (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[4]~29_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add|S\(16));

-- Location: LCCOMB_X46_Y66_N0
\Shift|ll2[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~29_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[17]~29_combout\);

-- Location: LCCOMB_X46_Y66_N10
\Shift|ll2[16]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~30_combout\ = (\B[0]~input_o\ & (\Shift|ll2[16]~27_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[17]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[16]~27_combout\,
	datab => \Shift|ll2[17]~29_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[16]~30_combout\);

-- Location: LCCOMB_X45_Y69_N22
\Shift|ll3[16]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[16]~10_combout\ = (\B[2]~input_o\ & (\Shift|ll2[12]~22_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[16]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[12]~22_combout\,
	datac => \Shift|ll2[16]~30_combout\,
	combout => \Shift|ll3[16]~10_combout\);

-- Location: LCCOMB_X49_Y66_N2
\Shift|Y_LL[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[16]~3_combout\ = (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\Shift|Y_LL[16]~1_combout\))) # (!\B[3]~input_o\ & (\Shift|ll3[16]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[16]~10_combout\,
	datab => \Shift|Y_LL[16]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|Y_LL[16]~3_combout\);

-- Location: LCCOMB_X50_Y66_N18
\Shift|Y_LL[16]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[16]~4_combout\ = (!\B[5]~input_o\ & ((\Shift|Y_LL[16]~3_combout\) # ((\Shift|Y_RL[15]~1_combout\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_RL[15]~1_combout\,
	datab => \B[5]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Shift|Y_LL[16]~3_combout\,
	combout => \Shift|Y_LL[16]~4_combout\);

-- Location: LCCOMB_X50_Y66_N22
\Y_ShiftOrArith[16]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[16]~10_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Shift|Y_LL[16]~4_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(16),
	datab => \Shift|Y_LL[16]~4_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[16]~10_combout\);

-- Location: LCCOMB_X50_Y66_N16
\Shift|Y_RL[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[16]~3_combout\ = (\Shift|Y_LL[0]~0_combout\ & ((\B[3]~input_o\ & ((\Shift|rl4[24]~2_combout\))) # (!\B[3]~input_o\ & (\Shift|rl3[16]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[16]~0_combout\,
	datab => \Shift|Y_LL[0]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl4[24]~2_combout\,
	combout => \Shift|Y_RL[16]~3_combout\);

-- Location: LCCOMB_X50_Y66_N8
\Shift|Y_RA[15]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[15]~4_combout\ = (\A[31]~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Shift|Y_RA[15]~4_combout\);

-- Location: LCCOMB_X50_Y66_N10
\Y_ShiftOrArith[16]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[16]~11_combout\ = (\ShiftFN[1]~input_o\ & ((\Shift|Y_RL[16]~3_combout\) # ((\Y_ShiftOrArith[16]~10_combout\ & \Shift|Y_RA[15]~4_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[16]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[16]~10_combout\,
	datab => \Shift|Y_RL[16]~3_combout\,
	datac => \Shift|Y_RA[15]~4_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[16]~11_combout\);

-- Location: LCCOMB_X54_Y69_N6
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux15~1_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[16]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux15~1_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_ShiftOrArith[16]~11_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X53_Y69_N0
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\B[17]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[17]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[17]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[17]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[17]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X52_Y69_N10
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (\Mux14~5_combout\ & ((\LogicFN[0]~input_o\) # ((\B[5]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Mux14~5_combout\,
	datac => \B[5]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X47_Y69_N12
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = ((!\B[4]~input_o\ & (!\B[5]~input_o\ & !\ShiftFN[0]~input_o\))) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X46_Y66_N20
\Shift|ll2[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~31_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[15]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Shift|ll2[18]~31_combout\);

-- Location: LCCOMB_X46_Y66_N14
\Shift|ll2[17]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~32_combout\ = (\B[0]~input_o\ & (\Shift|ll2[17]~29_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[18]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[17]~29_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[18]~31_combout\,
	combout => \Shift|ll2[17]~32_combout\);

-- Location: LCCOMB_X47_Y66_N24
\Shift|ll3[17]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[17]~11_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[13]~24_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[17]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[17]~32_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[13]~24_combout\,
	combout => \Shift|ll3[17]~11_combout\);

-- Location: LCCOMB_X50_Y66_N20
\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[4]~29_combout\ & ((\A[16]~input_o\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\Add|block_carry_in[4]~29_combout\ & (\A[16]~input_o\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[4]~29_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X50_Y66_N26
\Add|S[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(17) = \B[17]~input_o\ $ (\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ $ (\A[17]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\,
	datac => \A[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(17));

-- Location: LCCOMB_X47_Y66_N14
\Shift|ll4[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[1]~21_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & (\Shift|ll1[1]~0_combout\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll4[1]~21_combout\);

-- Location: LCCOMB_X52_Y69_N20
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\) # ((\B[5]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[5]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X52_Y68_N8
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = ((!\B[5]~input_o\ & \B[4]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X47_Y66_N26
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux11~3_combout\ & (((\Shift|ll4[1]~21_combout\ & \Mux11~2_combout\)))) # (!\Mux11~3_combout\ & ((\Add|S\(17)) # ((!\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(17),
	datab => \Shift|ll4[1]~21_combout\,
	datac => \Mux11~3_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X47_Y66_N20
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\Shift|ll3[17]~11_combout\) # ((!\Mux11~0_combout\)))) # (!\Mux14~0_combout\ & (((\Shift|ll3[9]~2_combout\ & \Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[17]~11_combout\,
	datab => \Shift|ll3[9]~2_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X47_Y69_N14
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\ShiftFN[1]~input_o\ & ((\B[4]~input_o\) # ((\B[5]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X52_Y69_N22
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux11~4_combout\ & ((\Mux11~5_combout\ & ((\Shift|rl4[17]~4_combout\))) # (!\Mux11~5_combout\ & (\Mux14~1_combout\)))) # (!\Mux11~4_combout\ & (((!\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux11~5_combout\,
	datad => \Shift|rl4[17]~4_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X52_Y68_N14
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X52_Y69_N16
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & ((\Shift|ra4[17]~4_combout\) # ((!\Mux11~1_combout\)))) # (!\Mux14~2_combout\ & (((\A[31]~input_o\ & \Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Shift|ra4[17]~4_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux11~1_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X52_Y69_N26
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux14~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux14~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~6_combout\,
	datab => \Mux14~3_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X53_Y68_N22
\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\ = (\A[17]~input_o\ & ((\Add|G\(16)) # (\B[17]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[17]~input_o\ & (\Add|G\(16) & (\B[17]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[17]~input_o\,
	datad => \Add|G\(16),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X53_Y68_N16
\Add|S[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(18) = \Add|P\(18) $ (((\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\) # ((\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[4]~29_combout\,
	datac => \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\,
	datad => \Add|P\(18),
	combout => \Add|S\(18));

-- Location: LCCOMB_X46_Y67_N14
\Shift|ll4[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[2]~22_combout\ = (\Shift|ll2[2]~1_combout\ & (!\B[3]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[2]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll4[2]~22_combout\);

-- Location: LCCOMB_X46_Y67_N22
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux11~2_combout\ & ((\Mux11~3_combout\ & ((\Shift|ll4[2]~22_combout\))) # (!\Mux11~3_combout\ & (\Add|S\(18))))) # (!\Mux11~2_combout\ & (((!\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(18),
	datab => \Shift|ll4[2]~22_combout\,
	datac => \Mux11~2_combout\,
	datad => \Mux11~3_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X48_Y66_N22
\Shift|ll2[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~33_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Shift|ll2[19]~33_combout\);

-- Location: LCCOMB_X48_Y66_N8
\Shift|ll2[18]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~34_combout\ = (\B[0]~input_o\ & (\Shift|ll2[18]~31_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[19]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[18]~31_combout\,
	datac => \Shift|ll2[19]~33_combout\,
	combout => \Shift|ll2[18]~34_combout\);

-- Location: LCCOMB_X49_Y66_N12
\Shift|ll3[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[18]~12_combout\ = (\B[2]~input_o\ & (\Shift|ll2[14]~26_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[18]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[14]~26_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[18]~34_combout\,
	combout => \Shift|ll3[18]~12_combout\);

-- Location: LCCOMB_X46_Y67_N24
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & (((\Shift|ll3[18]~12_combout\) # (!\Mux11~0_combout\)))) # (!\Mux13~0_combout\ & (\Shift|ll3[10]~3_combout\ & (\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \Shift|ll3[10]~3_combout\,
	datac => \Mux11~0_combout\,
	datad => \Shift|ll3[18]~12_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X50_Y69_N28
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux11~5_combout\ & (\Mux11~4_combout\ & (\Shift|rl4[18]~6_combout\))) # (!\Mux11~5_combout\ & (((\Mux13~1_combout\)) # (!\Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~4_combout\,
	datac => \Shift|rl4[18]~6_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X50_Y69_N14
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux11~1_combout\ & ((\Mux13~2_combout\ & (\Shift|ra4[18]~5_combout\)) # (!\Mux13~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux11~1_combout\ & (((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Shift|ra4[18]~5_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux13~2_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X50_Y70_N20
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[18]~input_o\ & \A[18]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[18]~input_o\ $ (\A[18]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[18]~input_o\) # (\A[18]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[18]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X50_Y70_N6
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (\Mux13~5_combout\ & ((\LogicFN[0]~input_o\) # ((\B[6]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Mux13~5_combout\,
	datac => \B[6]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X50_Y70_N14
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux13~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux13~6_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X48_Y66_N18
\Shift|ll2[20]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~35_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \A[19]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[20]~35_combout\);

-- Location: LCCOMB_X48_Y66_N28
\Shift|ll2[19]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~36_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[19]~33_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[20]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[20]~35_combout\,
	datac => \Shift|ll2[19]~33_combout\,
	combout => \Shift|ll2[19]~36_combout\);

-- Location: LCCOMB_X48_Y65_N18
\Shift|ll3[19]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[19]~13_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[15]~28_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[19]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[19]~36_combout\,
	datad => \Shift|ll2[15]~28_combout\,
	combout => \Shift|ll3[19]~13_combout\);

-- Location: LCCOMB_X47_Y66_N30
\Shift|ll4[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[3]~20_combout\ = (!\Shift|ll4[2]~5_combout\ & ((\Shift|ll2[3]~2_combout\) # ((\B[1]~input_o\ & \Shift|ll1[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[2]~5_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \Shift|ll2[3]~2_combout\,
	combout => \Shift|ll4[3]~20_combout\);

-- Location: LCCOMB_X53_Y68_N28
\Add|GEN_BLOCKS:4:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ = (\A[18]~input_o\ & ((\Add|G\(17)) # (\B[18]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[18]~input_o\ & (\Add|G\(17) & (\B[18]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[18]~input_o\,
	datad => \Add|G\(17),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X53_Y68_N30
\Add|GEN_BLOCKS:4:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\) # ((\Add|P\(17) & (\Add|P\(18) & \Add|G\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(17),
	datab => \Add|P\(18),
	datac => \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\,
	datad => \Add|G\(16),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X53_Y68_N18
\Add|GEN_BLOCKS:4:LACG_INST|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C~1_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[4]~29_combout\ & \Add|P\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[4]~29_combout\,
	datad => \Add|P\(18),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C~1_combout\);

-- Location: LCCOMB_X53_Y68_N0
\Add|S[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(19) = \Logic|xor_result[19]~0_combout\ $ (\AddnSub~input_o\ $ (((\Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\) # (\Add|GEN_BLOCKS:4:LACG_INST|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[19]~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:4:LACG_INST|C[3]~2_combout\,
	datad => \Add|GEN_BLOCKS:4:LACG_INST|C~1_combout\,
	combout => \Add|S\(19));

-- Location: LCCOMB_X48_Y65_N12
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux11~3_combout\ & (\Mux11~2_combout\ & (\Shift|ll4[3]~20_combout\))) # (!\Mux11~3_combout\ & (((\Add|S\(19))) # (!\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Mux11~2_combout\,
	datac => \Shift|ll4[3]~20_combout\,
	datad => \Add|S\(19),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X48_Y65_N14
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux11~0_combout\ & ((\Mux12~2_combout\ & ((\Shift|ll3[19]~13_combout\))) # (!\Mux12~2_combout\ & (\Shift|ll3[11]~4_combout\)))) # (!\Mux11~0_combout\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[11]~4_combout\,
	datab => \Shift|ll3[19]~13_combout\,
	datac => \Mux11~0_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X50_Y69_N16
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux11~5_combout\ & (((\Mux11~4_combout\ & \Shift|rl4[19]~8_combout\)))) # (!\Mux11~5_combout\ & ((\Mux12~3_combout\) # ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux11~4_combout\,
	datad => \Shift|rl4[19]~8_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X50_Y69_N2
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~4_combout\ & ((\Shift|ra4[19]~7_combout\) # ((!\Mux11~1_combout\)))) # (!\Mux12~4_combout\ & (((\A[31]~input_o\ & \Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[19]~7_combout\,
	datab => \Mux12~4_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux11~1_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X50_Y70_N0
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\LogicFN[0]~input_o\ & ((\Logic|xor_result[19]~0_combout\) # ((\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & (((\B[7]~input_o\ & !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Logic|xor_result[19]~0_combout\,
	datac => \B[7]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X50_Y70_N10
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\LogicFN[1]~input_o\ & ((\Mux12~0_combout\ & (\B[19]~input_o\ & \A[19]~input_o\)) # (!\Mux12~0_combout\ & ((\B[19]~input_o\) # (\A[19]~input_o\))))) # (!\LogicFN[1]~input_o\ & (\Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Mux12~0_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X50_Y70_N4
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux12~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux12~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~5_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X46_Y71_N22
\Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~11_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[20]~input_o\ & \A[20]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[20]~input_o\) # (\A[20]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[20]~input_o\ $ (\A[20]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mux11~11_combout\);

-- Location: LCCOMB_X46_Y71_N8
\Mux11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~12_combout\ = (\Mux11~11_combout\ & ((\LogicFN[0]~input_o\) # ((\B[8]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~11_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[8]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux11~12_combout\);

-- Location: LCCOMB_X52_Y70_N22
\Add|S[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(20) = \AddnSub~input_o\ $ (\Add|block_carry_in[5]~21_combout\ $ (\B[20]~input_o\ $ (\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[5]~21_combout\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Add|S\(20));

-- Location: LCCOMB_X45_Y69_N10
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~2_combout\ & ((\Mux11~3_combout\ & (\Shift|ll4[4]~6_combout\)) # (!\Mux11~3_combout\ & ((\Add|S\(20)))))) # (!\Mux11~2_combout\ & (((!\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \Shift|ll4[4]~6_combout\,
	datac => \Mux11~3_combout\,
	datad => \Add|S\(20),
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X48_Y66_N30
\Shift|ll2[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~37_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Shift|ll2[21]~37_combout\);

-- Location: LCCOMB_X48_Y66_N24
\Shift|ll2[20]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~38_combout\ = (\B[0]~input_o\ & (\Shift|ll2[20]~35_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[21]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[20]~35_combout\,
	datac => \Shift|ll2[21]~37_combout\,
	combout => \Shift|ll2[20]~38_combout\);

-- Location: LCCOMB_X45_Y69_N24
\Shift|ll3[20]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[20]~14_combout\ = (\B[2]~input_o\ & (\Shift|ll2[16]~30_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[20]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ll2[16]~30_combout\,
	datad => \Shift|ll2[20]~38_combout\,
	combout => \Shift|ll3[20]~14_combout\);

-- Location: LCCOMB_X45_Y69_N12
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux11~6_combout\ & (((\Shift|ll3[20]~14_combout\) # (!\Mux11~0_combout\)))) # (!\Mux11~6_combout\ & (\Shift|ll3[12]~6_combout\ & (\Mux11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \Shift|ll3[12]~6_combout\,
	datac => \Mux11~0_combout\,
	datad => \Shift|ll3[20]~14_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X50_Y68_N0
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\Mux11~5_combout\ & (((\Mux11~4_combout\ & \Shift|rl4[20]~9_combout\)))) # (!\Mux11~5_combout\ & ((\Mux11~7_combout\) # ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~7_combout\,
	datac => \Mux11~4_combout\,
	datad => \Shift|rl4[20]~9_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X50_Y68_N26
\Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\Mux11~1_combout\ & ((\Mux11~8_combout\ & (\Shift|ra4[20]~9_combout\)) # (!\Mux11~8_combout\ & ((\A[31]~input_o\))))) # (!\Mux11~1_combout\ & (((\Mux11~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[20]~9_combout\,
	datab => \Mux11~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X46_Y71_N4
\Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~10_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux11~12_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux11~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux11~12_combout\,
	datad => \Mux11~9_combout\,
	combout => \Mux11~10_combout\);

-- Location: LCCOMB_X46_Y71_N26
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[21]~input_o\ & \B[21]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[21]~input_o\) # (\B[21]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[21]~input_o\ $ (\B[21]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X46_Y71_N12
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux10~5_combout\ & ((\B[9]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux10~5_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X52_Y70_N16
\Add|GEN_BLOCKS:5:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[5]~21_combout\ & ((\A[20]~input_o\) # (\AddnSub~input_o\ $ (\B[20]~input_o\)))) # (!\Add|block_carry_in[5]~21_combout\ & (\A[20]~input_o\ & (\AddnSub~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[5]~21_combout\,
	datac => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X52_Y70_N30
\Add|S[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(21) = \AddnSub~input_o\ $ (\Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\ $ (\A[21]~input_o\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|S\(21));

-- Location: LCCOMB_X47_Y66_N18
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux11~3_combout\ & (\Shift|ll4[5]~8_combout\ & ((\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (((\Add|S\(21)) # (!\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[5]~8_combout\,
	datab => \Add|S\(21),
	datac => \Mux11~3_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X49_Y67_N18
\Shift|ll2[22]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~39_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ll2[22]~39_combout\);

-- Location: LCCOMB_X48_Y66_N10
\Shift|ll2[21]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~40_combout\ = (\B[0]~input_o\ & (\Shift|ll2[21]~37_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[22]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[21]~37_combout\,
	datab => \Shift|ll2[22]~39_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll2[21]~40_combout\);

-- Location: LCCOMB_X47_Y66_N16
\Shift|ll3[21]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[21]~15_combout\ = (\B[2]~input_o\ & (\Shift|ll2[17]~32_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[21]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[17]~32_combout\,
	datab => \Shift|ll2[21]~40_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll3[21]~15_combout\);

-- Location: LCCOMB_X47_Y66_N12
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\Shift|ll3[21]~15_combout\) # ((!\Mux11~0_combout\)))) # (!\Mux10~0_combout\ & (((\Shift|ll3[13]~7_combout\ & \Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \Shift|ll3[21]~15_combout\,
	datac => \Shift|ll3[13]~7_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X48_Y68_N16
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux11~5_combout\ & (((\Mux11~4_combout\ & \Shift|rl4[21]~10_combout\)))) # (!\Mux11~5_combout\ & ((\Mux10~1_combout\) # ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \Mux11~5_combout\,
	datac => \Mux11~4_combout\,
	datad => \Shift|rl4[21]~10_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X48_Y68_N2
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & ((\Shift|ra4[21]~11_combout\) # ((!\Mux11~1_combout\)))) # (!\Mux10~2_combout\ & (((\A[31]~input_o\ & \Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[21]~11_combout\,
	datab => \Mux10~2_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux11~1_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X46_Y71_N6
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux10~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux10~3_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X52_Y70_N2
\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(20) & ((\A[21]~input_o\) # (\AddnSub~input_o\ $ (\B[21]~input_o\)))) # (!\Add|G\(20) & (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(20),
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X52_Y70_N28
\Add|S[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(22) = \Add|P\(22) $ (((\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\) # ((\Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[5]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(22),
	datab => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\,
	datac => \Add|block_carry_in[5]~21_combout\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\,
	combout => \Add|S\(22));

-- Location: LCCOMB_X46_Y67_N10
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux11~3_combout\ & (\Shift|ll4[6]~9_combout\ & (\Mux11~2_combout\))) # (!\Mux11~3_combout\ & (((\Add|S\(22)) # (!\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Shift|ll4[6]~9_combout\,
	datac => \Mux11~2_combout\,
	datad => \Add|S\(22),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X49_Y67_N20
\Shift|ll2[23]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~41_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ll2[23]~41_combout\);

-- Location: LCCOMB_X49_Y67_N30
\Shift|ll2[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~42_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[22]~39_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[23]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[23]~41_combout\,
	datac => \Shift|ll2[22]~39_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[22]~42_combout\);

-- Location: LCCOMB_X49_Y66_N6
\Shift|ll3[22]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[22]~16_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[18]~34_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[22]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ll2[22]~42_combout\,
	datad => \Shift|ll2[18]~34_combout\,
	combout => \Shift|ll3[22]~16_combout\);

-- Location: LCCOMB_X46_Y67_N20
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((\Shift|ll3[22]~16_combout\) # ((!\Mux11~0_combout\)))) # (!\Mux9~0_combout\ & (((\Mux11~0_combout\ & \Shift|ll3[14]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datab => \Shift|ll3[22]~16_combout\,
	datac => \Mux11~0_combout\,
	datad => \Shift|ll3[14]~8_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X52_Y68_N26
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux11~5_combout\ & (((\Mux11~4_combout\ & \Shift|rl4[22]~11_combout\)))) # (!\Mux11~5_combout\ & ((\Mux9~1_combout\) # ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux9~1_combout\,
	datac => \Mux11~4_combout\,
	datad => \Shift|rl4[22]~11_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X52_Y68_N20
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux11~1_combout\ & ((\Mux9~2_combout\ & (\Shift|ra4[22]~13_combout\)) # (!\Mux9~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux11~1_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Shift|ra4[22]~13_combout\,
	datac => \Mux9~2_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X53_Y70_N14
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\LogicFN[0]~input_o\ & ((\B[22]~input_o\ & (\LogicFN[1]~input_o\ $ (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (!\LogicFN[1]~input_o\ & \A[22]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[22]~input_o\) # ((\A[22]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[22]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X53_Y70_N8
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux9~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Mux9~5_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[10]~input_o\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X52_Y68_N22
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux9~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux9~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux9~6_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X53_Y70_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\) # (\Logic|xor_result[23]~1_combout\)))) # (!\LogicFN[0]~input_o\ & (\B[11]~input_o\ & (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[11]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Logic|xor_result[23]~1_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X53_Y70_N2
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\LogicFN[1]~input_o\ & ((\A[23]~input_o\ & ((\B[23]~input_o\) # (!\Mux8~0_combout\))) # (!\A[23]~input_o\ & (\B[23]~input_o\ & !\Mux8~0_combout\)))) # (!\LogicFN[1]~input_o\ & (((\Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X52_Y70_N14
\Add|G[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(21) = (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|G\(21));

-- Location: LCCOMB_X52_Y70_N8
\Add|GEN_BLOCKS:5:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ = (\A[22]~input_o\ & ((\Add|G\(21)) # (\AddnSub~input_o\ $ (\B[22]~input_o\)))) # (!\A[22]~input_o\ & (\Add|G\(21) & (\AddnSub~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \Add|G\(21),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X52_Y70_N10
\Add|GEN_BLOCKS:5:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\ = (\Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\) # ((\Add|P\(21) & (\Add|P\(22) & \Add|G\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(21),
	datab => \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\,
	datac => \Add|P\(22),
	datad => \Add|G\(20),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X52_Y70_N20
\Add|GEN_BLOCKS:5:LACG_INST|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C\(3) = (\Add|GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\) # ((\Add|block_carry_in[5]~21_combout\ & (\Add|P\(22) & \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\,
	datab => \Add|block_carry_in[5]~21_combout\,
	datac => \Add|P\(22),
	datad => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C\(3));

-- Location: LCCOMB_X53_Y70_N12
\Add|S[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(23) = \B[23]~input_o\ $ (\AddnSub~input_o\ $ (\A[23]~input_o\ $ (\Add|GEN_BLOCKS:5:LACG_INST|C\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[23]~input_o\,
	datad => \Add|GEN_BLOCKS:5:LACG_INST|C\(3),
	combout => \Add|S\(23));

-- Location: LCCOMB_X48_Y65_N10
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux11~3_combout\ & (((\Mux11~2_combout\ & \Shift|ll4[7]~10_combout\)))) # (!\Mux11~3_combout\ & ((\Add|S\(23)) # ((!\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Add|S\(23),
	datac => \Mux11~2_combout\,
	datad => \Shift|ll4[7]~10_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X49_Y67_N24
\Shift|ll2[24]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~43_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ll2[24]~43_combout\);

-- Location: LCCOMB_X49_Y67_N26
\Shift|ll2[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~44_combout\ = (\B[0]~input_o\ & (\Shift|ll2[23]~41_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[24]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[23]~41_combout\,
	datac => \Shift|ll2[24]~43_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[23]~44_combout\);

-- Location: LCCOMB_X48_Y65_N24
\Shift|ll3[23]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[23]~17_combout\ = (\B[2]~input_o\ & (\Shift|ll2[19]~36_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[23]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[19]~36_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[23]~44_combout\,
	combout => \Shift|ll3[23]~17_combout\);

-- Location: LCCOMB_X48_Y65_N4
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & ((\Shift|ll3[23]~17_combout\) # ((!\Mux11~0_combout\)))) # (!\Mux8~2_combout\ & (((\Mux11~0_combout\ & \Shift|ll3[15]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Shift|ll3[23]~17_combout\,
	datac => \Mux11~0_combout\,
	datad => \Shift|ll3[15]~9_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X48_Y68_N28
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux11~5_combout\ & (\Shift|rl4[23]~12_combout\ & ((\Mux11~4_combout\)))) # (!\Mux11~5_combout\ & (((\Mux8~3_combout\) # (!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[23]~12_combout\,
	datab => \Mux11~5_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux11~4_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X52_Y69_N4
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & (((\Shift|ra4[23]~15_combout\)) # (!\Mux11~1_combout\))) # (!\Mux8~4_combout\ & (\Mux11~1_combout\ & (\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Mux11~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Shift|ra4[23]~15_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X52_Y69_N14
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux8~1_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux8~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~1_combout\,
	datab => \Mux8~5_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X49_Y66_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X49_Y67_N4
\Shift|ll2[25]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~45_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ll2[25]~45_combout\);

-- Location: LCCOMB_X49_Y67_N14
\Shift|ll2[24]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~46_combout\ = (\B[0]~input_o\ & (\Shift|ll2[24]~43_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[25]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[24]~43_combout\,
	datac => \Shift|ll2[25]~45_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[24]~46_combout\);

-- Location: LCCOMB_X49_Y66_N10
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux27~1_combout\ & ((\Shift|ll3[16]~10_combout\) # ((\Mux4~0_combout\)))) # (!\Mux27~1_combout\ & (((!\Mux4~0_combout\ & \Shift|ll2[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[16]~10_combout\,
	datab => \Mux27~1_combout\,
	datac => \Mux4~0_combout\,
	datad => \Shift|ll2[24]~46_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X49_Y66_N28
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & ((\Shift|ll4[8]~11_combout\) # ((!\Mux4~0_combout\)))) # (!\Mux7~2_combout\ & (((\Mux4~0_combout\ & \Shift|ll2[20]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Shift|ll4[8]~11_combout\,
	datac => \Mux4~0_combout\,
	datad => \Shift|ll2[20]~38_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X52_Y68_N16
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X49_Y71_N4
\Add|S[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(24) = \A[24]~input_o\ $ (\B[24]~input_o\ $ (\AddnSub~input_o\ $ (\Add|block_carry_in[6]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[6]~24_combout\,
	combout => \Add|S\(24));

-- Location: LCCOMB_X50_Y68_N20
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux11~5_combout\ & (\Mux11~4_combout\ & ((\Shift|rl4[24]~13_combout\)))) # (!\Mux11~5_combout\ & (((\Add|S\(24))) # (!\Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~4_combout\,
	datac => \Add|S\(24),
	datad => \Shift|rl4[24]~13_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X50_Y68_N14
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux11~1_combout\ & ((\Mux7~0_combout\ & ((\Shift|ra4[24]~16_combout\))) # (!\Mux7~0_combout\ & (\A[31]~input_o\)))) # (!\Mux11~1_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Shift|ra4[24]~16_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X49_Y70_N2
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux4~1_combout\ & (\Mux7~3_combout\ & (!\B[5]~input_o\))) # (!\Mux4~1_combout\ & (((\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \B[5]~input_o\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X50_Y70_N8
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[24]~input_o\ & \B[24]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[24]~input_o\ $ (\B[24]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[24]~input_o\) # (\B[24]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[24]~input_o\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X50_Y70_N18
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux7~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[12]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Mux7~6_combout\,
	datac => \B[12]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X50_Y70_N22
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux7~7_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X49_Y71_N6
\Add|GEN_BLOCKS:6:LACG_INST|C[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[1]~4_combout\ = (\A[24]~input_o\ & ((\Add|block_carry_in[6]~24_combout\) # (\B[24]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[24]~input_o\ & (\Add|block_carry_in[6]~24_combout\ & (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[6]~24_combout\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[1]~4_combout\);

-- Location: LCCOMB_X48_Y68_N30
\Add|S[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(25) = \Add|GEN_BLOCKS:6:LACG_INST|C[1]~4_combout\ $ (\B[25]~input_o\ $ (\AddnSub~input_o\ $ (\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|C[1]~4_combout\,
	datab => \B[25]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[25]~input_o\,
	combout => \Add|S\(25));

-- Location: LCCOMB_X48_Y68_N22
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux11~5_combout\ & (((\Shift|rl4[25]~14_combout\ & \Mux11~4_combout\)))) # (!\Mux11~5_combout\ & ((\Add|S\(25)) # ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(25),
	datab => \Mux11~5_combout\,
	datac => \Shift|rl4[25]~14_combout\,
	datad => \Mux11~4_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X49_Y68_N12
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux11~1_combout\ & ((\Mux6~0_combout\ & (\Shift|ra4[25]~17_combout\)) # (!\Mux6~0_combout\ & ((\A[31]~input_o\))))) # (!\Mux11~1_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[25]~17_combout\,
	datab => \Mux11~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X49_Y67_N0
\Shift|ll2[25]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~47_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[25]~47_combout\);

-- Location: LCCOMB_X49_Y67_N10
\Shift|ll2[25]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~48_combout\ = (\Shift|ll2[25]~47_combout\) # ((\Shift|ll2[25]~45_combout\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[25]~47_combout\,
	datac => \Shift|ll2[25]~45_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[25]~48_combout\);

-- Location: LCCOMB_X49_Y66_N30
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux4~0_combout\ & (((\Mux27~1_combout\)))) # (!\Mux4~0_combout\ & ((\Mux27~1_combout\ & (\Shift|ll3[17]~11_combout\)) # (!\Mux27~1_combout\ & ((\Shift|ll2[25]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Shift|ll3[17]~11_combout\,
	datac => \Mux27~1_combout\,
	datad => \Shift|ll2[25]~48_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X49_Y66_N16
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux4~0_combout\ & ((\Mux6~2_combout\ & (\Shift|ll4[9]~12_combout\)) # (!\Mux6~2_combout\ & ((\Shift|ll2[21]~40_combout\))))) # (!\Mux4~0_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Shift|ll4[9]~12_combout\,
	datac => \Mux6~2_combout\,
	datad => \Shift|ll2[21]~40_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X49_Y70_N28
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux4~1_combout\ & (((!\B[5]~input_o\ & \Mux6~3_combout\)))) # (!\Mux4~1_combout\ & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux4~1_combout\,
	datac => \B[5]~input_o\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X48_Y70_N14
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[25]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[25]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[25]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[25]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X48_Y70_N8
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~6_combout\ & ((\B[13]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Mux6~6_combout\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X49_Y70_N6
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux6~7_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux6~4_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X48_Y70_N10
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[26]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[26]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[26]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[26]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[26]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X48_Y70_N20
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[14]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[14]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X49_Y67_N28
\Shift|ll2[26]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~49_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[23]~input_o\))) # (!\B[0]~input_o\ & (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[26]~49_combout\);

-- Location: LCCOMB_X50_Y67_N26
\Shift|ll1[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[26]~1_combout\ = (\B[0]~input_o\ & (\A[25]~input_o\)) # (!\B[0]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|ll1[26]~1_combout\);

-- Location: LCCOMB_X49_Y66_N18
\Shift|ll2[26]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~50_combout\ = (\Shift|ll2[26]~49_combout\) # ((!\B[1]~input_o\ & \Shift|ll1[26]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[26]~49_combout\,
	datab => \B[1]~input_o\,
	datad => \Shift|ll1[26]~1_combout\,
	combout => \Shift|ll2[26]~50_combout\);

-- Location: LCCOMB_X49_Y66_N20
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux27~1_combout\ & ((\Shift|ll3[18]~12_combout\) # ((\Mux4~0_combout\)))) # (!\Mux27~1_combout\ & (((\Shift|ll2[26]~50_combout\ & !\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[18]~12_combout\,
	datab => \Shift|ll2[26]~50_combout\,
	datac => \Mux27~1_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X49_Y66_N22
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux4~0_combout\ & ((\Mux5~2_combout\ & (\Shift|ll4[10]~13_combout\)) # (!\Mux5~2_combout\ & ((\Shift|ll2[22]~42_combout\))))) # (!\Mux4~0_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Shift|ll4[10]~13_combout\,
	datac => \Shift|ll2[22]~42_combout\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X49_Y71_N24
\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ = (\Add|G\(24) & ((\A[25]~input_o\) # (\B[25]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(24) & (\A[25]~input_o\ & (\B[25]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Add|G\(24),
	datac => \AddnSub~input_o\,
	datad => \A[25]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X49_Y71_N18
\Add|S[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(26) = \Add|P\(26) $ (((\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\) # ((\Add|block_carry_in[6]~24_combout\ & \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~24_combout\,
	datab => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(26),
	datad => \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\,
	combout => \Add|S\(26));

-- Location: LCCOMB_X50_Y69_N20
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux11~5_combout\ & (((\Mux11~4_combout\ & \Shift|rl4[26]~15_combout\)))) # (!\Mux11~5_combout\ & ((\Add|S\(26)) # ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Add|S\(26),
	datac => \Mux11~4_combout\,
	datad => \Shift|rl4[26]~15_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X50_Y69_N6
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux11~1_combout\ & ((\Mux5~0_combout\ & ((\Shift|ra4[26]~18_combout\))) # (!\Mux5~0_combout\ & (\A[31]~input_o\)))) # (!\Mux11~1_combout\ & (\Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux5~0_combout\,
	datac => \A[31]~input_o\,
	datad => \Shift|ra4[26]~18_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X49_Y70_N24
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux4~1_combout\ & (\Mux5~3_combout\ & (!\B[5]~input_o\))) # (!\Mux4~1_combout\ & (((\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \B[5]~input_o\,
	datac => \Mux4~1_combout\,
	datad => \Mux5~1_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X49_Y70_N26
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux5~7_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux5~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux5~7_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux5~4_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X52_Y68_N24
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (!\B[5]~input_o\ & (!\ShiftFN[1]~input_o\ & (!\FuncClass[0]~input_o\ & \ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X49_Y71_N12
\Add|GEN_BLOCKS:6:LACG_INST|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[3]~5_combout\ = (\A[24]~input_o\ & ((\Add|block_carry_in[6]~24_combout\) # (\B[24]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[24]~input_o\ & (\Add|block_carry_in[6]~24_combout\ & (\B[24]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[24]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[6]~24_combout\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~5_combout\);

-- Location: LCCOMB_X49_Y71_N14
\Add|G[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(25) = (\A[25]~input_o\ & (\B[25]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[25]~input_o\,
	combout => \Add|G\(25));

-- Location: LCCOMB_X49_Y71_N16
\Add|GEN_BLOCKS:6:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ = (\Add|G\(25) & ((\A[26]~input_o\) # (\AddnSub~input_o\ $ (\B[26]~input_o\)))) # (!\Add|G\(25) & (\A[26]~input_o\ & (\AddnSub~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(25),
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X49_Y71_N20
\Add|GEN_BLOCKS:6:LACG_INST|C[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[3]~6_combout\ = (\Add|P\(26) & (\B[25]~input_o\ $ (\AddnSub~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \Add|P\(26),
	datac => \AddnSub~input_o\,
	datad => \A[25]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~6_combout\);

-- Location: LCCOMB_X50_Y67_N4
\Add|P[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(27) = \AddnSub~input_o\ $ (\A[27]~input_o\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Add|P\(27));

-- Location: LCCOMB_X49_Y71_N26
\Add|S[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(27) = \Add|P\(27) $ (((\Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:6:LACG_INST|C[3]~5_combout\ & \Add|GEN_BLOCKS:6:LACG_INST|C[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~5_combout\,
	datab => \Add|GEN_BLOCKS:6:LACG_INST|g_int~1_combout\,
	datac => \Add|GEN_BLOCKS:6:LACG_INST|C[3]~6_combout\,
	datad => \Add|P\(27),
	combout => \Add|S\(27));

-- Location: LCCOMB_X52_Y68_N2
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux11~5_combout\ & (((\Mux11~4_combout\ & \Shift|rl4[27]~16_combout\)))) # (!\Mux11~5_combout\ & ((\Add|S\(27)) # ((!\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Add|S\(27),
	datac => \Mux11~4_combout\,
	datad => \Shift|rl4[27]~16_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X52_Y68_N28
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux11~1_combout\ & ((\Mux4~2_combout\ & (\Shift|ra4[27]~21_combout\)) # (!\Mux4~2_combout\ & ((\A[31]~input_o\))))) # (!\Mux11~1_combout\ & (\Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \Shift|ra4[27]~21_combout\,
	datad => \A[31]~input_o\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X53_Y69_N22
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[27]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[27]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[27]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[27]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X46_Y71_N0
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\Mux4~9_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[15]~input_o\,
	datad => \Mux4~9_combout\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X52_Y68_N30
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\FuncClass[0]~input_o\ & (((\Mux4~10_combout\)))) # (!\FuncClass[0]~input_o\ & (\Mux4~3_combout\ & ((!\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux4~3_combout\,
	datac => \Mux4~10_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X49_Y67_N6
\Shift|ll2[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~51_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[24]~input_o\)) # (!\B[0]~input_o\ & ((\A[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[27]~51_combout\);

-- Location: LCCOMB_X49_Y69_N18
\Shift|ll1[27]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[27]~2_combout\ = (\B[0]~input_o\ & (\A[26]~input_o\)) # (!\B[0]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[26]~input_o\,
	datac => \A[27]~input_o\,
	combout => \Shift|ll1[27]~2_combout\);

-- Location: LCCOMB_X48_Y69_N2
\Shift|ll2[27]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~52_combout\ = (\Shift|ll2[27]~51_combout\) # ((!\B[1]~input_o\ & \Shift|ll1[27]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[27]~51_combout\,
	datab => \B[1]~input_o\,
	datad => \Shift|ll1[27]~2_combout\,
	combout => \Shift|ll2[27]~52_combout\);

-- Location: LCCOMB_X48_Y65_N22
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~0_combout\ & (((\Mux27~1_combout\)))) # (!\Mux4~0_combout\ & ((\Mux27~1_combout\ & ((\Shift|ll3[19]~13_combout\))) # (!\Mux27~1_combout\ & (\Shift|ll2[27]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Shift|ll2[27]~52_combout\,
	datac => \Shift|ll3[19]~13_combout\,
	datad => \Mux27~1_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X48_Y65_N0
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~0_combout\ & ((\Mux4~5_combout\ & (\Shift|ll4[11]~14_combout\)) # (!\Mux4~5_combout\ & ((\Shift|ll2[23]~44_combout\))))) # (!\Mux4~0_combout\ & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Shift|ll4[11]~14_combout\,
	datac => \Mux4~5_combout\,
	datad => \Shift|ll2[23]~44_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X52_Y68_N10
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux4~4_combout\) # ((\Mux4~7_combout\ & \Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux4~7_combout\,
	datac => \Mux4~4_combout\,
	datad => \Mux4~6_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X50_Y68_N16
\Add|S[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(28) = \AddnSub~input_o\ $ (\A[28]~input_o\ $ (\Add|block_carry_in[7]~27_combout\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[28]~input_o\,
	datac => \Add|block_carry_in[7]~27_combout\,
	datad => \B[28]~input_o\,
	combout => \Add|S\(28));

-- Location: LCCOMB_X50_Y68_N10
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux11~5_combout\ & (\Mux11~4_combout\ & (\Shift|rl4[28]~17_combout\))) # (!\Mux11~5_combout\ & (((\Add|S\(28))) # (!\Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datab => \Mux11~4_combout\,
	datac => \Shift|rl4[28]~17_combout\,
	datad => \Add|S\(28),
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X50_Y68_N4
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux11~1_combout\ & ((\Mux3~4_combout\ & (\Shift|ra4[28]~22_combout\)) # (!\Mux3~4_combout\ & ((\A[31]~input_o\))))) # (!\Mux11~1_combout\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra4[28]~22_combout\,
	datab => \Mux11~1_combout\,
	datac => \A[31]~input_o\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X49_Y69_N28
\Shift|ll1[28]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[28]~3_combout\ = (\B[0]~input_o\ & (\A[27]~input_o\)) # (!\B[0]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[27]~input_o\,
	datac => \A[28]~input_o\,
	combout => \Shift|ll1[28]~3_combout\);

-- Location: LCCOMB_X48_Y69_N4
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux28~2_combout\ & (((\Shift|ll4[2]~5_combout\)))) # (!\Mux28~2_combout\ & ((\Shift|ll4[2]~5_combout\ & (\Shift|ll2[24]~46_combout\)) # (!\Shift|ll4[2]~5_combout\ & ((\Shift|ll1[28]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[24]~46_combout\,
	datab => \Mux28~2_combout\,
	datac => \Shift|ll1[28]~3_combout\,
	datad => \Shift|ll4[2]~5_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X48_Y69_N22
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux28~2_combout\ & ((\Mux3~1_combout\ & ((\Shift|ll3[20]~14_combout\))) # (!\Mux3~1_combout\ & (\Shift|ll1[26]~1_combout\)))) # (!\Mux28~2_combout\ & (((\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[26]~1_combout\,
	datab => \Mux28~2_combout\,
	datac => \Mux3~1_combout\,
	datad => \Shift|ll3[20]~14_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X52_Y68_N12
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\FuncClass[0]~input_o\) # ((\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X52_Y68_N6
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X53_Y69_N28
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~0_combout\ & (((\Mux3~3_combout\)))) # (!\Mux3~0_combout\ & ((\Mux3~3_combout\ & ((\Mux3~2_combout\))) # (!\Mux3~3_combout\ & (\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Mux3~2_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X53_Y69_N2
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\LogicFN[0]~input_o\ & ((\A[28]~input_o\ & (\B[28]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[28]~input_o\) # ((\B[28]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[28]~input_o\,
	datac => \B[28]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X53_Y69_N20
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux3~9_combout\ & ((\B[16]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X53_Y69_N6
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~6_combout\ & ((\Shift|ll4[12]~15_combout\) # ((!\Mux3~0_combout\)))) # (!\Mux3~6_combout\ & (((\Mux3~0_combout\ & \Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[12]~15_combout\,
	datab => \Mux3~6_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~10_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X53_Y69_N24
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux3~7_combout\ & (!\FuncClass[1]~input_o\ & ((!\B[5]~input_o\) # (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux3~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X55_Y71_N8
\Shift|ll1[29]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[29]~4_combout\ = (\B[0]~input_o\ & ((\A[28]~input_o\))) # (!\B[0]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Shift|ll1[29]~4_combout\);

-- Location: LCCOMB_X48_Y69_N8
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Shift|ll4[2]~5_combout\ & ((\Mux28~2_combout\) # ((\Shift|ll2[25]~48_combout\)))) # (!\Shift|ll4[2]~5_combout\ & (!\Mux28~2_combout\ & ((\Shift|ll1[29]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[2]~5_combout\,
	datab => \Mux28~2_combout\,
	datac => \Shift|ll2[25]~48_combout\,
	datad => \Shift|ll1[29]~4_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X48_Y69_N10
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\Shift|ll3[21]~15_combout\)) # (!\Mux28~2_combout\))) # (!\Mux2~0_combout\ & (\Mux28~2_combout\ & ((\Shift|ll1[27]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux28~2_combout\,
	datac => \Shift|ll3[21]~15_combout\,
	datad => \Shift|ll1[27]~2_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X55_Y69_N0
\Add|GEN_BLOCKS:7:LACG_INST|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[1]~2_combout\ = (\Add|block_carry_in[7]~27_combout\ & ((\A[28]~input_o\) # (\AddnSub~input_o\ $ (\B[28]~input_o\)))) # (!\Add|block_carry_in[7]~27_combout\ & (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~27_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~2_combout\);

-- Location: LCCOMB_X55_Y69_N30
\Add|S[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(29) = \B[29]~input_o\ $ (\AddnSub~input_o\ $ (\A[29]~input_o\ $ (\Add|GEN_BLOCKS:7:LACG_INST|C[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[29]~input_o\,
	datad => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~2_combout\,
	combout => \Add|S\(29));

-- Location: LCCOMB_X48_Y68_N24
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux11~4_combout\ & ((\Mux11~5_combout\ & ((\Shift|rl4[29]~18_combout\))) # (!\Mux11~5_combout\ & (\Add|S\(29))))) # (!\Mux11~4_combout\ & (!\Mux11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \Mux11~5_combout\,
	datac => \Add|S\(29),
	datad => \Shift|rl4[29]~18_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X48_Y68_N26
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux11~1_combout\ & ((\Mux2~2_combout\ & ((\Shift|ra4[29]~19_combout\))) # (!\Mux2~2_combout\ & (\A[31]~input_o\)))) # (!\Mux11~1_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \Shift|ra4[29]~19_combout\,
	datac => \Mux11~1_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X52_Y69_N0
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux3~3_combout\ & ((\Mux2~1_combout\) # ((\Mux3~0_combout\)))) # (!\Mux3~3_combout\ & (((!\Mux3~0_combout\ & \Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux3~3_combout\,
	datac => \Mux3~0_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X53_Y69_N14
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\B[29]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[29]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \A[29]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[29]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X53_Y69_N16
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux2~7_combout\,
	datad => \B[17]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X53_Y69_N10
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & (((\Shift|ll4[13]~16_combout\)) # (!\Mux3~0_combout\))) # (!\Mux2~4_combout\ & (\Mux3~0_combout\ & ((\Mux2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \Mux3~0_combout\,
	datac => \Shift|ll4[13]~16_combout\,
	datad => \Mux2~8_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X53_Y69_N4
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~5_combout\ & (!\FuncClass[1]~input_o\ & ((!\B[5]~input_o\) # (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \Mux3~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X50_Y70_N12
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\B[30]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[30]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[30]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[30]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[30]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[30]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y70_N30
\Logic|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~1_combout\ = (\Logic|Mux1~0_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[18]~input_o\,
	datad => \Logic|Mux1~0_combout\,
	combout => \Logic|Mux1~1_combout\);

-- Location: LCCOMB_X48_Y67_N28
\Shift|Y_LL[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[30]~5_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[29]~input_o\)) # (!\B[0]~input_o\ & ((\A[30]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|Y_LL[30]~5_combout\);

-- Location: LCCOMB_X48_Y67_N30
\Shift|Y_LL[30]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[30]~6_combout\ = (!\B[2]~input_o\ & ((\Shift|Y_LL[30]~5_combout\) # ((\B[1]~input_o\ & \Shift|ll1[28]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[28]~3_combout\,
	datad => \Shift|Y_LL[30]~5_combout\,
	combout => \Shift|Y_LL[30]~6_combout\);

-- Location: LCCOMB_X49_Y66_N0
\Shift|Y_LL[30]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[30]~7_combout\ = (!\B[3]~input_o\ & ((\Shift|Y_LL[30]~6_combout\) # ((\B[2]~input_o\ & \Shift|ll2[26]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[30]~6_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[26]~50_combout\,
	combout => \Shift|Y_LL[30]~7_combout\);

-- Location: LCCOMB_X49_Y66_N26
\Shift|Y_LL[30]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[30]~8_combout\ = (!\B[4]~input_o\ & ((\Shift|Y_LL[30]~7_combout\) # ((\Shift|ll3[22]~16_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[22]~16_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|Y_LL[30]~7_combout\,
	combout => \Shift|Y_LL[30]~8_combout\);

-- Location: LCCOMB_X49_Y66_N4
\Shift|Y_LL[30]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[30]~9_combout\ = (!\B[5]~input_o\ & ((\Shift|Y_LL[30]~8_combout\) # ((\B[4]~input_o\ & \Shift|ll4[14]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[30]~8_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[14]~18_combout\,
	datad => \B[5]~input_o\,
	combout => \Shift|Y_LL[30]~9_combout\);

-- Location: LCCOMB_X50_Y66_N30
\Shift|Y_RL[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RL[30]~4_combout\ = (!\B[3]~input_o\ & (\Shift|ll4[9]~4_combout\ & (\Shift|Y_LL[0]~0_combout\ & \Shift|rl1[30]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll4[9]~4_combout\,
	datac => \Shift|Y_LL[0]~0_combout\,
	datad => \Shift|rl1[30]~0_combout\,
	combout => \Shift|Y_RL[30]~4_combout\);

-- Location: LCCOMB_X55_Y69_N18
\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~2_combout\ = (\A[29]~input_o\ & ((\Add|G\(28)) # (\B[29]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[29]~input_o\ & (\Add|G\(28) & (\B[29]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[29]~input_o\,
	datad => \Add|G\(28),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~2_combout\);

-- Location: LCCOMB_X55_Y69_N28
\Add|S[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(30) = \Add|P\(30) $ (((\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~2_combout\) # ((\Add|block_carry_in[7]~27_combout\ & \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[7]~27_combout\,
	datab => \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~2_combout\,
	datac => \Add|GEN_BLOCKS:7:LACG_INST|C~1_combout\,
	datad => \Add|P\(30),
	combout => \Add|S\(30));

-- Location: LCCOMB_X50_Y66_N24
\Y_ShiftOrArith[30]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[30]~12_combout\ = (\ShiftFN[0]~input_o\ & (((\ShiftFN[1]~input_o\)))) # (!\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\ & (\Shift|Y_RL[30]~4_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Add|S\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_RL[30]~4_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Add|S\(30),
	combout => \Y_ShiftOrArith[30]~12_combout\);

-- Location: LCCOMB_X47_Y67_N28
\Shift|Y_RA[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_RA[30]~5_combout\ = (\Shift|Y_RA[30]~2_combout\ & ((\A[30]~input_o\))) # (!\Shift|Y_RA[30]~2_combout\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|Y_RA[30]~2_combout\,
	datac => \A[31]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|Y_RA[30]~5_combout\);

-- Location: LCCOMB_X50_Y70_N24
\Y_ShiftOrArith[30]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[30]~13_combout\ = (\Y_ShiftOrArith[30]~12_combout\ & (((\Shift|Y_RA[30]~5_combout\) # (!\ShiftFN[0]~input_o\)))) # (!\Y_ShiftOrArith[30]~12_combout\ & (\Shift|Y_LL[30]~9_combout\ & ((\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[30]~9_combout\,
	datab => \Y_ShiftOrArith[30]~12_combout\,
	datac => \Shift|Y_RA[30]~5_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[30]~13_combout\);

-- Location: LCCOMB_X50_Y70_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Logic|Mux1~1_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[30]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|Mux1~1_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_ShiftOrArith[30]~13_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X54_Y69_N10
\Add|S_internal[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S_internal\(31) = \A[31]~input_o\ $ (\AddnSub~input_o\ $ (\B[31]~input_o\ $ (\Add|GEN_BLOCKS:7:LACG_INST|C\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[31]~input_o\,
	datad => \Add|GEN_BLOCKS:7:LACG_INST|C\(3),
	combout => \Add|S_internal\(31));

-- Location: LCCOMB_X48_Y65_N2
\Shift|Y_LL[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~10_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll4[15]~19_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll3[15]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[15]~19_combout\,
	datad => \Shift|ll3[15]~9_combout\,
	combout => \Shift|Y_LL[31]~10_combout\);

-- Location: LCCOMB_X49_Y69_N22
\Shift|Y_LL[31]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~11_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[30]~input_o\)) # (!\B[0]~input_o\ & ((\A[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|Y_LL[31]~11_combout\);

-- Location: LCCOMB_X48_Y69_N12
\Shift|Y_LL[31]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~12_combout\ = (!\B[2]~input_o\ & ((\Shift|Y_LL[31]~11_combout\) # ((\B[1]~input_o\ & \Shift|ll1[29]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|Y_LL[31]~11_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ll1[29]~4_combout\,
	combout => \Shift|Y_LL[31]~12_combout\);

-- Location: LCCOMB_X48_Y65_N20
\Shift|Y_LL[31]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~13_combout\ = (!\B[3]~input_o\ & ((\Shift|Y_LL[31]~12_combout\) # ((\B[2]~input_o\ & \Shift|ll2[27]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|Y_LL[31]~12_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[27]~52_combout\,
	combout => \Shift|Y_LL[31]~13_combout\);

-- Location: LCCOMB_X48_Y65_N30
\Shift|Y_LL[31]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~14_combout\ = (!\B[4]~input_o\ & ((\Shift|Y_LL[31]~13_combout\) # ((\B[3]~input_o\ & \Shift|ll3[23]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|Y_LL[31]~13_combout\,
	datac => \Shift|ll3[23]~17_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|Y_LL[31]~14_combout\);

-- Location: LCCOMB_X54_Y69_N0
\Shift|Y_LL[31]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[31]~15_combout\ = (!\B[5]~input_o\ & ((\Shift|Y_LL[31]~10_combout\) # (\Shift|Y_LL[31]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[31]~10_combout\,
	datab => \Shift|Y_LL[31]~14_combout\,
	datad => \B[5]~input_o\,
	combout => \Shift|Y_LL[31]~15_combout\);

-- Location: LCCOMB_X54_Y69_N20
\Y_ShiftOrArith[31]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~14_combout\ = (\ShiftFN[1]~input_o\ & (((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Shift|Y_LL[31]~15_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S_internal\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S_internal\(31),
	datab => \Shift|Y_LL[31]~15_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[31]~14_combout\);

-- Location: LCCOMB_X54_Y69_N22
\Y_ShiftOrArith[31]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~15_combout\ = (\ShiftFN[1]~input_o\ & (\A[31]~input_o\ & ((\Shift|Y_RA[30]~2_combout\) # (\Y_ShiftOrArith[31]~14_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[31]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_RA[30]~2_combout\,
	datab => \Y_ShiftOrArith[31]~14_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Y_ShiftOrArith[31]~15_combout\);

-- Location: LCCOMB_X54_Y69_N26
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[31]~input_o\ & \A[31]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[31]~input_o\) # (\A[31]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[31]~input_o\ $ (\A[31]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X54_Y69_N12
\Logic|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~1_combout\ = (\Logic|Mux0~0_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Logic|Mux0~0_combout\,
	datad => \B[19]~input_o\,
	combout => \Logic|Mux0~1_combout\);

-- Location: LCCOMB_X54_Y69_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux0~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[31]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[31]~15_combout\,
	datad => \Logic|Mux0~1_combout\,
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


