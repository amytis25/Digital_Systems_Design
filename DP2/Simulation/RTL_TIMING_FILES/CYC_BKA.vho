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

-- DATE "11/04/2025 18:22:37"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	EN_Adder IS
    PORT (
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	S : OUT std_logic_vector(63 DOWNTO 0);
	Cin : IN std_logic;
	Cout : OUT std_logic;
	Ovfl : OUT std_logic
	);
END EN_Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_C26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_D27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_F24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_J23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_G26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF EN_Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Ovfl : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \S[4]~output_o\ : std_logic;
SIGNAL \S[5]~output_o\ : std_logic;
SIGNAL \S[6]~output_o\ : std_logic;
SIGNAL \S[7]~output_o\ : std_logic;
SIGNAL \S[8]~output_o\ : std_logic;
SIGNAL \S[9]~output_o\ : std_logic;
SIGNAL \S[10]~output_o\ : std_logic;
SIGNAL \S[11]~output_o\ : std_logic;
SIGNAL \S[12]~output_o\ : std_logic;
SIGNAL \S[13]~output_o\ : std_logic;
SIGNAL \S[14]~output_o\ : std_logic;
SIGNAL \S[15]~output_o\ : std_logic;
SIGNAL \S[16]~output_o\ : std_logic;
SIGNAL \S[17]~output_o\ : std_logic;
SIGNAL \S[18]~output_o\ : std_logic;
SIGNAL \S[19]~output_o\ : std_logic;
SIGNAL \S[20]~output_o\ : std_logic;
SIGNAL \S[21]~output_o\ : std_logic;
SIGNAL \S[22]~output_o\ : std_logic;
SIGNAL \S[23]~output_o\ : std_logic;
SIGNAL \S[24]~output_o\ : std_logic;
SIGNAL \S[25]~output_o\ : std_logic;
SIGNAL \S[26]~output_o\ : std_logic;
SIGNAL \S[27]~output_o\ : std_logic;
SIGNAL \S[28]~output_o\ : std_logic;
SIGNAL \S[29]~output_o\ : std_logic;
SIGNAL \S[30]~output_o\ : std_logic;
SIGNAL \S[31]~output_o\ : std_logic;
SIGNAL \S[32]~output_o\ : std_logic;
SIGNAL \S[33]~output_o\ : std_logic;
SIGNAL \S[34]~output_o\ : std_logic;
SIGNAL \S[35]~output_o\ : std_logic;
SIGNAL \S[36]~output_o\ : std_logic;
SIGNAL \S[37]~output_o\ : std_logic;
SIGNAL \S[38]~output_o\ : std_logic;
SIGNAL \S[39]~output_o\ : std_logic;
SIGNAL \S[40]~output_o\ : std_logic;
SIGNAL \S[41]~output_o\ : std_logic;
SIGNAL \S[42]~output_o\ : std_logic;
SIGNAL \S[43]~output_o\ : std_logic;
SIGNAL \S[44]~output_o\ : std_logic;
SIGNAL \S[45]~output_o\ : std_logic;
SIGNAL \S[46]~output_o\ : std_logic;
SIGNAL \S[47]~output_o\ : std_logic;
SIGNAL \S[48]~output_o\ : std_logic;
SIGNAL \S[49]~output_o\ : std_logic;
SIGNAL \S[50]~output_o\ : std_logic;
SIGNAL \S[51]~output_o\ : std_logic;
SIGNAL \S[52]~output_o\ : std_logic;
SIGNAL \S[53]~output_o\ : std_logic;
SIGNAL \S[54]~output_o\ : std_logic;
SIGNAL \S[55]~output_o\ : std_logic;
SIGNAL \S[56]~output_o\ : std_logic;
SIGNAL \S[57]~output_o\ : std_logic;
SIGNAL \S[58]~output_o\ : std_logic;
SIGNAL \S[59]~output_o\ : std_logic;
SIGNAL \S[60]~output_o\ : std_logic;
SIGNAL \S[61]~output_o\ : std_logic;
SIGNAL \S[62]~output_o\ : std_logic;
SIGNAL \S[63]~output_o\ : std_logic;
SIGNAL \Cout~output_o\ : std_logic;
SIGNAL \Ovfl~output_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S~12_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \S~13_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \C[9]~4_combout\ : std_logic;
SIGNAL \Gf[1]~0_combout\ : std_logic;
SIGNAL \S~14_combout\ : std_logic;
SIGNAL \C~5_combout\ : std_logic;
SIGNAL \G2~0_combout\ : std_logic;
SIGNAL \G1[2]~0_combout\ : std_logic;
SIGNAL \Gf[4]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \S~15_combout\ : std_logic;
SIGNAL \Pf[3]~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \G1[3]~1_combout\ : std_logic;
SIGNAL \S~16_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \G3[8]~6_combout\ : std_logic;
SIGNAL \C~6_combout\ : std_logic;
SIGNAL \G1[4]~2_combout\ : std_logic;
SIGNAL \C[5]~7_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \S~90_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \G1[5]~3_combout\ : std_logic;
SIGNAL \G3[9]~8_combout\ : std_logic;
SIGNAL \G3~7_combout\ : std_logic;
SIGNAL \C[6]~8_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S~91_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \C~9_combout\ : std_logic;
SIGNAL \G1[6]~4_combout\ : std_logic;
SIGNAL \Gf[6]~2_combout\ : std_logic;
SIGNAL \G3~99_combout\ : std_logic;
SIGNAL \S~17_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \G1[7]~5_combout\ : std_logic;
SIGNAL \Gf[7]~3_combout\ : std_logic;
SIGNAL \G3~9_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \C~10_combout\ : std_logic;
SIGNAL \S~92_combout\ : std_logic;
SIGNAL \G2~1_combout\ : std_logic;
SIGNAL \P2[8]~28_combout\ : std_logic;
SIGNAL \C[25]~11_combout\ : std_logic;
SIGNAL \C[25]~12_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \G1[8]~6_combout\ : std_logic;
SIGNAL \G3[8]~11_combout\ : std_logic;
SIGNAL \G3[8]~10_combout\ : std_logic;
SIGNAL \G3[8]~12_combout\ : std_logic;
SIGNAL \S~93_combout\ : std_logic;
SIGNAL \G1[9]~7_combout\ : std_logic;
SIGNAL \G3[9]~13_combout\ : std_logic;
SIGNAL \P2[9]~29_combout\ : std_logic;
SIGNAL \G3[9]~14_combout\ : std_logic;
SIGNAL \C[10]~13_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \S~94_combout\ : std_logic;
SIGNAL \P2[10]~30_combout\ : std_logic;
SIGNAL \C~152_combout\ : std_logic;
SIGNAL \C[11]~14_combout\ : std_logic;
SIGNAL \G1[10]~8_combout\ : std_logic;
SIGNAL \G3[10]~15_combout\ : std_logic;
SIGNAL \C[27]~15_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S~18_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \G1[11]~9_combout\ : std_logic;
SIGNAL \G2~2_combout\ : std_logic;
SIGNAL \G3[11]~16_combout\ : std_logic;
SIGNAL \P2[11]~31_combout\ : std_logic;
SIGNAL \G3[11]~17_combout\ : std_logic;
SIGNAL \C[28]~16_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S~19_combout\ : std_logic;
SIGNAL \G1[12]~10_combout\ : std_logic;
SIGNAL \G2~3_combout\ : std_logic;
SIGNAL \G3[12]~18_combout\ : std_logic;
SIGNAL \P2[12]~56_combout\ : std_logic;
SIGNAL \G3[12]~19_combout\ : std_logic;
SIGNAL \C[37]~17_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \S~20_combout\ : std_logic;
SIGNAL \C[22]~18_combout\ : std_logic;
SIGNAL \G2~4_combout\ : std_logic;
SIGNAL \G1[13]~11_combout\ : std_logic;
SIGNAL \G3[13]~20_combout\ : std_logic;
SIGNAL \G3[13]~21_combout\ : std_logic;
SIGNAL \C[38]~19_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \S~21_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \G2~5_combout\ : std_logic;
SIGNAL \G1[14]~12_combout\ : std_logic;
SIGNAL \G3[14]~22_combout\ : std_logic;
SIGNAL \G3[14]~23_combout\ : std_logic;
SIGNAL \Gf[30]~4_combout\ : std_logic;
SIGNAL \C[39]~20_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \S~22_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \G2~6_combout\ : std_logic;
SIGNAL \G1[15]~13_combout\ : std_logic;
SIGNAL \G3[15]~24_combout\ : std_logic;
SIGNAL \G3[15]~25_combout\ : std_logic;
SIGNAL \C~21_combout\ : std_logic;
SIGNAL \C[16]~22_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \S~23_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \G2~7_combout\ : std_logic;
SIGNAL \G4~2_combout\ : std_logic;
SIGNAL \G1[16]~14_combout\ : std_logic;
SIGNAL \G3[16]~26_combout\ : std_logic;
SIGNAL \G3[16]~27_combout\ : std_logic;
SIGNAL \C[17]~23_combout\ : std_logic;
SIGNAL \S~24_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \G2~8_combout\ : std_logic;
SIGNAL \G4~3_combout\ : std_logic;
SIGNAL \G1[17]~15_combout\ : std_logic;
SIGNAL \G3[17]~28_combout\ : std_logic;
SIGNAL \G3[17]~29_combout\ : std_logic;
SIGNAL \C[18]~24_combout\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \S~25_combout\ : std_logic;
SIGNAL \G2~9_combout\ : std_logic;
SIGNAL \G4~4_combout\ : std_logic;
SIGNAL \G4~5_combout\ : std_logic;
SIGNAL \G1[18]~16_combout\ : std_logic;
SIGNAL \G3[18]~30_combout\ : std_logic;
SIGNAL \G3[18]~31_combout\ : std_logic;
SIGNAL \C[19]~25_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \S~26_combout\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \G2~10_combout\ : std_logic;
SIGNAL \G4~6_combout\ : std_logic;
SIGNAL \C[36]~26_combout\ : std_logic;
SIGNAL \G1[19]~17_combout\ : std_logic;
SIGNAL \G3[19]~32_combout\ : std_logic;
SIGNAL \G3[19]~33_combout\ : std_logic;
SIGNAL \C[20]~27_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \S~27_combout\ : std_logic;
SIGNAL \G2~11_combout\ : std_logic;
SIGNAL \C[21]~28_combout\ : std_logic;
SIGNAL \C[21]~29_combout\ : std_logic;
SIGNAL \G4~7_combout\ : std_logic;
SIGNAL \G1[20]~18_combout\ : std_logic;
SIGNAL \G3[20]~34_combout\ : std_logic;
SIGNAL \G3[20]~35_combout\ : std_logic;
SIGNAL \C[21]~30_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S~28_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \G2~12_combout\ : std_logic;
SIGNAL \G4~8_combout\ : std_logic;
SIGNAL \C[22]~31_combout\ : std_logic;
SIGNAL \G1[21]~19_combout\ : std_logic;
SIGNAL \G3[21]~36_combout\ : std_logic;
SIGNAL \G3[21]~37_combout\ : std_logic;
SIGNAL \C[22]~32_combout\ : std_logic;
SIGNAL \S~29_combout\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \G2~13_combout\ : std_logic;
SIGNAL \G4~9_combout\ : std_logic;
SIGNAL \G1[22]~20_combout\ : std_logic;
SIGNAL \G3[22]~38_combout\ : std_logic;
SIGNAL \G3[22]~39_combout\ : std_logic;
SIGNAL \P2[22]~32_combout\ : std_logic;
SIGNAL \C[23]~33_combout\ : std_logic;
SIGNAL \C[23]~34_combout\ : std_logic;
SIGNAL \S~30_combout\ : std_logic;
SIGNAL \G2~14_combout\ : std_logic;
SIGNAL \G4~10_combout\ : std_logic;
SIGNAL \C[40]~35_combout\ : std_logic;
SIGNAL \C[40]~36_combout\ : std_logic;
SIGNAL \G1[23]~21_combout\ : std_logic;
SIGNAL \G3[23]~40_combout\ : std_logic;
SIGNAL \G3[23]~41_combout\ : std_logic;
SIGNAL \C[24]~37_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \S~31_combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \G2~15_combout\ : std_logic;
SIGNAL \G4~11_combout\ : std_logic;
SIGNAL \G1[24]~22_combout\ : std_logic;
SIGNAL \G3[24]~42_combout\ : std_logic;
SIGNAL \G3[24]~43_combout\ : std_logic;
SIGNAL \C[41]~38_combout\ : std_logic;
SIGNAL \C[25]~39_combout\ : std_logic;
SIGNAL \S~32_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \G2~16_combout\ : std_logic;
SIGNAL \G4~12_combout\ : std_logic;
SIGNAL \C[42]~40_combout\ : std_logic;
SIGNAL \G1[25]~23_combout\ : std_logic;
SIGNAL \G3[25]~44_combout\ : std_logic;
SIGNAL \G3[25]~45_combout\ : std_logic;
SIGNAL \C[26]~41_combout\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \S~33_combout\ : std_logic;
SIGNAL \G2~17_combout\ : std_logic;
SIGNAL \G4~13_combout\ : std_logic;
SIGNAL \C[43]~42_combout\ : std_logic;
SIGNAL \G1[26]~24_combout\ : std_logic;
SIGNAL \G3[26]~46_combout\ : std_logic;
SIGNAL \G3[26]~47_combout\ : std_logic;
SIGNAL \C[27]~43_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \S~34_combout\ : std_logic;
SIGNAL \G2~18_combout\ : std_logic;
SIGNAL \G4~14_combout\ : std_logic;
SIGNAL \C[44]~44_combout\ : std_logic;
SIGNAL \G1[27]~25_combout\ : std_logic;
SIGNAL \G3[27]~48_combout\ : std_logic;
SIGNAL \G3[27]~49_combout\ : std_logic;
SIGNAL \C[28]~45_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \S~35_combout\ : std_logic;
SIGNAL \G2~19_combout\ : std_logic;
SIGNAL \G4~15_combout\ : std_logic;
SIGNAL \P4[28]~2_combout\ : std_logic;
SIGNAL \C[13]~47_combout\ : std_logic;
SIGNAL \G1[28]~26_combout\ : std_logic;
SIGNAL \G3[28]~50_combout\ : std_logic;
SIGNAL \G3[28]~51_combout\ : std_logic;
SIGNAL \C[29]~46_combout\ : std_logic;
SIGNAL \C[29]~48_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S~36_combout\ : std_logic;
SIGNAL \G2~20_combout\ : std_logic;
SIGNAL \P2[29]~33_combout\ : std_logic;
SIGNAL \P4[29]~3_combout\ : std_logic;
SIGNAL \G4~16_combout\ : std_logic;
SIGNAL \C[30]~49_combout\ : std_logic;
SIGNAL \G1[29]~27_combout\ : std_logic;
SIGNAL \G3[29]~52_combout\ : std_logic;
SIGNAL \G3[29]~100_combout\ : std_logic;
SIGNAL \C[30]~50_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \S~37_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \G2~21_combout\ : std_logic;
SIGNAL \G4~17_combout\ : std_logic;
SIGNAL \P4[30]~4_combout\ : std_logic;
SIGNAL \C~51_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \G1[30]~28_combout\ : std_logic;
SIGNAL \G3[30]~53_combout\ : std_logic;
SIGNAL \G3[30]~54_combout\ : std_logic;
SIGNAL \Gf[30]~5_combout\ : std_logic;
SIGNAL \Gf[30]~6_combout\ : std_logic;
SIGNAL \S~95_combout\ : std_logic;
SIGNAL \P2[31]~34_combout\ : std_logic;
SIGNAL \P4[31]~5_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \G2~22_combout\ : std_logic;
SIGNAL \G1[31]~29_combout\ : std_logic;
SIGNAL \G3[31]~55_combout\ : std_logic;
SIGNAL \G3[31]~56_combout\ : std_logic;
SIGNAL \G4~18_combout\ : std_logic;
SIGNAL \Gf[31]~7_combout\ : std_logic;
SIGNAL \C~52_combout\ : std_logic;
SIGNAL \S~38_combout\ : std_logic;
SIGNAL \P2[32]~57_combout\ : std_logic;
SIGNAL \G4~19_combout\ : std_logic;
SIGNAL \G1[32]~30_combout\ : std_logic;
SIGNAL \G3[32]~57_combout\ : std_logic;
SIGNAL \C[33]~53_combout\ : std_logic;
SIGNAL \S~39_combout\ : std_logic;
SIGNAL \S~40_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \P4[32]~6_combout\ : std_logic;
SIGNAL \S~41_combout\ : std_logic;
SIGNAL \C[34]~54_combout\ : std_logic;
SIGNAL \P2[33]~58_combout\ : std_logic;
SIGNAL \P4[33]~28_combout\ : std_logic;
SIGNAL \C[34]~55_combout\ : std_logic;
SIGNAL \G4~31_combout\ : std_logic;
SIGNAL \G1[33]~31_combout\ : std_logic;
SIGNAL \G3[33]~58_combout\ : std_logic;
SIGNAL \G3[33]~59_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \S~42_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \P2[34]~35_combout\ : std_logic;
SIGNAL \G1[34]~32_combout\ : std_logic;
SIGNAL \G3[34]~60_combout\ : std_logic;
SIGNAL \G3[34]~61_combout\ : std_logic;
SIGNAL \G4~20_combout\ : std_logic;
SIGNAL \C[35]~56_combout\ : std_logic;
SIGNAL \P4[34]~7_combout\ : std_logic;
SIGNAL \C[35]~57_combout\ : std_logic;
SIGNAL \S~43_combout\ : std_logic;
SIGNAL \P2[35]~36_combout\ : std_logic;
SIGNAL \G1[35]~33_combout\ : std_logic;
SIGNAL \G3[35]~62_combout\ : std_logic;
SIGNAL \G3[35]~63_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \G4~21_combout\ : std_logic;
SIGNAL \P4[35]~8_combout\ : std_logic;
SIGNAL \C[36]~58_combout\ : std_logic;
SIGNAL \G4~22_combout\ : std_logic;
SIGNAL \S~44_combout\ : std_logic;
SIGNAL \P2[36]~37_combout\ : std_logic;
SIGNAL \P4[36]~9_combout\ : std_logic;
SIGNAL \G4~23_combout\ : std_logic;
SIGNAL \G1[36]~34_combout\ : std_logic;
SIGNAL \G3[36]~64_combout\ : std_logic;
SIGNAL \G3[36]~65_combout\ : std_logic;
SIGNAL \P4[36]~10_combout\ : std_logic;
SIGNAL \C[37]~60_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \C[37]~59_combout\ : std_logic;
SIGNAL \S~45_combout\ : std_logic;
SIGNAL \G2~23_combout\ : std_logic;
SIGNAL \P4[37]~11_combout\ : std_logic;
SIGNAL \P4[37]~12_combout\ : std_logic;
SIGNAL \G1[37]~35_combout\ : std_logic;
SIGNAL \G3[37]~66_combout\ : std_logic;
SIGNAL \P2[37]~38_combout\ : std_logic;
SIGNAL \G3[37]~67_combout\ : std_logic;
SIGNAL \G4~24_combout\ : std_logic;
SIGNAL \C[38]~61_combout\ : std_logic;
SIGNAL \C[38]~62_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \S~46_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \G2~24_combout\ : std_logic;
SIGNAL \P2[38]~59_combout\ : std_logic;
SIGNAL \P4[38]~14_combout\ : std_logic;
SIGNAL \G4~25_combout\ : std_logic;
SIGNAL \G1[38]~36_combout\ : std_logic;
SIGNAL \G3[38]~68_combout\ : std_logic;
SIGNAL \G3[38]~69_combout\ : std_logic;
SIGNAL \C[39]~64_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \P4[38]~13_combout\ : std_logic;
SIGNAL \C[39]~63_combout\ : std_logic;
SIGNAL \S~47_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \G2~25_combout\ : std_logic;
SIGNAL \P4[39]~15_combout\ : std_logic;
SIGNAL \P4[39]~16_combout\ : std_logic;
SIGNAL \S~48_combout\ : std_logic;
SIGNAL \G1[39]~37_combout\ : std_logic;
SIGNAL \G3[39]~70_combout\ : std_logic;
SIGNAL \G3[39]~71_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \S~49_combout\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \S~51_combout\ : std_logic;
SIGNAL \G2~26_combout\ : std_logic;
SIGNAL \P2[40]~39_combout\ : std_logic;
SIGNAL \P4[40]~17_combout\ : std_logic;
SIGNAL \G1[40]~38_combout\ : std_logic;
SIGNAL \G3[40]~72_combout\ : std_logic;
SIGNAL \G4~26_combout\ : std_logic;
SIGNAL \S~50_combout\ : std_logic;
SIGNAL \S~52_combout\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \S~54_combout\ : std_logic;
SIGNAL \G2~27_combout\ : std_logic;
SIGNAL \P2[41]~40_combout\ : std_logic;
SIGNAL \G4~27_combout\ : std_logic;
SIGNAL \G1[41]~39_combout\ : std_logic;
SIGNAL \G3[41]~73_combout\ : std_logic;
SIGNAL \S~53_combout\ : std_logic;
SIGNAL \P4[41]~18_combout\ : std_logic;
SIGNAL \S~55_combout\ : std_logic;
SIGNAL \S~57_combout\ : std_logic;
SIGNAL \P2[42]~41_combout\ : std_logic;
SIGNAL \P4[42]~19_combout\ : std_logic;
SIGNAL \G1[42]~40_combout\ : std_logic;
SIGNAL \G3[42]~74_combout\ : std_logic;
SIGNAL \G3[42]~75_combout\ : std_logic;
SIGNAL \S~56_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \S~58_combout\ : std_logic;
SIGNAL \P2[43]~60_combout\ : std_logic;
SIGNAL \P4[43]~20_combout\ : std_logic;
SIGNAL \G1[43]~41_combout\ : std_logic;
SIGNAL \G3[43]~76_combout\ : std_logic;
SIGNAL \G3[43]~77_combout\ : std_logic;
SIGNAL \G4~28_combout\ : std_logic;
SIGNAL \S~59_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \S~60_combout\ : std_logic;
SIGNAL \S~61_combout\ : std_logic;
SIGNAL \P2[44]~42_combout\ : std_logic;
SIGNAL \P4[44]~21_combout\ : std_logic;
SIGNAL \C[45]~65_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \C[45]~66_combout\ : std_logic;
SIGNAL \C[45]~67_combout\ : std_logic;
SIGNAL \G1[44]~42_combout\ : std_logic;
SIGNAL \G3[44]~78_combout\ : std_logic;
SIGNAL \G3[44]~79_combout\ : std_logic;
SIGNAL \S~62_combout\ : std_logic;
SIGNAL \S~64_combout\ : std_logic;
SIGNAL \P2[45]~43_combout\ : std_logic;
SIGNAL \G1[45]~43_combout\ : std_logic;
SIGNAL \G3[45]~80_combout\ : std_logic;
SIGNAL \G3[45]~81_combout\ : std_logic;
SIGNAL \S~63_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \P4[45]~22_combout\ : std_logic;
SIGNAL \S~65_combout\ : std_logic;
SIGNAL \G4~29_combout\ : std_logic;
SIGNAL \P2[46]~44_combout\ : std_logic;
SIGNAL \P4[46]~23_combout\ : std_logic;
SIGNAL \G5~0_combout\ : std_logic;
SIGNAL \C[47]~69_combout\ : std_logic;
SIGNAL \G1[46]~44_combout\ : std_logic;
SIGNAL \G3[46]~82_combout\ : std_logic;
SIGNAL \G3[46]~83_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \C[47]~68_combout\ : std_logic;
SIGNAL \S~66_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \P2[47]~45_combout\ : std_logic;
SIGNAL \G5~1_combout\ : std_logic;
SIGNAL \G1[47]~45_combout\ : std_logic;
SIGNAL \G3[47]~84_combout\ : std_logic;
SIGNAL \G3[47]~85_combout\ : std_logic;
SIGNAL \C[48]~70_combout\ : std_logic;
SIGNAL \S~68_combout\ : std_logic;
SIGNAL \S~67_combout\ : std_logic;
SIGNAL \S~69_combout\ : std_logic;
SIGNAL \P2[48]~46_combout\ : std_logic;
SIGNAL \C[49]~71_combout\ : std_logic;
SIGNAL \C[49]~72_combout\ : std_logic;
SIGNAL \C[49]~73_combout\ : std_logic;
SIGNAL \G4~30_combout\ : std_logic;
SIGNAL \C[49]~74_combout\ : std_logic;
SIGNAL \G1[48]~46_combout\ : std_logic;
SIGNAL \G3[48]~86_combout\ : std_logic;
SIGNAL \G3[48]~87_combout\ : std_logic;
SIGNAL \C[49]~75_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \S~70_combout\ : std_logic;
SIGNAL \P2[49]~47_combout\ : std_logic;
SIGNAL \S~71_combout\ : std_logic;
SIGNAL \C[50]~77_combout\ : std_logic;
SIGNAL \G1[49]~47_combout\ : std_logic;
SIGNAL \G3[49]~88_combout\ : std_logic;
SIGNAL \G3[49]~89_combout\ : std_logic;
SIGNAL \S~72_combout\ : std_logic;
SIGNAL \C[50]~76_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \S~73_combout\ : std_logic;
SIGNAL \P2[50]~48_combout\ : std_logic;
SIGNAL \G1[50]~48_combout\ : std_logic;
SIGNAL \G3[50]~90_combout\ : std_logic;
SIGNAL \G3[50]~91_combout\ : std_logic;
SIGNAL \C[51]~80_combout\ : std_logic;
SIGNAL \C[51]~81_combout\ : std_logic;
SIGNAL \C[51]~78_combout\ : std_logic;
SIGNAL \C[51]~82_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \C[51]~79_combout\ : std_logic;
SIGNAL \S~74_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \P2[51]~49_combout\ : std_logic;
SIGNAL \C[52]~85_combout\ : std_logic;
SIGNAL \G1[51]~49_combout\ : std_logic;
SIGNAL \G3[51]~92_combout\ : std_logic;
SIGNAL \G3[51]~93_combout\ : std_logic;
SIGNAL \C[52]~83_combout\ : std_logic;
SIGNAL \C[52]~84_combout\ : std_logic;
SIGNAL \C[52]~86_combout\ : std_logic;
SIGNAL \C[52]~87_combout\ : std_logic;
SIGNAL \S~75_combout\ : std_logic;
SIGNAL \G2~28_combout\ : std_logic;
SIGNAL \P2[52]~61_combout\ : std_logic;
SIGNAL \C[57]~88_combout\ : std_logic;
SIGNAL \S~77_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \G1[52]~50_combout\ : std_logic;
SIGNAL \G3[52]~94_combout\ : std_logic;
SIGNAL \G3[52]~95_combout\ : std_logic;
SIGNAL \S~76_combout\ : std_logic;
SIGNAL \S~78_combout\ : std_logic;
SIGNAL \P2[53]~62_combout\ : std_logic;
SIGNAL \G2~29_combout\ : std_logic;
SIGNAL \G1[53]~51_combout\ : std_logic;
SIGNAL \G3[53]~96_combout\ : std_logic;
SIGNAL \C[54]~89_combout\ : std_logic;
SIGNAL \C[58]~90_combout\ : std_logic;
SIGNAL \C[54]~91_combout\ : std_logic;
SIGNAL \C[54]~92_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \S~79_combout\ : std_logic;
SIGNAL \P2[54]~50_combout\ : std_logic;
SIGNAL \G2~30_combout\ : std_logic;
SIGNAL \G2~31_combout\ : std_logic;
SIGNAL \G1[54]~52_combout\ : std_logic;
SIGNAL \G3[54]~97_combout\ : std_logic;
SIGNAL \C[55]~93_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \C[55]~95_combout\ : std_logic;
SIGNAL \C[55]~94_combout\ : std_logic;
SIGNAL \C[55]~96_combout\ : std_logic;
SIGNAL \C[55]~97_combout\ : std_logic;
SIGNAL \S~80_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \G2~32_combout\ : std_logic;
SIGNAL \P2[55]~51_combout\ : std_logic;
SIGNAL \C[56]~98_combout\ : std_logic;
SIGNAL \C[56]~100_combout\ : std_logic;
SIGNAL \S~81_combout\ : std_logic;
SIGNAL \G1[55]~53_combout\ : std_logic;
SIGNAL \G2~33_combout\ : std_logic;
SIGNAL \G3[55]~98_combout\ : std_logic;
SIGNAL \C[56]~99_combout\ : std_logic;
SIGNAL \S~82_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \P2[56]~52_combout\ : std_logic;
SIGNAL \G2~34_combout\ : std_logic;
SIGNAL \G1[56]~54_combout\ : std_logic;
SIGNAL \C[57]~101_combout\ : std_logic;
SIGNAL \C[57]~102_combout\ : std_logic;
SIGNAL \C[57]~103_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \C[57]~104_combout\ : std_logic;
SIGNAL \C[57]~105_combout\ : std_logic;
SIGNAL \C[57]~106_combout\ : std_logic;
SIGNAL \C[57]~107_combout\ : std_logic;
SIGNAL \S~83_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \P2[59]~53_combout\ : std_logic;
SIGNAL \C[58]~109_combout\ : std_logic;
SIGNAL \C[58]~110_combout\ : std_logic;
SIGNAL \C[58]~111_combout\ : std_logic;
SIGNAL \C[58]~112_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \C[58]~108_combout\ : std_logic;
SIGNAL \G1[57]~55_combout\ : std_logic;
SIGNAL \C[58]~153_combout\ : std_logic;
SIGNAL \C[58]~154_combout\ : std_logic;
SIGNAL \S~84_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \P2[58]~54_combout\ : std_logic;
SIGNAL \C[59]~113_combout\ : std_logic;
SIGNAL \C[59]~114_combout\ : std_logic;
SIGNAL \G1[58]~56_combout\ : std_logic;
SIGNAL \C[59]~115_combout\ : std_logic;
SIGNAL \C[59]~118_combout\ : std_logic;
SIGNAL \C[59]~116_combout\ : std_logic;
SIGNAL \C[59]~117_combout\ : std_logic;
SIGNAL \C[59]~119_combout\ : std_logic;
SIGNAL \S~85_combout\ : std_logic;
SIGNAL \G1[59]~57_combout\ : std_logic;
SIGNAL \C[60]~121_combout\ : std_logic;
SIGNAL \P2[59]~55_combout\ : std_logic;
SIGNAL \C[60]~122_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \C[60]~123_combout\ : std_logic;
SIGNAL \C[60]~124_combout\ : std_logic;
SIGNAL \C[60]~125_combout\ : std_logic;
SIGNAL \C[60]~126_combout\ : std_logic;
SIGNAL \C[60]~120_combout\ : std_logic;
SIGNAL \S~86_combout\ : std_logic;
SIGNAL \C[61]~132_combout\ : std_logic;
SIGNAL \C[61]~131_combout\ : std_logic;
SIGNAL \C[61]~133_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \C[61]~129_combout\ : std_logic;
SIGNAL \G1[60]~58_combout\ : std_logic;
SIGNAL \C[61]~127_combout\ : std_logic;
SIGNAL \C[61]~128_combout\ : std_logic;
SIGNAL \C[61]~130_combout\ : std_logic;
SIGNAL \S~87_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \C[62]~140_combout\ : std_logic;
SIGNAL \C[62]~138_combout\ : std_logic;
SIGNAL \C[62]~139_combout\ : std_logic;
SIGNAL \C[62]~141_combout\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \C[62]~136_combout\ : std_logic;
SIGNAL \C[62]~134_combout\ : std_logic;
SIGNAL \G1[61]~59_combout\ : std_logic;
SIGNAL \C[62]~135_combout\ : std_logic;
SIGNAL \C[62]~137_combout\ : std_logic;
SIGNAL \S~88_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \P4[62]~24_combout\ : std_logic;
SIGNAL \C[63]~144_combout\ : std_logic;
SIGNAL \P4[62]~25_combout\ : std_logic;
SIGNAL \Gf~8_combout\ : std_logic;
SIGNAL \G1[62]~60_combout\ : std_logic;
SIGNAL \C[63]~142_combout\ : std_logic;
SIGNAL \C[63]~143_combout\ : std_logic;
SIGNAL \C[63]~145_combout\ : std_logic;
SIGNAL \S~89_combout\ : std_logic;
SIGNAL \P4[63]~26_combout\ : std_logic;
SIGNAL \P4[63]~27_combout\ : std_logic;
SIGNAL \C~146_combout\ : std_logic;
SIGNAL \C~147_combout\ : std_logic;
SIGNAL \C~148_combout\ : std_logic;
SIGNAL \C~149_combout\ : std_logic;
SIGNAL \C~150_combout\ : std_logic;
SIGNAL \Gf~9_combout\ : std_logic;
SIGNAL \C~151_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL P0 : std_logic_vector(63 DOWNTO 0);
SIGNAL Gf : std_logic_vector(63 DOWNTO 0);
SIGNAL P1 : std_logic_vector(63 DOWNTO 0);
SIGNAL C : std_logic_vector(64 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A <= A;
ww_B <= B;
S <= ww_S;
ww_Cin <= Cin;
Cout <= ww_Cout;
Ovfl <= ww_Ovfl;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y53_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~12_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~13_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~14_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X115_Y51_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~15_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X115_Y58_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~16_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~90_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~91_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~17_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~92_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~93_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X115_Y56_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~94_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~18_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~19_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X96_Y73_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~20_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~21_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X115_Y48_N9
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~22_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X113_Y73_N2
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~23_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X115_Y62_N9
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~24_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X115_Y55_N16
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~25_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~26_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~27_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~28_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X115_Y64_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~29_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X115_Y58_N23
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~30_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~31_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~32_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~33_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X89_Y73_N9
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~34_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X115_Y65_N16
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~35_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~36_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X102_Y73_N9
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~37_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X115_Y61_N23
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~95_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~38_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~41_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~42_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X115_Y68_N16
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~43_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~44_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~45_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~46_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~47_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~49_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X115_Y64_N9
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~52_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~55_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~58_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~61_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~62_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~65_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~66_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~69_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~70_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~73_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~74_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~75_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~78_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X13_Y73_N9
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~79_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~80_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~82_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X115_Y60_N16
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~83_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~84_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~85_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~86_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~87_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~88_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~89_combout\,
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~151_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X115_Y31_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y29_N1
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X115_Y46_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X87_Y53_N24
\S~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~12_combout\ = \B[0]~input_o\ $ (\Cin~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~12_combout\);

-- Location: IOIBUF_X115_Y49_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y45_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X87_Y53_N18
\P0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => P0(1));

-- Location: LCCOMB_X87_Y53_N4
\S~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~13_combout\ = P0(1) $ (((\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => P0(1),
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \S~13_combout\);

-- Location: IOIBUF_X115_Y44_N8
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X86_Y53_N8
\P0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => P0(2));

-- Location: LCCOMB_X87_Y53_N14
\C[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[9]~4_combout\ = (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \C[9]~4_combout\);

-- Location: LCCOMB_X87_Y53_N8
\Gf[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[1]~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\B[1]~input_o\ & (\B[0]~input_o\ & (\A[0]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Gf[1]~0_combout\);

-- Location: LCCOMB_X87_Y53_N2
\S~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~14_combout\ = P0(2) $ (((\Gf[1]~0_combout\) # ((\C[9]~4_combout\ & P0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(2),
	datab => \C[9]~4_combout\,
	datac => \Gf[1]~0_combout\,
	datad => P0(1),
	combout => \S~14_combout\);

-- Location: LCCOMB_X87_Y53_N20
\C~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~5_combout\ = (P0(1) & (\Cin~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => P0(1),
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \C~5_combout\);

-- Location: LCCOMB_X87_Y53_N16
\G2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~0_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G2~0_combout\);

-- Location: LCCOMB_X87_Y53_N30
\G1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[2]~0_combout\ = (\A[2]~input_o\ & ((\B[2]~input_o\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\A[2]~input_o\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G1[2]~0_combout\);

-- Location: LCCOMB_X87_Y53_N26
\Gf[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[4]~1_combout\ = (\G1[2]~0_combout\) # ((\B[0]~input_o\ & (\G2~0_combout\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \G2~0_combout\,
	datac => \G1[2]~0_combout\,
	datad => \A[0]~input_o\,
	combout => \Gf[4]~1_combout\);

-- Location: IOIBUF_X115_Y46_N1
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X115_Y49_N1
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X86_Y53_N2
\P0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(3) = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => P0(3));

-- Location: LCCOMB_X87_Y53_N12
\S~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~15_combout\ = P0(3) $ (((\Gf[4]~1_combout\) # ((P0(2) & \C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(2),
	datab => \C~5_combout\,
	datac => \Gf[4]~1_combout\,
	datad => P0(3),
	combout => \S~15_combout\);

-- Location: LCCOMB_X86_Y53_N4
\Pf[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Pf[3]~0_combout\ = (\A[2]~input_o\ & (!\B[2]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\)))) # (!\A[2]~input_o\ & (\B[2]~input_o\ & (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Pf[3]~0_combout\);

-- Location: IOIBUF_X115_Y33_N1
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X86_Y53_N16
\P0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(4) = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => P0(4));

-- Location: LCCOMB_X86_Y53_N30
\G1[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[3]~1_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \G1[3]~1_combout\);

-- Location: LCCOMB_X85_Y57_N16
\Gf[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- Gf(3) = (\G1[3]~1_combout\) # ((\Gf[1]~0_combout\ & \Pf[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[3]~1_combout\,
	datac => \Gf[1]~0_combout\,
	datad => \Pf[3]~0_combout\,
	combout => Gf(3));

-- Location: LCCOMB_X85_Y57_N10
\S~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~16_combout\ = P0(4) $ (((Gf(3)) # ((\Pf[3]~0_combout\ & \C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pf[3]~0_combout\,
	datab => P0(4),
	datac => Gf(3),
	datad => \C~5_combout\,
	combout => \S~16_combout\);

-- Location: IOIBUF_X115_Y48_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X86_Y53_N20
\G3[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[8]~6_combout\ = (\A[4]~input_o\ & (!\B[4]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \G3[8]~6_combout\);

-- Location: LCCOMB_X87_Y53_N22
\C~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~6_combout\ = (P0(2) & (\G3[8]~6_combout\ & (\C[9]~4_combout\ & P0(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(2),
	datab => \G3[8]~6_combout\,
	datac => \C[9]~4_combout\,
	datad => P0(1),
	combout => \C~6_combout\);

-- Location: LCCOMB_X86_Y53_N14
\G1[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[4]~2_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\A[3]~input_o\ & \B[3]~input_o\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & (\A[3]~input_o\ & \B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[3]~input_o\,
	combout => \G1[4]~2_combout\);

-- Location: LCCOMB_X87_Y53_N0
\C[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[5]~7_combout\ = (\C~6_combout\) # ((\G1[4]~2_combout\) # ((\G3[8]~6_combout\ & \Gf[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~6_combout\,
	datab => \G3[8]~6_combout\,
	datac => \Gf[4]~1_combout\,
	datad => \G1[4]~2_combout\,
	combout => \C[5]~7_combout\);

-- Location: IOIBUF_X98_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X86_Y53_N26
\S~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~90_combout\ = \B[5]~input_o\ $ (\C[5]~7_combout\ $ (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \C[5]~7_combout\,
	datac => \A[5]~input_o\,
	combout => \S~90_combout\);

-- Location: IOIBUF_X115_Y42_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: LCCOMB_X86_Y53_N28
\G1[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[5]~3_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\A[4]~input_o\ & \B[4]~input_o\)))) # (!\A[5]~input_o\ & (\A[4]~input_o\ & (\B[5]~input_o\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \G1[5]~3_combout\);

-- Location: LCCOMB_X86_Y53_N10
\P0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(5) = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	combout => P0(5));

-- Location: LCCOMB_X85_Y57_N12
\G3[9]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[9]~8_combout\ = (!\G1[5]~3_combout\ & (((!P0(4)) # (!P0(5))) # (!\G1[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[3]~1_combout\,
	datab => \G1[5]~3_combout\,
	datac => P0(5),
	datad => P0(4),
	combout => \G3[9]~8_combout\);

-- Location: LCCOMB_X86_Y53_N18
\G3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3~7_combout\ = (\G3[8]~6_combout\ & (P0(5) & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \G3[8]~6_combout\,
	datac => P0(5),
	datad => \B[2]~input_o\,
	combout => \G3~7_combout\);

-- Location: LCCOMB_X85_Y57_N22
\C[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[6]~8_combout\ = ((\G3~7_combout\ & ((\Gf[1]~0_combout\) # (\C~5_combout\)))) # (!\G3[9]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[9]~8_combout\,
	datab => \G3~7_combout\,
	datac => \Gf[1]~0_combout\,
	datad => \C~5_combout\,
	combout => \C[6]~8_combout\);

-- Location: IOIBUF_X115_Y47_N22
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X86_Y53_N12
\S~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~91_combout\ = \A[6]~input_o\ $ (\C[6]~8_combout\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \C[6]~8_combout\,
	datad => \B[6]~input_o\,
	combout => \S~91_combout\);

-- Location: IOIBUF_X85_Y0_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X84_Y57_N0
\P0[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(7) = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => P0(7));

-- Location: LCCOMB_X85_Y57_N8
\C~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~9_combout\ = (\G3~7_combout\ & \C~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3~7_combout\,
	datad => \C~5_combout\,
	combout => \C~9_combout\);

-- Location: LCCOMB_X86_Y53_N22
\G1[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[6]~4_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\A[6]~input_o\ & (\A[5]~input_o\ & (\B[5]~input_o\ & \B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[6]~input_o\,
	combout => \G1[6]~4_combout\);

-- Location: LCCOMB_X86_Y53_N0
\P0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(6) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => P0(6));

-- Location: LCCOMB_X86_Y53_N24
\Gf[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[6]~2_combout\ = (!\G1[6]~4_combout\ & (((!P0(6)) # (!\G1[4]~2_combout\)) # (!P0(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(5),
	datab => \G1[4]~2_combout\,
	datac => \G1[6]~4_combout\,
	datad => P0(6),
	combout => \Gf[6]~2_combout\);

-- Location: LCCOMB_X86_Y53_N6
\G3~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3~99_combout\ = (P0(6) & (\G3[8]~6_combout\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => P0(6),
	datac => \A[5]~input_o\,
	datad => \G3[8]~6_combout\,
	combout => \G3~99_combout\);

-- Location: LCCOMB_X82_Y56_N0
\Gf[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- Gf(6) = ((\Gf[4]~1_combout\ & \G3~99_combout\)) # (!\Gf[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gf[4]~1_combout\,
	datab => \Gf[6]~2_combout\,
	datad => \G3~99_combout\,
	combout => Gf(6));

-- Location: LCCOMB_X85_Y57_N2
\S~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~17_combout\ = P0(7) $ (((Gf(6)) # ((\C~9_combout\ & P0(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(7),
	datab => \C~9_combout\,
	datac => Gf(6),
	datad => P0(6),
	combout => \S~17_combout\);

-- Location: IOIBUF_X91_Y73_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X84_Y57_N10
\G1[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[7]~5_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\A[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \G1[7]~5_combout\);

-- Location: LCCOMB_X85_Y57_N14
\Gf[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[7]~3_combout\ = (!\G1[7]~5_combout\ & (((!P0(7)) # (!\G1[5]~3_combout\)) # (!P0(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(6),
	datab => \G1[5]~3_combout\,
	datac => P0(7),
	datad => \G1[7]~5_combout\,
	combout => \Gf[7]~3_combout\);

-- Location: LCCOMB_X85_Y57_N28
\G3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3~9_combout\ = (P0(7) & (P0(4) & (P0(5) & P0(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(7),
	datab => P0(4),
	datac => P0(5),
	datad => P0(6),
	combout => \G3~9_combout\);

-- Location: LCCOMB_X85_Y57_N24
\Gf[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- Gf(7) = ((Gf(3) & \G3~9_combout\)) # (!\Gf[7]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Gf(3),
	datac => \Gf[7]~3_combout\,
	datad => \G3~9_combout\,
	combout => Gf(7));

-- Location: IOIBUF_X115_Y34_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X85_Y57_N26
\C~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~10_combout\ = (\Pf[3]~0_combout\ & (\G3~9_combout\ & \C~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pf[3]~0_combout\,
	datab => \G3~9_combout\,
	datad => \C~5_combout\,
	combout => \C~10_combout\);

-- Location: LCCOMB_X84_Y57_N22
\S~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~92_combout\ = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((Gf(7)) # (\C~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => Gf(7),
	datac => \A[8]~input_o\,
	datad => \C~10_combout\,
	combout => \S~92_combout\);

-- Location: LCCOMB_X84_Y57_N30
\G2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~1_combout\ = (\A[8]~input_o\ & (!\B[8]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\)))) # (!\A[8]~input_o\ & (\B[8]~input_o\ & (\A[7]~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[8]~input_o\,
	datad => \B[7]~input_o\,
	combout => \G2~1_combout\);

-- Location: LCCOMB_X83_Y56_N8
\P2[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[8]~28_combout\ = (\G2~1_combout\ & (P0(5) & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~1_combout\,
	datab => P0(5),
	datac => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \P2[8]~28_combout\);

-- Location: LCCOMB_X87_Y53_N28
\C[25]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[25]~11_combout\ = (P0(1) & ((\B[0]~input_o\ & ((\Cin~input_o\) # (\A[0]~input_o\))) # (!\B[0]~input_o\ & (\Cin~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => P0(1),
	datac => \Cin~input_o\,
	datad => \A[0]~input_o\,
	combout => \C[25]~11_combout\);

-- Location: LCCOMB_X83_Y53_N0
\C[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[25]~12_combout\ = (P0(2) & (\G3[8]~6_combout\ & (\P2[8]~28_combout\ & \C[25]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(2),
	datab => \G3[8]~6_combout\,
	datac => \P2[8]~28_combout\,
	datad => \C[25]~11_combout\,
	combout => \C[25]~12_combout\);

-- Location: IOIBUF_X83_Y0_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X115_Y56_N15
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X84_Y57_N16
\G1[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[8]~6_combout\ = (\A[8]~input_o\ & ((\B[8]~input_o\) # ((\A[7]~input_o\ & \B[7]~input_o\)))) # (!\A[8]~input_o\ & (\A[7]~input_o\ & (\B[8]~input_o\ & \B[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[8]~input_o\,
	datad => \B[7]~input_o\,
	combout => \G1[8]~6_combout\);

-- Location: LCCOMB_X84_Y57_N20
\P0[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(8) = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datac => \A[8]~input_o\,
	combout => P0(8));

-- Location: LCCOMB_X84_Y57_N2
\G3[8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[8]~11_combout\ = (!\G1[8]~6_combout\ & (((!P0(8)) # (!\G1[6]~4_combout\)) # (!P0(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[8]~6_combout\,
	datab => P0(7),
	datac => \G1[6]~4_combout\,
	datad => P0(8),
	combout => \G3[8]~11_combout\);

-- Location: LCCOMB_X87_Y53_N10
\G3[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[8]~10_combout\ = (\G1[4]~2_combout\) # ((\G3[8]~6_combout\ & \G1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[4]~2_combout\,
	datab => \G3[8]~6_combout\,
	datac => \G1[2]~0_combout\,
	combout => \G3[8]~10_combout\);

-- Location: LCCOMB_X80_Y56_N24
\G3[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[8]~12_combout\ = ((\P2[8]~28_combout\ & \G3[8]~10_combout\)) # (!\G3[8]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[8]~28_combout\,
	datab => \G3[8]~11_combout\,
	datad => \G3[8]~10_combout\,
	combout => \G3[8]~12_combout\);

-- Location: LCCOMB_X83_Y56_N26
\S~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~93_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\ $ (((\C[25]~12_combout\) # (\G3[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[25]~12_combout\,
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \G3[8]~12_combout\,
	combout => \S~93_combout\);

-- Location: LCCOMB_X83_Y56_N2
\P0[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(9) = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	combout => P0(9));

-- Location: LCCOMB_X84_Y57_N4
\G1[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[9]~7_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[9]~input_o\,
	combout => \G1[9]~7_combout\);

-- Location: LCCOMB_X84_Y57_N14
\G3[9]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[9]~13_combout\ = (!\G1[9]~7_combout\ & (((!P0(8)) # (!P0(9))) # (!\G1[7]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[7]~5_combout\,
	datab => P0(9),
	datac => \G1[9]~7_combout\,
	datad => P0(8),
	combout => \G3[9]~13_combout\);

-- Location: LCCOMB_X83_Y56_N12
\P2[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[9]~29_combout\ = (\G2~1_combout\ & (P0(6) & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~1_combout\,
	datab => P0(6),
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \P2[9]~29_combout\);

-- Location: LCCOMB_X85_Y57_N4
\G3[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[9]~14_combout\ = ((\P2[9]~29_combout\ & !\G3[9]~8_combout\)) # (!\G3[9]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[9]~13_combout\,
	datac => \P2[9]~29_combout\,
	datad => \G3[9]~8_combout\,
	combout => \G3[9]~14_combout\);

-- Location: LCCOMB_X85_Y57_N30
\C[10]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[10]~13_combout\ = (\G3~7_combout\ & (\P2[9]~29_combout\ & ((\Gf[1]~0_combout\) # (\C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gf[1]~0_combout\,
	datab => \G3~7_combout\,
	datac => \P2[9]~29_combout\,
	datad => \C~5_combout\,
	combout => \C[10]~13_combout\);

-- Location: IOIBUF_X115_Y40_N8
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X83_Y56_N4
\S~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~94_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\ $ (((\G3[9]~14_combout\) # (\C[10]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[9]~14_combout\,
	datab => \C[10]~13_combout\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \S~94_combout\);

-- Location: LCCOMB_X83_Y56_N16
\P2[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[10]~30_combout\ = (\G2~1_combout\ & (P0(9) & (\A[10]~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~1_combout\,
	datab => P0(9),
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \P2[10]~30_combout\);

-- Location: LCCOMB_X87_Y53_N6
\C~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~152_combout\ = (P0(2) & (\C[9]~4_combout\ & (\B[1]~input_o\ $ (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(2),
	datab => \C[9]~4_combout\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \C~152_combout\);

-- Location: LCCOMB_X82_Y56_N10
\C[11]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[11]~14_combout\ = (\P2[10]~30_combout\ & (\G3~99_combout\ & ((\Gf[4]~1_combout\) # (\C~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gf[4]~1_combout\,
	datab => \P2[10]~30_combout\,
	datac => \G3~99_combout\,
	datad => \C~152_combout\,
	combout => \C[11]~14_combout\);

-- Location: LCCOMB_X83_Y56_N18
\G1[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[10]~8_combout\ = (\A[10]~input_o\ & ((\B[10]~input_o\) # ((\A[9]~input_o\ & \B[9]~input_o\)))) # (!\A[10]~input_o\ & (\A[9]~input_o\ & (\B[9]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => \G1[10]~8_combout\);

-- Location: LCCOMB_X83_Y56_N22
\P0[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(10) = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[10]~input_o\,
	datad => \B[10]~input_o\,
	combout => P0(10));

-- Location: LCCOMB_X83_Y56_N20
\G3[10]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[10]~15_combout\ = (!\G1[10]~8_combout\ & (((!P0(9)) # (!P0(10))) # (!\G1[8]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[8]~6_combout\,
	datab => \G1[10]~8_combout\,
	datac => P0(10),
	datad => P0(9),
	combout => \G3[10]~15_combout\);

-- Location: LCCOMB_X82_Y56_N12
\C[27]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[27]~15_combout\ = (\C[11]~14_combout\) # (((\P2[10]~30_combout\ & !\Gf[6]~2_combout\)) # (!\G3[10]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[11]~14_combout\,
	datab => \P2[10]~30_combout\,
	datac => \G3[10]~15_combout\,
	datad => \Gf[6]~2_combout\,
	combout => \C[27]~15_combout\);

-- Location: IOIBUF_X115_Y52_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X83_Y56_N30
\S~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~18_combout\ = \C[27]~15_combout\ $ (\A[11]~input_o\ $ (\B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[27]~15_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \S~18_combout\);

-- Location: IOIBUF_X115_Y50_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X83_Y56_N10
\G1[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[11]~9_combout\ = (\B[11]~input_o\ & ((\A[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\B[11]~input_o\ & (\A[10]~input_o\ & (\A[11]~input_o\ & \B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \G1[11]~9_combout\);

-- Location: LCCOMB_X83_Y56_N0
\G2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~2_combout\ = (\A[10]~input_o\ & (!\B[10]~input_o\ & (\B[11]~input_o\ $ (\A[11]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & (\B[11]~input_o\ $ (\A[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \B[10]~input_o\,
	combout => \G2~2_combout\);

-- Location: LCCOMB_X84_Y57_N26
\G3[11]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[11]~16_combout\ = (!\G1[11]~9_combout\ & ((!\G2~2_combout\) # (!\G1[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[11]~9_combout\,
	datab => \G1[9]~7_combout\,
	datac => \G2~2_combout\,
	combout => \G3[11]~16_combout\);

-- Location: LCCOMB_X84_Y57_N8
\P2[11]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[11]~31_combout\ = (\G2~2_combout\ & (P0(9) & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \G2~2_combout\,
	datac => \A[8]~input_o\,
	datad => P0(9),
	combout => \P2[11]~31_combout\);

-- Location: LCCOMB_X80_Y57_N24
\G3[11]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[11]~17_combout\ = ((!\Gf[7]~3_combout\ & \P2[11]~31_combout\)) # (!\G3[11]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3[11]~16_combout\,
	datac => \Gf[7]~3_combout\,
	datad => \P2[11]~31_combout\,
	combout => \G3[11]~17_combout\);

-- Location: LCCOMB_X85_Y57_N0
\C[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- C(4) = (\G1[3]~1_combout\) # ((\Pf[3]~0_combout\ & ((\C~5_combout\) # (\Gf[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[3]~1_combout\,
	datab => \C~5_combout\,
	datac => \Gf[1]~0_combout\,
	datad => \Pf[3]~0_combout\,
	combout => C(4));

-- Location: LCCOMB_X80_Y57_N26
\C[28]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[28]~16_combout\ = (\G3[11]~17_combout\) # ((\P2[11]~31_combout\ & (C(4) & \G3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[11]~17_combout\,
	datab => \P2[11]~31_combout\,
	datac => C(4),
	datad => \G3~9_combout\,
	combout => \C[28]~16_combout\);

-- Location: IOIBUF_X115_Y55_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X82_Y57_N16
\S~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~19_combout\ = \B[12]~input_o\ $ (\C[28]~16_combout\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[12]~input_o\,
	datac => \C[28]~16_combout\,
	datad => \A[12]~input_o\,
	combout => \S~19_combout\);

-- Location: LCCOMB_X83_Y56_N6
\G1[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[12]~10_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\A[11]~input_o\ & \B[11]~input_o\)))) # (!\B[12]~input_o\ & (\A[11]~input_o\ & (\A[12]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G1[12]~10_combout\);

-- Location: LCCOMB_X83_Y56_N28
\G2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~3_combout\ = (\A[11]~input_o\ & (!\B[11]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\A[11]~input_o\ & (\B[11]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \B[12]~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[11]~input_o\,
	combout => \G2~3_combout\);

-- Location: LCCOMB_X83_Y56_N24
\G3[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[12]~18_combout\ = (!\G1[12]~10_combout\ & ((!\G2~3_combout\) # (!\G1[10]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[12]~10_combout\,
	datab => \G1[10]~8_combout\,
	datad => \G2~3_combout\,
	combout => \G3[12]~18_combout\);

-- Location: LCCOMB_X83_Y56_N14
\P2[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[12]~56_combout\ = (P0(10) & (\G2~3_combout\ & (\A[9]~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[9]~input_o\,
	datac => P0(10),
	datad => \G2~3_combout\,
	combout => \P2[12]~56_combout\);

-- Location: LCCOMB_X80_Y56_N26
\G3[12]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[12]~19_combout\ = ((\P2[12]~56_combout\ & !\G3[8]~11_combout\)) # (!\G3[12]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3[12]~18_combout\,
	datac => \P2[12]~56_combout\,
	datad => \G3[8]~11_combout\,
	combout => \G3[12]~19_combout\);

-- Location: LCCOMB_X80_Y56_N20
\C[37]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[37]~17_combout\ = (\G3[12]~19_combout\) # ((\P2[12]~56_combout\ & (\C[5]~7_combout\ & \P2[8]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[12]~19_combout\,
	datab => \P2[12]~56_combout\,
	datac => \C[5]~7_combout\,
	datad => \P2[8]~28_combout\,
	combout => \C[37]~17_combout\);

-- Location: IOIBUF_X115_Y47_N15
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X113_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X82_Y57_N26
\S~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~20_combout\ = \C[37]~17_combout\ $ (\A[13]~input_o\ $ (\B[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[37]~17_combout\,
	datab => \A[13]~input_o\,
	datad => \B[13]~input_o\,
	combout => \S~20_combout\);

-- Location: LCCOMB_X79_Y57_N10
\C[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[22]~18_combout\ = (\P2[9]~29_combout\ & \C[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[9]~29_combout\,
	datad => \C[6]~8_combout\,
	combout => \C[22]~18_combout\);

-- Location: LCCOMB_X82_Y57_N4
\G2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~4_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\B[12]~input_o\ $ (\A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \G2~4_combout\);

-- Location: LCCOMB_X82_Y57_N6
\G1[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[13]~11_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\B[12]~input_o\ & \A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \G1[13]~11_combout\);

-- Location: LCCOMB_X82_Y57_N24
\G3[13]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[13]~20_combout\ = (!\G1[13]~11_combout\ & ((!\G1[11]~9_combout\) # (!\G2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[13]~11_combout\,
	datac => \G2~4_combout\,
	datad => \G1[11]~9_combout\,
	combout => \G3[13]~20_combout\);

-- Location: LCCOMB_X79_Y57_N24
\G3[13]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[13]~21_combout\ = ((\G2~2_combout\ & (\G2~4_combout\ & !\G3[9]~13_combout\))) # (!\G3[13]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~2_combout\,
	datab => \G2~4_combout\,
	datac => \G3[9]~13_combout\,
	datad => \G3[13]~20_combout\,
	combout => \G3[13]~21_combout\);

-- Location: LCCOMB_X79_Y57_N28
\C[38]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[38]~19_combout\ = (\G3[13]~21_combout\) # ((\C[22]~18_combout\ & (\G2~4_combout\ & \G2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~18_combout\,
	datab => \G3[13]~21_combout\,
	datac => \G2~4_combout\,
	datad => \G2~2_combout\,
	combout => \C[38]~19_combout\);

-- Location: IOIBUF_X105_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X82_Y57_N2
\S~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~21_combout\ = \C[38]~19_combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[38]~19_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \S~21_combout\);

-- Location: IOIBUF_X85_Y73_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X85_Y57_N18
\C[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- C(7) = (Gf(6)) # ((P0(6) & (\G3~7_combout\ & \C~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(6),
	datab => \G3~7_combout\,
	datac => Gf(6),
	datad => \C~5_combout\,
	combout => C(7));

-- Location: LCCOMB_X82_Y57_N28
\G2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~5_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \G2~5_combout\);

-- Location: LCCOMB_X82_Y57_N14
\G1[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[14]~12_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[13]~input_o\ & (\A[13]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \A[13]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \G1[14]~12_combout\);

-- Location: LCCOMB_X82_Y57_N0
\G3[14]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[14]~22_combout\ = (!\G1[14]~12_combout\ & ((!\G1[12]~10_combout\) # (!\G2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~5_combout\,
	datac => \G1[14]~12_combout\,
	datad => \G1[12]~10_combout\,
	combout => \G3[14]~22_combout\);

-- Location: LCCOMB_X82_Y56_N22
\G3[14]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[14]~23_combout\ = ((!\G3[10]~15_combout\ & (\G2~5_combout\ & \G2~3_combout\))) # (!\G3[14]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[10]~15_combout\,
	datab => \G2~5_combout\,
	datac => \G3[14]~22_combout\,
	datad => \G2~3_combout\,
	combout => \G3[14]~23_combout\);

-- Location: LCCOMB_X82_Y56_N16
\Gf[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[30]~4_combout\ = (\P2[10]~30_combout\ & (\G2~5_combout\ & \G2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[10]~30_combout\,
	datac => \G2~5_combout\,
	datad => \G2~3_combout\,
	combout => \Gf[30]~4_combout\);

-- Location: LCCOMB_X81_Y56_N24
\C[39]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[39]~20_combout\ = (\G3[14]~23_combout\) # ((C(7) & \Gf[30]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => C(7),
	datab => \G3[14]~23_combout\,
	datad => \Gf[30]~4_combout\,
	combout => \C[39]~20_combout\);

-- Location: IOIBUF_X107_Y73_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X81_Y56_N10
\S~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~22_combout\ = \B[15]~input_o\ $ (\C[39]~20_combout\ $ (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \C[39]~20_combout\,
	datac => \A[15]~input_o\,
	combout => \S~22_combout\);

-- Location: IOIBUF_X115_Y57_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X82_Y57_N10
\G2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~6_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \G2~6_combout\);

-- Location: LCCOMB_X82_Y57_N20
\G1[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[15]~13_combout\ = (\A[15]~input_o\ & ((\B[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\A[15]~input_o\ & (\A[14]~input_o\ & (\B[14]~input_o\ & \B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[14]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \G1[15]~13_combout\);

-- Location: LCCOMB_X82_Y57_N22
\G3[15]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[15]~24_combout\ = (!\G1[15]~13_combout\ & ((!\G2~6_combout\) # (!\G1[13]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[13]~11_combout\,
	datac => \G2~6_combout\,
	datad => \G1[15]~13_combout\,
	combout => \G3[15]~24_combout\);

-- Location: LCCOMB_X84_Y57_N12
\G3[15]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[15]~25_combout\ = ((\G2~6_combout\ & (!\G3[11]~16_combout\ & \G2~4_combout\))) # (!\G3[15]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~6_combout\,
	datab => \G3[15]~24_combout\,
	datac => \G3[11]~16_combout\,
	datad => \G2~4_combout\,
	combout => \G3[15]~25_combout\);

-- Location: LCCOMB_X84_Y57_N6
\C~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~21_combout\ = (\G2~4_combout\ & (\P2[11]~31_combout\ & \G2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~4_combout\,
	datab => \P2[11]~31_combout\,
	datad => \G2~6_combout\,
	combout => \C~21_combout\);

-- Location: LCCOMB_X84_Y57_N24
\C[16]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[16]~22_combout\ = (\G3[15]~25_combout\) # ((\C~21_combout\ & ((Gf(7)) # (\C~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[15]~25_combout\,
	datab => Gf(7),
	datac => \C~21_combout\,
	datad => \C~10_combout\,
	combout => \C[16]~22_combout\);

-- Location: IOIBUF_X115_Y57_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X84_Y57_N18
\S~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~23_combout\ = \A[16]~input_o\ $ (\C[16]~22_combout\ $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \C[16]~22_combout\,
	datad => \B[16]~input_o\,
	combout => \S~23_combout\);

-- Location: IOIBUF_X115_Y59_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X82_Y57_N8
\G2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~7_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[16]~input_o\,
	combout => \G2~7_combout\);

-- Location: LCCOMB_X80_Y56_N0
\G4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~2_combout\ = (\G2~5_combout\ & (\P2[12]~56_combout\ & \G2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~5_combout\,
	datac => \P2[12]~56_combout\,
	datad => \G2~7_combout\,
	combout => \G4~2_combout\);

-- Location: LCCOMB_X82_Y57_N18
\G1[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[16]~14_combout\ = (\A[16]~input_o\ & ((\B[16]~input_o\) # ((\B[15]~input_o\ & \A[15]~input_o\)))) # (!\A[16]~input_o\ & (\B[15]~input_o\ & (\A[15]~input_o\ & \B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[16]~input_o\,
	combout => \G1[16]~14_combout\);

-- Location: LCCOMB_X82_Y57_N12
\G3[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[16]~26_combout\ = (!\G1[16]~14_combout\ & ((!\G1[14]~12_combout\) # (!\G2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~7_combout\,
	datac => \G1[14]~12_combout\,
	datad => \G1[16]~14_combout\,
	combout => \G3[16]~26_combout\);

-- Location: LCCOMB_X80_Y56_N6
\G3[16]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[16]~27_combout\ = ((\G2~7_combout\ & (\G2~5_combout\ & !\G3[12]~18_combout\))) # (!\G3[16]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[16]~26_combout\,
	datab => \G2~7_combout\,
	datac => \G2~5_combout\,
	datad => \G3[12]~18_combout\,
	combout => \G3[16]~27_combout\);

-- Location: LCCOMB_X80_Y56_N2
\C[17]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[17]~23_combout\ = (\G3[16]~27_combout\) # ((\G4~2_combout\ & ((\C[25]~12_combout\) # (\G3[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[25]~12_combout\,
	datab => \G4~2_combout\,
	datac => \G3[16]~27_combout\,
	datad => \G3[8]~12_combout\,
	combout => \C[17]~23_combout\);

-- Location: LCCOMB_X87_Y59_N8
\S~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~24_combout\ = \B[17]~input_o\ $ (\A[17]~input_o\ $ (\C[17]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \C[17]~23_combout\,
	combout => \S~24_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X83_Y57_N24
\G2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~8_combout\ = (\A[16]~input_o\ & (!\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \G2~8_combout\);

-- Location: LCCOMB_X79_Y57_N16
\G4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~3_combout\ = (\G2~2_combout\ & (\G2~4_combout\ & (\G2~6_combout\ & \G2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~2_combout\,
	datab => \G2~4_combout\,
	datac => \G2~6_combout\,
	datad => \G2~8_combout\,
	combout => \G4~3_combout\);

-- Location: LCCOMB_X83_Y57_N10
\G1[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[17]~15_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\A[16]~input_o\ & \B[16]~input_o\)))) # (!\A[17]~input_o\ & (\A[16]~input_o\ & (\B[16]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \B[17]~input_o\,
	combout => \G1[17]~15_combout\);

-- Location: LCCOMB_X83_Y57_N20
\G3[17]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[17]~28_combout\ = (!\G1[17]~15_combout\ & ((!\G2~8_combout\) # (!\G1[15]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[17]~15_combout\,
	datab => \G1[15]~13_combout\,
	datad => \G2~8_combout\,
	combout => \G3[17]~28_combout\);

-- Location: LCCOMB_X79_Y57_N6
\G3[17]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[17]~29_combout\ = ((!\G3[13]~20_combout\ & (\G2~6_combout\ & \G2~8_combout\))) # (!\G3[17]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[13]~20_combout\,
	datab => \G3[17]~28_combout\,
	datac => \G2~6_combout\,
	datad => \G2~8_combout\,
	combout => \G3[17]~29_combout\);

-- Location: LCCOMB_X79_Y55_N24
\C[18]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[18]~24_combout\ = (\G3[17]~29_combout\) # ((\G4~3_combout\ & ((\C[10]~13_combout\) # (\G3[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~3_combout\,
	datab => \C[10]~13_combout\,
	datac => \G3[17]~29_combout\,
	datad => \G3[9]~14_combout\,
	combout => \C[18]~24_combout\);

-- Location: IOIBUF_X115_Y36_N1
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X81_Y55_N0
\S~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~25_combout\ = \A[18]~input_o\ $ (\C[18]~24_combout\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \C[18]~24_combout\,
	datad => \B[18]~input_o\,
	combout => \S~25_combout\);

-- Location: LCCOMB_X83_Y57_N14
\G2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~9_combout\ = (\A[18]~input_o\ & (!\B[18]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[18]~input_o\,
	datad => \B[17]~input_o\,
	combout => \G2~9_combout\);

-- Location: LCCOMB_X82_Y56_N20
\G4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~4_combout\ = (\G2~7_combout\ & (\G2~5_combout\ & (\G2~9_combout\ & \G2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~7_combout\,
	datab => \G2~5_combout\,
	datac => \G2~9_combout\,
	datad => \G2~3_combout\,
	combout => \G4~4_combout\);

-- Location: LCCOMB_X82_Y56_N6
\G4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~5_combout\ = (\G4~4_combout\ & (((!\Gf[6]~2_combout\ & \P2[10]~30_combout\)) # (!\G3[10]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gf[6]~2_combout\,
	datab => \P2[10]~30_combout\,
	datac => \G3[10]~15_combout\,
	datad => \G4~4_combout\,
	combout => \G4~5_combout\);

-- Location: LCCOMB_X83_Y57_N8
\G1[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[18]~16_combout\ = (\A[18]~input_o\ & ((\B[18]~input_o\) # ((\A[17]~input_o\ & \B[17]~input_o\)))) # (!\A[18]~input_o\ & (\A[17]~input_o\ & (\B[18]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \A[17]~input_o\,
	datac => \B[18]~input_o\,
	datad => \B[17]~input_o\,
	combout => \G1[18]~16_combout\);

-- Location: LCCOMB_X82_Y57_N30
\G3[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[18]~30_combout\ = (!\G1[18]~16_combout\ & ((!\G2~9_combout\) # (!\G1[16]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1[16]~14_combout\,
	datac => \G1[18]~16_combout\,
	datad => \G2~9_combout\,
	combout => \G3[18]~30_combout\);

-- Location: LCCOMB_X82_Y56_N26
\G3[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[18]~31_combout\ = ((\G2~7_combout\ & (\G2~9_combout\ & !\G3[14]~22_combout\))) # (!\G3[18]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~7_combout\,
	datab => \G2~9_combout\,
	datac => \G3[14]~22_combout\,
	datad => \G3[18]~30_combout\,
	combout => \G3[18]~31_combout\);

-- Location: LCCOMB_X82_Y56_N24
\C[19]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[19]~25_combout\ = (\G4~5_combout\) # ((\G3[18]~31_combout\) # ((\G4~4_combout\ & \C[11]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~5_combout\,
	datab => \G4~4_combout\,
	datac => \G3[18]~31_combout\,
	datad => \C[11]~14_combout\,
	combout => \C[19]~25_combout\);

-- Location: IOIBUF_X115_Y40_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X83_Y57_N26
\S~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~26_combout\ = \C[19]~25_combout\ $ (\B[19]~input_o\ $ (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[19]~25_combout\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \S~26_combout\);

-- Location: IOIBUF_X107_Y73_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X83_Y57_N4
\G2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~10_combout\ = (\A[18]~input_o\ & (!\B[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))) # (!\A[18]~input_o\ & (\B[18]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G2~10_combout\);

-- Location: LCCOMB_X79_Y57_N2
\G4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~6_combout\ = (\G2~6_combout\ & (\G2~4_combout\ & (\G2~10_combout\ & \G2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~6_combout\,
	datab => \G2~4_combout\,
	datac => \G2~10_combout\,
	datad => \G2~8_combout\,
	combout => \G4~6_combout\);

-- Location: LCCOMB_X80_Y57_N28
\C[36]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[36]~26_combout\ = (\G4~6_combout\ & (\P2[11]~31_combout\ & (C(4) & \G3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~6_combout\,
	datab => \P2[11]~31_combout\,
	datac => C(4),
	datad => \G3~9_combout\,
	combout => \C[36]~26_combout\);

-- Location: LCCOMB_X83_Y57_N30
\G1[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[19]~17_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[18]~input_o\ & (\B[18]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[18]~input_o\,
	datab => \B[18]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G1[19]~17_combout\);

-- Location: LCCOMB_X83_Y57_N16
\G3[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[19]~32_combout\ = (!\G1[19]~17_combout\ & ((!\G2~10_combout\) # (!\G1[17]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[17]~15_combout\,
	datab => \G2~10_combout\,
	datac => \G1[19]~17_combout\,
	combout => \G3[19]~32_combout\);

-- Location: LCCOMB_X80_Y57_N30
\G3[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[19]~33_combout\ = ((!\G3[15]~24_combout\ & (\G2~10_combout\ & \G2~8_combout\))) # (!\G3[19]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[15]~24_combout\,
	datab => \G2~10_combout\,
	datac => \G2~8_combout\,
	datad => \G3[19]~32_combout\,
	combout => \G3[19]~33_combout\);

-- Location: LCCOMB_X80_Y57_N0
\C[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[20]~27_combout\ = (\C[36]~26_combout\) # ((\G3[19]~33_combout\) # ((\G4~6_combout\ & \G3[11]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~6_combout\,
	datab => \C[36]~26_combout\,
	datac => \G3[19]~33_combout\,
	datad => \G3[11]~17_combout\,
	combout => \C[20]~27_combout\);

-- Location: IOIBUF_X107_Y73_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X83_Y57_N18
\S~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~27_combout\ = \B[20]~input_o\ $ (\C[20]~27_combout\ $ (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[20]~input_o\,
	datac => \C[20]~27_combout\,
	datad => \A[20]~input_o\,
	combout => \S~27_combout\);

-- Location: LCCOMB_X83_Y57_N12
\G2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~11_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\B[19]~input_o\ $ (\A[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G2~11_combout\);

-- Location: LCCOMB_X80_Y56_N12
\C[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[21]~28_combout\ = (\P2[8]~28_combout\ & \C[5]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[8]~28_combout\,
	datac => \C[5]~7_combout\,
	combout => \C[21]~28_combout\);

-- Location: LCCOMB_X80_Y56_N30
\C[21]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[21]~29_combout\ = (\G2~9_combout\ & (\G4~2_combout\ & (\G2~11_combout\ & \C[21]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~9_combout\,
	datab => \G4~2_combout\,
	datac => \G2~11_combout\,
	datad => \C[21]~28_combout\,
	combout => \C[21]~29_combout\);

-- Location: LCCOMB_X80_Y56_N18
\G4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~7_combout\ = (\G2~9_combout\ & (\G2~5_combout\ & (\G2~11_combout\ & \G2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~9_combout\,
	datab => \G2~5_combout\,
	datac => \G2~11_combout\,
	datad => \G2~7_combout\,
	combout => \G4~7_combout\);

-- Location: LCCOMB_X83_Y57_N6
\G1[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[20]~18_combout\ = (\A[20]~input_o\ & ((\B[20]~input_o\) # ((\B[19]~input_o\ & \A[19]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\B[19]~input_o\ & \A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \B[19]~input_o\,
	datad => \A[19]~input_o\,
	combout => \G1[20]~18_combout\);

-- Location: LCCOMB_X83_Y57_N0
\G3[20]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[20]~34_combout\ = (!\G1[20]~18_combout\ & ((!\G2~11_combout\) # (!\G1[18]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[20]~18_combout\,
	datac => \G1[18]~16_combout\,
	datad => \G2~11_combout\,
	combout => \G3[20]~34_combout\);

-- Location: LCCOMB_X80_Y56_N8
\G3[20]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[20]~35_combout\ = ((\G2~9_combout\ & (\G2~11_combout\ & !\G3[16]~26_combout\))) # (!\G3[20]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~9_combout\,
	datab => \G3[20]~34_combout\,
	datac => \G2~11_combout\,
	datad => \G3[16]~26_combout\,
	combout => \G3[20]~35_combout\);

-- Location: LCCOMB_X80_Y60_N24
\C[21]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[21]~30_combout\ = (\C[21]~29_combout\) # ((\G3[20]~35_combout\) # ((\G4~7_combout\ & \G3[12]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[21]~29_combout\,
	datab => \G4~7_combout\,
	datac => \G3[20]~35_combout\,
	datad => \G3[12]~19_combout\,
	combout => \C[21]~30_combout\);

-- Location: IOIBUF_X111_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X85_Y60_N8
\S~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~28_combout\ = \C[21]~30_combout\ $ (\A[21]~input_o\ $ (\B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[21]~30_combout\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \S~28_combout\);

-- Location: IOIBUF_X100_Y73_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X83_Y57_N2
\G2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~12_combout\ = (\A[20]~input_o\ & (!\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[20]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G2~12_combout\);

-- Location: LCCOMB_X79_Y57_N0
\G4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~8_combout\ = (\G2~6_combout\ & (\G2~10_combout\ & (\G2~12_combout\ & \G2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~6_combout\,
	datab => \G2~10_combout\,
	datac => \G2~12_combout\,
	datad => \G2~8_combout\,
	combout => \G4~8_combout\);

-- Location: LCCOMB_X79_Y57_N14
\C[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[22]~31_combout\ = (\C[22]~18_combout\ & (\G2~12_combout\ & (\G2~10_combout\ & \G4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~18_combout\,
	datab => \G2~12_combout\,
	datac => \G2~10_combout\,
	datad => \G4~3_combout\,
	combout => \C[22]~31_combout\);

-- Location: LCCOMB_X83_Y57_N28
\G1[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[21]~19_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\A[20]~input_o\ & (\B[20]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[20]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G1[21]~19_combout\);

-- Location: LCCOMB_X83_Y57_N22
\G3[21]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[21]~36_combout\ = (!\G1[21]~19_combout\ & ((!\G2~12_combout\) # (!\G1[19]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1[21]~19_combout\,
	datac => \G1[19]~17_combout\,
	datad => \G2~12_combout\,
	combout => \G3[21]~36_combout\);

-- Location: LCCOMB_X79_Y57_N12
\G3[21]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[21]~37_combout\ = ((\G2~12_combout\ & (\G2~10_combout\ & !\G3[17]~28_combout\))) # (!\G3[21]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[21]~36_combout\,
	datab => \G2~12_combout\,
	datac => \G2~10_combout\,
	datad => \G3[17]~28_combout\,
	combout => \G3[21]~37_combout\);

-- Location: LCCOMB_X79_Y57_N26
\C[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[22]~32_combout\ = (\C[22]~31_combout\) # ((\G3[21]~37_combout\) # ((\G4~8_combout\ & \G3[13]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~8_combout\,
	datab => \G3[13]~21_combout\,
	datac => \C[22]~31_combout\,
	datad => \G3[21]~37_combout\,
	combout => \C[22]~32_combout\);

-- Location: LCCOMB_X85_Y60_N2
\S~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~29_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\C[22]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	datad => \C[22]~32_combout\,
	combout => \S~29_combout\);

-- Location: IOIBUF_X115_Y44_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X85_Y60_N4
\G2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~13_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G2~13_combout\);

-- Location: LCCOMB_X81_Y60_N14
\G4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~9_combout\ = (\G2~9_combout\ & (\G2~11_combout\ & (\G2~13_combout\ & \G2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~9_combout\,
	datab => \G2~11_combout\,
	datac => \G2~13_combout\,
	datad => \G2~7_combout\,
	combout => \G4~9_combout\);

-- Location: LCCOMB_X85_Y60_N6
\G1[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[22]~20_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # ((\A[21]~input_o\ & \B[21]~input_o\)))) # (!\A[22]~input_o\ & (\A[21]~input_o\ & (\B[22]~input_o\ & \B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[21]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[21]~input_o\,
	combout => \G1[22]~20_combout\);

-- Location: LCCOMB_X81_Y60_N24
\G3[22]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[22]~38_combout\ = (!\G1[22]~20_combout\ & ((!\G1[20]~18_combout\) # (!\G2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[22]~20_combout\,
	datab => \G2~13_combout\,
	datac => \G1[20]~18_combout\,
	combout => \G3[22]~38_combout\);

-- Location: LCCOMB_X81_Y60_N26
\G3[22]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[22]~39_combout\ = ((!\G3[18]~30_combout\ & (\G2~11_combout\ & \G2~13_combout\))) # (!\G3[22]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[18]~30_combout\,
	datab => \G2~11_combout\,
	datac => \G2~13_combout\,
	datad => \G3[22]~38_combout\,
	combout => \G3[22]~39_combout\);

-- Location: LCCOMB_X81_Y60_N12
\P2[22]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[22]~32_combout\ = (\G2~13_combout\ & \G2~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~13_combout\,
	datac => \G2~11_combout\,
	combout => \P2[22]~32_combout\);

-- Location: LCCOMB_X82_Y56_N2
\C[23]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[23]~33_combout\ = (C(7) & (\G4~4_combout\ & (\P2[22]~32_combout\ & \P2[10]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => C(7),
	datab => \G4~4_combout\,
	datac => \P2[22]~32_combout\,
	datad => \P2[10]~30_combout\,
	combout => \C[23]~33_combout\);

-- Location: LCCOMB_X77_Y60_N16
\C[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[23]~34_combout\ = (\G3[22]~39_combout\) # ((\C[23]~33_combout\) # ((\G4~9_combout\ & \G3[14]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~9_combout\,
	datab => \G3[22]~39_combout\,
	datac => \C[23]~33_combout\,
	datad => \G3[14]~23_combout\,
	combout => \C[23]~34_combout\);

-- Location: LCCOMB_X85_Y60_N0
\S~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~30_combout\ = \B[23]~input_o\ $ (\A[23]~input_o\ $ (\C[23]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \C[23]~34_combout\,
	combout => \S~30_combout\);

-- Location: LCCOMB_X85_Y60_N18
\G2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~14_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[23]~input_o\,
	combout => \G2~14_combout\);

-- Location: LCCOMB_X79_Y57_N4
\G4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~10_combout\ = (\G2~12_combout\ & (\G2~8_combout\ & (\G2~10_combout\ & \G2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~12_combout\,
	datab => \G2~8_combout\,
	datac => \G2~10_combout\,
	datad => \G2~14_combout\,
	combout => \G4~10_combout\);

-- Location: LCCOMB_X80_Y57_N2
\C[40]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[40]~35_combout\ = (\G4~6_combout\ & (\G2~14_combout\ & (\G2~12_combout\ & \P2[11]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~6_combout\,
	datab => \G2~14_combout\,
	datac => \G2~12_combout\,
	datad => \P2[11]~31_combout\,
	combout => \C[40]~35_combout\);

-- Location: LCCOMB_X84_Y57_N28
\C[40]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[40]~36_combout\ = (\C[40]~35_combout\ & ((Gf(7)) # (\C~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Gf(7),
	datac => \C[40]~35_combout\,
	datad => \C~10_combout\,
	combout => \C[40]~36_combout\);

-- Location: LCCOMB_X85_Y60_N28
\G1[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[23]~21_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\A[22]~input_o\ & \B[22]~input_o\)))) # (!\A[23]~input_o\ & (\A[22]~input_o\ & (\B[22]~input_o\ & \B[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[22]~input_o\,
	datad => \B[23]~input_o\,
	combout => \G1[23]~21_combout\);

-- Location: LCCOMB_X85_Y60_N30
\G3[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[23]~40_combout\ = (!\G1[23]~21_combout\ & ((!\G1[21]~19_combout\) # (!\G2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~14_combout\,
	datac => \G1[21]~19_combout\,
	datad => \G1[23]~21_combout\,
	combout => \G3[23]~40_combout\);

-- Location: LCCOMB_X80_Y57_N4
\G3[23]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[23]~41_combout\ = ((!\G3[19]~32_combout\ & (\G2~14_combout\ & \G2~12_combout\))) # (!\G3[23]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[19]~32_combout\,
	datab => \G2~14_combout\,
	datac => \G2~12_combout\,
	datad => \G3[23]~40_combout\,
	combout => \G3[23]~41_combout\);

-- Location: LCCOMB_X79_Y61_N24
\C[24]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[24]~37_combout\ = (\C[40]~36_combout\) # ((\G3[23]~41_combout\) # ((\G4~10_combout\ & \G3[15]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~10_combout\,
	datab => \C[40]~36_combout\,
	datac => \G3[23]~41_combout\,
	datad => \G3[15]~25_combout\,
	combout => \C[24]~37_combout\);

-- Location: IOIBUF_X85_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X115_Y63_N1
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X85_Y60_N16
\S~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~31_combout\ = \C[24]~37_combout\ $ (\B[24]~input_o\ $ (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[24]~37_combout\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \S~31_combout\);

-- Location: IOIBUF_X115_Y66_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: IOIBUF_X115_Y61_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X85_Y60_N26
\G2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~15_combout\ = (\B[23]~input_o\ & (!\A[23]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\)))) # (!\B[23]~input_o\ & (\A[23]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G2~15_combout\);

-- Location: LCCOMB_X80_Y56_N4
\G4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~11_combout\ = (\G2~9_combout\ & (\G2~15_combout\ & (\G2~11_combout\ & \G2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~9_combout\,
	datab => \G2~15_combout\,
	datac => \G2~11_combout\,
	datad => \G2~13_combout\,
	combout => \G4~11_combout\);

-- Location: LCCOMB_X85_Y60_N20
\G1[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[24]~22_combout\ = (\B[24]~input_o\ & ((\A[24]~input_o\) # ((\B[23]~input_o\ & \A[23]~input_o\)))) # (!\B[24]~input_o\ & (\B[23]~input_o\ & (\A[23]~input_o\ & \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G1[24]~22_combout\);

-- Location: LCCOMB_X81_Y60_N8
\G3[24]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[24]~42_combout\ = (!\G1[24]~22_combout\ & ((!\G1[22]~20_combout\) # (!\G2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~15_combout\,
	datac => \G1[24]~22_combout\,
	datad => \G1[22]~20_combout\,
	combout => \G3[24]~42_combout\);

-- Location: LCCOMB_X81_Y60_N2
\G3[24]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[24]~43_combout\ = ((\G2~15_combout\ & (\G2~13_combout\ & !\G3[20]~34_combout\))) # (!\G3[24]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~15_combout\,
	datab => \G3[24]~42_combout\,
	datac => \G2~13_combout\,
	datad => \G3[20]~34_combout\,
	combout => \G3[24]~43_combout\);

-- Location: LCCOMB_X80_Y56_N22
\C[41]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[41]~38_combout\ = (\G4~2_combout\ & (\G4~11_combout\ & ((\C[25]~12_combout\) # (\G3[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[25]~12_combout\,
	datab => \G4~2_combout\,
	datac => \G4~11_combout\,
	datad => \G3[8]~12_combout\,
	combout => \C[41]~38_combout\);

-- Location: LCCOMB_X79_Y60_N16
\C[25]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[25]~39_combout\ = (\G3[24]~43_combout\) # ((\C[41]~38_combout\) # ((\G4~11_combout\ & \G3[16]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~11_combout\,
	datab => \G3[24]~43_combout\,
	datac => \G3[16]~27_combout\,
	datad => \C[41]~38_combout\,
	combout => \C[25]~39_combout\);

-- Location: LCCOMB_X85_Y60_N22
\S~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~32_combout\ = \B[25]~input_o\ $ (\A[25]~input_o\ $ (\C[25]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[25]~input_o\,
	datac => \A[25]~input_o\,
	datad => \C[25]~39_combout\,
	combout => \S~32_combout\);

-- Location: IOIBUF_X115_Y65_N22
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: LCCOMB_X85_Y60_N24
\G2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~16_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\B[24]~input_o\ $ (\A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G2~16_combout\);

-- Location: LCCOMB_X79_Y59_N10
\G4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~12_combout\ = (\G2~10_combout\ & (\G2~14_combout\ & (\G2~12_combout\ & \G2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~10_combout\,
	datab => \G2~14_combout\,
	datac => \G2~12_combout\,
	datad => \G2~16_combout\,
	combout => \G4~12_combout\);

-- Location: LCCOMB_X79_Y55_N10
\C[42]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[42]~40_combout\ = (\G4~3_combout\ & (\G4~12_combout\ & ((\C[10]~13_combout\) # (\G3[9]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~3_combout\,
	datab => \G4~12_combout\,
	datac => \C[10]~13_combout\,
	datad => \G3[9]~14_combout\,
	combout => \C[42]~40_combout\);

-- Location: LCCOMB_X85_Y60_N10
\G1[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[25]~23_combout\ = (\A[25]~input_o\ & ((\B[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\B[24]~input_o\ & \A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[25]~input_o\,
	datac => \B[24]~input_o\,
	datad => \A[24]~input_o\,
	combout => \G1[25]~23_combout\);

-- Location: LCCOMB_X85_Y60_N12
\G3[25]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[25]~44_combout\ = (!\G1[25]~23_combout\ & ((!\G2~16_combout\) # (!\G1[23]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[25]~23_combout\,
	datab => \G1[23]~21_combout\,
	datad => \G2~16_combout\,
	combout => \G3[25]~44_combout\);

-- Location: LCCOMB_X79_Y59_N16
\G3[25]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[25]~45_combout\ = ((\G2~16_combout\ & (!\G3[21]~36_combout\ & \G2~14_combout\))) # (!\G3[25]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~16_combout\,
	datab => \G3[21]~36_combout\,
	datac => \G3[25]~44_combout\,
	datad => \G2~14_combout\,
	combout => \G3[25]~45_combout\);

-- Location: LCCOMB_X79_Y55_N12
\C[26]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[26]~41_combout\ = (\C[42]~40_combout\) # ((\G3[25]~45_combout\) # ((\G4~12_combout\ & \G3[17]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[42]~40_combout\,
	datab => \G4~12_combout\,
	datac => \G3[17]~29_combout\,
	datad => \G3[25]~45_combout\,
	combout => \C[26]~41_combout\);

-- Location: IOIBUF_X94_Y73_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X83_Y61_N8
\S~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~33_combout\ = \A[26]~input_o\ $ (\C[26]~41_combout\ $ (\B[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \C[26]~41_combout\,
	datac => \B[26]~input_o\,
	combout => \S~33_combout\);

-- Location: LCCOMB_X83_Y61_N26
\G2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~17_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \G2~17_combout\);

-- Location: LCCOMB_X81_Y60_N0
\G4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~13_combout\ = (\G2~17_combout\ & (\G2~13_combout\ & (\G2~15_combout\ & \G2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~17_combout\,
	datab => \G2~13_combout\,
	datac => \G2~15_combout\,
	datad => \G2~11_combout\,
	combout => \G4~13_combout\);

-- Location: LCCOMB_X82_Y56_N4
\C[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[43]~42_combout\ = (\G4~13_combout\ & (\G4~4_combout\ & \C[27]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~13_combout\,
	datab => \G4~4_combout\,
	datad => \C[27]~15_combout\,
	combout => \C[43]~42_combout\);

-- Location: LCCOMB_X83_Y61_N4
\G1[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[26]~24_combout\ = (\B[26]~input_o\ & ((\A[26]~input_o\) # ((\A[25]~input_o\ & \B[25]~input_o\)))) # (!\B[26]~input_o\ & (\A[25]~input_o\ & (\A[26]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \G1[26]~24_combout\);

-- Location: LCCOMB_X81_Y60_N28
\G3[26]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[26]~46_combout\ = (!\G1[26]~24_combout\ & ((!\G1[24]~22_combout\) # (!\G2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~17_combout\,
	datab => \G1[26]~24_combout\,
	datac => \G1[24]~22_combout\,
	combout => \G3[26]~46_combout\);

-- Location: LCCOMB_X81_Y60_N30
\G3[26]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[26]~47_combout\ = ((\G2~17_combout\ & (\G2~15_combout\ & !\G3[22]~38_combout\))) # (!\G3[26]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~17_combout\,
	datab => \G3[26]~46_combout\,
	datac => \G2~15_combout\,
	datad => \G3[22]~38_combout\,
	combout => \G3[26]~47_combout\);

-- Location: LCCOMB_X82_Y56_N14
\C[27]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[27]~43_combout\ = (\C[43]~42_combout\) # ((\G3[26]~47_combout\) # ((\G4~13_combout\ & \G3[18]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~13_combout\,
	datab => \C[43]~42_combout\,
	datac => \G3[18]~31_combout\,
	datad => \G3[26]~47_combout\,
	combout => \C[27]~43_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X83_Y61_N22
\S~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~34_combout\ = \C[27]~43_combout\ $ (\A[27]~input_o\ $ (\B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[27]~43_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \S~34_combout\);

-- Location: LCCOMB_X83_Y61_N24
\G2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~18_combout\ = (\A[27]~input_o\ & (!\B[27]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & (\B[26]~input_o\ $ (\A[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \G2~18_combout\);

-- Location: LCCOMB_X80_Y57_N8
\G4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~14_combout\ = (\G2~18_combout\ & (\G2~12_combout\ & (\G2~16_combout\ & \G2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~18_combout\,
	datab => \G2~12_combout\,
	datac => \G2~16_combout\,
	datad => \G2~14_combout\,
	combout => \G4~14_combout\);

-- Location: LCCOMB_X80_Y57_N10
\C[44]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[44]~44_combout\ = (\G4~6_combout\ & (\G4~14_combout\ & \C[28]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~6_combout\,
	datab => \G4~14_combout\,
	datac => \C[28]~16_combout\,
	combout => \C[44]~44_combout\);

-- Location: LCCOMB_X83_Y61_N18
\G1[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[27]~25_combout\ = (\A[27]~input_o\ & ((\B[27]~input_o\) # ((\B[26]~input_o\ & \A[26]~input_o\)))) # (!\A[27]~input_o\ & (\B[26]~input_o\ & (\A[26]~input_o\ & \B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[26]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[27]~input_o\,
	combout => \G1[27]~25_combout\);

-- Location: LCCOMB_X85_Y60_N14
\G3[27]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[27]~48_combout\ = (!\G1[27]~25_combout\ & ((!\G1[25]~23_combout\) # (!\G2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~18_combout\,
	datab => \G1[27]~25_combout\,
	datad => \G1[25]~23_combout\,
	combout => \G3[27]~48_combout\);

-- Location: LCCOMB_X80_Y57_N6
\G3[27]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[27]~49_combout\ = ((\G2~16_combout\ & (\G2~18_combout\ & !\G3[23]~40_combout\))) # (!\G3[27]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~16_combout\,
	datab => \G3[27]~48_combout\,
	datac => \G2~18_combout\,
	datad => \G3[23]~40_combout\,
	combout => \G3[27]~49_combout\);

-- Location: LCCOMB_X80_Y57_N12
\C[28]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[28]~45_combout\ = (\C[44]~44_combout\) # ((\G3[27]~49_combout\) # ((\G4~14_combout\ & \G3[19]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[44]~44_combout\,
	datab => \G4~14_combout\,
	datac => \G3[19]~33_combout\,
	datad => \G3[27]~49_combout\,
	combout => \C[28]~45_combout\);

-- Location: IOIBUF_X102_Y73_N1
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: IOIBUF_X115_Y68_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X83_Y61_N28
\S~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~35_combout\ = \C[28]~45_combout\ $ (\A[28]~input_o\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[28]~45_combout\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \S~35_combout\);

-- Location: LCCOMB_X83_Y61_N30
\G2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~19_combout\ = (\A[27]~input_o\ & (!\B[27]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\A[27]~input_o\ & (\B[27]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \G2~19_combout\);

-- Location: LCCOMB_X81_Y60_N22
\G4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~15_combout\ = (\G2~17_combout\ & (\G2~13_combout\ & (\G2~15_combout\ & \G2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~17_combout\,
	datab => \G2~13_combout\,
	datac => \G2~15_combout\,
	datad => \G2~19_combout\,
	combout => \G4~15_combout\);

-- Location: LCCOMB_X80_Y60_N12
\P4[28]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[28]~2_combout\ = (\G4~7_combout\ & \G4~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G4~7_combout\,
	datad => \G4~15_combout\,
	combout => \P4[28]~2_combout\);

-- Location: LCCOMB_X80_Y56_N16
\C[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[13]~47_combout\ = (\P2[8]~28_combout\ & (\C[5]~7_combout\ & \P2[12]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[8]~28_combout\,
	datab => \C[5]~7_combout\,
	datac => \P2[12]~56_combout\,
	combout => \C[13]~47_combout\);

-- Location: LCCOMB_X83_Y61_N0
\G1[28]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[28]~26_combout\ = (\A[28]~input_o\ & ((\B[28]~input_o\) # ((\A[27]~input_o\ & \B[27]~input_o\)))) # (!\A[28]~input_o\ & (\A[27]~input_o\ & (\B[27]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \G1[28]~26_combout\);

-- Location: LCCOMB_X81_Y60_N10
\G3[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[28]~50_combout\ = (!\G1[28]~26_combout\ & ((!\G1[26]~24_combout\) # (!\G2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~19_combout\,
	datab => \G1[28]~26_combout\,
	datad => \G1[26]~24_combout\,
	combout => \G3[28]~50_combout\);

-- Location: LCCOMB_X81_Y60_N4
\G3[28]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[28]~51_combout\ = ((\G2~19_combout\ & (!\G3[24]~42_combout\ & \G2~17_combout\))) # (!\G3[28]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~19_combout\,
	datab => \G3[24]~42_combout\,
	datac => \G3[28]~50_combout\,
	datad => \G2~17_combout\,
	combout => \G3[28]~51_combout\);

-- Location: LCCOMB_X80_Y60_N10
\C[29]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[29]~46_combout\ = (\G3[28]~51_combout\) # ((\G4~15_combout\ & \G3[20]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G4~15_combout\,
	datac => \G3[20]~35_combout\,
	datad => \G3[28]~51_combout\,
	combout => \C[29]~46_combout\);

-- Location: LCCOMB_X80_Y60_N6
\C[29]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[29]~48_combout\ = (\C[29]~46_combout\) # ((\P4[28]~2_combout\ & ((\G3[12]~19_combout\) # (\C[13]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[28]~2_combout\,
	datab => \G3[12]~19_combout\,
	datac => \C[13]~47_combout\,
	datad => \C[29]~46_combout\,
	combout => \C[29]~48_combout\);

-- Location: IOIBUF_X83_Y73_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X115_Y66_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X83_Y61_N2
\S~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~36_combout\ = \C[29]~48_combout\ $ (\A[29]~input_o\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[29]~48_combout\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \S~36_combout\);

-- Location: LCCOMB_X83_Y61_N12
\G2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~20_combout\ = (\A[29]~input_o\ & (!\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\A[28]~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \G2~20_combout\);

-- Location: LCCOMB_X79_Y59_N4
\P2[29]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[29]~33_combout\ = (\G2~20_combout\ & \G2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~20_combout\,
	datac => \G2~18_combout\,
	combout => \P2[29]~33_combout\);

-- Location: LCCOMB_X79_Y59_N6
\P4[29]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[29]~3_combout\ = (\G4~8_combout\ & (\G2~14_combout\ & (\P2[29]~33_combout\ & \G2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~8_combout\,
	datab => \G2~14_combout\,
	datac => \P2[29]~33_combout\,
	datad => \G2~16_combout\,
	combout => \P4[29]~3_combout\);

-- Location: LCCOMB_X79_Y59_N8
\G4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~16_combout\ = (\G3[21]~37_combout\ & (\G2~14_combout\ & (\P2[29]~33_combout\ & \G2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[21]~37_combout\,
	datab => \G2~14_combout\,
	datac => \P2[29]~33_combout\,
	datad => \G2~16_combout\,
	combout => \G4~16_combout\);

-- Location: LCCOMB_X79_Y57_N30
\C[30]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[30]~49_combout\ = (\G3[13]~21_combout\) # ((\C[22]~18_combout\ & (\G2~4_combout\ & \G2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~18_combout\,
	datab => \G3[13]~21_combout\,
	datac => \G2~4_combout\,
	datad => \G2~2_combout\,
	combout => \C[30]~49_combout\);

-- Location: LCCOMB_X83_Y61_N14
\G1[29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[29]~27_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\A[28]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[29]~input_o\,
	datac => \A[28]~input_o\,
	datad => \B[28]~input_o\,
	combout => \G1[29]~27_combout\);

-- Location: LCCOMB_X80_Y61_N24
\G3[29]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[29]~52_combout\ = (!\G1[29]~27_combout\ & ((!\G1[27]~25_combout\) # (!\G2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~20_combout\,
	datac => \G1[29]~27_combout\,
	datad => \G1[27]~25_combout\,
	combout => \G3[29]~52_combout\);

-- Location: LCCOMB_X79_Y59_N0
\G3[29]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[29]~100_combout\ = ((\G2~18_combout\ & (!\G3[25]~44_combout\ & \G2~20_combout\))) # (!\G3[29]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~18_combout\,
	datab => \G3[29]~52_combout\,
	datac => \G3[25]~44_combout\,
	datad => \G2~20_combout\,
	combout => \G3[29]~100_combout\);

-- Location: LCCOMB_X79_Y59_N18
\C[30]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[30]~50_combout\ = (\G4~16_combout\) # ((\G3[29]~100_combout\) # ((\P4[29]~3_combout\ & \C[30]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[29]~3_combout\,
	datab => \G4~16_combout\,
	datac => \C[30]~49_combout\,
	datad => \G3[29]~100_combout\,
	combout => \C[30]~50_combout\);

-- Location: IOIBUF_X83_Y73_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X109_Y73_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X80_Y61_N18
\S~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~37_combout\ = \C[30]~50_combout\ $ (\A[30]~input_o\ $ (\B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[30]~50_combout\,
	datab => \A[30]~input_o\,
	datad => \B[30]~input_o\,
	combout => \S~37_combout\);

-- Location: IOIBUF_X87_Y73_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X83_Y61_N16
\G2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~21_combout\ = (\A[29]~input_o\ & (!\B[29]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\)))) # (!\A[29]~input_o\ & (\B[29]~input_o\ & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[29]~input_o\,
	combout => \G2~21_combout\);

-- Location: LCCOMB_X81_Y60_N18
\G4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~17_combout\ = (\G2~17_combout\ & (\G2~21_combout\ & (\G2~15_combout\ & \G2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~17_combout\,
	datab => \G2~21_combout\,
	datac => \G2~15_combout\,
	datad => \G2~19_combout\,
	combout => \G4~17_combout\);

-- Location: LCCOMB_X81_Y56_N4
\P4[30]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[30]~4_combout\ = (\G2~7_combout\ & (\P2[22]~32_combout\ & (\G2~9_combout\ & \G4~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~7_combout\,
	datab => \P2[22]~32_combout\,
	datac => \G2~9_combout\,
	datad => \G4~17_combout\,
	combout => \P4[30]~4_combout\);

-- Location: LCCOMB_X81_Y56_N0
\C~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~51_combout\ = (\C~9_combout\ & (\Gf[30]~4_combout\ & (\P4[30]~4_combout\ & P0(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~9_combout\,
	datab => \Gf[30]~4_combout\,
	datac => \P4[30]~4_combout\,
	datad => P0(6),
	combout => \C~51_combout\);

-- Location: IOIBUF_X83_Y73_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X83_Y61_N10
\G1[30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[30]~28_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # ((\A[29]~input_o\ & \B[29]~input_o\)))) # (!\B[30]~input_o\ & (\A[29]~input_o\ & (\A[30]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datab => \B[30]~input_o\,
	datac => \A[30]~input_o\,
	datad => \B[29]~input_o\,
	combout => \G1[30]~28_combout\);

-- Location: LCCOMB_X80_Y61_N12
\G3[30]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[30]~53_combout\ = (!\G1[30]~28_combout\ & ((!\G1[28]~26_combout\) # (!\G2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~21_combout\,
	datab => \G1[28]~26_combout\,
	datac => \G1[30]~28_combout\,
	combout => \G3[30]~53_combout\);

-- Location: LCCOMB_X81_Y60_N16
\G3[30]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[30]~54_combout\ = ((\G2~19_combout\ & (\G2~21_combout\ & !\G3[26]~46_combout\))) # (!\G3[30]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~19_combout\,
	datab => \G3[30]~53_combout\,
	datac => \G2~21_combout\,
	datad => \G3[26]~46_combout\,
	combout => \G3[30]~54_combout\);

-- Location: LCCOMB_X81_Y56_N14
\Gf[30]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[30]~5_combout\ = (\P4[30]~4_combout\ & ((\G3[14]~23_combout\) # ((\Gf[30]~4_combout\ & Gf(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[30]~4_combout\,
	datab => \Gf[30]~4_combout\,
	datac => Gf(6),
	datad => \G3[14]~23_combout\,
	combout => \Gf[30]~5_combout\);

-- Location: LCCOMB_X77_Y60_N18
\Gf[30]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[30]~6_combout\ = (\G3[30]~54_combout\) # ((\Gf[30]~5_combout\) # ((\G4~17_combout\ & \G3[22]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~17_combout\,
	datab => \G3[30]~54_combout\,
	datac => \Gf[30]~5_combout\,
	datad => \G3[22]~39_combout\,
	combout => \Gf[30]~6_combout\);

-- Location: LCCOMB_X80_Y61_N10
\S~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~95_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\ $ (((\C~51_combout\) # (\Gf[30]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \C~51_combout\,
	datac => \B[31]~input_o\,
	datad => \Gf[30]~6_combout\,
	combout => \S~95_combout\);

-- Location: LCCOMB_X80_Y61_N30
\P0[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(31) = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	combout => P0(31));

-- Location: LCCOMB_X80_Y61_N16
\P2[31]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[31]~34_combout\ = (\G2~20_combout\ & (P0(31) & (\B[30]~input_o\ $ (\A[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[30]~input_o\,
	datab => \G2~20_combout\,
	datac => P0(31),
	datad => \A[30]~input_o\,
	combout => \P2[31]~34_combout\);

-- Location: LCCOMB_X79_Y61_N2
\P4[31]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[31]~5_combout\ = (\G4~10_combout\ & (\P2[31]~34_combout\ & (\G2~18_combout\ & \G2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~10_combout\,
	datab => \P2[31]~34_combout\,
	datac => \G2~18_combout\,
	datad => \G2~16_combout\,
	combout => \P4[31]~5_combout\);

-- Location: IOIBUF_X105_Y73_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X115_Y63_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X80_Y61_N0
\P0[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(32) = \B[32]~input_o\ $ (\A[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => P0(32));

-- Location: LCCOMB_X80_Y61_N26
\G2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~22_combout\ = (\A[31]~input_o\ & (!\B[31]~input_o\ & (\A[30]~input_o\ $ (\B[30]~input_o\)))) # (!\A[31]~input_o\ & (\B[31]~input_o\ & (\A[30]~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[31]~input_o\,
	datad => \B[30]~input_o\,
	combout => \G2~22_combout\);

-- Location: LCCOMB_X80_Y61_N20
\G1[31]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[31]~29_combout\ = (\A[31]~input_o\ & ((\B[31]~input_o\) # ((\A[30]~input_o\ & \B[30]~input_o\)))) # (!\A[31]~input_o\ & (\A[30]~input_o\ & (\B[31]~input_o\ & \B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \A[30]~input_o\,
	datac => \B[31]~input_o\,
	datad => \B[30]~input_o\,
	combout => \G1[31]~29_combout\);

-- Location: LCCOMB_X80_Y61_N6
\G3[31]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[31]~55_combout\ = (!\G1[31]~29_combout\ & ((!\G1[29]~27_combout\) # (!\G2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~22_combout\,
	datab => \G1[31]~29_combout\,
	datac => \G1[29]~27_combout\,
	combout => \G3[31]~55_combout\);

-- Location: LCCOMB_X79_Y61_N12
\G3[31]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[31]~56_combout\ = ((\P2[31]~34_combout\ & !\G3[27]~48_combout\)) # (!\G3[31]~55_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[31]~55_combout\,
	datab => \P2[31]~34_combout\,
	datad => \G3[27]~48_combout\,
	combout => \G3[31]~56_combout\);

-- Location: LCCOMB_X79_Y61_N6
\G4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~18_combout\ = (\G2~18_combout\ & (\P2[31]~34_combout\ & (\G3[23]~41_combout\ & \G2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~18_combout\,
	datab => \P2[31]~34_combout\,
	datac => \G3[23]~41_combout\,
	datad => \G2~16_combout\,
	combout => \G4~18_combout\);

-- Location: LCCOMB_X79_Y61_N16
\Gf[31]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf[31]~7_combout\ = (\G4~18_combout\) # ((Gf(7) & (\P4[31]~5_combout\ & \C~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Gf(7),
	datab => \P4[31]~5_combout\,
	datac => \C~21_combout\,
	datad => \G4~18_combout\,
	combout => \Gf[31]~7_combout\);

-- Location: LCCOMB_X79_Y61_N26
\Gf[31]\ : cycloneive_lcell_comb
-- Equation(s):
-- Gf(31) = (\G3[31]~56_combout\) # ((\Gf[31]~7_combout\) # ((\P4[31]~5_combout\ & \G3[15]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[31]~56_combout\,
	datab => \Gf[31]~7_combout\,
	datac => \P4[31]~5_combout\,
	datad => \G3[15]~25_combout\,
	combout => Gf(31));

-- Location: LCCOMB_X85_Y57_N20
\C~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~52_combout\ = (\Pf[3]~0_combout\ & (\G3~9_combout\ & (\C~21_combout\ & \C~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pf[3]~0_combout\,
	datab => \G3~9_combout\,
	datac => \C~21_combout\,
	datad => \C~5_combout\,
	combout => \C~52_combout\);

-- Location: LCCOMB_X73_Y65_N8
\S~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~38_combout\ = P0(32) $ (((Gf(31)) # ((\P4[31]~5_combout\ & \C~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[31]~5_combout\,
	datab => P0(32),
	datac => Gf(31),
	datad => \C~52_combout\,
	combout => \S~38_combout\);

-- Location: LCCOMB_X80_Y61_N28
\P2[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[32]~57_combout\ = (P0(32) & (\G2~21_combout\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => P0(32),
	datac => \B[31]~input_o\,
	datad => \G2~21_combout\,
	combout => \P2[32]~57_combout\);

-- Location: LCCOMB_X79_Y60_N4
\G4~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~19_combout\ = (\G2~19_combout\ & (\G3[24]~43_combout\ & (\P2[32]~57_combout\ & \G2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~19_combout\,
	datab => \G3[24]~43_combout\,
	datac => \P2[32]~57_combout\,
	datad => \G2~17_combout\,
	combout => \G4~19_combout\);

-- Location: LCCOMB_X80_Y61_N2
\G1[32]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[32]~30_combout\ = (\B[32]~input_o\ & ((\A[32]~input_o\) # ((\A[31]~input_o\ & \B[31]~input_o\)))) # (!\B[32]~input_o\ & (\A[31]~input_o\ & (\B[31]~input_o\ & \A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[32]~input_o\,
	datac => \B[31]~input_o\,
	datad => \A[32]~input_o\,
	combout => \G1[32]~30_combout\);

-- Location: LCCOMB_X80_Y61_N4
\G3[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[32]~57_combout\ = (!\G1[32]~30_combout\ & (((!\G1[30]~28_combout\) # (!P0(32))) # (!P0(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(31),
	datab => P0(32),
	datac => \G1[30]~28_combout\,
	datad => \G1[32]~30_combout\,
	combout => \G3[32]~57_combout\);

-- Location: LCCOMB_X79_Y60_N6
\C[33]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[33]~53_combout\ = (\G4~19_combout\) # (((!\G3[28]~50_combout\ & \P2[32]~57_combout\)) # (!\G3[32]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[28]~50_combout\,
	datab => \P2[32]~57_combout\,
	datac => \G4~19_combout\,
	datad => \G3[32]~57_combout\,
	combout => \C[33]~53_combout\);

-- Location: LCCOMB_X80_Y56_N10
\S~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~39_combout\ = (\G3[8]~11_combout\ & ((!\G3[8]~10_combout\) # (!\P2[8]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[8]~28_combout\,
	datab => \G3[8]~11_combout\,
	datad => \G3[8]~10_combout\,
	combout => \S~39_combout\);

-- Location: LCCOMB_X80_Y56_N28
\S~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~40_combout\ = (\G3[16]~27_combout\) # ((\G4~2_combout\ & ((\C[25]~12_combout\) # (!\S~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~39_combout\,
	datab => \G4~2_combout\,
	datac => \G3[16]~27_combout\,
	datad => \C[25]~12_combout\,
	combout => \S~40_combout\);

-- Location: IOIBUF_X58_Y0_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X115_Y59_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X80_Y59_N8
\P0[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(33) = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[33]~input_o\,
	datad => \A[33]~input_o\,
	combout => P0(33));

-- Location: LCCOMB_X79_Y60_N10
\P4[32]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[32]~6_combout\ = (\G4~11_combout\ & (\P2[32]~57_combout\ & (\G2~19_combout\ & \G2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~11_combout\,
	datab => \P2[32]~57_combout\,
	datac => \G2~19_combout\,
	datad => \G2~17_combout\,
	combout => \P4[32]~6_combout\);

-- Location: LCCOMB_X79_Y60_N0
\S~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~41_combout\ = P0(33) $ (((\C[33]~53_combout\) # ((\S~40_combout\ & \P4[32]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[33]~53_combout\,
	datab => \S~40_combout\,
	datac => P0(33),
	datad => \P4[32]~6_combout\,
	combout => \S~41_combout\);

-- Location: LCCOMB_X85_Y57_N6
\C[34]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[34]~54_combout\ = (\G3[9]~13_combout\ & (!\C[10]~13_combout\ & ((\G3[9]~8_combout\) # (!\P2[9]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[9]~13_combout\,
	datab => \P2[9]~29_combout\,
	datac => \C[10]~13_combout\,
	datad => \G3[9]~8_combout\,
	combout => \C[34]~54_combout\);

-- Location: LCCOMB_X80_Y61_N14
\P2[33]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[33]~58_combout\ = (P0(33) & (\G2~22_combout\ & (\B[32]~input_o\ $ (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(33),
	datab => \B[32]~input_o\,
	datac => \G2~22_combout\,
	datad => \A[32]~input_o\,
	combout => \P2[33]~58_combout\);

-- Location: LCCOMB_X79_Y59_N26
\P4[33]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[33]~28_combout\ = (\G4~12_combout\ & (\G2~20_combout\ & (\G2~18_combout\ & \P2[33]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~12_combout\,
	datab => \G2~20_combout\,
	datac => \G2~18_combout\,
	datad => \P2[33]~58_combout\,
	combout => \P4[33]~28_combout\);

-- Location: LCCOMB_X79_Y55_N6
\C[34]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[34]~55_combout\ = (\P4[33]~28_combout\ & ((\G3[17]~29_combout\) # ((!\C[34]~54_combout\ & \G4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[17]~29_combout\,
	datab => \C[34]~54_combout\,
	datac => \P4[33]~28_combout\,
	datad => \G4~3_combout\,
	combout => \C[34]~55_combout\);

-- Location: LCCOMB_X79_Y59_N28
\G4~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~31_combout\ = (\P2[33]~58_combout\ & (\G3[25]~45_combout\ & (\G2~18_combout\ & \G2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[33]~58_combout\,
	datab => \G3[25]~45_combout\,
	datac => \G2~18_combout\,
	datad => \G2~20_combout\,
	combout => \G4~31_combout\);

-- Location: LCCOMB_X80_Y59_N10
\G1[33]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[33]~31_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\B[32]~input_o\ & \A[32]~input_o\)))) # (!\B[33]~input_o\ & (\B[32]~input_o\ & (\A[32]~input_o\ & \A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \B[33]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[33]~input_o\,
	combout => \G1[33]~31_combout\);

-- Location: LCCOMB_X80_Y59_N12
\G3[33]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[33]~58_combout\ = (!\G1[33]~31_combout\ & (((!P0(33)) # (!\G1[31]~29_combout\)) # (!P0(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(32),
	datab => \G1[31]~29_combout\,
	datac => P0(33),
	datad => \G1[33]~31_combout\,
	combout => \G3[33]~58_combout\);

-- Location: LCCOMB_X79_Y59_N20
\G3[33]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[33]~59_combout\ = ((!\G3[29]~52_combout\ & \P2[33]~58_combout\)) # (!\G3[33]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3[29]~52_combout\,
	datac => \P2[33]~58_combout\,
	datad => \G3[33]~58_combout\,
	combout => \G3[33]~59_combout\);

-- Location: IOIBUF_X58_Y0_N15
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X80_Y59_N6
\P0[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(34) = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => P0(34));

-- Location: LCCOMB_X79_Y59_N14
\S~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~42_combout\ = P0(34) $ (((\C[34]~55_combout\) # ((\G4~31_combout\) # (\G3[33]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[34]~55_combout\,
	datab => \G4~31_combout\,
	datac => \G3[33]~59_combout\,
	datad => P0(34),
	combout => \S~42_combout\);

-- Location: IOIBUF_X81_Y73_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X109_Y73_N8
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X80_Y59_N30
\P0[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(35) = \B[35]~input_o\ $ (\A[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[35]~input_o\,
	datad => \A[35]~input_o\,
	combout => P0(35));

-- Location: LCCOMB_X80_Y59_N0
\P2[34]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[34]~35_combout\ = (P0(32) & (P0(31) & (P0(33) & P0(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(32),
	datab => P0(31),
	datac => P0(33),
	datad => P0(34),
	combout => \P2[34]~35_combout\);

-- Location: LCCOMB_X80_Y59_N2
\G1[34]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[34]~32_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\) # ((\A[33]~input_o\ & \B[33]~input_o\)))) # (!\A[34]~input_o\ & (\A[33]~input_o\ & (\B[33]~input_o\ & \B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \B[33]~input_o\,
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => \G1[34]~32_combout\);

-- Location: LCCOMB_X80_Y59_N28
\G3[34]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[34]~60_combout\ = (!\G1[34]~32_combout\ & (((!\G1[32]~30_combout\) # (!P0(33))) # (!P0(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(34),
	datab => P0(33),
	datac => \G1[32]~30_combout\,
	datad => \G1[34]~32_combout\,
	combout => \G3[34]~60_combout\);

-- Location: LCCOMB_X80_Y61_N22
\G3[34]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[34]~61_combout\ = ((\P2[34]~35_combout\ & !\G3[30]~53_combout\)) # (!\G3[34]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[34]~35_combout\,
	datac => \G3[34]~60_combout\,
	datad => \G3[30]~53_combout\,
	combout => \G3[34]~61_combout\);

-- Location: LCCOMB_X81_Y60_N20
\G4~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~20_combout\ = (\P2[34]~35_combout\ & (\G2~21_combout\ & (\G3[26]~47_combout\ & \G2~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[34]~35_combout\,
	datab => \G2~21_combout\,
	datac => \G3[26]~47_combout\,
	datad => \G2~19_combout\,
	combout => \G4~20_combout\);

-- Location: LCCOMB_X82_Y56_N18
\C[35]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[35]~56_combout\ = (\G4~4_combout\ & \C[11]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G4~4_combout\,
	datad => \C[11]~14_combout\,
	combout => \C[35]~56_combout\);

-- Location: LCCOMB_X82_Y56_N8
\P4[34]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[34]~7_combout\ = (\G4~13_combout\ & (\G2~19_combout\ & (\P2[34]~35_combout\ & \G2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~13_combout\,
	datab => \G2~19_combout\,
	datac => \P2[34]~35_combout\,
	datad => \G2~21_combout\,
	combout => \P4[34]~7_combout\);

-- Location: LCCOMB_X82_Y56_N28
\C[35]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[35]~57_combout\ = (\P4[34]~7_combout\ & ((\G4~5_combout\) # ((\C[35]~56_combout\) # (\G3[18]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~5_combout\,
	datab => \C[35]~56_combout\,
	datac => \G3[18]~31_combout\,
	datad => \P4[34]~7_combout\,
	combout => \C[35]~57_combout\);

-- Location: LCCOMB_X75_Y60_N0
\S~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~43_combout\ = P0(35) $ (((\G3[34]~61_combout\) # ((\G4~20_combout\) # (\C[35]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(35),
	datab => \G3[34]~61_combout\,
	datac => \G4~20_combout\,
	datad => \C[35]~57_combout\,
	combout => \S~43_combout\);

-- Location: LCCOMB_X80_Y59_N16
\P2[35]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[35]~36_combout\ = (P0(32) & (P0(35) & (P0(33) & P0(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(32),
	datab => P0(35),
	datac => P0(33),
	datad => P0(34),
	combout => \P2[35]~36_combout\);

-- Location: LCCOMB_X80_Y59_N26
\G1[35]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[35]~33_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\A[34]~input_o\ & \B[34]~input_o\)))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & (\A[34]~input_o\ & \B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => \G1[35]~33_combout\);

-- Location: LCCOMB_X80_Y59_N4
\G3[35]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[35]~62_combout\ = (!\G1[35]~33_combout\ & (((!P0(34)) # (!P0(35))) # (!\G1[33]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[33]~31_combout\,
	datab => P0(35),
	datac => \G1[35]~33_combout\,
	datad => P0(34),
	combout => \G3[35]~62_combout\);

-- Location: LCCOMB_X79_Y61_N4
\G3[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[35]~63_combout\ = ((!\G3[31]~55_combout\ & \P2[35]~36_combout\)) # (!\G3[35]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[31]~55_combout\,
	datab => \P2[35]~36_combout\,
	datad => \G3[35]~62_combout\,
	combout => \G3[35]~63_combout\);

-- Location: IOIBUF_X0_Y36_N22
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X76_Y60_N16
\P0[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(36) = \B[36]~input_o\ $ (\A[36]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => P0(36));

-- Location: LCCOMB_X80_Y57_N16
\G4~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~21_combout\ = (\G4~6_combout\ & (((!\Gf[7]~3_combout\ & \P2[11]~31_combout\)) # (!\G3[11]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~6_combout\,
	datab => \G3[11]~16_combout\,
	datac => \Gf[7]~3_combout\,
	datad => \P2[11]~31_combout\,
	combout => \G4~21_combout\);

-- Location: LCCOMB_X80_Y57_N14
\P4[35]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[35]~8_combout\ = (\P2[35]~36_combout\ & (\G4~14_combout\ & \P2[31]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[35]~36_combout\,
	datac => \G4~14_combout\,
	datad => \P2[31]~34_combout\,
	combout => \P4[35]~8_combout\);

-- Location: LCCOMB_X80_Y57_N18
\C[36]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[36]~58_combout\ = (\P4[35]~8_combout\ & ((\G3[19]~33_combout\) # ((\G4~21_combout\) # (\C[36]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[19]~33_combout\,
	datab => \G4~21_combout\,
	datac => \P4[35]~8_combout\,
	datad => \C[36]~26_combout\,
	combout => \C[36]~58_combout\);

-- Location: LCCOMB_X80_Y57_N20
\G4~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~22_combout\ = (\G3[27]~49_combout\ & (\P2[35]~36_combout\ & \P2[31]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[27]~49_combout\,
	datac => \P2[35]~36_combout\,
	datad => \P2[31]~34_combout\,
	combout => \G4~22_combout\);

-- Location: LCCOMB_X77_Y61_N8
\S~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~44_combout\ = P0(36) $ (((\G3[35]~63_combout\) # ((\C[36]~58_combout\) # (\G4~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[35]~63_combout\,
	datab => P0(36),
	datac => \C[36]~58_combout\,
	datad => \G4~22_combout\,
	combout => \S~44_combout\);

-- Location: LCCOMB_X80_Y59_N14
\P2[36]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[36]~37_combout\ = (P0(36) & (P0(35) & (P0(33) & P0(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(36),
	datab => P0(35),
	datac => P0(33),
	datad => P0(34),
	combout => \P2[36]~37_combout\);

-- Location: LCCOMB_X79_Y60_N12
\P4[36]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[36]~9_combout\ = (\P2[36]~37_combout\ & (P0(32) & (P0(31) & \G2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[36]~37_combout\,
	datab => P0(32),
	datac => P0(31),
	datad => \G2~21_combout\,
	combout => \P4[36]~9_combout\);

-- Location: LCCOMB_X80_Y60_N26
\G4~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~23_combout\ = (\P4[36]~9_combout\ & \G3[28]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[36]~9_combout\,
	datad => \G3[28]~51_combout\,
	combout => \G4~23_combout\);

-- Location: LCCOMB_X76_Y60_N2
\G1[36]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[36]~34_combout\ = (\B[36]~input_o\ & ((\A[36]~input_o\) # ((\A[35]~input_o\ & \B[35]~input_o\)))) # (!\B[36]~input_o\ & (\A[35]~input_o\ & (\B[35]~input_o\ & \A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \B[35]~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \G1[36]~34_combout\);

-- Location: LCCOMB_X80_Y59_N24
\G3[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[36]~64_combout\ = (!\G1[36]~34_combout\ & (((!\G1[34]~32_combout\) # (!P0(35))) # (!P0(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(36),
	datab => P0(35),
	datac => \G1[36]~34_combout\,
	datad => \G1[34]~32_combout\,
	combout => \G3[36]~64_combout\);

-- Location: LCCOMB_X79_Y60_N26
\G3[36]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[36]~65_combout\ = ((\P2[36]~37_combout\ & !\G3[32]~57_combout\)) # (!\G3[36]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[36]~37_combout\,
	datab => \G3[36]~64_combout\,
	datad => \G3[32]~57_combout\,
	combout => \G3[36]~65_combout\);

-- Location: LCCOMB_X80_Y60_N28
\P4[36]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[36]~10_combout\ = (\P2[36]~37_combout\ & (\P2[32]~57_combout\ & \G4~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[36]~37_combout\,
	datac => \P2[32]~57_combout\,
	datad => \G4~15_combout\,
	combout => \P4[36]~10_combout\);

-- Location: LCCOMB_X80_Y60_N22
\C[37]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[37]~60_combout\ = (\G4~23_combout\) # ((\G3[36]~65_combout\) # ((\G3[20]~35_combout\ & \P4[36]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~23_combout\,
	datab => \G3[20]~35_combout\,
	datac => \G3[36]~65_combout\,
	datad => \P4[36]~10_combout\,
	combout => \C[37]~60_combout\);

-- Location: IOIBUF_X115_Y28_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X76_Y60_N28
\P0[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(37) = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => P0(37));

-- Location: LCCOMB_X80_Y60_N16
\C[37]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[37]~59_combout\ = (\P2[36]~37_combout\ & (\G4~7_combout\ & (\P2[32]~57_combout\ & \G4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[36]~37_combout\,
	datab => \G4~7_combout\,
	datac => \P2[32]~57_combout\,
	datad => \G4~15_combout\,
	combout => \C[37]~59_combout\);

-- Location: LCCOMB_X80_Y60_N8
\S~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~45_combout\ = P0(37) $ (((\C[37]~60_combout\) # ((\C[37]~17_combout\ & \C[37]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[37]~60_combout\,
	datab => P0(37),
	datac => \C[37]~17_combout\,
	datad => \C[37]~59_combout\,
	combout => \S~45_combout\);

-- Location: LCCOMB_X76_Y60_N0
\G2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~23_combout\ = (\A[36]~input_o\ & (!\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[36]~input_o\,
	datad => \B[37]~input_o\,
	combout => \G2~23_combout\);

-- Location: LCCOMB_X79_Y59_N24
\P4[37]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[37]~11_combout\ = (\P2[33]~58_combout\ & (\G2~23_combout\ & (P0(35) & P0(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[33]~58_combout\,
	datab => \G2~23_combout\,
	datac => P0(35),
	datad => P0(34),
	combout => \P4[37]~11_combout\);

-- Location: LCCOMB_X79_Y59_N12
\P4[37]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[37]~12_combout\ = (\G2~16_combout\ & (\G2~14_combout\ & (\P2[29]~33_combout\ & \P4[37]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~16_combout\,
	datab => \G2~14_combout\,
	datac => \P2[29]~33_combout\,
	datad => \P4[37]~11_combout\,
	combout => \P4[37]~12_combout\);

-- Location: LCCOMB_X76_Y60_N22
\G1[37]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[37]~35_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[36]~input_o\ & \B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[36]~input_o\,
	datad => \B[37]~input_o\,
	combout => \G1[37]~35_combout\);

-- Location: LCCOMB_X80_Y59_N20
\G3[37]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[37]~66_combout\ = (!\G1[37]~35_combout\ & (((!P0(36)) # (!\G1[35]~33_combout\)) # (!P0(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[37]~35_combout\,
	datab => P0(37),
	datac => \G1[35]~33_combout\,
	datad => P0(36),
	combout => \G3[37]~66_combout\);

-- Location: LCCOMB_X80_Y59_N18
\P2[37]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[37]~38_combout\ = (P0(36) & (P0(35) & (P0(37) & P0(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(36),
	datab => P0(35),
	datac => P0(37),
	datad => P0(34),
	combout => \P2[37]~38_combout\);

-- Location: LCCOMB_X73_Y59_N8
\G3[37]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[37]~67_combout\ = ((\P2[37]~38_combout\ & !\G3[33]~58_combout\)) # (!\G3[37]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[37]~66_combout\,
	datab => \P2[37]~38_combout\,
	datac => \G3[33]~58_combout\,
	combout => \G3[37]~67_combout\);

-- Location: LCCOMB_X79_Y59_N2
\G4~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~24_combout\ = (\P4[37]~11_combout\ & (((\P2[29]~33_combout\ & !\G3[25]~44_combout\)) # (!\G3[29]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[29]~33_combout\,
	datab => \G3[29]~52_combout\,
	datac => \G3[25]~44_combout\,
	datad => \P4[37]~11_combout\,
	combout => \G4~24_combout\);

-- Location: LCCOMB_X79_Y57_N8
\C[38]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[38]~61_combout\ = (\G3[37]~67_combout\) # ((\G4~24_combout\) # ((\G3[21]~37_combout\ & \P4[37]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[21]~37_combout\,
	datab => \G3[37]~67_combout\,
	datac => \P4[37]~12_combout\,
	datad => \G4~24_combout\,
	combout => \C[38]~61_combout\);

-- Location: LCCOMB_X79_Y57_N18
\C[38]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[38]~62_combout\ = (\C[38]~61_combout\) # ((\P4[37]~12_combout\ & (\C[38]~19_combout\ & \G4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[37]~12_combout\,
	datab => \C[38]~19_combout\,
	datac => \C[38]~61_combout\,
	datad => \G4~8_combout\,
	combout => \C[38]~62_combout\);

-- Location: IOIBUF_X111_Y73_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X76_Y60_N26
\S~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~46_combout\ = \C[38]~62_combout\ $ (\A[38]~input_o\ $ (\B[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[38]~62_combout\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \S~46_combout\);

-- Location: IOIBUF_X47_Y73_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X76_Y60_N20
\G2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~24_combout\ = (\B[37]~input_o\ & (!\A[37]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\)))) # (!\B[37]~input_o\ & (\A[37]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G2~24_combout\);

-- Location: LCCOMB_X76_Y60_N6
\P2[38]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[38]~59_combout\ = (\G2~24_combout\ & (P0(36) & (\A[35]~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~24_combout\,
	datab => P0(36),
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \P2[38]~59_combout\);

-- Location: LCCOMB_X77_Y60_N26
\P4[38]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[38]~14_combout\ = (\G4~17_combout\ & (\P2[38]~59_combout\ & \P2[34]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~17_combout\,
	datab => \P2[38]~59_combout\,
	datac => \P2[34]~35_combout\,
	combout => \P4[38]~14_combout\);

-- Location: LCCOMB_X77_Y60_N8
\G4~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~25_combout\ = (\P2[34]~35_combout\ & (\G3[30]~54_combout\ & \P2[38]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[34]~35_combout\,
	datab => \G3[30]~54_combout\,
	datac => \P2[38]~59_combout\,
	combout => \G4~25_combout\);

-- Location: LCCOMB_X76_Y60_N14
\G1[38]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[38]~36_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # ((\B[37]~input_o\ & \A[37]~input_o\)))) # (!\A[38]~input_o\ & (\B[37]~input_o\ & (\A[37]~input_o\ & \B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G1[38]~36_combout\);

-- Location: LCCOMB_X76_Y60_N24
\G3[38]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[38]~68_combout\ = (!\G1[38]~36_combout\ & ((!\G2~24_combout\) # (!\G1[36]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1[36]~34_combout\,
	datac => \G1[38]~36_combout\,
	datad => \G2~24_combout\,
	combout => \G3[38]~68_combout\);

-- Location: LCCOMB_X77_Y60_N6
\G3[38]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[38]~69_combout\ = ((\P2[38]~59_combout\ & !\G3[34]~60_combout\)) # (!\G3[38]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3[38]~68_combout\,
	datac => \P2[38]~59_combout\,
	datad => \G3[34]~60_combout\,
	combout => \G3[38]~69_combout\);

-- Location: LCCOMB_X77_Y60_N28
\C[39]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[39]~64_combout\ = (\G4~25_combout\) # ((\G3[38]~69_combout\) # ((\P4[38]~14_combout\ & \G3[22]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[38]~14_combout\,
	datab => \G3[22]~39_combout\,
	datac => \G4~25_combout\,
	datad => \G3[38]~69_combout\,
	combout => \C[39]~64_combout\);

-- Location: IOIBUF_X72_Y73_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X80_Y59_N22
\P4[38]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[38]~13_combout\ = (P0(36) & (P0(35) & (\G2~24_combout\ & \P2[34]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(36),
	datab => P0(35),
	datac => \G2~24_combout\,
	datad => \P2[34]~35_combout\,
	combout => \P4[38]~13_combout\);

-- Location: LCCOMB_X77_Y60_N4
\C[39]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[39]~63_combout\ = (\G4~17_combout\ & (\C[39]~20_combout\ & (\P4[38]~13_combout\ & \G4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~17_combout\,
	datab => \C[39]~20_combout\,
	datac => \P4[38]~13_combout\,
	datad => \G4~9_combout\,
	combout => \C[39]~63_combout\);

-- Location: LCCOMB_X76_Y60_N18
\S~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~47_combout\ = \B[39]~input_o\ $ (\A[39]~input_o\ $ (((\C[39]~64_combout\) # (\C[39]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \C[39]~64_combout\,
	datac => \A[39]~input_o\,
	datad => \C[39]~63_combout\,
	combout => \S~47_combout\);

-- Location: IOIBUF_X60_Y73_N15
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X76_Y60_N4
\G2~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~25_combout\ = (\B[39]~input_o\ & (!\A[39]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\)))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G2~25_combout\);

-- Location: LCCOMB_X79_Y61_N0
\P4[39]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[39]~15_combout\ = (P0(37) & (P0(36) & (\G2~25_combout\ & \P2[35]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(37),
	datab => P0(36),
	datac => \G2~25_combout\,
	datad => \P2[35]~36_combout\,
	combout => \P4[39]~15_combout\);

-- Location: LCCOMB_X79_Y61_N10
\P4[39]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[39]~16_combout\ = (\P2[31]~34_combout\ & (\P4[39]~15_combout\ & (\G2~18_combout\ & \G2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[31]~34_combout\,
	datab => \P4[39]~15_combout\,
	datac => \G2~18_combout\,
	datad => \G2~16_combout\,
	combout => \P4[39]~16_combout\);

-- Location: LCCOMB_X79_Y61_N28
\S~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~48_combout\ = (\G3[31]~56_combout\ & ((\P4[39]~15_combout\) # ((\P4[39]~16_combout\ & \C[24]~37_combout\)))) # (!\G3[31]~56_combout\ & (((\P4[39]~16_combout\ & \C[24]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[31]~56_combout\,
	datab => \P4[39]~15_combout\,
	datac => \P4[39]~16_combout\,
	datad => \C[24]~37_combout\,
	combout => \S~48_combout\);

-- Location: LCCOMB_X76_Y60_N30
\G1[39]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[39]~37_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # ((\A[38]~input_o\ & \B[38]~input_o\)))) # (!\B[39]~input_o\ & (\A[38]~input_o\ & (\A[39]~input_o\ & \B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[38]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[38]~input_o\,
	combout => \G1[39]~37_combout\);

-- Location: LCCOMB_X76_Y60_N8
\G3[39]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[39]~70_combout\ = (!\G1[39]~37_combout\ & ((!\G1[37]~35_combout\) # (!\G2~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[39]~37_combout\,
	datab => \G2~25_combout\,
	datac => \G1[37]~35_combout\,
	combout => \G3[39]~70_combout\);

-- Location: LCCOMB_X79_Y61_N22
\G3[39]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[39]~71_combout\ = ((\G2~23_combout\ & (\G2~25_combout\ & !\G3[35]~62_combout\))) # (!\G3[39]~70_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[39]~70_combout\,
	datab => \G2~23_combout\,
	datac => \G2~25_combout\,
	datad => \G3[35]~62_combout\,
	combout => \G3[39]~71_combout\);

-- Location: IOIBUF_X25_Y73_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X72_Y60_N16
\S~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~49_combout\ = \B[40]~input_o\ $ (\A[40]~input_o\ $ (((\S~48_combout\) # (\G3[39]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \S~48_combout\,
	datac => \G3[39]~71_combout\,
	datad => \A[40]~input_o\,
	combout => \S~49_combout\);

-- Location: IOIBUF_X60_Y73_N22
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: IOIBUF_X23_Y73_N15
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X72_Y60_N20
\P0[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(41) = \A[41]~input_o\ $ (\B[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	combout => P0(41));

-- Location: LCCOMB_X79_Y60_N28
\S~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~51_combout\ = (\G3[24]~43_combout\) # ((\C[41]~38_combout\) # ((\G4~11_combout\ & \G3[16]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~11_combout\,
	datab => \G3[24]~43_combout\,
	datac => \G3[16]~27_combout\,
	datad => \C[41]~38_combout\,
	combout => \S~51_combout\);

-- Location: LCCOMB_X72_Y60_N10
\G2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~26_combout\ = (\B[40]~input_o\ & (!\A[40]~input_o\ & (\A[39]~input_o\ $ (\B[39]~input_o\)))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\A[39]~input_o\ $ (\B[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \G2~26_combout\);

-- Location: LCCOMB_X76_Y60_N10
\P2[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[40]~39_combout\ = (\G2~26_combout\ & (P0(37) & (\A[38]~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~26_combout\,
	datab => P0(37),
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \P2[40]~39_combout\);

-- Location: LCCOMB_X79_Y60_N22
\P4[40]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[40]~17_combout\ = (\P4[36]~9_combout\ & (\P2[40]~39_combout\ & (\G2~19_combout\ & \G2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[36]~9_combout\,
	datab => \P2[40]~39_combout\,
	datac => \G2~19_combout\,
	datad => \G2~17_combout\,
	combout => \P4[40]~17_combout\);

-- Location: LCCOMB_X72_Y60_N6
\G1[40]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[40]~38_combout\ = (\B[40]~input_o\ & ((\A[40]~input_o\) # ((\A[39]~input_o\ & \B[39]~input_o\)))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & (\A[39]~input_o\ & \B[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \A[40]~input_o\,
	datac => \A[39]~input_o\,
	datad => \B[39]~input_o\,
	combout => \G1[40]~38_combout\);

-- Location: LCCOMB_X76_Y60_N12
\G3[40]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[40]~72_combout\ = (!\G1[40]~38_combout\ & ((!\G1[38]~36_combout\) # (!\G2~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~26_combout\,
	datab => \G1[38]~36_combout\,
	datac => \G1[40]~38_combout\,
	combout => \G3[40]~72_combout\);

-- Location: LCCOMB_X79_Y60_N24
\G4~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~26_combout\ = (\P2[36]~37_combout\ & (((!\G3[28]~50_combout\ & \P2[32]~57_combout\)) # (!\G3[32]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[36]~37_combout\,
	datab => \G3[28]~50_combout\,
	datac => \P2[32]~57_combout\,
	datad => \G3[32]~57_combout\,
	combout => \G4~26_combout\);

-- Location: LCCOMB_X79_Y60_N18
\S~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~50_combout\ = (\G3[40]~72_combout\ & (((\G3[36]~64_combout\ & !\G4~26_combout\)) # (!\P2[40]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[40]~39_combout\,
	datab => \G3[40]~72_combout\,
	datac => \G3[36]~64_combout\,
	datad => \G4~26_combout\,
	combout => \S~50_combout\);

-- Location: LCCOMB_X79_Y60_N14
\S~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~52_combout\ = P0(41) $ ((((\S~51_combout\ & \P4[40]~17_combout\)) # (!\S~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(41),
	datab => \S~51_combout\,
	datac => \P4[40]~17_combout\,
	datad => \S~50_combout\,
	combout => \S~52_combout\);

-- Location: IOIBUF_X38_Y73_N22
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X72_Y60_N18
\P0[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(42) = \B[42]~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	combout => P0(42));

-- Location: LCCOMB_X79_Y55_N16
\S~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~54_combout\ = (\C[42]~40_combout\) # ((\G3[25]~45_combout\) # ((\G4~12_combout\ & \G3[17]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[42]~40_combout\,
	datab => \G4~12_combout\,
	datac => \G3[17]~29_combout\,
	datad => \G3[25]~45_combout\,
	combout => \S~54_combout\);

-- Location: LCCOMB_X72_Y60_N8
\G2~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~27_combout\ = (\B[41]~input_o\ & (!\A[41]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \G2~27_combout\);

-- Location: LCCOMB_X73_Y59_N10
\P2[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[41]~40_combout\ = (\G2~25_combout\ & \G2~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G2~25_combout\,
	datad => \G2~27_combout\,
	combout => \P2[41]~40_combout\);

-- Location: LCCOMB_X73_Y59_N24
\G4~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~27_combout\ = (\P2[37]~38_combout\ & (((!\G3[29]~52_combout\ & \P2[33]~58_combout\)) # (!\G3[33]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[29]~52_combout\,
	datab => \G3[33]~58_combout\,
	datac => \P2[33]~58_combout\,
	datad => \P2[37]~38_combout\,
	combout => \G4~27_combout\);

-- Location: LCCOMB_X72_Y60_N12
\G1[41]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[41]~39_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ & \A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \G1[41]~39_combout\);

-- Location: LCCOMB_X73_Y59_N6
\G3[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[41]~73_combout\ = (!\G1[41]~39_combout\ & ((!\G2~27_combout\) # (!\G1[39]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[41]~39_combout\,
	datac => \G1[39]~37_combout\,
	datad => \G2~27_combout\,
	combout => \G3[41]~73_combout\);

-- Location: LCCOMB_X73_Y59_N26
\S~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~53_combout\ = (\G3[41]~73_combout\ & (((!\G4~27_combout\ & \G3[37]~66_combout\)) # (!\P2[41]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[41]~40_combout\,
	datab => \G4~27_combout\,
	datac => \G3[37]~66_combout\,
	datad => \G3[41]~73_combout\,
	combout => \S~53_combout\);

-- Location: LCCOMB_X73_Y59_N28
\P4[41]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[41]~18_combout\ = (\P2[33]~58_combout\ & (\P2[37]~38_combout\ & (\P2[29]~33_combout\ & \P2[41]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[33]~58_combout\,
	datab => \P2[37]~38_combout\,
	datac => \P2[29]~33_combout\,
	datad => \P2[41]~40_combout\,
	combout => \P4[41]~18_combout\);

-- Location: LCCOMB_X73_Y59_N4
\S~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~55_combout\ = P0(42) $ ((((\S~54_combout\ & \P4[41]~18_combout\)) # (!\S~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(42),
	datab => \S~54_combout\,
	datac => \S~53_combout\,
	datad => \P4[41]~18_combout\,
	combout => \S~55_combout\);

-- Location: LCCOMB_X82_Y56_N30
\S~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~57_combout\ = (\C[43]~42_combout\) # ((\G3[26]~47_combout\) # ((\G4~13_combout\ & \G3[18]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~13_combout\,
	datab => \C[43]~42_combout\,
	datac => \G3[18]~31_combout\,
	datad => \G3[26]~47_combout\,
	combout => \S~57_combout\);

-- Location: LCCOMB_X72_Y60_N30
\P2[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[42]~41_combout\ = (\G2~26_combout\ & (P0(42) & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~26_combout\,
	datab => \A[41]~input_o\,
	datac => \B[41]~input_o\,
	datad => P0(42),
	combout => \P2[42]~41_combout\);

-- Location: LCCOMB_X79_Y60_N8
\P4[42]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[42]~19_combout\ = (\P2[42]~41_combout\ & (\P4[38]~13_combout\ & (\G2~19_combout\ & \G2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[42]~41_combout\,
	datab => \P4[38]~13_combout\,
	datac => \G2~19_combout\,
	datad => \G2~21_combout\,
	combout => \P4[42]~19_combout\);

-- Location: LCCOMB_X72_Y60_N0
\G1[42]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[42]~40_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\) # ((\B[41]~input_o\ & \A[41]~input_o\)))) # (!\B[42]~input_o\ & (\B[41]~input_o\ & (\A[42]~input_o\ & \A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => \A[41]~input_o\,
	combout => \G1[42]~40_combout\);

-- Location: LCCOMB_X72_Y60_N26
\G3[42]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[42]~74_combout\ = (!\G1[42]~40_combout\ & (((!\G1[40]~38_combout\) # (!P0(41))) # (!P0(42))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[42]~40_combout\,
	datab => P0(42),
	datac => P0(41),
	datad => \G1[40]~38_combout\,
	combout => \G3[42]~74_combout\);

-- Location: LCCOMB_X75_Y60_N2
\G3[42]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[42]~75_combout\ = ((\P2[42]~41_combout\ & !\G3[38]~68_combout\)) # (!\G3[42]~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[42]~41_combout\,
	datac => \G3[42]~74_combout\,
	datad => \G3[38]~68_combout\,
	combout => \G3[42]~75_combout\);

-- Location: LCCOMB_X75_Y60_N4
\S~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~56_combout\ = (\G3[42]~75_combout\) # ((\P2[38]~59_combout\ & (\G3[34]~61_combout\ & \P2[42]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[38]~59_combout\,
	datab => \G3[42]~75_combout\,
	datac => \G3[34]~61_combout\,
	datad => \P2[42]~41_combout\,
	combout => \S~56_combout\);

-- Location: IOIBUF_X0_Y61_N22
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X72_Y61_N16
\P0[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(43) = \A[43]~input_o\ $ (\B[43]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	combout => P0(43));

-- Location: LCCOMB_X75_Y60_N22
\S~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~58_combout\ = P0(43) $ (((\S~56_combout\) # ((\S~57_combout\ & \P4[42]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~57_combout\,
	datab => \P4[42]~19_combout\,
	datac => \S~56_combout\,
	datad => P0(43),
	combout => \S~58_combout\);

-- Location: LCCOMB_X72_Y60_N4
\P2[43]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[43]~60_combout\ = (\G2~27_combout\ & (P0(43) & (\B[42]~input_o\ $ (\A[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~27_combout\,
	datab => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	datad => P0(43),
	combout => \P2[43]~60_combout\);

-- Location: LCCOMB_X79_Y61_N30
\P4[43]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[43]~20_combout\ = (\P4[39]~15_combout\ & (\P2[43]~60_combout\ & \P2[31]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4[39]~15_combout\,
	datac => \P2[43]~60_combout\,
	datad => \P2[31]~34_combout\,
	combout => \P4[43]~20_combout\);

-- Location: LCCOMB_X72_Y61_N20
\G1[43]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[43]~41_combout\ = (\A[43]~input_o\ & ((\B[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\A[43]~input_o\ & (\B[42]~input_o\ & (\B[43]~input_o\ & \A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[42]~input_o\,
	datac => \B[43]~input_o\,
	datad => \A[42]~input_o\,
	combout => \G1[43]~41_combout\);

-- Location: LCCOMB_X72_Y61_N22
\G3[43]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[43]~76_combout\ = (!\G1[43]~41_combout\ & (((!P0(43)) # (!P0(42))) # (!\G1[41]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[41]~39_combout\,
	datab => \G1[43]~41_combout\,
	datac => P0(42),
	datad => P0(43),
	combout => \G3[43]~76_combout\);

-- Location: LCCOMB_X79_Y61_N8
\G3[43]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[43]~77_combout\ = ((\P2[43]~60_combout\ & !\G3[39]~70_combout\)) # (!\G3[43]~76_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3[43]~76_combout\,
	datac => \P2[43]~60_combout\,
	datad => \G3[39]~70_combout\,
	combout => \G3[43]~77_combout\);

-- Location: LCCOMB_X77_Y61_N18
\G4~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~28_combout\ = (P0(37) & (\P2[43]~60_combout\ & (\G2~25_combout\ & P0(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(37),
	datab => \P2[43]~60_combout\,
	datac => \G2~25_combout\,
	datad => P0(36),
	combout => \G4~28_combout\);

-- Location: LCCOMB_X77_Y61_N28
\S~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~59_combout\ = (\G3[43]~77_combout\) # ((\G3[35]~63_combout\ & \G4~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[35]~63_combout\,
	datac => \G3[43]~77_combout\,
	datad => \G4~28_combout\,
	combout => \S~59_combout\);

-- Location: IOIBUF_X35_Y73_N22
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X72_Y61_N10
\P0[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(44) = \B[44]~input_o\ $ (\A[44]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => P0(44));

-- Location: LCCOMB_X80_Y57_N22
\S~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~60_combout\ = (\C[44]~44_combout\) # ((\G3[27]~49_combout\) # ((\G4~14_combout\ & \G3[19]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[44]~44_combout\,
	datab => \G4~14_combout\,
	datac => \G3[19]~33_combout\,
	datad => \G3[27]~49_combout\,
	combout => \S~60_combout\);

-- Location: LCCOMB_X81_Y61_N24
\S~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~61_combout\ = P0(44) $ (((\S~59_combout\) # ((\P4[43]~20_combout\ & \S~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[43]~20_combout\,
	datab => \S~59_combout\,
	datac => P0(44),
	datad => \S~60_combout\,
	combout => \S~61_combout\);

-- Location: LCCOMB_X72_Y60_N28
\P2[44]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[44]~42_combout\ = (P0(44) & (P0(42) & (P0(41) & P0(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(44),
	datab => P0(42),
	datac => P0(41),
	datad => P0(43),
	combout => \P2[44]~42_combout\);

-- Location: LCCOMB_X80_Y60_N2
\P4[44]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[44]~21_combout\ = (\P2[36]~37_combout\ & (\P2[44]~42_combout\ & (\P2[32]~57_combout\ & \P2[40]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[36]~37_combout\,
	datab => \P2[44]~42_combout\,
	datac => \P2[32]~57_combout\,
	datad => \P2[40]~39_combout\,
	combout => \P4[44]~21_combout\);

-- Location: LCCOMB_X80_Y60_N4
\C[45]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[45]~65_combout\ = (\P4[28]~2_combout\ & (\P4[44]~21_combout\ & ((\G3[12]~19_combout\) # (\C[13]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[28]~2_combout\,
	datab => \G3[12]~19_combout\,
	datac => \C[13]~47_combout\,
	datad => \P4[44]~21_combout\,
	combout => \C[45]~65_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X72_Y0_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X72_Y61_N4
\P0[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(45) = \B[45]~input_o\ $ (\A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => P0(45));

-- Location: LCCOMB_X80_Y60_N30
\C[45]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[45]~66_combout\ = (\P4[44]~21_combout\ & ((\G3[28]~51_combout\) # ((\G3[20]~35_combout\ & \G4~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[28]~51_combout\,
	datab => \P4[44]~21_combout\,
	datac => \G3[20]~35_combout\,
	datad => \G4~15_combout\,
	combout => \C[45]~66_combout\);

-- Location: LCCOMB_X80_Y60_N0
\C[45]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[45]~67_combout\ = (\C[45]~66_combout\) # ((\G3[36]~65_combout\ & (\P2[44]~42_combout\ & \P2[40]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[36]~65_combout\,
	datab => \P2[44]~42_combout\,
	datac => \C[45]~66_combout\,
	datad => \P2[40]~39_combout\,
	combout => \C[45]~67_combout\);

-- Location: LCCOMB_X72_Y61_N8
\G1[44]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[44]~42_combout\ = (\A[44]~input_o\ & ((\B[44]~input_o\) # ((\B[43]~input_o\ & \A[43]~input_o\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & (\B[43]~input_o\ & \A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[44]~input_o\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \G1[44]~42_combout\);

-- Location: LCCOMB_X72_Y61_N2
\G3[44]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[44]~78_combout\ = (!\G1[44]~42_combout\ & (((!P0(43)) # (!\G1[42]~40_combout\)) # (!P0(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(44),
	datab => \G1[42]~40_combout\,
	datac => \G1[44]~42_combout\,
	datad => P0(43),
	combout => \G3[44]~78_combout\);

-- Location: LCCOMB_X74_Y60_N24
\G3[44]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[44]~79_combout\ = ((!\G3[40]~72_combout\ & \P2[44]~42_combout\)) # (!\G3[44]~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[44]~78_combout\,
	datab => \G3[40]~72_combout\,
	datac => \P2[44]~42_combout\,
	combout => \G3[44]~79_combout\);

-- Location: LCCOMB_X73_Y60_N0
\S~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~62_combout\ = P0(45) $ (((\C[45]~65_combout\) # ((\C[45]~67_combout\) # (\G3[44]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[45]~65_combout\,
	datab => P0(45),
	datac => \C[45]~67_combout\,
	datad => \G3[44]~79_combout\,
	combout => \S~62_combout\);

-- Location: LCCOMB_X79_Y59_N22
\S~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~64_combout\ = (\G3[29]~100_combout\) # ((\G4~16_combout\) # ((\C[38]~19_combout\ & \P4[29]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[38]~19_combout\,
	datab => \G3[29]~100_combout\,
	datac => \G4~16_combout\,
	datad => \P4[29]~3_combout\,
	combout => \S~64_combout\);

-- Location: LCCOMB_X72_Y59_N8
\P2[45]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[45]~43_combout\ = (P0(43) & (P0(44) & (P0(42) & P0(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(43),
	datab => P0(44),
	datac => P0(42),
	datad => P0(45),
	combout => \P2[45]~43_combout\);

-- Location: LCCOMB_X72_Y61_N24
\G1[45]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[45]~43_combout\ = (\B[45]~input_o\ & ((\A[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\B[45]~input_o\ & (\A[44]~input_o\ & (\B[44]~input_o\ & \A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[44]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[44]~input_o\,
	datad => \A[45]~input_o\,
	combout => \G1[45]~43_combout\);

-- Location: LCCOMB_X72_Y61_N26
\G3[45]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[45]~80_combout\ = (!\G1[45]~43_combout\ & (((!\G1[43]~41_combout\) # (!P0(45))) # (!P0(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(44),
	datab => \G1[45]~43_combout\,
	datac => P0(45),
	datad => \G1[43]~41_combout\,
	combout => \G3[45]~80_combout\);

-- Location: LCCOMB_X73_Y59_N16
\G3[45]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[45]~81_combout\ = ((\P2[45]~43_combout\ & !\G3[41]~73_combout\)) # (!\G3[45]~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[45]~43_combout\,
	datab => \G3[45]~80_combout\,
	datad => \G3[41]~73_combout\,
	combout => \G3[45]~81_combout\);

-- Location: LCCOMB_X73_Y59_N2
\S~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~63_combout\ = (\G3[45]~81_combout\) # ((\P2[45]~43_combout\ & (\G3[37]~67_combout\ & \P2[41]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[45]~43_combout\,
	datab => \G3[45]~81_combout\,
	datac => \G3[37]~67_combout\,
	datad => \P2[41]~40_combout\,
	combout => \S~63_combout\);

-- Location: IOIBUF_X20_Y73_N8
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X23_Y73_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X72_Y61_N30
\P0[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(46) = \A[46]~input_o\ $ (\B[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datac => \B[46]~input_o\,
	combout => P0(46));

-- Location: LCCOMB_X73_Y59_N22
\P4[45]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[45]~22_combout\ = (\P2[45]~43_combout\ & (\P2[37]~38_combout\ & (\P2[33]~58_combout\ & \P2[41]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[45]~43_combout\,
	datab => \P2[37]~38_combout\,
	datac => \P2[33]~58_combout\,
	datad => \P2[41]~40_combout\,
	combout => \P4[45]~22_combout\);

-- Location: LCCOMB_X73_Y60_N2
\S~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~65_combout\ = P0(46) $ (((\S~63_combout\) # ((\S~64_combout\ & \P4[45]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~64_combout\,
	datab => \S~63_combout\,
	datac => P0(46),
	datad => \P4[45]~22_combout\,
	combout => \S~65_combout\);

-- Location: LCCOMB_X81_Y60_N6
\G4~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~29_combout\ = (\G4~17_combout\ & (((\P2[22]~32_combout\ & !\G3[18]~30_combout\)) # (!\G3[22]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[22]~32_combout\,
	datab => \G3[22]~38_combout\,
	datac => \G3[18]~30_combout\,
	datad => \G4~17_combout\,
	combout => \G4~29_combout\);

-- Location: LCCOMB_X73_Y60_N4
\P2[46]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[46]~44_combout\ = (P0(43) & (P0(44) & (P0(46) & P0(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(43),
	datab => P0(44),
	datac => P0(46),
	datad => P0(45),
	combout => \P2[46]~44_combout\);

-- Location: LCCOMB_X77_Y60_N30
\P4[46]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[46]~23_combout\ = (\P2[34]~35_combout\ & (\P2[38]~59_combout\ & (\P2[42]~41_combout\ & \P2[46]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[34]~35_combout\,
	datab => \P2[38]~59_combout\,
	datac => \P2[42]~41_combout\,
	datad => \P2[46]~44_combout\,
	combout => \P4[46]~23_combout\);

-- Location: LCCOMB_X77_Y60_N10
\G5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G5~0_combout\ = (\P2[46]~44_combout\ & (\P2[42]~41_combout\ & \G3[38]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[46]~44_combout\,
	datac => \P2[42]~41_combout\,
	datad => \G3[38]~69_combout\,
	combout => \G5~0_combout\);

-- Location: LCCOMB_X77_Y60_N12
\C[47]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[47]~69_combout\ = (\G5~0_combout\) # ((\P4[46]~23_combout\ & ((\G4~29_combout\) # (\G3[30]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~29_combout\,
	datab => \G3[30]~54_combout\,
	datac => \P4[46]~23_combout\,
	datad => \G5~0_combout\,
	combout => \C[47]~69_combout\);

-- Location: LCCOMB_X72_Y61_N28
\G1[46]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[46]~44_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # ((\B[45]~input_o\ & \A[45]~input_o\)))) # (!\A[46]~input_o\ & (\B[45]~input_o\ & (\B[46]~input_o\ & \A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[45]~input_o\,
	combout => \G1[46]~44_combout\);

-- Location: LCCOMB_X73_Y60_N30
\G3[46]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[46]~82_combout\ = (!\G1[46]~44_combout\ & (((!P0(45)) # (!P0(46))) # (!\G1[44]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[44]~42_combout\,
	datab => \G1[46]~44_combout\,
	datac => P0(46),
	datad => P0(45),
	combout => \G3[46]~82_combout\);

-- Location: LCCOMB_X73_Y60_N24
\G3[46]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[46]~83_combout\ = ((\P2[46]~44_combout\ & !\G3[42]~74_combout\)) # (!\G3[46]~82_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[46]~82_combout\,
	datab => \P2[46]~44_combout\,
	datac => \G3[42]~74_combout\,
	combout => \G3[46]~83_combout\);

-- Location: IOIBUF_X16_Y73_N1
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X72_Y61_N14
\P0[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(47) = \A[47]~input_o\ $ (\B[47]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => P0(47));

-- Location: LCCOMB_X77_Y60_N24
\C[47]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[47]~68_combout\ = (\P4[30]~4_combout\ & (\C[39]~20_combout\ & \P4[46]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[30]~4_combout\,
	datab => \C[39]~20_combout\,
	datac => \P4[46]~23_combout\,
	combout => \C[47]~68_combout\);

-- Location: LCCOMB_X77_Y60_N22
\S~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~66_combout\ = P0(47) $ (((\C[47]~69_combout\) # ((\G3[46]~83_combout\) # (\C[47]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[47]~69_combout\,
	datab => \G3[46]~83_combout\,
	datac => P0(47),
	datad => \C[47]~68_combout\,
	combout => \S~66_combout\);

-- Location: IOIBUF_X33_Y73_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X72_Y73_N22
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X73_Y62_N8
\P0[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(48) = \A[48]~input_o\ $ (\B[48]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => P0(48));

-- Location: LCCOMB_X73_Y60_N10
\P2[47]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[47]~45_combout\ = (P0(47) & (P0(44) & (P0(46) & P0(45))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(47),
	datab => P0(44),
	datac => P0(46),
	datad => P0(45),
	combout => \P2[47]~45_combout\);

-- Location: LCCOMB_X73_Y65_N20
\G5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G5~1_combout\ = (\P2[43]~60_combout\ & (\G3[39]~71_combout\ & \P2[47]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[43]~60_combout\,
	datab => \G3[39]~71_combout\,
	datac => \P2[47]~45_combout\,
	combout => \G5~1_combout\);

-- Location: LCCOMB_X72_Y61_N0
\G1[47]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[47]~45_combout\ = (\A[47]~input_o\ & ((\B[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\A[47]~input_o\ & (\A[46]~input_o\ & (\B[46]~input_o\ & \B[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \A[47]~input_o\,
	datac => \B[46]~input_o\,
	datad => \B[47]~input_o\,
	combout => \G1[47]~45_combout\);

-- Location: LCCOMB_X72_Y61_N18
\G3[47]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[47]~84_combout\ = (!\G1[47]~45_combout\ & (((!P0(47)) # (!\G1[45]~43_combout\)) # (!P0(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(46),
	datab => \G1[45]~43_combout\,
	datac => P0(47),
	datad => \G1[47]~45_combout\,
	combout => \G3[47]~84_combout\);

-- Location: LCCOMB_X76_Y61_N24
\G3[47]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[47]~85_combout\ = ((!\G3[43]~76_combout\ & \P2[47]~45_combout\)) # (!\G3[47]~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[47]~84_combout\,
	datab => \G3[43]~76_combout\,
	datac => \P2[47]~45_combout\,
	combout => \G3[47]~85_combout\);

-- Location: LCCOMB_X73_Y65_N26
\C[48]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[48]~70_combout\ = (\P4[31]~5_combout\ & (\P4[39]~15_combout\ & (\P2[47]~45_combout\ & \P2[43]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[31]~5_combout\,
	datab => \P4[39]~15_combout\,
	datac => \P2[47]~45_combout\,
	datad => \P2[43]~60_combout\,
	combout => \C[48]~70_combout\);

-- Location: LCCOMB_X73_Y65_N22
\S~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~68_combout\ = (\G5~1_combout\) # ((\G3[47]~85_combout\) # ((\C[16]~22_combout\ & \C[48]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[16]~22_combout\,
	datab => \G5~1_combout\,
	datac => \G3[47]~85_combout\,
	datad => \C[48]~70_combout\,
	combout => \S~68_combout\);

-- Location: LCCOMB_X79_Y61_N18
\S~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~67_combout\ = (\P4[39]~15_combout\ & (\P2[43]~60_combout\ & ((\G3[31]~56_combout\) # (\G4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[31]~56_combout\,
	datab => \P4[39]~15_combout\,
	datac => \P2[43]~60_combout\,
	datad => \G4~18_combout\,
	combout => \S~67_combout\);

-- Location: LCCOMB_X73_Y65_N0
\S~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~69_combout\ = P0(48) $ (((\S~68_combout\) # ((\P2[47]~45_combout\ & \S~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(48),
	datab => \P2[47]~45_combout\,
	datac => \S~68_combout\,
	datad => \S~67_combout\,
	combout => \S~69_combout\);

-- Location: LCCOMB_X73_Y60_N20
\P2[48]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[48]~46_combout\ = (P0(47) & (P0(45) & (P0(46) & P0(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(47),
	datab => P0(45),
	datac => P0(46),
	datad => P0(48),
	combout => \P2[48]~46_combout\);

-- Location: LCCOMB_X72_Y60_N14
\C[49]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[49]~71_combout\ = (\G2~26_combout\ & (\P2[44]~42_combout\ & (\G2~24_combout\ & \P2[48]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~26_combout\,
	datab => \P2[44]~42_combout\,
	datac => \G2~24_combout\,
	datad => \P2[48]~46_combout\,
	combout => \C[49]~71_combout\);

-- Location: LCCOMB_X79_Y60_N2
\C[49]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[49]~72_combout\ = (\P4[32]~6_combout\ & (\C[49]~71_combout\ & (\C[17]~23_combout\ & \P2[36]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[32]~6_combout\,
	datab => \C[49]~71_combout\,
	datac => \C[17]~23_combout\,
	datad => \P2[36]~37_combout\,
	combout => \C[49]~72_combout\);

-- Location: LCCOMB_X74_Y60_N2
\C[49]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[49]~73_combout\ = (\P2[44]~42_combout\ & (((!\G3[36]~64_combout\ & \P2[40]~39_combout\)) # (!\G3[40]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[36]~64_combout\,
	datab => \G3[40]~72_combout\,
	datac => \P2[44]~42_combout\,
	datad => \P2[40]~39_combout\,
	combout => \C[49]~73_combout\);

-- Location: LCCOMB_X72_Y60_N24
\G4~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \G4~30_combout\ = (\P2[44]~42_combout\ & (\G2~24_combout\ & \G2~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[44]~42_combout\,
	datac => \G2~24_combout\,
	datad => \G2~26_combout\,
	combout => \G4~30_combout\);

-- Location: LCCOMB_X72_Y60_N2
\C[49]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[49]~74_combout\ = (\P2[48]~46_combout\ & ((\C[49]~73_combout\) # ((\G4~30_combout\ & \G4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[49]~73_combout\,
	datab => \G4~30_combout\,
	datac => \P2[48]~46_combout\,
	datad => \G4~26_combout\,
	combout => \C[49]~74_combout\);

-- Location: LCCOMB_X72_Y61_N12
\G1[48]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[48]~46_combout\ = (\A[48]~input_o\ & ((\B[48]~input_o\) # ((\B[47]~input_o\ & \A[47]~input_o\)))) # (!\A[48]~input_o\ & (\B[47]~input_o\ & (\A[47]~input_o\ & \B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \A[47]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \G1[48]~46_combout\);

-- Location: LCCOMB_X73_Y60_N14
\G3[48]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[48]~86_combout\ = (!\G1[48]~46_combout\ & (((!P0(48)) # (!\G1[46]~44_combout\)) # (!P0(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(47),
	datab => \G1[48]~46_combout\,
	datac => \G1[46]~44_combout\,
	datad => P0(48),
	combout => \G3[48]~86_combout\);

-- Location: LCCOMB_X74_Y60_N20
\G3[48]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[48]~87_combout\ = ((\P2[48]~46_combout\ & !\G3[44]~78_combout\)) # (!\G3[48]~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[48]~46_combout\,
	datac => \G3[44]~78_combout\,
	datad => \G3[48]~86_combout\,
	combout => \G3[48]~87_combout\);

-- Location: LCCOMB_X79_Y60_N20
\C[49]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[49]~75_combout\ = (\G3[48]~87_combout\) # ((\C[49]~71_combout\ & (\G4~19_combout\ & \P2[36]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[48]~87_combout\,
	datab => \C[49]~71_combout\,
	datac => \G4~19_combout\,
	datad => \P2[36]~37_combout\,
	combout => \C[49]~75_combout\);

-- Location: IOIBUF_X96_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X73_Y62_N18
\P0[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(49) = \A[49]~input_o\ $ (\B[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => P0(49));

-- Location: LCCOMB_X73_Y60_N16
\S~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~70_combout\ = P0(49) $ (((\C[49]~72_combout\) # ((\C[49]~74_combout\) # (\C[49]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[49]~72_combout\,
	datab => \C[49]~74_combout\,
	datac => \C[49]~75_combout\,
	datad => P0(49),
	combout => \S~70_combout\);

-- Location: LCCOMB_X73_Y60_N26
\P2[49]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[49]~47_combout\ = (P0(49) & (P0(47) & (P0(46) & P0(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(49),
	datab => P0(47),
	datac => P0(46),
	datad => P0(48),
	combout => \P2[49]~47_combout\);

-- Location: LCCOMB_X79_Y55_N18
\S~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~71_combout\ = (\P2[37]~38_combout\ & ((\G4~31_combout\) # ((\P4[33]~28_combout\ & \C[18]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[33]~28_combout\,
	datab => \C[18]~24_combout\,
	datac => \G4~31_combout\,
	datad => \P2[37]~38_combout\,
	combout => \S~71_combout\);

-- Location: LCCOMB_X73_Y59_N14
\C[50]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[50]~77_combout\ = (\G2~25_combout\ & (\G2~27_combout\ & (\P2[49]~47_combout\ & \P2[45]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~25_combout\,
	datab => \G2~27_combout\,
	datac => \P2[49]~47_combout\,
	datad => \P2[45]~43_combout\,
	combout => \C[50]~77_combout\);

-- Location: LCCOMB_X73_Y62_N6
\G1[49]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[49]~47_combout\ = (\A[49]~input_o\ & ((\B[49]~input_o\) # ((\B[48]~input_o\ & \A[48]~input_o\)))) # (!\A[49]~input_o\ & (\B[48]~input_o\ & (\A[48]~input_o\ & \B[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[48]~input_o\,
	datab => \A[48]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \G1[49]~47_combout\);

-- Location: LCCOMB_X73_Y62_N16
\G3[49]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[49]~88_combout\ = (!\G1[49]~47_combout\ & (((!P0(49)) # (!\G1[47]~45_combout\)) # (!P0(48))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[49]~47_combout\,
	datab => P0(48),
	datac => \G1[47]~45_combout\,
	datad => P0(49),
	combout => \G3[49]~88_combout\);

-- Location: LCCOMB_X73_Y61_N16
\G3[49]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[49]~89_combout\ = ((!\G3[45]~80_combout\ & \P2[49]~47_combout\)) # (!\G3[49]~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[45]~80_combout\,
	datab => \P2[49]~47_combout\,
	datac => \G3[49]~88_combout\,
	combout => \G3[49]~89_combout\);

-- Location: LCCOMB_X73_Y59_N0
\S~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~72_combout\ = (\G3[49]~89_combout\) # ((\C[50]~77_combout\ & ((\S~71_combout\) # (\G4~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S~71_combout\,
	datab => \G4~27_combout\,
	datac => \C[50]~77_combout\,
	datad => \G3[49]~89_combout\,
	combout => \S~72_combout\);

-- Location: LCCOMB_X73_Y59_N12
\C[50]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[50]~76_combout\ = (\P2[45]~43_combout\ & (((\P2[41]~40_combout\ & !\G3[37]~66_combout\)) # (!\G3[41]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[41]~40_combout\,
	datab => \P2[45]~43_combout\,
	datac => \G3[37]~66_combout\,
	datad => \G3[41]~73_combout\,
	combout => \C[50]~76_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X73_Y62_N20
\P0[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(50) = \A[50]~input_o\ $ (\B[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	combout => P0(50));

-- Location: LCCOMB_X73_Y60_N12
\S~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~73_combout\ = P0(50) $ (((\S~72_combout\) # ((\P2[49]~47_combout\ & \C[50]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[49]~47_combout\,
	datab => \S~72_combout\,
	datac => \C[50]~76_combout\,
	datad => P0(50),
	combout => \S~73_combout\);

-- Location: LCCOMB_X73_Y60_N22
\P2[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[50]~48_combout\ = (P0(49) & (P0(48) & (P0(47) & P0(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(49),
	datab => P0(48),
	datac => P0(47),
	datad => P0(50),
	combout => \P2[50]~48_combout\);

-- Location: LCCOMB_X73_Y62_N2
\G1[50]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[50]~48_combout\ = (\A[50]~input_o\ & ((\B[50]~input_o\) # ((\A[49]~input_o\ & \B[49]~input_o\)))) # (!\A[50]~input_o\ & (\A[49]~input_o\ & (\B[49]~input_o\ & \B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \G1[50]~48_combout\);

-- Location: LCCOMB_X73_Y60_N8
\G3[50]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[50]~90_combout\ = (!\G1[50]~48_combout\ & (((!P0(50)) # (!\G1[48]~46_combout\)) # (!P0(49))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(49),
	datab => \G1[48]~46_combout\,
	datac => \G1[50]~48_combout\,
	datad => P0(50),
	combout => \G3[50]~90_combout\);

-- Location: LCCOMB_X73_Y60_N18
\G3[50]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[50]~91_combout\ = ((\P2[50]~48_combout\ & !\G3[46]~82_combout\)) # (!\G3[50]~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[50]~48_combout\,
	datab => \G3[50]~90_combout\,
	datac => \G3[46]~82_combout\,
	combout => \G3[50]~91_combout\);

-- Location: LCCOMB_X75_Y60_N12
\C[51]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[51]~80_combout\ = (\P2[50]~48_combout\ & \P2[46]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[50]~48_combout\,
	datad => \P2[46]~44_combout\,
	combout => \C[51]~80_combout\);

-- Location: LCCOMB_X75_Y60_N30
\C[51]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[51]~81_combout\ = (\C[51]~80_combout\ & (((\P2[42]~41_combout\ & !\G3[38]~68_combout\)) # (!\G3[42]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[51]~80_combout\,
	datab => \P2[42]~41_combout\,
	datac => \G3[42]~74_combout\,
	datad => \G3[38]~68_combout\,
	combout => \C[51]~81_combout\);

-- Location: LCCOMB_X75_Y60_N24
\C[51]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[51]~78_combout\ = (\P2[38]~59_combout\ & (\P2[50]~48_combout\ & (\P2[42]~41_combout\ & \P2[46]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[38]~59_combout\,
	datab => \P2[50]~48_combout\,
	datac => \P2[42]~41_combout\,
	datad => \P2[46]~44_combout\,
	combout => \C[51]~78_combout\);

-- Location: LCCOMB_X75_Y60_N16
\C[51]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[51]~82_combout\ = (\C[51]~81_combout\) # ((\C[51]~78_combout\ & ((\G3[34]~61_combout\) # (\G4~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[51]~81_combout\,
	datab => \G3[34]~61_combout\,
	datac => \G4~20_combout\,
	datad => \C[51]~78_combout\,
	combout => \C[51]~82_combout\);

-- Location: IOIBUF_X85_Y73_N15
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X73_Y62_N12
\P0[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(51) = \A[51]~input_o\ $ (\B[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => P0(51));

-- Location: LCCOMB_X75_Y60_N10
\C[51]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[51]~79_combout\ = (\C[19]~25_combout\ & (\P4[34]~7_combout\ & \C[51]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[19]~25_combout\,
	datac => \P4[34]~7_combout\,
	datad => \C[51]~78_combout\,
	combout => \C[51]~79_combout\);

-- Location: LCCOMB_X75_Y60_N26
\S~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~74_combout\ = P0(51) $ (((\G3[50]~91_combout\) # ((\C[51]~82_combout\) # (\C[51]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[50]~91_combout\,
	datab => \C[51]~82_combout\,
	datac => P0(51),
	datad => \C[51]~79_combout\,
	combout => \S~74_combout\);

-- Location: IOIBUF_X27_Y73_N22
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X73_Y62_N22
\P2[51]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[51]~49_combout\ = (P0(51) & (P0(49) & (P0(48) & P0(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(51),
	datab => P0(49),
	datac => P0(48),
	datad => P0(50),
	combout => \P2[51]~49_combout\);

-- Location: LCCOMB_X77_Y61_N4
\C[52]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[52]~85_combout\ = (\P2[47]~45_combout\ & (\P2[51]~49_combout\ & \G4~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[47]~45_combout\,
	datac => \P2[51]~49_combout\,
	datad => \G4~28_combout\,
	combout => \C[52]~85_combout\);

-- Location: LCCOMB_X73_Y62_N24
\G1[51]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[51]~49_combout\ = (\A[51]~input_o\ & ((\B[51]~input_o\) # ((\B[50]~input_o\ & \A[50]~input_o\)))) # (!\A[51]~input_o\ & (\B[50]~input_o\ & (\A[50]~input_o\ & \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[51]~input_o\,
	combout => \G1[51]~49_combout\);

-- Location: LCCOMB_X73_Y62_N26
\G3[51]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[51]~92_combout\ = (!\G1[51]~49_combout\ & (((!P0(50)) # (!P0(51))) # (!\G1[49]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[49]~47_combout\,
	datab => \G1[51]~49_combout\,
	datac => P0(51),
	datad => P0(50),
	combout => \G3[51]~92_combout\);

-- Location: LCCOMB_X77_Y61_N22
\G3[51]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[51]~93_combout\ = ((!\G3[47]~84_combout\ & \P2[51]~49_combout\)) # (!\G3[51]~92_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[47]~84_combout\,
	datac => \P2[51]~49_combout\,
	datad => \G3[51]~92_combout\,
	combout => \G3[51]~93_combout\);

-- Location: LCCOMB_X77_Y61_N24
\C[52]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[52]~83_combout\ = (\P2[51]~49_combout\ & \P2[47]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \P2[51]~49_combout\,
	datad => \P2[47]~45_combout\,
	combout => \C[52]~83_combout\);

-- Location: LCCOMB_X77_Y61_N10
\C[52]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[52]~84_combout\ = (\C[52]~83_combout\ & ((\G3[43]~77_combout\) # ((\G3[35]~63_combout\ & \G4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[35]~63_combout\,
	datab => \G4~28_combout\,
	datac => \G3[43]~77_combout\,
	datad => \C[52]~83_combout\,
	combout => \C[52]~84_combout\);

-- Location: LCCOMB_X77_Y61_N6
\C[52]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[52]~86_combout\ = (\G3[51]~93_combout\) # ((\C[52]~84_combout\) # ((\G4~22_combout\ & \C[52]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~22_combout\,
	datab => \C[52]~85_combout\,
	datac => \G3[51]~93_combout\,
	datad => \C[52]~84_combout\,
	combout => \C[52]~86_combout\);

-- Location: LCCOMB_X77_Y61_N16
\C[52]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[52]~87_combout\ = (\C[52]~86_combout\) # ((\C[20]~27_combout\ & (\P4[35]~8_combout\ & \C[52]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[20]~27_combout\,
	datab => \P4[35]~8_combout\,
	datac => \C[52]~85_combout\,
	datad => \C[52]~86_combout\,
	combout => \C[52]~87_combout\);

-- Location: LCCOMB_X74_Y61_N0
\S~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~75_combout\ = \B[52]~input_o\ $ (\A[52]~input_o\ $ (\C[52]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \C[52]~87_combout\,
	combout => \S~75_combout\);

-- Location: LCCOMB_X73_Y62_N4
\G2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~28_combout\ = (\B[51]~input_o\ & (!\A[51]~input_o\ & (\A[52]~input_o\ $ (\B[52]~input_o\)))) # (!\B[51]~input_o\ & (\A[51]~input_o\ & (\A[52]~input_o\ $ (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \G2~28_combout\);

-- Location: LCCOMB_X73_Y62_N10
\P2[52]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[52]~61_combout\ = (\G2~28_combout\ & (P0(50) & (\A[49]~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[49]~input_o\,
	datac => \G2~28_combout\,
	datad => P0(50),
	combout => \P2[52]~61_combout\);

-- Location: LCCOMB_X74_Y60_N6
\C[57]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~88_combout\ = (\P2[52]~61_combout\ & (\P2[48]~46_combout\ & (\P2[44]~42_combout\ & \P2[40]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[52]~61_combout\,
	datab => \P2[48]~46_combout\,
	datac => \P2[44]~42_combout\,
	datad => \P2[40]~39_combout\,
	combout => \C[57]~88_combout\);

-- Location: LCCOMB_X80_Y60_N18
\S~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~77_combout\ = (\G4~23_combout\) # ((\G3[36]~65_combout\) # ((\P4[36]~10_combout\ & \C[21]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~23_combout\,
	datab => \P4[36]~10_combout\,
	datac => \G3[36]~65_combout\,
	datad => \C[21]~30_combout\,
	combout => \S~77_combout\);

-- Location: IOIBUF_X79_Y73_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X74_Y61_N10
\P0[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(53) = \A[53]~input_o\ $ (\B[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => P0(53));

-- Location: LCCOMB_X73_Y62_N14
\G1[52]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[52]~50_combout\ = (\A[52]~input_o\ & ((\B[52]~input_o\) # ((\B[51]~input_o\ & \A[51]~input_o\)))) # (!\A[52]~input_o\ & (\B[51]~input_o\ & (\A[51]~input_o\ & \B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[51]~input_o\,
	datab => \A[51]~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \G1[52]~50_combout\);

-- Location: LCCOMB_X74_Y60_N8
\G3[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[52]~94_combout\ = (\G1[52]~50_combout\) # ((\G2~28_combout\ & \G1[50]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~28_combout\,
	datac => \G1[52]~50_combout\,
	datad => \G1[50]~48_combout\,
	combout => \G3[52]~94_combout\);

-- Location: LCCOMB_X74_Y60_N26
\G3[52]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[52]~95_combout\ = (\G3[52]~94_combout\) # ((!\G3[48]~86_combout\ & \P2[52]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[48]~86_combout\,
	datac => \G3[52]~94_combout\,
	datad => \P2[52]~61_combout\,
	combout => \G3[52]~95_combout\);

-- Location: LCCOMB_X74_Y60_N28
\S~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~76_combout\ = (\G3[52]~95_combout\) # ((\P2[52]~61_combout\ & (\P2[48]~46_combout\ & \G3[44]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[52]~61_combout\,
	datab => \P2[48]~46_combout\,
	datac => \G3[52]~95_combout\,
	datad => \G3[44]~79_combout\,
	combout => \S~76_combout\);

-- Location: LCCOMB_X74_Y60_N22
\S~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~78_combout\ = P0(53) $ (((\S~76_combout\) # ((\C[57]~88_combout\ & \S~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[57]~88_combout\,
	datab => \S~77_combout\,
	datac => P0(53),
	datad => \S~76_combout\,
	combout => \S~78_combout\);

-- Location: LCCOMB_X73_Y62_N28
\P2[53]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[53]~62_combout\ = (\G2~28_combout\ & (P0(53) & (\A[50]~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \G2~28_combout\,
	datac => \B[50]~input_o\,
	datad => P0(53),
	combout => \P2[53]~62_combout\);

-- Location: LCCOMB_X73_Y62_N0
\G2~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~29_combout\ = (P0(53) & (\G1[51]~49_combout\ & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(53),
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \G1[51]~49_combout\,
	combout => \G2~29_combout\);

-- Location: LCCOMB_X74_Y61_N28
\G1[53]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[53]~51_combout\ = (\A[53]~input_o\ & ((\B[53]~input_o\) # ((\A[52]~input_o\ & \B[52]~input_o\)))) # (!\A[53]~input_o\ & (\A[52]~input_o\ & (\B[52]~input_o\ & \B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[53]~input_o\,
	datad => \B[53]~input_o\,
	combout => \G1[53]~51_combout\);

-- Location: LCCOMB_X73_Y61_N2
\G3[53]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[53]~96_combout\ = (\G2~29_combout\) # ((\G1[53]~51_combout\) # ((\P2[53]~62_combout\ & !\G3[49]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[53]~62_combout\,
	datab => \G2~29_combout\,
	datac => \G3[49]~88_combout\,
	datad => \G1[53]~51_combout\,
	combout => \G3[53]~96_combout\);

-- Location: LCCOMB_X73_Y61_N4
\C[54]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[54]~89_combout\ = (\P2[53]~62_combout\ & (\P2[49]~47_combout\ & \G3[45]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[53]~62_combout\,
	datab => \P2[49]~47_combout\,
	datac => \G3[45]~81_combout\,
	combout => \C[54]~89_combout\);

-- Location: LCCOMB_X73_Y59_N18
\C[58]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~90_combout\ = (\P2[41]~40_combout\ & (\P2[53]~62_combout\ & (\P2[49]~47_combout\ & \P2[45]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[41]~40_combout\,
	datab => \P2[53]~62_combout\,
	datac => \P2[49]~47_combout\,
	datad => \P2[45]~43_combout\,
	combout => \C[58]~90_combout\);

-- Location: LCCOMB_X79_Y57_N20
\C[54]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[54]~91_combout\ = (\C[54]~89_combout\) # ((\C[58]~90_combout\ & ((\G3[37]~67_combout\) # (\G4~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[54]~89_combout\,
	datab => \G3[37]~67_combout\,
	datac => \C[58]~90_combout\,
	datad => \G4~24_combout\,
	combout => \C[54]~91_combout\);

-- Location: LCCOMB_X79_Y57_N22
\C[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[54]~92_combout\ = (\C[54]~91_combout\) # ((\C[22]~32_combout\ & (\P4[37]~12_combout\ & \C[58]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[22]~32_combout\,
	datab => \C[54]~91_combout\,
	datac => \P4[37]~12_combout\,
	datad => \C[58]~90_combout\,
	combout => \C[54]~92_combout\);

-- Location: IOIBUF_X79_Y73_N1
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X74_Y61_N22
\S~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~79_combout\ = \A[54]~input_o\ $ (\B[54]~input_o\ $ (((\G3[53]~96_combout\) # (\C[54]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[53]~96_combout\,
	datab => \C[54]~92_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \S~79_combout\);

-- Location: LCCOMB_X74_Y61_N12
\P2[54]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[54]~50_combout\ = (P0(53) & (\G2~28_combout\ & (\A[54]~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(53),
	datab => \G2~28_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \P2[54]~50_combout\);

-- Location: LCCOMB_X74_Y61_N18
\G2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~30_combout\ = (\B[54]~input_o\ & (!\A[54]~input_o\ & (\A[53]~input_o\ $ (\B[53]~input_o\)))) # (!\B[54]~input_o\ & (\A[54]~input_o\ & (\A[53]~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[53]~input_o\,
	combout => \G2~30_combout\);

-- Location: LCCOMB_X70_Y64_N16
\G2~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~31_combout\ = (\G1[52]~50_combout\ & \G2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[52]~50_combout\,
	datad => \G2~30_combout\,
	combout => \G2~31_combout\);

-- Location: LCCOMB_X74_Y61_N16
\G1[54]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[54]~52_combout\ = (\B[54]~input_o\ & ((\A[54]~input_o\) # ((\A[53]~input_o\ & \B[53]~input_o\)))) # (!\B[54]~input_o\ & (\A[53]~input_o\ & (\A[54]~input_o\ & \B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[53]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[53]~input_o\,
	combout => \G1[54]~52_combout\);

-- Location: LCCOMB_X73_Y60_N28
\G3[54]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[54]~97_combout\ = (\G2~31_combout\) # ((\G1[54]~52_combout\) # ((\P2[54]~50_combout\ & !\G3[50]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[54]~50_combout\,
	datab => \G2~31_combout\,
	datac => \G3[50]~90_combout\,
	datad => \G1[54]~52_combout\,
	combout => \G3[54]~97_combout\);

-- Location: LCCOMB_X73_Y60_N6
\C[55]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[55]~93_combout\ = (\G3[54]~97_combout\) # ((\P2[54]~50_combout\ & (\G3[46]~83_combout\ & \P2[50]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[54]~50_combout\,
	datab => \G3[46]~83_combout\,
	datac => \P2[50]~48_combout\,
	datad => \G3[54]~97_combout\,
	combout => \C[55]~93_combout\);

-- Location: IOIBUF_X67_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X75_Y60_N14
\C[55]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[55]~95_combout\ = (\P2[46]~44_combout\ & (\P2[50]~48_combout\ & (\P2[42]~41_combout\ & \P2[54]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[46]~44_combout\,
	datab => \P2[50]~48_combout\,
	datac => \P2[42]~41_combout\,
	datad => \P2[54]~50_combout\,
	combout => \C[55]~95_combout\);

-- Location: LCCOMB_X75_Y60_N20
\C[55]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[55]~94_combout\ = (\G3[30]~54_combout\ & (\P2[54]~50_combout\ & (\P2[34]~35_combout\ & \C[51]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[30]~54_combout\,
	datab => \P2[54]~50_combout\,
	datac => \P2[34]~35_combout\,
	datad => \C[51]~78_combout\,
	combout => \C[55]~94_combout\);

-- Location: LCCOMB_X77_Y60_N0
\C[55]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[55]~96_combout\ = (\C[55]~94_combout\) # ((\C[55]~95_combout\ & \G3[38]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[55]~95_combout\,
	datac => \C[55]~94_combout\,
	datad => \G3[38]~69_combout\,
	combout => \C[55]~96_combout\);

-- Location: LCCOMB_X77_Y60_N2
\C[55]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[55]~97_combout\ = (\C[55]~96_combout\) # ((\P4[38]~14_combout\ & (\C[23]~34_combout\ & \C[55]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[38]~14_combout\,
	datab => \C[23]~34_combout\,
	datac => \C[55]~95_combout\,
	datad => \C[55]~96_combout\,
	combout => \C[55]~97_combout\);

-- Location: LCCOMB_X74_Y61_N6
\S~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~80_combout\ = \A[55]~input_o\ $ (\B[55]~input_o\ $ (((\C[55]~93_combout\) # (\C[55]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[55]~93_combout\,
	datab => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \C[55]~97_combout\,
	combout => \S~80_combout\);

-- Location: IOIBUF_X60_Y73_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X66_Y64_N16
\P0[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(56) = \A[56]~input_o\ $ (\B[56]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => P0(56));

-- Location: LCCOMB_X74_Y61_N24
\G2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~32_combout\ = (\B[55]~input_o\ & (!\A[55]~input_o\ & (\A[54]~input_o\ $ (\B[54]~input_o\)))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & (\A[54]~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \A[55]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \G2~32_combout\);

-- Location: LCCOMB_X74_Y61_N2
\P2[55]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[55]~51_combout\ = (\G2~32_combout\ & (P0(53) & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \G2~32_combout\,
	datac => \A[52]~input_o\,
	datad => P0(53),
	combout => \P2[55]~51_combout\);

-- Location: LCCOMB_X79_Y61_N20
\C[56]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[56]~98_combout\ = (\P2[55]~51_combout\ & (\P2[35]~36_combout\ & (\C[52]~85_combout\ & \G3[31]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[55]~51_combout\,
	datab => \P2[35]~36_combout\,
	datac => \C[52]~85_combout\,
	datad => \G3[31]~56_combout\,
	combout => \C[56]~98_combout\);

-- Location: LCCOMB_X77_Y61_N14
\C[56]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[56]~100_combout\ = (\P2[43]~60_combout\ & (\P2[51]~49_combout\ & (\P2[55]~51_combout\ & \P2[47]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[43]~60_combout\,
	datab => \P2[51]~49_combout\,
	datac => \P2[55]~51_combout\,
	datad => \P2[47]~45_combout\,
	combout => \C[56]~100_combout\);

-- Location: LCCOMB_X79_Y61_N14
\S~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~81_combout\ = (\C[56]~100_combout\ & ((\G3[39]~71_combout\) # ((\C[24]~37_combout\ & \P4[39]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[39]~71_combout\,
	datab => \C[24]~37_combout\,
	datac => \C[56]~100_combout\,
	datad => \P4[39]~16_combout\,
	combout => \S~81_combout\);

-- Location: LCCOMB_X74_Y61_N20
\G1[55]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[55]~53_combout\ = (\B[55]~input_o\ & ((\A[55]~input_o\) # ((\A[54]~input_o\ & \B[54]~input_o\)))) # (!\B[55]~input_o\ & (\A[55]~input_o\ & (\A[54]~input_o\ & \B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[55]~input_o\,
	datab => \A[55]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \G1[55]~53_combout\);

-- Location: LCCOMB_X74_Y61_N30
\G2~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~33_combout\ = (\G1[53]~51_combout\ & \G2~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1[53]~51_combout\,
	datad => \G2~32_combout\,
	combout => \G2~33_combout\);

-- Location: LCCOMB_X77_Y61_N26
\G3[55]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3[55]~98_combout\ = (\G1[55]~53_combout\) # ((\G2~33_combout\) # ((!\G3[51]~92_combout\ & \P2[55]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[55]~53_combout\,
	datab => \G3[51]~92_combout\,
	datac => \P2[55]~51_combout\,
	datad => \G2~33_combout\,
	combout => \G3[55]~98_combout\);

-- Location: LCCOMB_X77_Y61_N12
\C[56]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[56]~99_combout\ = (\G3[55]~98_combout\) # ((\P2[55]~51_combout\ & (\P2[51]~49_combout\ & \G3[47]~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[55]~98_combout\,
	datab => \P2[55]~51_combout\,
	datac => \P2[51]~49_combout\,
	datad => \G3[47]~85_combout\,
	combout => \C[56]~99_combout\);

-- Location: LCCOMB_X77_Y61_N0
\S~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~82_combout\ = P0(56) $ (((\C[56]~98_combout\) # ((\S~81_combout\) # (\C[56]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(56),
	datab => \C[56]~98_combout\,
	datac => \S~81_combout\,
	datad => \C[56]~99_combout\,
	combout => \S~82_combout\);

-- Location: IOIBUF_X38_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X70_Y64_N6
\P2[56]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[56]~52_combout\ = (P0(56) & (\G2~30_combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => P0(56),
	datac => \B[55]~input_o\,
	datad => \G2~30_combout\,
	combout => \P2[56]~52_combout\);

-- Location: LCCOMB_X70_Y64_N20
\G2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2~34_combout\ = (P0(56) & (\G1[54]~52_combout\ & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => P0(56),
	datac => \B[55]~input_o\,
	datad => \G1[54]~52_combout\,
	combout => \G2~34_combout\);

-- Location: LCCOMB_X70_Y64_N26
\G1[56]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[56]~54_combout\ = (\A[56]~input_o\ & ((\B[56]~input_o\) # ((\A[55]~input_o\ & \B[55]~input_o\)))) # (!\A[56]~input_o\ & (\A[55]~input_o\ & (\B[55]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \B[55]~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \G1[56]~54_combout\);

-- Location: LCCOMB_X70_Y64_N8
\C[57]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~101_combout\ = (\G2~34_combout\) # ((\G1[56]~54_combout\) # ((\P2[56]~52_combout\ & \G1[52]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[56]~52_combout\,
	datab => \G2~34_combout\,
	datac => \G1[56]~54_combout\,
	datad => \G1[52]~50_combout\,
	combout => \C[57]~101_combout\);

-- Location: LCCOMB_X74_Y60_N16
\C[57]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~102_combout\ = (\C[57]~101_combout\) # ((\G2~28_combout\ & (\P2[56]~52_combout\ & \G1[50]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[57]~101_combout\,
	datab => \G2~28_combout\,
	datac => \P2[56]~52_combout\,
	datad => \G1[50]~48_combout\,
	combout => \C[57]~102_combout\);

-- Location: LCCOMB_X74_Y60_N18
\C[57]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~103_combout\ = (\C[57]~102_combout\) # ((\P2[52]~61_combout\ & (\G3[48]~87_combout\ & \P2[56]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[52]~61_combout\,
	datab => \G3[48]~87_combout\,
	datac => \P2[56]~52_combout\,
	datad => \C[57]~102_combout\,
	combout => \C[57]~103_combout\);

-- Location: IOIBUF_X52_Y73_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X74_Y60_N4
\C[57]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~104_combout\ = (\P2[48]~46_combout\ & (\P2[56]~52_combout\ & \P2[52]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[48]~46_combout\,
	datac => \P2[56]~52_combout\,
	datad => \P2[52]~61_combout\,
	combout => \C[57]~104_combout\);

-- Location: LCCOMB_X74_Y60_N30
\C[57]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~105_combout\ = (\P2[44]~42_combout\ & (\P4[40]~17_combout\ & (\C[57]~104_combout\ & \C[25]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[44]~42_combout\,
	datab => \P4[40]~17_combout\,
	datac => \C[57]~104_combout\,
	datad => \C[25]~39_combout\,
	combout => \C[57]~105_combout\);

-- Location: LCCOMB_X74_Y60_N0
\C[57]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~106_combout\ = (\G4~26_combout\ & (\P2[56]~52_combout\ & \C[57]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G4~26_combout\,
	datac => \P2[56]~52_combout\,
	datad => \C[57]~88_combout\,
	combout => \C[57]~106_combout\);

-- Location: LCCOMB_X74_Y60_N10
\C[57]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[57]~107_combout\ = (\C[57]~105_combout\) # ((\C[57]~106_combout\) # ((\C[57]~104_combout\ & \C[49]~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[57]~105_combout\,
	datab => \C[57]~106_combout\,
	datac => \C[57]~104_combout\,
	datad => \C[49]~73_combout\,
	combout => \C[57]~107_combout\);

-- Location: LCCOMB_X74_Y60_N12
\S~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~83_combout\ = \B[57]~input_o\ $ (\A[57]~input_o\ $ (((\C[57]~103_combout\) # (\C[57]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \C[57]~103_combout\,
	datac => \A[57]~input_o\,
	datad => \C[57]~107_combout\,
	combout => \S~83_combout\);

-- Location: IOIBUF_X35_Y73_N15
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X66_Y64_N26
\P2[59]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[59]~53_combout\ = (\A[56]~input_o\ & (!\B[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\)))) # (!\A[56]~input_o\ & (\B[56]~input_o\ & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \P2[59]~53_combout\);

-- Location: LCCOMB_X73_Y61_N8
\C[58]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~109_combout\ = (\P2[59]~53_combout\ & (\P2[49]~47_combout\ & (\P2[53]~62_combout\ & \G2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[59]~53_combout\,
	datab => \P2[49]~47_combout\,
	datac => \P2[53]~62_combout\,
	datad => \G2~32_combout\,
	combout => \C[58]~109_combout\);

-- Location: LCCOMB_X73_Y59_N20
\C[58]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~110_combout\ = (\P2[45]~43_combout\ & (\P4[41]~18_combout\ & (\C[58]~109_combout\ & \C[26]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[45]~43_combout\,
	datab => \P4[41]~18_combout\,
	datac => \C[58]~109_combout\,
	datad => \C[26]~41_combout\,
	combout => \C[58]~110_combout\);

-- Location: LCCOMB_X73_Y61_N18
\C[58]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~111_combout\ = (\G4~27_combout\ & (\P2[59]~53_combout\ & (\C[58]~90_combout\ & \G2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~27_combout\,
	datab => \P2[59]~53_combout\,
	datac => \C[58]~90_combout\,
	datad => \G2~32_combout\,
	combout => \C[58]~111_combout\);

-- Location: LCCOMB_X73_Y59_N30
\C[58]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~112_combout\ = (\C[58]~110_combout\) # ((\C[58]~111_combout\) # ((\C[50]~76_combout\ & \C[58]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[50]~76_combout\,
	datab => \C[58]~110_combout\,
	datac => \C[58]~109_combout\,
	datad => \C[58]~111_combout\,
	combout => \C[58]~112_combout\);

-- Location: IOIBUF_X54_Y73_N8
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X73_Y61_N6
\C[58]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~108_combout\ = (\G2~32_combout\ & ((\G2~29_combout\) # (\G1[53]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~29_combout\,
	datab => \G1[53]~51_combout\,
	datad => \G2~32_combout\,
	combout => \C[58]~108_combout\);

-- Location: LCCOMB_X66_Y64_N28
\G1[57]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[57]~55_combout\ = (\B[57]~input_o\ & ((\A[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\B[57]~input_o\ & (\A[56]~input_o\ & (\A[57]~input_o\ & \B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[56]~input_o\,
	combout => \G1[57]~55_combout\);

-- Location: LCCOMB_X73_Y61_N28
\C[58]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~153_combout\ = (\G1[55]~53_combout\) # ((\G3[49]~89_combout\ & (\P2[53]~62_combout\ & \G2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[55]~53_combout\,
	datab => \G3[49]~89_combout\,
	datac => \P2[53]~62_combout\,
	datad => \G2~32_combout\,
	combout => \C[58]~153_combout\);

-- Location: LCCOMB_X73_Y61_N22
\C[58]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[58]~154_combout\ = (\G1[57]~55_combout\) # ((\P2[59]~53_combout\ & ((\C[58]~108_combout\) # (\C[58]~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[58]~108_combout\,
	datab => \P2[59]~53_combout\,
	datac => \G1[57]~55_combout\,
	datad => \C[58]~153_combout\,
	combout => \C[58]~154_combout\);

-- Location: LCCOMB_X66_Y64_N22
\S~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~84_combout\ = \B[58]~input_o\ $ (\A[58]~input_o\ $ (((\C[58]~112_combout\) # (\C[58]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \C[58]~112_combout\,
	datac => \A[58]~input_o\,
	datad => \C[58]~154_combout\,
	combout => \S~84_combout\);

-- Location: IOIBUF_X62_Y73_N22
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X66_Y64_N12
\P0[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(59) = \A[59]~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	combout => P0(59));

-- Location: LCCOMB_X66_Y64_N24
\P1[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- P1(58) = (\A[57]~input_o\ & (!\B[57]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => P1(58));

-- Location: LCCOMB_X70_Y64_N10
\P2[58]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[58]~54_combout\ = (P0(56) & (P1(58) & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => P0(56),
	datac => \B[55]~input_o\,
	datad => P1(58),
	combout => \P2[58]~54_combout\);

-- Location: LCCOMB_X75_Y60_N8
\C[59]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[59]~113_combout\ = (\C[51]~80_combout\ & (\P2[54]~50_combout\ & (\P2[58]~54_combout\ & \G3[42]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[51]~80_combout\,
	datab => \P2[54]~50_combout\,
	datac => \P2[58]~54_combout\,
	datad => \G3[42]~75_combout\,
	combout => \C[59]~113_combout\);

-- Location: LCCOMB_X70_Y64_N4
\C[59]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[59]~114_combout\ = (\P2[58]~54_combout\ & ((\G1[54]~52_combout\) # ((P1(58) & \G1[56]~54_combout\)))) # (!\P2[58]~54_combout\ & (P1(58) & (\G1[56]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[58]~54_combout\,
	datab => P1(58),
	datac => \G1[56]~54_combout\,
	datad => \G1[54]~52_combout\,
	combout => \C[59]~114_combout\);

-- Location: LCCOMB_X66_Y64_N2
\G1[58]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[58]~56_combout\ = (\A[58]~input_o\ & ((\B[58]~input_o\) # ((\A[57]~input_o\ & \B[57]~input_o\)))) # (!\A[58]~input_o\ & (\A[57]~input_o\ & (\B[57]~input_o\ & \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[57]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \G1[58]~56_combout\);

-- Location: LCCOMB_X70_Y64_N22
\C[59]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[59]~115_combout\ = (\C[59]~114_combout\) # ((\G1[58]~56_combout\) # ((\P2[58]~54_combout\ & \G2~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[58]~54_combout\,
	datab => \C[59]~114_combout\,
	datac => \G1[58]~56_combout\,
	datad => \G2~31_combout\,
	combout => \C[59]~115_combout\);

-- Location: LCCOMB_X75_Y60_N28
\C[59]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[59]~118_combout\ = (\P2[46]~44_combout\ & (\P2[50]~48_combout\ & (\P2[58]~54_combout\ & \P2[54]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[46]~44_combout\,
	datab => \P2[50]~48_combout\,
	datac => \P2[58]~54_combout\,
	datad => \P2[54]~50_combout\,
	combout => \C[59]~118_combout\);

-- Location: LCCOMB_X74_Y61_N8
\C[59]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[59]~116_combout\ = (\G2~28_combout\ & (\P2[58]~54_combout\ & \G2~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~28_combout\,
	datac => \P2[58]~54_combout\,
	datad => \G2~30_combout\,
	combout => \C[59]~116_combout\);

-- Location: LCCOMB_X75_Y60_N18
\C[59]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[59]~117_combout\ = (\C[59]~116_combout\ & ((\G3[50]~91_combout\) # ((\G3[34]~61_combout\ & \C[51]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[50]~91_combout\,
	datab => \G3[34]~61_combout\,
	datac => \C[59]~116_combout\,
	datad => \C[51]~78_combout\,
	combout => \C[59]~117_combout\);

-- Location: LCCOMB_X75_Y60_N6
\C[59]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[59]~119_combout\ = (\C[59]~117_combout\) # ((\C[27]~43_combout\ & (\C[59]~118_combout\ & \P4[42]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[27]~43_combout\,
	datab => \C[59]~118_combout\,
	datac => \P4[42]~19_combout\,
	datad => \C[59]~117_combout\,
	combout => \C[59]~119_combout\);

-- Location: LCCOMB_X70_Y64_N24
\S~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~85_combout\ = P0(59) $ (((\C[59]~113_combout\) # ((\C[59]~115_combout\) # (\C[59]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P0(59),
	datab => \C[59]~113_combout\,
	datac => \C[59]~115_combout\,
	datad => \C[59]~119_combout\,
	combout => \S~85_combout\);

-- Location: LCCOMB_X66_Y64_N10
\G1[59]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[59]~57_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\A[58]~input_o\ & \B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \G1[59]~57_combout\);

-- Location: LCCOMB_X66_Y64_N30
\P1[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- P1(59) = (\A[59]~input_o\ & (!\B[59]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\A[58]~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => P1(59));

-- Location: LCCOMB_X73_Y61_N20
\C[60]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[60]~121_combout\ = (P1(59) & ((\G1[57]~55_combout\) # ((\P2[59]~53_combout\ & \G1[55]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[57]~55_combout\,
	datab => \P2[59]~53_combout\,
	datac => \G1[55]~53_combout\,
	datad => P1(59),
	combout => \C[60]~121_combout\);

-- Location: LCCOMB_X66_Y64_N8
\P2[59]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \P2[59]~55_combout\ = (P1(59) & (P0(56) & (\B[57]~input_o\ $ (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(59),
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => P0(56),
	combout => \P2[59]~55_combout\);

-- Location: LCCOMB_X73_Y61_N30
\C[60]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[60]~122_combout\ = (\G1[59]~57_combout\) # ((\C[60]~121_combout\) # ((\G2~33_combout\ & \P2[59]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[59]~57_combout\,
	datab => \C[60]~121_combout\,
	datac => \G2~33_combout\,
	datad => \P2[59]~55_combout\,
	combout => \C[60]~122_combout\);

-- Location: IOIBUF_X45_Y73_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X70_Y65_N24
\P0[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- P0(60) = \B[60]~input_o\ $ (\A[60]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => P0(60));

-- Location: LCCOMB_X73_Y65_N18
\C[60]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[60]~123_combout\ = (P1(59) & (\P2[55]~51_combout\ & \P2[59]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(59),
	datac => \P2[55]~51_combout\,
	datad => \P2[59]~53_combout\,
	combout => \C[60]~123_combout\);

-- Location: LCCOMB_X77_Y61_N20
\C[60]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[60]~124_combout\ = (\C[60]~123_combout\ & ((\G3[51]~93_combout\) # ((\G3[35]~63_combout\ & \C[52]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3[35]~63_combout\,
	datab => \C[52]~85_combout\,
	datac => \G3[51]~93_combout\,
	datad => \C[60]~123_combout\,
	combout => \C[60]~124_combout\);

-- Location: LCCOMB_X77_Y61_N30
\C[60]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[60]~125_combout\ = (\P2[59]~55_combout\ & (\P2[55]~51_combout\ & (\P2[51]~49_combout\ & \P2[47]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[59]~55_combout\,
	datab => \P2[55]~51_combout\,
	datac => \P2[51]~49_combout\,
	datad => \P2[47]~45_combout\,
	combout => \C[60]~125_combout\);

-- Location: LCCOMB_X81_Y61_N10
\C[60]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[60]~126_combout\ = (\C[60]~124_combout\) # ((\P4[43]~20_combout\ & (\C[60]~125_combout\ & \C[28]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[43]~20_combout\,
	datab => \C[60]~124_combout\,
	datac => \C[60]~125_combout\,
	datad => \C[28]~45_combout\,
	combout => \C[60]~126_combout\);

-- Location: LCCOMB_X77_Y61_N2
\C[60]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[60]~120_combout\ = (\P2[59]~55_combout\ & (\G3[43]~77_combout\ & (\P2[55]~51_combout\ & \C[52]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[59]~55_combout\,
	datab => \G3[43]~77_combout\,
	datac => \P2[55]~51_combout\,
	datad => \C[52]~83_combout\,
	combout => \C[60]~120_combout\);

-- Location: LCCOMB_X70_Y65_N2
\S~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~86_combout\ = P0(60) $ (((\C[60]~122_combout\) # ((\C[60]~126_combout\) # (\C[60]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[60]~122_combout\,
	datab => P0(60),
	datac => \C[60]~126_combout\,
	datad => \C[60]~120_combout\,
	combout => \S~86_combout\);

-- Location: LCCOMB_X66_Y64_N20
\P1[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- P1(60) = (\B[60]~input_o\ & (!\A[60]~input_o\ & (\B[59]~input_o\ $ (\A[59]~input_o\)))) # (!\B[60]~input_o\ & (\A[60]~input_o\ & (\B[59]~input_o\ $ (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[60]~input_o\,
	combout => P1(60));

-- Location: LCCOMB_X80_Y60_N20
\C[61]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[61]~132_combout\ = (\C[57]~104_combout\ & (\P4[44]~21_combout\ & \C[29]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[57]~104_combout\,
	datab => \P4[44]~21_combout\,
	datad => \C[29]~48_combout\,
	combout => \C[61]~132_combout\);

-- Location: LCCOMB_X74_Y60_N14
\C[61]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[61]~131_combout\ = (\P2[56]~52_combout\ & ((\G3[52]~95_combout\) # ((\C[57]~88_combout\ & \G3[36]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[57]~88_combout\,
	datab => \P2[56]~52_combout\,
	datac => \G3[52]~95_combout\,
	datad => \G3[36]~65_combout\,
	combout => \C[61]~131_combout\);

-- Location: LCCOMB_X70_Y64_N18
\C[61]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[61]~133_combout\ = (P1(60) & (P1(58) & ((\C[61]~132_combout\) # (\C[61]~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(60),
	datab => \C[61]~132_combout\,
	datac => \C[61]~131_combout\,
	datad => P1(58),
	combout => \C[61]~133_combout\);

-- Location: IOIBUF_X38_Y73_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X70_Y64_N14
\C[61]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[61]~129_combout\ = (\G2~34_combout\) # ((\C[57]~104_combout\ & \G3[44]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2~34_combout\,
	datac => \C[57]~104_combout\,
	datad => \G3[44]~79_combout\,
	combout => \C[61]~129_combout\);

-- Location: LCCOMB_X66_Y64_N6
\G1[60]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[60]~58_combout\ = (\B[60]~input_o\ & ((\A[60]~input_o\) # ((\B[59]~input_o\ & \A[59]~input_o\)))) # (!\B[60]~input_o\ & (\B[59]~input_o\ & (\A[59]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \B[59]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[60]~input_o\,
	combout => \G1[60]~58_combout\);

-- Location: LCCOMB_X70_Y64_N2
\C[61]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[61]~127_combout\ = ((!\G1[58]~56_combout\ & ((!P1(58)) # (!\G1[56]~54_combout\)))) # (!P1(60))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(60),
	datab => \G1[58]~56_combout\,
	datac => \G1[56]~54_combout\,
	datad => P1(58),
	combout => \C[61]~127_combout\);

-- Location: LCCOMB_X70_Y64_N28
\C[61]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[61]~128_combout\ = (!\G1[60]~58_combout\ & \C[61]~127_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1[60]~58_combout\,
	datad => \C[61]~127_combout\,
	combout => \C[61]~128_combout\);

-- Location: LCCOMB_X70_Y64_N0
\C[61]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[61]~130_combout\ = ((P1(60) & (P1(58) & \C[61]~129_combout\))) # (!\C[61]~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(60),
	datab => P1(58),
	datac => \C[61]~129_combout\,
	datad => \C[61]~128_combout\,
	combout => \C[61]~130_combout\);

-- Location: LCCOMB_X70_Y65_N28
\S~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~87_combout\ = \A[61]~input_o\ $ (\B[61]~input_o\ $ (((\C[61]~133_combout\) # (\C[61]~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[61]~133_combout\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \C[61]~130_combout\,
	combout => \S~87_combout\);

-- Location: IOIBUF_X62_Y73_N15
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X70_Y65_N30
\P1[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- P1(61) = (\A[61]~input_o\ & (!\B[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => P1(61));

-- Location: LCCOMB_X73_Y61_N14
\C[62]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~140_combout\ = (P1(61) & (\C[58]~109_combout\ & P1(59)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(61),
	datab => \C[58]~109_combout\,
	datad => P1(59),
	combout => \C[62]~140_combout\);

-- Location: LCCOMB_X73_Y61_N26
\C[62]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~138_combout\ = (\P2[59]~53_combout\ & (P1(59) & (P1(61) & \G2~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[59]~53_combout\,
	datab => P1(59),
	datac => P1(61),
	datad => \G2~32_combout\,
	combout => \C[62]~138_combout\);

-- Location: LCCOMB_X73_Y61_N12
\C[62]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~139_combout\ = (\C[62]~138_combout\ & ((\G3[53]~96_combout\) # ((\G3[37]~67_combout\ & \C[58]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[62]~138_combout\,
	datab => \G3[37]~67_combout\,
	datac => \C[58]~90_combout\,
	datad => \G3[53]~96_combout\,
	combout => \C[62]~139_combout\);

-- Location: LCCOMB_X73_Y61_N24
\C[62]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~141_combout\ = (\C[62]~139_combout\) # ((\C[30]~50_combout\ & (\C[62]~140_combout\ & \P4[45]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[30]~50_combout\,
	datab => \C[62]~140_combout\,
	datac => \P4[45]~22_combout\,
	datad => \C[62]~139_combout\,
	combout => \C[62]~141_combout\);

-- Location: IOIBUF_X58_Y73_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X73_Y61_N0
\C[62]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~136_combout\ = (\G1[55]~53_combout\ & ((\P2[59]~53_combout\) # ((\C[58]~109_combout\ & \G3[45]~81_combout\)))) # (!\G1[55]~53_combout\ & (((\C[58]~109_combout\ & \G3[45]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1[55]~53_combout\,
	datab => \P2[59]~53_combout\,
	datac => \C[58]~109_combout\,
	datad => \G3[45]~81_combout\,
	combout => \C[62]~136_combout\);

-- Location: LCCOMB_X70_Y65_N0
\C[62]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~134_combout\ = ((!\G1[59]~57_combout\ & ((!\G1[57]~55_combout\) # (!P1(59))))) # (!P1(61))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(59),
	datab => \G1[59]~57_combout\,
	datac => P1(61),
	datad => \G1[57]~55_combout\,
	combout => \C[62]~134_combout\);

-- Location: LCCOMB_X70_Y65_N10
\G1[61]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[61]~59_combout\ = (\A[61]~input_o\ & ((\B[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[60]~input_o\ & (\B[61]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \G1[61]~59_combout\);

-- Location: LCCOMB_X70_Y65_N4
\C[62]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~135_combout\ = (\C[62]~134_combout\ & !\G1[61]~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C[62]~134_combout\,
	datad => \G1[61]~59_combout\,
	combout => \C[62]~135_combout\);

-- Location: LCCOMB_X70_Y65_N6
\C[62]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[62]~137_combout\ = ((\C[62]~136_combout\ & (P1(61) & P1(59)))) # (!\C[62]~135_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[62]~136_combout\,
	datab => \C[62]~135_combout\,
	datac => P1(61),
	datad => P1(59),
	combout => \C[62]~137_combout\);

-- Location: LCCOMB_X70_Y65_N16
\S~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~88_combout\ = \A[62]~input_o\ $ (\B[62]~input_o\ $ (((\C[62]~141_combout\) # (\C[62]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \C[62]~141_combout\,
	datac => \B[62]~input_o\,
	datad => \C[62]~137_combout\,
	combout => \S~88_combout\);

-- Location: IOIBUF_X27_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X25_Y73_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X70_Y65_N12
\P4[62]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[62]~24_combout\ = (\B[62]~input_o\ & (!\A[62]~input_o\ & (\A[61]~input_o\ $ (\B[61]~input_o\)))) # (!\B[62]~input_o\ & (\A[62]~input_o\ & (\A[61]~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[62]~input_o\,
	combout => \P4[62]~24_combout\);

-- Location: LCCOMB_X70_Y64_N30
\C[63]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[63]~144_combout\ = ((P1(60) & (\G3[54]~97_combout\ & \P2[58]~54_combout\))) # (!\C[61]~128_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(60),
	datab => \C[61]~128_combout\,
	datac => \G3[54]~97_combout\,
	datad => \P2[58]~54_combout\,
	combout => \C[63]~144_combout\);

-- Location: LCCOMB_X70_Y64_N12
\P4[62]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[62]~25_combout\ = (P1(60) & (\P4[62]~24_combout\ & (\P2[50]~48_combout\ & \C[59]~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(60),
	datab => \P4[62]~24_combout\,
	datac => \P2[50]~48_combout\,
	datad => \C[59]~116_combout\,
	combout => \P4[62]~25_combout\);

-- Location: LCCOMB_X77_Y60_N20
\Gf~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf~8_combout\ = (\P2[42]~41_combout\ & (\P4[38]~13_combout\ & (\P4[62]~25_combout\ & \P2[46]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[42]~41_combout\,
	datab => \P4[38]~13_combout\,
	datac => \P4[62]~25_combout\,
	datad => \P2[46]~44_combout\,
	combout => \Gf~8_combout\);

-- Location: LCCOMB_X70_Y65_N18
\G1[62]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1[62]~60_combout\ = (\B[62]~input_o\ & ((\A[62]~input_o\) # ((\A[61]~input_o\ & \B[61]~input_o\)))) # (!\B[62]~input_o\ & (\A[61]~input_o\ & (\B[61]~input_o\ & \A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[62]~input_o\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[62]~input_o\,
	combout => \G1[62]~60_combout\);

-- Location: LCCOMB_X80_Y61_N8
\C[63]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[63]~142_combout\ = (\G1[62]~60_combout\) # ((\Gf~8_combout\ & ((\Gf[30]~6_combout\) # (\C~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gf[30]~6_combout\,
	datab => \Gf~8_combout\,
	datac => \G1[62]~60_combout\,
	datad => \C~51_combout\,
	combout => \C[63]~142_combout\);

-- Location: LCCOMB_X77_Y60_N14
\C[63]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[63]~143_combout\ = (\P4[62]~25_combout\ & ((\G3[46]~83_combout\) # (\G5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3[46]~83_combout\,
	datac => \P4[62]~25_combout\,
	datad => \G5~0_combout\,
	combout => \C[63]~143_combout\);

-- Location: LCCOMB_X70_Y65_N14
\C[63]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \C[63]~145_combout\ = (\C[63]~142_combout\) # ((\C[63]~143_combout\) # ((\P4[62]~24_combout\ & \C[63]~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[62]~24_combout\,
	datab => \C[63]~144_combout\,
	datac => \C[63]~142_combout\,
	datad => \C[63]~143_combout\,
	combout => \C[63]~145_combout\);

-- Location: LCCOMB_X70_Y65_N8
\S~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \S~89_combout\ = \A[63]~input_o\ $ (\B[63]~input_o\ $ (\C[63]~145_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \C[63]~145_combout\,
	combout => \S~89_combout\);

-- Location: LCCOMB_X70_Y65_N26
\P4[63]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[63]~26_combout\ = (\A[63]~input_o\ & (!\B[63]~input_o\ & (\B[62]~input_o\ $ (\A[62]~input_o\)))) # (!\A[63]~input_o\ & (\B[63]~input_o\ & (\B[62]~input_o\ $ (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datac => \B[62]~input_o\,
	datad => \A[62]~input_o\,
	combout => \P4[63]~26_combout\);

-- Location: LCCOMB_X73_Y65_N28
\P4[63]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \P4[63]~27_combout\ = (P1(61) & (\P4[63]~26_combout\ & (\C[60]~123_combout\ & \P2[51]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P1(61),
	datab => \P4[63]~26_combout\,
	datac => \C[60]~123_combout\,
	datad => \P2[51]~49_combout\,
	combout => \P4[63]~27_combout\);

-- Location: LCCOMB_X73_Y65_N6
\C~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~146_combout\ = (\P4[63]~27_combout\ & ((\G3[47]~85_combout\) # ((\C[48]~70_combout\ & \C~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C[48]~70_combout\,
	datab => \C~52_combout\,
	datac => \G3[47]~85_combout\,
	datad => \P4[63]~27_combout\,
	combout => \C~146_combout\);

-- Location: LCCOMB_X73_Y61_N10
\C~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~147_combout\ = (\P2[59]~53_combout\ & (P1(59) & (P1(61) & \G3[55]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[59]~53_combout\,
	datab => P1(59),
	datac => P1(61),
	datad => \G3[55]~98_combout\,
	combout => \C~147_combout\);

-- Location: LCCOMB_X70_Y65_N20
\C~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~148_combout\ = (\A[62]~input_o\ & (((\B[62]~input_o\) # (\C~147_combout\)) # (!\C[62]~135_combout\))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & ((\C~147_combout\) # (!\C[62]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \C[62]~135_combout\,
	datac => \B[62]~input_o\,
	datad => \C~147_combout\,
	combout => \C~148_combout\);

-- Location: LCCOMB_X70_Y65_N22
\C~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~149_combout\ = (\A[63]~input_o\ & ((\B[63]~input_o\) # (\C~148_combout\))) # (!\A[63]~input_o\ & (\B[63]~input_o\ & \C~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[63]~input_o\,
	datad => \C~148_combout\,
	combout => \C~149_combout\);

-- Location: LCCOMB_X73_Y65_N24
\C~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~150_combout\ = (\C~149_combout\) # ((\G5~1_combout\ & \P4[63]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G5~1_combout\,
	datac => \C~149_combout\,
	datad => \P4[63]~27_combout\,
	combout => \C~150_combout\);

-- Location: LCCOMB_X73_Y65_N10
\Gf~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gf~9_combout\ = (\P2[43]~60_combout\ & (\P2[47]~45_combout\ & (\P4[39]~15_combout\ & \P4[63]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[43]~60_combout\,
	datab => \P2[47]~45_combout\,
	datac => \P4[39]~15_combout\,
	datad => \P4[63]~27_combout\,
	combout => \Gf~9_combout\);

-- Location: LCCOMB_X73_Y65_N4
\C~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \C~151_combout\ = (\C~146_combout\) # ((\C~150_combout\) # ((Gf(31) & \Gf~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~146_combout\,
	datab => \C~150_combout\,
	datac => Gf(31),
	datad => \Gf~9_combout\,
	combout => \C~151_combout\);

-- Location: LCCOMB_X73_Y65_N14
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = \C~151_combout\ $ (\C[63]~145_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~151_combout\,
	datac => \C[63]~145_combout\,
	combout => \Ovfl~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_S(4) <= \S[4]~output_o\;

ww_S(5) <= \S[5]~output_o\;

ww_S(6) <= \S[6]~output_o\;

ww_S(7) <= \S[7]~output_o\;

ww_S(8) <= \S[8]~output_o\;

ww_S(9) <= \S[9]~output_o\;

ww_S(10) <= \S[10]~output_o\;

ww_S(11) <= \S[11]~output_o\;

ww_S(12) <= \S[12]~output_o\;

ww_S(13) <= \S[13]~output_o\;

ww_S(14) <= \S[14]~output_o\;

ww_S(15) <= \S[15]~output_o\;

ww_S(16) <= \S[16]~output_o\;

ww_S(17) <= \S[17]~output_o\;

ww_S(18) <= \S[18]~output_o\;

ww_S(19) <= \S[19]~output_o\;

ww_S(20) <= \S[20]~output_o\;

ww_S(21) <= \S[21]~output_o\;

ww_S(22) <= \S[22]~output_o\;

ww_S(23) <= \S[23]~output_o\;

ww_S(24) <= \S[24]~output_o\;

ww_S(25) <= \S[25]~output_o\;

ww_S(26) <= \S[26]~output_o\;

ww_S(27) <= \S[27]~output_o\;

ww_S(28) <= \S[28]~output_o\;

ww_S(29) <= \S[29]~output_o\;

ww_S(30) <= \S[30]~output_o\;

ww_S(31) <= \S[31]~output_o\;

ww_S(32) <= \S[32]~output_o\;

ww_S(33) <= \S[33]~output_o\;

ww_S(34) <= \S[34]~output_o\;

ww_S(35) <= \S[35]~output_o\;

ww_S(36) <= \S[36]~output_o\;

ww_S(37) <= \S[37]~output_o\;

ww_S(38) <= \S[38]~output_o\;

ww_S(39) <= \S[39]~output_o\;

ww_S(40) <= \S[40]~output_o\;

ww_S(41) <= \S[41]~output_o\;

ww_S(42) <= \S[42]~output_o\;

ww_S(43) <= \S[43]~output_o\;

ww_S(44) <= \S[44]~output_o\;

ww_S(45) <= \S[45]~output_o\;

ww_S(46) <= \S[46]~output_o\;

ww_S(47) <= \S[47]~output_o\;

ww_S(48) <= \S[48]~output_o\;

ww_S(49) <= \S[49]~output_o\;

ww_S(50) <= \S[50]~output_o\;

ww_S(51) <= \S[51]~output_o\;

ww_S(52) <= \S[52]~output_o\;

ww_S(53) <= \S[53]~output_o\;

ww_S(54) <= \S[54]~output_o\;

ww_S(55) <= \S[55]~output_o\;

ww_S(56) <= \S[56]~output_o\;

ww_S(57) <= \S[57]~output_o\;

ww_S(58) <= \S[58]~output_o\;

ww_S(59) <= \S[59]~output_o\;

ww_S(60) <= \S[60]~output_o\;

ww_S(61) <= \S[61]~output_o\;

ww_S(62) <= \S[62]~output_o\;

ww_S(63) <= \S[63]~output_o\;

ww_Cout <= \Cout~output_o\;

ww_Ovfl <= \Ovfl~output_o\;
END structure;


