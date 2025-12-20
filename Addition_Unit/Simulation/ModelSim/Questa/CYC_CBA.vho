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

-- DATE "11/13/2025 18:57:11"

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
-- S[0]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_U28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \S_internal~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \S_internal~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \S_internal~2_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \S_internal~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[1]~4_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \block_carry_in[1]~2_combout\ : std_logic;
SIGNAL \block_carry_in[1]~3_combout\ : std_logic;
SIGNAL \S_internal~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \block_carry_in[1]~5_combout\ : std_logic;
SIGNAL \S_internal~5_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \S_internal~6_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \S_internal~7_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \block_carry_in[2]~6_combout\ : std_logic;
SIGNAL \block_carry_in[2]~7_combout\ : std_logic;
SIGNAL \block_carry_in[2]~8_combout\ : std_logic;
SIGNAL \block_carry_in[2]~9_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \S_internal~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \S_internal~9_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \S_internal~10_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \S_internal~11_combout\ : std_logic;
SIGNAL \block_carry_in[3]~10_combout\ : std_logic;
SIGNAL \block_carry_in[3]~11_combout\ : std_logic;
SIGNAL \block_carry_in[3]~12_combout\ : std_logic;
SIGNAL \block_carry_in[3]~13_combout\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \S_internal~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \S_internal~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~14_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \S_internal~15_combout\ : std_logic;
SIGNAL \block_carry_in[4]~14_combout\ : std_logic;
SIGNAL \block_carry_in[4]~15_combout\ : std_logic;
SIGNAL \block_carry_in[4]~16_combout\ : std_logic;
SIGNAL \block_carry_in[4]~17_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \S_internal~16_combout\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \S_internal~17_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \S_internal~18_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \S_internal~19_combout\ : std_logic;
SIGNAL \block_carry_in[5]~18_combout\ : std_logic;
SIGNAL \block_carry_in[5]~19_combout\ : std_logic;
SIGNAL \block_carry_in[5]~20_combout\ : std_logic;
SIGNAL \block_carry_in[5]~21_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \S_internal~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \S_internal~21_combout\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~22_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \S_internal~23_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \block_carry_in[6]~22_combout\ : std_logic;
SIGNAL \block_carry_in[6]~23_combout\ : std_logic;
SIGNAL \block_carry_in[6]~24_combout\ : std_logic;
SIGNAL \block_carry_in[6]~25_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \S_internal~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \S_internal~25_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \S_internal~26_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \S_internal~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \block_carry_in[7]~26_combout\ : std_logic;
SIGNAL \block_carry_in[7]~27_combout\ : std_logic;
SIGNAL \block_carry_in[7]~28_combout\ : std_logic;
SIGNAL \block_carry_in[7]~29_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \S_internal~28_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \S_internal~29_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \S_internal~30_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \S_internal~31_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \block_carry_in[8]~30_combout\ : std_logic;
SIGNAL \block_carry_in[8]~31_combout\ : std_logic;
SIGNAL \block_carry_in[8]~32_combout\ : std_logic;
SIGNAL \block_carry_in[8]~33_combout\ : std_logic;
SIGNAL \S_internal~32_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \S_internal~33_combout\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \S_internal~34_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \S_internal~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \block_carry_in[9]~34_combout\ : std_logic;
SIGNAL \block_carry_in[9]~35_combout\ : std_logic;
SIGNAL \block_carry_in[9]~36_combout\ : std_logic;
SIGNAL \block_carry_in[9]~37_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \S_internal~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \S_internal~37_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \S_internal~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \S_internal~39_combout\ : std_logic;
SIGNAL \block_carry_in[10]~38_combout\ : std_logic;
SIGNAL \block_carry_in[10]~39_combout\ : std_logic;
SIGNAL \block_carry_in[10]~40_combout\ : std_logic;
SIGNAL \block_carry_in[10]~41_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \S_internal~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \S_internal~41_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \S_internal~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \S_internal~43_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \block_carry_in[11]~42_combout\ : std_logic;
SIGNAL \block_carry_in[11]~43_combout\ : std_logic;
SIGNAL \block_carry_in[11]~44_combout\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \S_internal~44_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \S_internal~45_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \S_internal~46_combout\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \S_internal~47_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \block_carry_in[12]~47_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \block_carry_in[12]~48_combout\ : std_logic;
SIGNAL \block_carry_in[12]~45_combout\ : std_logic;
SIGNAL \block_carry_in[12]~46_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \S_internal~48_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \block_carry_in[12]~49_combout\ : std_logic;
SIGNAL \S_internal~49_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~50_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|C~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \S_internal~51_combout\ : std_logic;
SIGNAL \block_carry_in[13]~50_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\ : std_logic;
SIGNAL \block_carry_in[13]~51_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:12:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \block_carry_in[13]~52_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \S_internal~52_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \S_internal~53_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|C~0_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \S_internal~54_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \S_internal~55_combout\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \S_internal~56_combout\ : std_logic;
SIGNAL \block_carry_in[14]~53_combout\ : std_logic;
SIGNAL \block_carry_in[14]~59_combout\ : std_logic;
SIGNAL \block_carry_in[14]~54_combout\ : std_logic;
SIGNAL \block_carry_in[14]~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \S_internal~57_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \S_internal~58_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \S_internal~59_combout\ : std_logic;
SIGNAL \S_internal~60_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|C[3]~3_combout\ : std_logic;
SIGNAL \S_internal~61_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:14:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \block_carry_in[15]~56_combout\ : std_logic;
SIGNAL \block_carry_in[15]~57_combout\ : std_logic;
SIGNAL \block_carry_in[15]~58_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \S_internal~62_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \S_internal~63_combout\ : std_logic;
SIGNAL \S_internal~64_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \S_internal~65_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \GEN_BLOCKS:15:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \block_carry_out~2_combout\ : std_logic;
SIGNAL \block_carry_out~5_combout\ : std_logic;
SIGNAL \block_carry_out~3_combout\ : std_logic;
SIGNAL \block_carry_out~4_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL P : std_logic_vector(63 DOWNTO 0);
SIGNAL \GEN_BLOCKS:15:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL S_internal : std_logic_vector(63 DOWNTO 0);
SIGNAL \ALT_INV_Ovfl~0_combout\ : std_logic;

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
\ALT_INV_Ovfl~0_combout\ <= NOT \Ovfl~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X56_Y0_N16
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~0_combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~1_combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~2_combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~3_combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~4_combout\,
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~5_combout\,
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~6_combout\,
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~7_combout\,
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~8_combout\,
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~9_combout\,
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~10_combout\,
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~11_combout\,
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~12_combout\,
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~13_combout\,
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~14_combout\,
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~15_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~16_combout\,
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~17_combout\,
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~18_combout\,
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~19_combout\,
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~20_combout\,
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~21_combout\,
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~22_combout\,
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~23_combout\,
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~24_combout\,
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~25_combout\,
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~26_combout\,
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~27_combout\,
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~28_combout\,
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~29_combout\,
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~30_combout\,
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~31_combout\,
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~32_combout\,
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~33_combout\,
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~34_combout\,
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~35_combout\,
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~36_combout\,
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~37_combout\,
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~38_combout\,
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~39_combout\,
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~40_combout\,
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~41_combout\,
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~42_combout\,
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~43_combout\,
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~44_combout\,
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~45_combout\,
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~46_combout\,
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~47_combout\,
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~48_combout\,
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~49_combout\,
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~50_combout\,
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~51_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~52_combout\,
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~53_combout\,
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~54_combout\,
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~56_combout\,
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~57_combout\,
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~58_combout\,
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~60_combout\,
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~61_combout\,
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X115_Y16_N9
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~62_combout\,
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~63_combout\,
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_internal~65_combout\,
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X115_Y22_N16
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_internal(63),
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X115_Y22_N23
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \block_carry_out~4_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X115_Y17_N2
\Ovfl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Ovfl~0_combout\,
	devoe => ww_devoe,
	o => \Ovfl~output_o\);

-- Location: IOIBUF_X52_Y0_N22
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X53_Y4_N24
\S_internal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~0_combout\ = \Cin~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \S_internal~0_combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X53_Y4_N10
\P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(1) = \A[1]~input_o\ $ (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => P(1));

-- Location: LCCOMB_X53_Y4_N28
\S_internal~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~1_combout\ = P(1) $ (((\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(1),
	datab => \Cin~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \S_internal~1_combout\);

-- Location: LCCOMB_X53_Y4_N8
\GEN_BLOCKS:0:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X53_Y4_N14
\GEN_BLOCKS:0:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X54_Y0_N1
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X53_Y4_N18
\P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => P(2));

-- Location: LCCOMB_X53_Y4_N20
\S_internal~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~2_combout\ = P(2) $ (((\GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\) # ((\Cin~input_o\ & \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \GEN_BLOCKS:0:LACG_INST|g_int[1]~0_combout\,
	datac => \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datad => P(2),
	combout => \S_internal~2_combout\);

-- Location: IOIBUF_X54_Y0_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X53_Y4_N0
\GEN_BLOCKS:0:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X53_Y4_N2
\GEN_BLOCKS:0:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\ & ((\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \GEN_BLOCKS:0:LACG_INST|C[3]~0_combout\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X54_Y0_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LCCOMB_X53_Y4_N30
\GEN_BLOCKS:0:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\B[2]~input_o\ & (\A[1]~input_o\ & (\A[2]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X53_Y4_N12
\S_internal~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~3_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\ $ (((\GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\) # (\GEN_BLOCKS:0:LACG_INST|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \GEN_BLOCKS:0:LACG_INST|g_int~1_combout\,
	combout => \S_internal~3_combout\);

-- Location: IOIBUF_X49_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: LCCOMB_X53_Y4_N4
\GEN_BLOCKS:0:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\A[2]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X53_Y4_N6
\GEN_BLOCKS:0:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = (\A[3]~input_o\ & (!\B[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\)))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & (\A[2]~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X53_Y4_N22
\block_carry_in[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[1]~4_combout\ = (\GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ((\GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (\Cin~input_o\)) # (!\GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & ((\GEN_BLOCKS:0:LACG_INST|g_int~2_combout\))))) # 
-- (!\GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & (((\GEN_BLOCKS:0:LACG_INST|g_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \GEN_BLOCKS:0:LACG_INST|g_int~2_combout\,
	datac => \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datad => \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	combout => \block_carry_in[1]~4_combout\);

-- Location: IOIBUF_X52_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X53_Y4_N16
\block_carry_in[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[1]~2_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \block_carry_in[1]~2_combout\);

-- Location: LCCOMB_X53_Y4_N26
\block_carry_in[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[1]~3_combout\ = (\block_carry_in[1]~2_combout\ & (!\GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \block_carry_in[1]~2_combout\,
	datac => \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datad => \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	combout => \block_carry_in[1]~3_combout\);

-- Location: LCCOMB_X50_Y4_N24
\S_internal~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~4_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\block_carry_in[1]~4_combout\) # (\block_carry_in[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \block_carry_in[1]~4_combout\,
	datac => \B[4]~input_o\,
	datad => \block_carry_in[1]~3_combout\,
	combout => \S_internal~4_combout\);

-- Location: IOIBUF_X42_Y0_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X50_Y4_N2
\P[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(5) = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[5]~input_o\,
	datad => \B[5]~input_o\,
	combout => P(5));

-- Location: LCCOMB_X52_Y4_N8
\block_carry_in[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[1]~5_combout\ = (\block_carry_in[1]~4_combout\) # ((\block_carry_in[1]~2_combout\ & (!\GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[1]~4_combout\,
	datab => \block_carry_in[1]~2_combout\,
	datac => \GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datad => \GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	combout => \block_carry_in[1]~5_combout\);

-- Location: LCCOMB_X50_Y4_N4
\S_internal~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~5_combout\ = P(5) $ (((\A[4]~input_o\ & ((\B[4]~input_o\) # (\block_carry_in[1]~5_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \block_carry_in[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => P(5),
	datac => \B[4]~input_o\,
	datad => \block_carry_in[1]~5_combout\,
	combout => \S_internal~5_combout\);

-- Location: LCCOMB_X50_Y4_N30
\GEN_BLOCKS:1:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ $ (\A[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X50_Y4_N8
\GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X42_Y0_N22
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X50_Y4_N26
\P[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(6) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => P(6));

-- Location: LCCOMB_X50_Y4_N28
\S_internal~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~6_combout\ = P(6) $ (((\GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\) # ((\GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & \block_carry_in[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datab => \GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\,
	datac => P(6),
	datad => \block_carry_in[1]~5_combout\,
	combout => \S_internal~6_combout\);

-- Location: IOIBUF_X49_Y0_N22
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X50_Y4_N14
\GEN_BLOCKS:1:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # ((\A[5]~input_o\ & \B[5]~input_o\)))) # (!\A[6]~input_o\ & (\A[5]~input_o\ & (\B[6]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[5]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X45_Y0_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X50_Y4_N16
\GEN_BLOCKS:1:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ = (\A[5]~input_o\ & (!\B[5]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\A[6]~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \B[5]~input_o\,
	combout => \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X50_Y4_N10
\GEN_BLOCKS:1:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\ & ((\A[4]~input_o\ & ((\B[4]~input_o\) # (\block_carry_in[1]~5_combout\))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & \block_carry_in[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \GEN_BLOCKS:1:LACG_INST|C[3]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \block_carry_in[1]~5_combout\,
	combout => \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X50_Y4_N20
\S_internal~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~7_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\ $ (((\GEN_BLOCKS:1:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datab => \GEN_BLOCKS:1:LACG_INST|g_int~1_combout\,
	datac => \B[7]~input_o\,
	datad => \GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\,
	combout => \S_internal~7_combout\);

-- Location: IOIBUF_X9_Y0_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X50_Y4_N6
\block_carry_in[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[2]~6_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[5]~input_o\ & (\B[4]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[4]~input_o\,
	combout => \block_carry_in[2]~6_combout\);

-- Location: LCCOMB_X50_Y4_N0
\block_carry_in[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[2]~7_combout\ = (\GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & (((\block_carry_in[1]~4_combout\) # (\block_carry_in[1]~3_combout\)))) # (!\GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & (\block_carry_in[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[2]~6_combout\,
	datab => \block_carry_in[1]~4_combout\,
	datac => \GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datad => \block_carry_in[1]~3_combout\,
	combout => \block_carry_in[2]~7_combout\);

-- Location: LCCOMB_X50_Y4_N18
\block_carry_in[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[2]~8_combout\ = (\A[6]~input_o\ & ((\B[6]~input_o\) # (\block_carry_in[2]~7_combout\))) # (!\A[6]~input_o\ & (\B[6]~input_o\ & \block_carry_in[2]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \block_carry_in[2]~7_combout\,
	combout => \block_carry_in[2]~8_combout\);

-- Location: LCCOMB_X50_Y4_N12
\block_carry_in[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[2]~9_combout\ = (\A[7]~input_o\ & ((\B[7]~input_o\) # (\block_carry_in[2]~8_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \block_carry_in[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \block_carry_in[2]~8_combout\,
	combout => \block_carry_in[2]~9_combout\);

-- Location: IOIBUF_X11_Y0_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X10_Y4_N16
\S_internal~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~8_combout\ = \B[8]~input_o\ $ (\block_carry_in[2]~9_combout\ $ (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[8]~input_o\,
	datac => \block_carry_in[2]~9_combout\,
	datad => \A[8]~input_o\,
	combout => \S_internal~8_combout\);

-- Location: IOIBUF_X11_Y0_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X10_Y4_N10
\P[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(9) = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	combout => P(9));

-- Location: LCCOMB_X10_Y4_N12
\S_internal~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~9_combout\ = P(9) $ (((\B[8]~input_o\ & ((\block_carry_in[2]~9_combout\) # (\A[8]~input_o\))) # (!\B[8]~input_o\ & (\block_carry_in[2]~9_combout\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(9),
	datab => \B[8]~input_o\,
	datac => \block_carry_in[2]~9_combout\,
	datad => \A[8]~input_o\,
	combout => \S_internal~9_combout\);

-- Location: LCCOMB_X10_Y4_N8
\GEN_BLOCKS:2:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[9]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X11_Y0_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X10_Y4_N26
\P[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(10) = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	combout => P(10));

-- Location: LCCOMB_X10_Y4_N6
\GEN_BLOCKS:2:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X10_Y4_N20
\S_internal~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~10_combout\ = P(10) $ (((\GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\) # ((\block_carry_in[2]~9_combout\ & \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[2]~9_combout\,
	datab => \GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\,
	datac => P(10),
	datad => \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	combout => \S_internal~10_combout\);

-- Location: LCCOMB_X10_Y4_N30
\GEN_BLOCKS:2:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\A[9]~input_o\ & \B[9]~input_o\)))) # (!\B[10]~input_o\ & (\A[9]~input_o\ & (\A[10]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[9]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X10_Y4_N0
\GEN_BLOCKS:2:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\ = (\A[9]~input_o\ & (!\B[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\)))) # (!\A[9]~input_o\ & (\B[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[9]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X10_Y4_N2
\GEN_BLOCKS:2:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\ & ((\B[8]~input_o\ & ((\block_carry_in[2]~9_combout\) # (\A[8]~input_o\))) # (!\B[8]~input_o\ & (\block_carry_in[2]~9_combout\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \GEN_BLOCKS:2:LACG_INST|C[3]~0_combout\,
	datac => \block_carry_in[2]~9_combout\,
	datad => \A[8]~input_o\,
	combout => \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X5_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X10_Y4_N28
\S_internal~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~11_combout\ = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\GEN_BLOCKS:2:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:2:LACG_INST|g_int~1_combout\,
	datab => \GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \S_internal~11_combout\);

-- Location: LCCOMB_X10_Y4_N14
\block_carry_in[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[3]~10_combout\ = (\B[9]~input_o\ & ((\A[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\B[9]~input_o\ & (\B[8]~input_o\ & (\A[9]~input_o\ & \A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[8]~input_o\,
	combout => \block_carry_in[3]~10_combout\);

-- Location: LCCOMB_X10_Y4_N24
\block_carry_in[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[3]~11_combout\ = (\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ((\block_carry_in[2]~9_combout\))) # (!\GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & (\block_carry_in[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	datab => \block_carry_in[3]~10_combout\,
	datac => \block_carry_in[2]~9_combout\,
	combout => \block_carry_in[3]~11_combout\);

-- Location: LCCOMB_X10_Y4_N18
\block_carry_in[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[3]~12_combout\ = (\A[10]~input_o\ & ((\block_carry_in[3]~11_combout\) # (\B[10]~input_o\))) # (!\A[10]~input_o\ & (\block_carry_in[3]~11_combout\ & \B[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \block_carry_in[3]~11_combout\,
	datac => \B[10]~input_o\,
	combout => \block_carry_in[3]~12_combout\);

-- Location: LCCOMB_X10_Y4_N4
\block_carry_in[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[3]~13_combout\ = (\block_carry_in[3]~12_combout\ & ((\A[11]~input_o\) # (\B[11]~input_o\))) # (!\block_carry_in[3]~12_combout\ & (\A[11]~input_o\ & \B[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \block_carry_in[3]~12_combout\,
	datac => \A[11]~input_o\,
	datad => \B[11]~input_o\,
	combout => \block_carry_in[3]~13_combout\);

-- Location: IOIBUF_X115_Y29_N8
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X115_Y27_N8
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X114_Y27_N16
\S_internal~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~12_combout\ = \block_carry_in[3]~13_combout\ $ (\B[12]~input_o\ $ (\A[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[3]~13_combout\,
	datab => \B[12]~input_o\,
	datad => \A[12]~input_o\,
	combout => \S_internal~12_combout\);

-- Location: IOIBUF_X115_Y26_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X115_Y27_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X114_Y27_N26
\P[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(13) = \B[13]~input_o\ $ (\A[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => P(13));

-- Location: LCCOMB_X114_Y27_N20
\S_internal~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~13_combout\ = P(13) $ (((\block_carry_in[3]~13_combout\ & ((\B[12]~input_o\) # (\A[12]~input_o\))) # (!\block_carry_in[3]~13_combout\ & (\B[12]~input_o\ & \A[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[3]~13_combout\,
	datab => \B[12]~input_o\,
	datac => P(13),
	datad => \A[12]~input_o\,
	combout => \S_internal~13_combout\);

-- Location: IOIBUF_X115_Y25_N22
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X115_Y28_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X114_Y27_N2
\P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(14) = \A[14]~input_o\ $ (\B[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => P(14));

-- Location: LCCOMB_X114_Y27_N22
\GEN_BLOCKS:3:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ = (\A[12]~input_o\ & (!\B[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\)))) # (!\A[12]~input_o\ & (\B[12]~input_o\ & (\A[13]~input_o\ $ (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X114_Y27_N0
\GEN_BLOCKS:3:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\A[13]~input_o\ & (\A[12]~input_o\ & (\B[13]~input_o\ & \B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X114_Y27_N12
\S_internal~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~14_combout\ = P(14) $ (((\GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\) # ((\block_carry_in[3]~13_combout\ & \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[3]~13_combout\,
	datab => P(14),
	datac => \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	datad => \GEN_BLOCKS:3:LACG_INST|g_int[1]~0_combout\,
	combout => \S_internal~14_combout\);

-- Location: IOIBUF_X115_Y28_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X114_Y27_N24
\GEN_BLOCKS:3:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ = (\B[13]~input_o\ & (!\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\)))) # (!\B[13]~input_o\ & (\A[13]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))

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
	combout => \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X114_Y27_N18
\GEN_BLOCKS:3:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\ & ((\block_carry_in[3]~13_combout\ & ((\A[12]~input_o\) # (\B[12]~input_o\))) # (!\block_carry_in[3]~13_combout\ & (\A[12]~input_o\ & \B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[3]~13_combout\,
	datab => \GEN_BLOCKS:3:LACG_INST|C[3]~0_combout\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X114_Y27_N30
\GEN_BLOCKS:3:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[13]~input_o\ & (\A[13]~input_o\ & \B[14]~input_o\)))

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
	combout => \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X115_Y30_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X114_Y27_N4
\S_internal~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~15_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\ $ (((\GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\) # (\GEN_BLOCKS:3:LACG_INST|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\,
	datac => \GEN_BLOCKS:3:LACG_INST|g_int~1_combout\,
	datad => \B[15]~input_o\,
	combout => \S_internal~15_combout\);

-- Location: LCCOMB_X114_Y27_N6
\block_carry_in[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[4]~14_combout\ = (\A[13]~input_o\ & ((\B[13]~input_o\) # ((\A[12]~input_o\ & \B[12]~input_o\)))) # (!\A[13]~input_o\ & (\A[12]~input_o\ & (\B[13]~input_o\ & \B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \B[12]~input_o\,
	combout => \block_carry_in[4]~14_combout\);

-- Location: LCCOMB_X114_Y27_N8
\block_carry_in[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[4]~15_combout\ = (\GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (\block_carry_in[3]~13_combout\)) # (!\GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & ((\block_carry_in[4]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[3]~13_combout\,
	datac => \GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	datad => \block_carry_in[4]~14_combout\,
	combout => \block_carry_in[4]~15_combout\);

-- Location: LCCOMB_X114_Y27_N10
\block_carry_in[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[4]~16_combout\ = (\A[14]~input_o\ & ((\block_carry_in[4]~15_combout\) # (\B[14]~input_o\))) # (!\A[14]~input_o\ & (\block_carry_in[4]~15_combout\ & \B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \block_carry_in[4]~15_combout\,
	datad => \B[14]~input_o\,
	combout => \block_carry_in[4]~16_combout\);

-- Location: LCCOMB_X114_Y27_N28
\block_carry_in[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[4]~17_combout\ = (\block_carry_in[4]~16_combout\ & ((\A[15]~input_o\) # (\B[15]~input_o\))) # (!\block_carry_in[4]~16_combout\ & (\A[15]~input_o\ & \B[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[4]~16_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \block_carry_in[4]~17_combout\);

-- Location: IOIBUF_X25_Y73_N22
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X29_Y73_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X26_Y72_N0
\S_internal~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~16_combout\ = \block_carry_in[4]~17_combout\ $ (\A[16]~input_o\ $ (\B[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[4]~17_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	combout => \S_internal~16_combout\);

-- Location: IOIBUF_X23_Y73_N8
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: IOIBUF_X25_Y73_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X26_Y72_N10
\P[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(17) = \B[17]~input_o\ $ (\A[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	combout => P(17));

-- Location: LCCOMB_X26_Y72_N4
\S_internal~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~17_combout\ = P(17) $ (((\B[16]~input_o\ & ((\A[16]~input_o\) # (\block_carry_in[4]~17_combout\))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & \block_carry_in[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \block_carry_in[4]~17_combout\,
	datad => P(17),
	combout => \S_internal~17_combout\);

-- Location: LCCOMB_X26_Y72_N6
\GEN_BLOCKS:4:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ = (\A[17]~input_o\ & (!\B[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & (\B[16]~input_o\ $ (\A[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X26_Y72_N16
\GEN_BLOCKS:4:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X20_Y73_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X26_Y72_N18
\P[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(18) = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \B[18]~input_o\,
	combout => P(18));

-- Location: LCCOMB_X26_Y72_N20
\S_internal~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~18_combout\ = P(18) $ (((\GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\) # ((\GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & \block_carry_in[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	datab => \GEN_BLOCKS:4:LACG_INST|g_int[1]~0_combout\,
	datac => \block_carry_in[4]~17_combout\,
	datad => P(18),
	combout => \S_internal~18_combout\);

-- Location: IOIBUF_X29_Y73_N1
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X23_Y73_N1
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: LCCOMB_X26_Y72_N30
\GEN_BLOCKS:4:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # ((\B[17]~input_o\ & \A[17]~input_o\)))) # (!\B[18]~input_o\ & (\B[17]~input_o\ & (\A[17]~input_o\ & \A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X26_Y72_N24
\GEN_BLOCKS:4:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\ = (\B[18]~input_o\ & (!\A[18]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\)))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & (\B[17]~input_o\ $ (\A[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \B[17]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[18]~input_o\,
	combout => \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X26_Y72_N2
\GEN_BLOCKS:4:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\ & ((\block_carry_in[4]~17_combout\ & ((\A[16]~input_o\) # (\B[16]~input_o\))) # (!\block_carry_in[4]~17_combout\ & (\A[16]~input_o\ & \B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[4]~17_combout\,
	datab => \A[16]~input_o\,
	datac => \B[16]~input_o\,
	datad => \GEN_BLOCKS:4:LACG_INST|C[3]~0_combout\,
	combout => \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X26_Y72_N12
\S_internal~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~19_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (((\GEN_BLOCKS:4:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \GEN_BLOCKS:4:LACG_INST|g_int~1_combout\,
	datad => \GEN_BLOCKS:4:LACG_INST|C[3]~1_combout\,
	combout => \S_internal~19_combout\);

-- Location: LCCOMB_X26_Y72_N22
\block_carry_in[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[5]~18_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[17]~input_o\ & (\B[16]~input_o\ & \A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[17]~input_o\,
	datab => \B[17]~input_o\,
	datac => \B[16]~input_o\,
	datad => \A[16]~input_o\,
	combout => \block_carry_in[5]~18_combout\);

-- Location: LCCOMB_X26_Y72_N8
\block_carry_in[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[5]~19_combout\ = (\GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & ((\block_carry_in[4]~17_combout\))) # (!\GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & (\block_carry_in[5]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[5]~18_combout\,
	datac => \block_carry_in[4]~17_combout\,
	datad => \GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	combout => \block_carry_in[5]~19_combout\);

-- Location: LCCOMB_X26_Y72_N26
\block_carry_in[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[5]~20_combout\ = (\B[18]~input_o\ & ((\A[18]~input_o\) # (\block_carry_in[5]~19_combout\))) # (!\B[18]~input_o\ & (\A[18]~input_o\ & \block_carry_in[5]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[18]~input_o\,
	datab => \A[18]~input_o\,
	datac => \block_carry_in[5]~19_combout\,
	combout => \block_carry_in[5]~20_combout\);

-- Location: LCCOMB_X26_Y72_N28
\block_carry_in[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[5]~21_combout\ = (\A[19]~input_o\ & ((\block_carry_in[5]~20_combout\) # (\B[19]~input_o\))) # (!\A[19]~input_o\ & (\block_carry_in[5]~20_combout\ & \B[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \block_carry_in[5]~20_combout\,
	datad => \B[19]~input_o\,
	combout => \block_carry_in[5]~21_combout\);

-- Location: IOIBUF_X87_Y0_N15
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X88_Y1_N8
\S_internal~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~20_combout\ = \block_carry_in[5]~21_combout\ $ (\A[20]~input_o\ $ (\B[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[5]~21_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \S_internal~20_combout\);

-- Location: IOIBUF_X89_Y0_N8
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X88_Y1_N26
\P[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(21) = \A[21]~input_o\ $ (\B[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => P(21));

-- Location: LCCOMB_X88_Y1_N28
\S_internal~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~21_combout\ = P(21) $ (((\block_carry_in[5]~21_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\))) # (!\block_carry_in[5]~21_combout\ & (\A[20]~input_o\ & \B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[5]~21_combout\,
	datab => \A[20]~input_o\,
	datac => P(21),
	datad => \B[20]~input_o\,
	combout => \S_internal~21_combout\);

-- Location: IOIBUF_X85_Y0_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X88_Y1_N2
\P[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(22) = \A[22]~input_o\ $ (\B[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datac => \B[22]~input_o\,
	combout => P(22));

-- Location: LCCOMB_X88_Y1_N30
\GEN_BLOCKS:5:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ = (\A[21]~input_o\ & (!\B[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & (\A[20]~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X88_Y1_N24
\GEN_BLOCKS:5:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & (\A[20]~input_o\ & \B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X88_Y1_N20
\S_internal~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~22_combout\ = P(22) $ (((\GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\) # ((\block_carry_in[5]~21_combout\ & \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[5]~21_combout\,
	datab => P(22),
	datac => \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\,
	datad => \GEN_BLOCKS:5:LACG_INST|g_int[1]~0_combout\,
	combout => \S_internal~22_combout\);

-- Location: LCCOMB_X88_Y1_N6
\GEN_BLOCKS:5:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\) # ((\A[21]~input_o\ & \B[21]~input_o\)))) # (!\A[22]~input_o\ & (\A[21]~input_o\ & (\B[22]~input_o\ & \B[21]~input_o\)))

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
	combout => \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X88_Y1_N16
\GEN_BLOCKS:5:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\ = (\A[22]~input_o\ & (!\B[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\)))) # (!\A[22]~input_o\ & (\B[22]~input_o\ & (\A[21]~input_o\ $ (\B[21]~input_o\))))

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
	combout => \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X88_Y1_N18
\GEN_BLOCKS:5:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\ & ((\block_carry_in[5]~21_combout\ & ((\A[20]~input_o\) # (\B[20]~input_o\))) # (!\block_carry_in[5]~21_combout\ & (\A[20]~input_o\ & \B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[5]~21_combout\,
	datab => \GEN_BLOCKS:5:LACG_INST|C[3]~0_combout\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X94_Y0_N1
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X89_Y0_N15
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X88_Y1_N4
\S_internal~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~23_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (((\GEN_BLOCKS:5:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:5:LACG_INST|g_int~1_combout\,
	datab => \GEN_BLOCKS:5:LACG_INST|C[3]~1_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \S_internal~23_combout\);

-- Location: IOIBUF_X74_Y0_N15
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X88_Y1_N14
\block_carry_in[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[6]~22_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\) # ((\A[20]~input_o\ & \B[20]~input_o\)))) # (!\A[21]~input_o\ & (\B[21]~input_o\ & (\A[20]~input_o\ & \B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[20]~input_o\,
	datad => \B[20]~input_o\,
	combout => \block_carry_in[6]~22_combout\);

-- Location: LCCOMB_X88_Y1_N0
\block_carry_in[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[6]~23_combout\ = (\GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & (\block_carry_in[5]~21_combout\)) # (!\GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & ((\block_carry_in[6]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[5]~21_combout\,
	datab => \block_carry_in[6]~22_combout\,
	datac => \GEN_BLOCKS:5:LACG_INST|Pout~0_combout\,
	combout => \block_carry_in[6]~23_combout\);

-- Location: LCCOMB_X88_Y1_N10
\block_carry_in[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[6]~24_combout\ = (\A[22]~input_o\ & ((\block_carry_in[6]~23_combout\) # (\B[22]~input_o\))) # (!\A[22]~input_o\ & (\block_carry_in[6]~23_combout\ & \B[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \block_carry_in[6]~23_combout\,
	datac => \B[22]~input_o\,
	combout => \block_carry_in[6]~24_combout\);

-- Location: LCCOMB_X88_Y1_N12
\block_carry_in[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[6]~25_combout\ = (\block_carry_in[6]~24_combout\ & ((\A[23]~input_o\) # (\B[23]~input_o\))) # (!\block_carry_in[6]~24_combout\ & (\A[23]~input_o\ & \B[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[6]~24_combout\,
	datac => \A[23]~input_o\,
	datad => \B[23]~input_o\,
	combout => \block_carry_in[6]~25_combout\);

-- Location: IOIBUF_X79_Y0_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X79_Y1_N16
\S_internal~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~24_combout\ = \B[24]~input_o\ $ (\block_carry_in[6]~25_combout\ $ (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \block_carry_in[6]~25_combout\,
	datac => \A[24]~input_o\,
	combout => \S_internal~24_combout\);

-- Location: IOIBUF_X79_Y0_N22
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X79_Y1_N26
\P[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(25) = \A[25]~input_o\ $ (\B[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => P(25));

-- Location: LCCOMB_X79_Y1_N28
\S_internal~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~25_combout\ = P(25) $ (((\B[24]~input_o\ & ((\block_carry_in[6]~25_combout\) # (\A[24]~input_o\))) # (!\B[24]~input_o\ & (\block_carry_in[6]~25_combout\ & \A[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \block_carry_in[6]~25_combout\,
	datac => P(25),
	datad => \A[24]~input_o\,
	combout => \S_internal~25_combout\);

-- Location: LCCOMB_X79_Y1_N22
\GEN_BLOCKS:6:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ = (\B[24]~input_o\ & (!\A[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \B[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X79_Y1_N0
\GEN_BLOCKS:6:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\B[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \B[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X79_Y0_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X79_Y1_N2
\P[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(26) = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	combout => P(26));

-- Location: LCCOMB_X79_Y1_N12
\S_internal~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~26_combout\ = P(26) $ (((\GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\) # ((\GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & \block_carry_in[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datab => \GEN_BLOCKS:6:LACG_INST|g_int[1]~0_combout\,
	datac => \block_carry_in[6]~25_combout\,
	datad => P(26),
	combout => \S_internal~26_combout\);

-- Location: LCCOMB_X79_Y1_N30
\GEN_BLOCKS:6:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\ = (\A[26]~input_o\ & ((\B[26]~input_o\) # ((\A[25]~input_o\ & \B[25]~input_o\)))) # (!\A[26]~input_o\ & (\A[25]~input_o\ & (\B[26]~input_o\ & \B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X79_Y1_N24
\GEN_BLOCKS:6:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\ = (\A[25]~input_o\ & (!\B[25]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\)))) # (!\A[25]~input_o\ & (\B[25]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[25]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \B[25]~input_o\,
	combout => \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X79_Y1_N18
\GEN_BLOCKS:6:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\ & ((\B[24]~input_o\ & ((\A[24]~input_o\) # (\block_carry_in[6]~25_combout\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & \block_carry_in[6]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \block_carry_in[6]~25_combout\,
	datad => \GEN_BLOCKS:6:LACG_INST|C[3]~0_combout\,
	combout => \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X79_Y0_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X79_Y1_N20
\S_internal~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~27_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (((\GEN_BLOCKS:6:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:6:LACG_INST|g_int~1_combout\,
	datab => \GEN_BLOCKS:6:LACG_INST|C[3]~1_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \S_internal~27_combout\);

-- Location: IOIBUF_X67_Y0_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X79_Y1_N6
\block_carry_in[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[7]~26_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\B[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \B[25]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[25]~input_o\,
	combout => \block_carry_in[7]~26_combout\);

-- Location: LCCOMB_X79_Y1_N8
\block_carry_in[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[7]~27_combout\ = (\GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & ((\block_carry_in[6]~25_combout\))) # (!\GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & (\block_carry_in[7]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[7]~26_combout\,
	datab => \block_carry_in[6]~25_combout\,
	datac => \GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	combout => \block_carry_in[7]~27_combout\);

-- Location: LCCOMB_X79_Y1_N10
\block_carry_in[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[7]~28_combout\ = (\block_carry_in[7]~27_combout\ & ((\B[26]~input_o\) # (\A[26]~input_o\))) # (!\block_carry_in[7]~27_combout\ & (\B[26]~input_o\ & \A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \block_carry_in[7]~27_combout\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \block_carry_in[7]~28_combout\);

-- Location: LCCOMB_X79_Y1_N4
\block_carry_in[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[7]~29_combout\ = (\block_carry_in[7]~28_combout\ & ((\A[27]~input_o\) # (\B[27]~input_o\))) # (!\block_carry_in[7]~28_combout\ & (\A[27]~input_o\ & \B[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[7]~28_combout\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \block_carry_in[7]~29_combout\);

-- Location: IOIBUF_X74_Y0_N8
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X70_Y1_N24
\S_internal~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~28_combout\ = \A[28]~input_o\ $ (\block_carry_in[7]~29_combout\ $ (\B[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datac => \block_carry_in[7]~29_combout\,
	datad => \B[28]~input_o\,
	combout => \S_internal~28_combout\);

-- Location: IOIBUF_X67_Y0_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X70_Y1_N26
\P[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(29) = \A[29]~input_o\ $ (\B[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	combout => P(29));

-- Location: LCCOMB_X70_Y1_N4
\S_internal~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~29_combout\ = P(29) $ (((\A[28]~input_o\ & ((\block_carry_in[7]~29_combout\) # (\B[28]~input_o\))) # (!\A[28]~input_o\ & (\block_carry_in[7]~29_combout\ & \B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \block_carry_in[7]~29_combout\,
	datac => P(29),
	datad => \B[28]~input_o\,
	combout => \S_internal~29_combout\);

-- Location: LCCOMB_X70_Y1_N22
\GEN_BLOCKS:7:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ = (\A[28]~input_o\ & (!\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \B[28]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X70_Y1_N8
\GEN_BLOCKS:7:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[29]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \B[28]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X72_Y0_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X70_Y1_N2
\P[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(30) = \B[30]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => P(30));

-- Location: LCCOMB_X70_Y1_N20
\S_internal~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~30_combout\ = P(30) $ (((\GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\) # ((\GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ & \block_carry_in[7]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\,
	datab => \GEN_BLOCKS:7:LACG_INST|g_int[1]~0_combout\,
	datac => \block_carry_in[7]~29_combout\,
	datad => P(30),
	combout => \S_internal~30_combout\);

-- Location: LCCOMB_X70_Y1_N30
\GEN_BLOCKS:7:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # ((\B[29]~input_o\ & \A[29]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & (\B[29]~input_o\ & \A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X72_Y0_N1
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X70_Y1_N0
\GEN_BLOCKS:7:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ = (\A[30]~input_o\ & (!\B[30]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\)))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & (\B[29]~input_o\ $ (\A[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X70_Y1_N18
\GEN_BLOCKS:7:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\ & ((\A[28]~input_o\ & ((\block_carry_in[7]~29_combout\) # (\B[28]~input_o\))) # (!\A[28]~input_o\ & (\block_carry_in[7]~29_combout\ & \B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \GEN_BLOCKS:7:LACG_INST|C[3]~0_combout\,
	datac => \block_carry_in[7]~29_combout\,
	datad => \B[28]~input_o\,
	combout => \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\);

-- Location: IOIBUF_X74_Y0_N22
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X70_Y1_N12
\S_internal~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~31_combout\ = \B[31]~input_o\ $ (\A[31]~input_o\ $ (((\GEN_BLOCKS:7:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:7:LACG_INST|g_int~1_combout\,
	datab => \B[31]~input_o\,
	datac => \GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\,
	datad => \A[31]~input_o\,
	combout => \S_internal~31_combout\);

-- Location: IOIBUF_X65_Y0_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X70_Y1_N6
\block_carry_in[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[8]~30_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[29]~input_o\ & \B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \B[28]~input_o\,
	combout => \block_carry_in[8]~30_combout\);

-- Location: LCCOMB_X70_Y1_N16
\block_carry_in[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[8]~31_combout\ = (\GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ & (\block_carry_in[7]~29_combout\)) # (!\GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ & ((\block_carry_in[8]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:7:LACG_INST|Pout~0_combout\,
	datac => \block_carry_in[7]~29_combout\,
	datad => \block_carry_in[8]~30_combout\,
	combout => \block_carry_in[8]~31_combout\);

-- Location: LCCOMB_X70_Y1_N10
\block_carry_in[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[8]~32_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\) # (\block_carry_in[8]~31_combout\))) # (!\A[30]~input_o\ & (\B[30]~input_o\ & \block_carry_in[8]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[30]~input_o\,
	datad => \block_carry_in[8]~31_combout\,
	combout => \block_carry_in[8]~32_combout\);

-- Location: LCCOMB_X70_Y1_N28
\block_carry_in[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[8]~33_combout\ = (\block_carry_in[8]~32_combout\ & ((\B[31]~input_o\) # (\A[31]~input_o\))) # (!\block_carry_in[8]~32_combout\ & (\B[31]~input_o\ & \A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[8]~32_combout\,
	datab => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \block_carry_in[8]~33_combout\);

-- Location: LCCOMB_X62_Y1_N24
\S_internal~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~32_combout\ = \B[32]~input_o\ $ (\A[32]~input_o\ $ (\block_carry_in[8]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[32]~input_o\,
	datac => \A[32]~input_o\,
	datad => \block_carry_in[8]~33_combout\,
	combout => \S_internal~32_combout\);

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

-- Location: IOIBUF_X65_Y0_N8
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X62_Y1_N26
\P[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(33) = \B[33]~input_o\ $ (\A[33]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datac => \A[33]~input_o\,
	combout => P(33));

-- Location: LCCOMB_X62_Y1_N28
\S_internal~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~33_combout\ = P(33) $ (((\B[32]~input_o\ & ((\A[32]~input_o\) # (\block_carry_in[8]~33_combout\))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & \block_carry_in[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(33),
	datab => \B[32]~input_o\,
	datac => \A[32]~input_o\,
	datad => \block_carry_in[8]~33_combout\,
	combout => \S_internal~33_combout\);

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

-- Location: IOIBUF_X65_Y0_N15
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: LCCOMB_X62_Y1_N18
\P[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(34) = \A[34]~input_o\ $ (\B[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datad => \B[34]~input_o\,
	combout => P(34));

-- Location: LCCOMB_X62_Y1_N16
\GEN_BLOCKS:8:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[32]~input_o\ & (\A[33]~input_o\ & \B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[32]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X62_Y1_N30
\GEN_BLOCKS:8:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ = (\B[33]~input_o\ & (!\A[33]~input_o\ & (\A[32]~input_o\ $ (\B[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\A[32]~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[32]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X62_Y1_N4
\S_internal~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~34_combout\ = P(34) $ (((\GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\) # ((\GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & \block_carry_in[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(34),
	datab => \GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\,
	datac => \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\,
	datad => \block_carry_in[8]~33_combout\,
	combout => \S_internal~34_combout\);

-- Location: IOIBUF_X62_Y0_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X62_Y1_N14
\GEN_BLOCKS:8:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\ = (\A[34]~input_o\ & ((\B[34]~input_o\) # ((\B[33]~input_o\ & \A[33]~input_o\)))) # (!\A[34]~input_o\ & (\B[33]~input_o\ & (\A[33]~input_o\ & \B[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[34]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[34]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X62_Y73_N22
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X62_Y1_N0
\GEN_BLOCKS:8:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\ = (\B[33]~input_o\ & (!\A[33]~input_o\ & (\A[34]~input_o\ $ (\B[34]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\A[34]~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[34]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[34]~input_o\,
	combout => \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X62_Y1_N2
\GEN_BLOCKS:8:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\ & ((\B[32]~input_o\ & ((\A[32]~input_o\) # (\block_carry_in[8]~33_combout\))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & \block_carry_in[8]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \GEN_BLOCKS:8:LACG_INST|C[3]~0_combout\,
	datac => \A[32]~input_o\,
	datad => \block_carry_in[8]~33_combout\,
	combout => \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X62_Y1_N20
\S_internal~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~35_combout\ = \A[35]~input_o\ $ (\B[35]~input_o\ $ (((\GEN_BLOCKS:8:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \GEN_BLOCKS:8:LACG_INST|g_int~1_combout\,
	datac => \B[35]~input_o\,
	datad => \GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\,
	combout => \S_internal~35_combout\);

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

-- Location: LCCOMB_X62_Y1_N6
\block_carry_in[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[9]~34_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\A[32]~input_o\ & \B[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[32]~input_o\ & (\A[33]~input_o\ & \B[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[32]~input_o\,
	datac => \A[33]~input_o\,
	datad => \B[32]~input_o\,
	combout => \block_carry_in[9]~34_combout\);

-- Location: LCCOMB_X62_Y1_N8
\block_carry_in[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[9]~35_combout\ = (\GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & ((\block_carry_in[8]~33_combout\))) # (!\GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & (\block_carry_in[9]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[9]~34_combout\,
	datac => \GEN_BLOCKS:8:LACG_INST|Pout~0_combout\,
	datad => \block_carry_in[8]~33_combout\,
	combout => \block_carry_in[9]~35_combout\);

-- Location: LCCOMB_X62_Y1_N10
\block_carry_in[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[9]~36_combout\ = (\A[34]~input_o\ & ((\block_carry_in[9]~35_combout\) # (\B[34]~input_o\))) # (!\A[34]~input_o\ & (\block_carry_in[9]~35_combout\ & \B[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \block_carry_in[9]~35_combout\,
	datad => \B[34]~input_o\,
	combout => \block_carry_in[9]~36_combout\);

-- Location: LCCOMB_X62_Y1_N12
\block_carry_in[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[9]~37_combout\ = (\A[35]~input_o\ & ((\B[35]~input_o\) # (\block_carry_in[9]~36_combout\))) # (!\A[35]~input_o\ & (\B[35]~input_o\ & \block_carry_in[9]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datac => \B[35]~input_o\,
	datad => \block_carry_in[9]~36_combout\,
	combout => \block_carry_in[9]~37_combout\);

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

-- Location: LCCOMB_X1_Y24_N8
\S_internal~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~36_combout\ = \B[36]~input_o\ $ (\block_carry_in[9]~37_combout\ $ (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datac => \block_carry_in[9]~37_combout\,
	datad => \A[36]~input_o\,
	combout => \S_internal~36_combout\);

-- Location: IOIBUF_X0_Y24_N1
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X1_Y24_N18
\P[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(37) = \A[37]~input_o\ $ (\B[37]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	combout => P(37));

-- Location: LCCOMB_X1_Y24_N4
\S_internal~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~37_combout\ = P(37) $ (((\B[36]~input_o\ & ((\A[36]~input_o\) # (\block_carry_in[9]~37_combout\))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & \block_carry_in[9]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \block_carry_in[9]~37_combout\,
	datad => P(37),
	combout => \S_internal~37_combout\);

-- Location: LCCOMB_X1_Y24_N30
\GEN_BLOCKS:9:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ = (\A[37]~input_o\ & (!\B[37]~input_o\ & (\A[36]~input_o\ $ (\B[36]~input_o\)))) # (!\A[37]~input_o\ & (\B[37]~input_o\ & (\A[36]~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X1_Y24_N0
\GEN_BLOCKS:9:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[37]~input_o\ & \B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X0_Y24_N8
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\P[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(38) = \A[38]~input_o\ $ (\B[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	combout => P(38));

-- Location: LCCOMB_X1_Y24_N12
\S_internal~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~38_combout\ = P(38) $ (((\GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\) # ((\GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & \block_carry_in[9]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datab => \GEN_BLOCKS:9:LACG_INST|g_int[1]~0_combout\,
	datac => \block_carry_in[9]~37_combout\,
	datad => P(38),
	combout => \S_internal~38_combout\);

-- Location: IOIBUF_X0_Y24_N15
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X1_Y24_N24
\GEN_BLOCKS:9:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\ = (\B[38]~input_o\ & (!\A[38]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\B[37]~input_o\ $ (\A[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X1_Y24_N26
\GEN_BLOCKS:9:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\ & ((\B[36]~input_o\ & ((\A[36]~input_o\) # (\block_carry_in[9]~37_combout\))) # (!\B[36]~input_o\ & (\A[36]~input_o\ & \block_carry_in[9]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[36]~input_o\,
	datab => \A[36]~input_o\,
	datac => \block_carry_in[9]~37_combout\,
	datad => \GEN_BLOCKS:9:LACG_INST|C[3]~0_combout\,
	combout => \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X1_Y24_N6
\GEN_BLOCKS:9:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\ = (\B[38]~input_o\ & ((\A[38]~input_o\) # ((\B[37]~input_o\ & \A[37]~input_o\)))) # (!\B[38]~input_o\ & (\A[38]~input_o\ & (\B[37]~input_o\ & \A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[38]~input_o\,
	datab => \A[38]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X1_Y24_N28
\S_internal~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~39_combout\ = \B[39]~input_o\ $ (\A[39]~input_o\ $ (((\GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\) # (\GEN_BLOCKS:9:LACG_INST|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datac => \GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\,
	datad => \GEN_BLOCKS:9:LACG_INST|g_int~1_combout\,
	combout => \S_internal~39_combout\);

-- Location: LCCOMB_X1_Y24_N14
\block_carry_in[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[10]~38_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[37]~input_o\ & \B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \block_carry_in[10]~38_combout\);

-- Location: LCCOMB_X1_Y24_N16
\block_carry_in[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[10]~39_combout\ = (\GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & ((\block_carry_in[9]~37_combout\))) # (!\GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & (\block_carry_in[10]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datab => \block_carry_in[10]~38_combout\,
	datac => \block_carry_in[9]~37_combout\,
	combout => \block_carry_in[10]~39_combout\);

-- Location: LCCOMB_X1_Y24_N10
\block_carry_in[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[10]~40_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # (\block_carry_in[10]~39_combout\))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & \block_carry_in[10]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \block_carry_in[10]~39_combout\,
	combout => \block_carry_in[10]~40_combout\);

-- Location: LCCOMB_X1_Y24_N20
\block_carry_in[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[10]~41_combout\ = (\B[39]~input_o\ & ((\A[39]~input_o\) # (\block_carry_in[10]~40_combout\))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & \block_carry_in[10]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \A[39]~input_o\,
	datad => \block_carry_in[10]~40_combout\,
	combout => \block_carry_in[10]~41_combout\);

-- Location: IOIBUF_X27_Y0_N8
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X23_Y0_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X23_Y4_N16
\S_internal~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~40_combout\ = \block_carry_in[10]~41_combout\ $ (\B[40]~input_o\ $ (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \block_carry_in[10]~41_combout\,
	datac => \B[40]~input_o\,
	datad => \A[40]~input_o\,
	combout => \S_internal~40_combout\);

-- Location: IOIBUF_X18_Y0_N8
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X21_Y4_N8
\P[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(41) = \B[41]~input_o\ $ (\A[41]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datac => \A[41]~input_o\,
	combout => P(41));

-- Location: LCCOMB_X21_Y4_N18
\S_internal~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~41_combout\ = P(41) $ (((\B[40]~input_o\ & ((\block_carry_in[10]~41_combout\) # (\A[40]~input_o\))) # (!\B[40]~input_o\ & (\block_carry_in[10]~41_combout\ & \A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => P(41),
	datac => \block_carry_in[10]~41_combout\,
	datad => \A[40]~input_o\,
	combout => \S_internal~41_combout\);

-- Location: LCCOMB_X21_Y4_N30
\GEN_BLOCKS:10:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ & \A[40]~input_o\)))

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
	combout => \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X20_Y0_N15
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X21_Y4_N16
\P[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(42) = \A[42]~input_o\ $ (\B[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => P(42));

-- Location: LCCOMB_X21_Y4_N28
\GEN_BLOCKS:10:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ = (\B[41]~input_o\ & (!\A[41]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ $ (\A[40]~input_o\))))

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
	combout => \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X21_Y4_N2
\S_internal~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~42_combout\ = P(42) $ (((\GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\) # ((\block_carry_in[10]~41_combout\ & \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:10:LACG_INST|g_int[1]~0_combout\,
	datab => P(42),
	datac => \block_carry_in[10]~41_combout\,
	datad => \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	combout => \S_internal~42_combout\);

-- Location: IOIBUF_X20_Y0_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X21_Y4_N4
\GEN_BLOCKS:10:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\ = (\A[42]~input_o\ & ((\B[42]~input_o\) # ((\B[41]~input_o\ & \A[41]~input_o\)))) # (!\A[42]~input_o\ & (\B[41]~input_o\ & (\A[41]~input_o\ & \B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[41]~input_o\,
	datad => \B[42]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X18_Y0_N22
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X21_Y4_N14
\GEN_BLOCKS:10:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\ = (\B[41]~input_o\ & (!\A[41]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[41]~input_o\,
	datad => \B[42]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X21_Y4_N24
\GEN_BLOCKS:10:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\ & ((\B[40]~input_o\ & ((\block_carry_in[10]~41_combout\) # (\A[40]~input_o\))) # (!\B[40]~input_o\ & (\block_carry_in[10]~41_combout\ & \A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \GEN_BLOCKS:10:LACG_INST|C[3]~0_combout\,
	datac => \block_carry_in[10]~41_combout\,
	datad => \A[40]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X21_Y4_N26
\S_internal~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~43_combout\ = \B[43]~input_o\ $ (\A[43]~input_o\ $ (((\GEN_BLOCKS:10:LACG_INST|g_int~1_combout\) # (\GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \GEN_BLOCKS:10:LACG_INST|g_int~1_combout\,
	datac => \A[43]~input_o\,
	datad => \GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\,
	combout => \S_internal~43_combout\);

-- Location: LCCOMB_X21_Y4_N22
\GEN_BLOCKS:10:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ = (\B[43]~input_o\ & (!\A[43]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\)))) # (!\B[43]~input_o\ & (\A[43]~input_o\ & (\A[42]~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[42]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X21_Y4_N12
\GEN_BLOCKS:10:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ = (\B[43]~input_o\ & ((\A[43]~input_o\) # ((\A[42]~input_o\ & \B[42]~input_o\)))) # (!\B[43]~input_o\ & (\A[42]~input_o\ & (\A[43]~input_o\ & \B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[43]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[42]~input_o\,
	combout => \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X21_Y4_N0
\block_carry_in[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[11]~42_combout\ = (\B[41]~input_o\ & ((\A[41]~input_o\) # ((\B[40]~input_o\ & \A[40]~input_o\)))) # (!\B[41]~input_o\ & (\A[41]~input_o\ & (\B[40]~input_o\ & \A[40]~input_o\)))

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
	combout => \block_carry_in[11]~42_combout\);

-- Location: LCCOMB_X21_Y4_N10
\block_carry_in[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[11]~43_combout\ = (\GEN_BLOCKS:10:LACG_INST|g_int~2_combout\) # ((\block_carry_in[11]~42_combout\ & \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:10:LACG_INST|g_int~2_combout\,
	datab => \block_carry_in[11]~42_combout\,
	datac => \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\,
	combout => \block_carry_in[11]~43_combout\);

-- Location: LCCOMB_X21_Y4_N20
\block_carry_in[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[11]~44_combout\ = (\GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ & ((\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & (\block_carry_in[10]~41_combout\)) # (!\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & ((\block_carry_in[11]~43_combout\))))) # 
-- (!\GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ & (((\block_carry_in[11]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[10]~41_combout\,
	datab => \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	datac => \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\,
	datad => \block_carry_in[11]~43_combout\,
	combout => \block_carry_in[11]~44_combout\);

-- Location: IOIBUF_X33_Y0_N1
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X33_Y4_N16
\S_internal~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~44_combout\ = \block_carry_in[11]~44_combout\ $ (\B[44]~input_o\ $ (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \block_carry_in[11]~44_combout\,
	datac => \B[44]~input_o\,
	datad => \A[44]~input_o\,
	combout => \S_internal~44_combout\);

-- Location: IOIBUF_X38_Y0_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: LCCOMB_X33_Y4_N18
\P[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(45) = \B[45]~input_o\ $ (\A[45]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => P(45));

-- Location: LCCOMB_X33_Y4_N20
\S_internal~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~45_combout\ = P(45) $ (((\block_carry_in[11]~44_combout\ & ((\A[44]~input_o\) # (\B[44]~input_o\))) # (!\block_carry_in[11]~44_combout\ & (\A[44]~input_o\ & \B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[11]~44_combout\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => P(45),
	combout => \S_internal~45_combout\);

-- Location: IOIBUF_X27_Y0_N22
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X33_Y4_N10
\P[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(46) = \B[46]~input_o\ $ (\A[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => P(46));

-- Location: LCCOMB_X33_Y4_N24
\GEN_BLOCKS:11:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\A[45]~input_o\ & (\A[44]~input_o\ & (\B[44]~input_o\ & \B[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \B[45]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X33_Y4_N14
\GEN_BLOCKS:11:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ = (\A[45]~input_o\ & (!\B[45]~input_o\ & (\A[44]~input_o\ $ (\B[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[45]~input_o\ & (\A[44]~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \B[45]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X33_Y4_N4
\S_internal~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~46_combout\ = P(46) $ (((\GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\) # ((\block_carry_in[11]~44_combout\ & \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(46),
	datab => \GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\,
	datac => \block_carry_in[11]~44_combout\,
	datad => \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	combout => \S_internal~46_combout\);

-- Location: IOIBUF_X33_Y0_N8
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X33_Y4_N8
\GEN_BLOCKS:11:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ = (\A[46]~input_o\ & (!\B[46]~input_o\ & (\B[45]~input_o\ $ (\A[45]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & (\B[45]~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \B[45]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[45]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X33_Y4_N2
\GEN_BLOCKS:11:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ = (\GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ & ((\B[44]~input_o\ & ((\A[44]~input_o\) # (\block_carry_in[11]~44_combout\))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & \block_carry_in[11]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[44]~input_o\,
	datac => \GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\,
	datad => \block_carry_in[11]~44_combout\,
	combout => \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X33_Y4_N30
\GEN_BLOCKS:11:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\) # ((\B[45]~input_o\ & \A[45]~input_o\)))) # (!\A[46]~input_o\ & (\B[45]~input_o\ & (\B[46]~input_o\ & \A[45]~input_o\)))

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
	combout => \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X35_Y0_N22
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X33_Y4_N28
\S_internal~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~47_combout\ = \A[47]~input_o\ $ (\B[47]~input_o\ $ (((\GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\) # (\GEN_BLOCKS:11:LACG_INST|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\,
	datac => \GEN_BLOCKS:11:LACG_INST|g_int~1_combout\,
	datad => \B[47]~input_o\,
	combout => \S_internal~47_combout\);

-- Location: LCCOMB_X33_Y4_N0
\GEN_BLOCKS:11:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\ = (\A[47]~input_o\ & ((\B[47]~input_o\) # ((\A[46]~input_o\ & \B[46]~input_o\)))) # (!\A[47]~input_o\ & (\A[46]~input_o\ & (\B[46]~input_o\ & \B[47]~input_o\)))

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
	combout => \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X33_Y4_N26
\block_carry_in[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[12]~47_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\A[44]~input_o\ & \B[44]~input_o\)))) # (!\A[45]~input_o\ & (\A[44]~input_o\ & (\B[44]~input_o\ & \B[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \B[45]~input_o\,
	combout => \block_carry_in[12]~47_combout\);

-- Location: LCCOMB_X33_Y4_N6
\GEN_BLOCKS:11:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ = (\A[46]~input_o\ & (!\B[46]~input_o\ & (\A[47]~input_o\ $ (\B[47]~input_o\)))) # (!\A[46]~input_o\ & (\B[46]~input_o\ & (\A[47]~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \A[47]~input_o\,
	datac => \B[46]~input_o\,
	datad => \B[47]~input_o\,
	combout => \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X33_Y4_N12
\block_carry_in[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[12]~48_combout\ = (\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & (!\GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ & ((\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\) # (\block_carry_in[12]~47_combout\)))) # (!\GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & 
-- (((\GEN_BLOCKS:11:LACG_INST|g_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	datab => \GEN_BLOCKS:11:LACG_INST|g_int~2_combout\,
	datac => \block_carry_in[12]~47_combout\,
	datad => \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\,
	combout => \block_carry_in[12]~48_combout\);

-- Location: LCCOMB_X21_Y4_N6
\block_carry_in[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[12]~45_combout\ = (\GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ & ((\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & (\block_carry_in[10]~41_combout\)) # (!\GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & ((\block_carry_in[11]~43_combout\))))) # 
-- (!\GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ & (((\block_carry_in[11]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[10]~41_combout\,
	datab => \GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	datac => \GEN_BLOCKS:10:LACG_INST|Pout~1_combout\,
	datad => \block_carry_in[11]~43_combout\,
	combout => \block_carry_in[12]~45_combout\);

-- Location: LCCOMB_X29_Y4_N8
\block_carry_in[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[12]~46_combout\ = (\block_carry_in[12]~45_combout\ & (\GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ & \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[12]~45_combout\,
	datac => \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	datad => \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\,
	combout => \block_carry_in[12]~46_combout\);

-- Location: IOIBUF_X45_Y73_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X49_Y73_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X46_Y72_N0
\S_internal~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~48_combout\ = \A[48]~input_o\ $ (\B[48]~input_o\ $ (((\block_carry_in[12]~48_combout\) # (\block_carry_in[12]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[12]~48_combout\,
	datab => \block_carry_in[12]~46_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \S_internal~48_combout\);

-- Location: IOIBUF_X52_Y73_N8
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X46_Y72_N26
\P[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(49) = \B[49]~input_o\ $ (\A[49]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[49]~input_o\,
	datad => \A[49]~input_o\,
	combout => P(49));

-- Location: LCCOMB_X33_Y4_N22
\block_carry_in[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[12]~49_combout\ = (\block_carry_in[12]~48_combout\) # ((\GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ & (\block_carry_in[11]~44_combout\ & \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	datab => \block_carry_in[11]~44_combout\,
	datac => \GEN_BLOCKS:11:LACG_INST|Pout~1_combout\,
	datad => \block_carry_in[12]~48_combout\,
	combout => \block_carry_in[12]~49_combout\);

-- Location: LCCOMB_X46_Y72_N4
\S_internal~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~49_combout\ = P(49) $ (((\block_carry_in[12]~49_combout\ & ((\A[48]~input_o\) # (\B[48]~input_o\))) # (!\block_carry_in[12]~49_combout\ & (\A[48]~input_o\ & \B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(49),
	datab => \block_carry_in[12]~49_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \S_internal~49_combout\);

-- Location: LCCOMB_X46_Y72_N22
\GEN_BLOCKS:12:LACG_INST|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|C~0_combout\ = (\B[49]~input_o\ & (!\A[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[48]~input_o\,
	datad => \A[49]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|C~0_combout\);

-- Location: IOIBUF_X42_Y73_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X46_Y72_N2
\P[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(50) = \B[50]~input_o\ $ (\A[50]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datac => \A[50]~input_o\,
	combout => P(50));

-- Location: LCCOMB_X46_Y72_N8
\GEN_BLOCKS:12:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\A[48]~input_o\ & \B[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[48]~input_o\ & (\B[48]~input_o\ & \A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[48]~input_o\,
	datad => \A[49]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X46_Y72_N28
\S_internal~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~50_combout\ = P(50) $ (((\GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\) # ((\GEN_BLOCKS:12:LACG_INST|C~0_combout\ & \block_carry_in[12]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:12:LACG_INST|C~0_combout\,
	datab => P(50),
	datac => \GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\,
	datad => \block_carry_in[12]~49_combout\,
	combout => \S_internal~50_combout\);

-- Location: IOIBUF_X49_Y73_N22
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X46_Y72_N12
\P[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(51) = \B[51]~input_o\ $ (\A[51]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => P(51));

-- Location: LCCOMB_X46_Y72_N18
\GEN_BLOCKS:12:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\ = (P(49) & (\A[48]~input_o\ & (\B[48]~input_o\ & P(50))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(49),
	datab => \A[48]~input_o\,
	datac => \B[48]~input_o\,
	datad => P(50),
	combout => \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X46_Y72_N14
\GEN_BLOCKS:12:LACG_INST|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|C~1_combout\ = (\GEN_BLOCKS:12:LACG_INST|C~0_combout\ & (P(50) & ((\block_carry_in[12]~48_combout\) # (\block_carry_in[12]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[12]~48_combout\,
	datab => \block_carry_in[12]~46_combout\,
	datac => \GEN_BLOCKS:12:LACG_INST|C~0_combout\,
	datad => P(50),
	combout => \GEN_BLOCKS:12:LACG_INST|C~1_combout\);

-- Location: LCCOMB_X46_Y72_N16
\GEN_BLOCKS:12:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ = (\A[50]~input_o\ & ((\B[50]~input_o\) # ((\B[49]~input_o\ & \A[49]~input_o\)))) # (!\A[50]~input_o\ & (\B[49]~input_o\ & (\B[50]~input_o\ & \A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \B[49]~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[49]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X46_Y72_N30
\S_internal~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~51_combout\ = P(51) $ (((\GEN_BLOCKS:12:LACG_INST|g_int~2_combout\) # ((\GEN_BLOCKS:12:LACG_INST|C~1_combout\) # (\GEN_BLOCKS:12:LACG_INST|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(51),
	datab => \GEN_BLOCKS:12:LACG_INST|g_int~2_combout\,
	datac => \GEN_BLOCKS:12:LACG_INST|C~1_combout\,
	datad => \GEN_BLOCKS:12:LACG_INST|g_int~1_combout\,
	combout => \S_internal~51_combout\);

-- Location: LCCOMB_X46_Y72_N10
\block_carry_in[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[13]~50_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\A[48]~input_o\ & \B[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[48]~input_o\ & (\B[48]~input_o\ & \A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[48]~input_o\,
	datac => \B[48]~input_o\,
	datad => \A[49]~input_o\,
	combout => \block_carry_in[13]~50_combout\);

-- Location: LCCOMB_X46_Y72_N24
\GEN_BLOCKS:12:LACG_INST|g_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\ = (\B[51]~input_o\ & ((\A[51]~input_o\) # ((\A[50]~input_o\ & \B[50]~input_o\)))) # (!\B[51]~input_o\ & (\A[50]~input_o\ & (\B[50]~input_o\ & \A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \B[50]~input_o\,
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\);

-- Location: LCCOMB_X46_Y72_N20
\block_carry_in[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[13]~51_combout\ = (\GEN_BLOCKS:12:LACG_INST|g_int~3_combout\) # ((\block_carry_in[13]~50_combout\ & (P(50) & P(51))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[13]~50_combout\,
	datab => P(50),
	datac => P(51),
	datad => \GEN_BLOCKS:12:LACG_INST|g_int~3_combout\,
	combout => \block_carry_in[13]~51_combout\);

-- Location: LCCOMB_X46_Y72_N6
\GEN_BLOCKS:12:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:12:LACG_INST|Pout~combout\ = (\GEN_BLOCKS:12:LACG_INST|C~0_combout\ & (P(50) & (\B[51]~input_o\ $ (\A[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GEN_BLOCKS:12:LACG_INST|C~0_combout\,
	datab => P(50),
	datac => \B[51]~input_o\,
	datad => \A[51]~input_o\,
	combout => \GEN_BLOCKS:12:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X50_Y72_N8
\block_carry_in[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[13]~52_combout\ = (\GEN_BLOCKS:12:LACG_INST|Pout~combout\ & (((\block_carry_in[12]~48_combout\) # (\block_carry_in[12]~46_combout\)))) # (!\GEN_BLOCKS:12:LACG_INST|Pout~combout\ & (\block_carry_in[13]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[13]~51_combout\,
	datab => \block_carry_in[12]~48_combout\,
	datac => \block_carry_in[12]~46_combout\,
	datad => \GEN_BLOCKS:12:LACG_INST|Pout~combout\,
	combout => \block_carry_in[13]~52_combout\);

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

-- Location: IOIBUF_X60_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X58_Y72_N0
\S_internal~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~52_combout\ = \block_carry_in[13]~52_combout\ $ (\A[52]~input_o\ $ (\B[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[13]~52_combout\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \S_internal~52_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X58_Y72_N18
\P[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(53) = \B[53]~input_o\ $ (\A[53]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[53]~input_o\,
	datad => \A[53]~input_o\,
	combout => P(53));

-- Location: LCCOMB_X58_Y72_N4
\S_internal~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~53_combout\ = P(53) $ (((\block_carry_in[13]~52_combout\ & ((\A[52]~input_o\) # (\B[52]~input_o\))) # (!\block_carry_in[13]~52_combout\ & (\A[52]~input_o\ & \B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[13]~52_combout\,
	datab => P(53),
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \S_internal~53_combout\);

-- Location: LCCOMB_X58_Y72_N14
\GEN_BLOCKS:13:LACG_INST|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|C~0_combout\ = (\B[52]~input_o\ & (!\A[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\)))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \B[53]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|C~0_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X58_Y72_N26
\P[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(54) = \A[54]~input_o\ $ (\B[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datac => \B[54]~input_o\,
	combout => P(54));

-- Location: LCCOMB_X58_Y72_N24
\GEN_BLOCKS:13:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \B[53]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X58_Y72_N28
\S_internal~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~54_combout\ = P(54) $ (((\GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\) # ((\block_carry_in[13]~52_combout\ & \GEN_BLOCKS:13:LACG_INST|C~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[13]~52_combout\,
	datab => \GEN_BLOCKS:13:LACG_INST|C~0_combout\,
	datac => P(54),
	datad => \GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\,
	combout => \S_internal~54_combout\);

-- Location: LCCOMB_X58_Y72_N8
\GEN_BLOCKS:13:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\ = (\B[52]~input_o\ & (\A[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \B[53]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X58_Y72_N10
\S_internal~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~55_combout\ = (P(54) & ((\GEN_BLOCKS:13:LACG_INST|g_int~2_combout\) # ((\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & \block_carry_in[13]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(54),
	datab => \GEN_BLOCKS:13:LACG_INST|C~0_combout\,
	datac => \GEN_BLOCKS:13:LACG_INST|g_int~2_combout\,
	datad => \block_carry_in[13]~52_combout\,
	combout => \S_internal~55_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X58_Y72_N30
\GEN_BLOCKS:13:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ = (\A[54]~input_o\ & ((\B[54]~input_o\) # ((\B[53]~input_o\ & \A[53]~input_o\)))) # (!\A[54]~input_o\ & (\B[53]~input_o\ & (\B[54]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[54]~input_o\,
	datab => \B[53]~input_o\,
	datac => \B[54]~input_o\,
	datad => \A[53]~input_o\,
	combout => \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\);

-- Location: IOIBUF_X60_Y73_N22
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X58_Y72_N12
\S_internal~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~56_combout\ = \A[55]~input_o\ $ (\B[55]~input_o\ $ (((\S_internal~55_combout\) # (\GEN_BLOCKS:13:LACG_INST|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_internal~55_combout\,
	datab => \A[55]~input_o\,
	datac => \GEN_BLOCKS:13:LACG_INST|g_int~1_combout\,
	datad => \B[55]~input_o\,
	combout => \S_internal~56_combout\);

-- Location: LCCOMB_X58_Y72_N6
\block_carry_in[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[14]~53_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \B[53]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \block_carry_in[14]~53_combout\);

-- Location: LCCOMB_X58_Y72_N20
\block_carry_in[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[14]~59_combout\ = (\block_carry_in[14]~53_combout\ & ((\B[54]~input_o\) # (\A[54]~input_o\))) # (!\block_carry_in[14]~53_combout\ & (\B[54]~input_o\ & \A[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[14]~53_combout\,
	datac => \B[54]~input_o\,
	datad => \A[54]~input_o\,
	combout => \block_carry_in[14]~59_combout\);

-- Location: LCCOMB_X58_Y72_N16
\block_carry_in[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[14]~54_combout\ = (\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & ((P(54) & (\block_carry_in[13]~52_combout\)) # (!P(54) & ((\block_carry_in[14]~59_combout\))))) # (!\GEN_BLOCKS:13:LACG_INST|C~0_combout\ & (((\block_carry_in[14]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[13]~52_combout\,
	datab => \GEN_BLOCKS:13:LACG_INST|C~0_combout\,
	datac => P(54),
	datad => \block_carry_in[14]~59_combout\,
	combout => \block_carry_in[14]~54_combout\);

-- Location: LCCOMB_X58_Y72_N2
\block_carry_in[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[14]~55_combout\ = (\A[55]~input_o\ & ((\block_carry_in[14]~54_combout\) # (\B[55]~input_o\))) # (!\A[55]~input_o\ & (\block_carry_in[14]~54_combout\ & \B[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[55]~input_o\,
	datac => \block_carry_in[14]~54_combout\,
	datad => \B[55]~input_o\,
	combout => \block_carry_in[14]~55_combout\);

-- Location: IOIBUF_X65_Y73_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: LCCOMB_X69_Y72_N0
\S_internal~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~57_combout\ = \block_carry_in[14]~55_combout\ $ (\B[56]~input_o\ $ (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[14]~55_combout\,
	datab => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \S_internal~57_combout\);

-- Location: IOIBUF_X69_Y73_N15
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X69_Y72_N10
\P[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(57) = \A[57]~input_o\ $ (\B[57]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	combout => P(57));

-- Location: LCCOMB_X69_Y72_N4
\S_internal~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~58_combout\ = P(57) $ (((\B[56]~input_o\ & ((\block_carry_in[14]~55_combout\) # (\A[56]~input_o\))) # (!\B[56]~input_o\ & (\block_carry_in[14]~55_combout\ & \A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(57),
	datab => \B[56]~input_o\,
	datac => \block_carry_in[14]~55_combout\,
	datad => \A[56]~input_o\,
	combout => \S_internal~58_combout\);

-- Location: IOIBUF_X67_Y73_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: IOIBUF_X69_Y73_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X69_Y72_N6
\P[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(58) = \B[58]~input_o\ $ (\A[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => P(58));

-- Location: LCCOMB_X69_Y72_N24
\S_internal~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~59_combout\ = (\block_carry_in[14]~55_combout\ & ((\B[56]~input_o\) # (\A[56]~input_o\))) # (!\block_carry_in[14]~55_combout\ & (\B[56]~input_o\ & \A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[14]~55_combout\,
	datab => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \S_internal~59_combout\);

-- Location: LCCOMB_X69_Y72_N26
\S_internal~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~60_combout\ = P(58) $ (((\B[57]~input_o\ & ((\A[57]~input_o\) # (\S_internal~59_combout\))) # (!\B[57]~input_o\ & (\A[57]~input_o\ & \S_internal~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(58),
	datab => \B[57]~input_o\,
	datac => \A[57]~input_o\,
	datad => \S_internal~59_combout\,
	combout => \S_internal~60_combout\);

-- Location: LCCOMB_X69_Y72_N20
\GEN_BLOCKS:14:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ = (P(57) & (P(58) & (\A[56]~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(57),
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => P(58),
	combout => \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X72_Y73_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: IOIBUF_X72_Y73_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X69_Y72_N30
\P[59]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(59) = \B[59]~input_o\ $ (\A[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[59]~input_o\,
	datad => \A[59]~input_o\,
	combout => P(59));

-- Location: LCCOMB_X69_Y72_N18
\GEN_BLOCKS:14:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|C[3]~2_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\B[56]~input_o\ & \A[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[56]~input_o\ & (\B[57]~input_o\ & \A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[56]~input_o\,
	datac => \B[57]~input_o\,
	datad => \A[56]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X69_Y72_N28
\GEN_BLOCKS:14:LACG_INST|C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|C[3]~3_combout\ = (\GEN_BLOCKS:14:LACG_INST|C[3]~2_combout\ & ((\B[58]~input_o\) # (\A[58]~input_o\))) # (!\GEN_BLOCKS:14:LACG_INST|C[3]~2_combout\ & (\B[58]~input_o\ & \A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:14:LACG_INST|C[3]~2_combout\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|C[3]~3_combout\);

-- Location: LCCOMB_X69_Y72_N16
\S_internal~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~61_combout\ = P(59) $ (((\GEN_BLOCKS:14:LACG_INST|C[3]~3_combout\) # ((\block_carry_in[14]~55_combout\ & \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[14]~55_combout\,
	datab => \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\,
	datac => P(59),
	datad => \GEN_BLOCKS:14:LACG_INST|C[3]~3_combout\,
	combout => \S_internal~61_combout\);

-- Location: LCCOMB_X69_Y72_N2
\GEN_BLOCKS:14:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:14:LACG_INST|g_int~0_combout\ = (\B[59]~input_o\ & ((\A[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\B[59]~input_o\ & (\A[58]~input_o\ & (\B[58]~input_o\ & \A[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[59]~input_o\,
	datab => \A[58]~input_o\,
	datac => \B[58]~input_o\,
	datad => \A[59]~input_o\,
	combout => \GEN_BLOCKS:14:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X69_Y72_N12
\block_carry_in[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[15]~56_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\B[56]~input_o\ & \A[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[56]~input_o\ & (\B[57]~input_o\ & \A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[56]~input_o\,
	datac => \B[57]~input_o\,
	datad => \A[56]~input_o\,
	combout => \block_carry_in[15]~56_combout\);

-- Location: LCCOMB_X69_Y72_N22
\block_carry_in[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[15]~57_combout\ = (\GEN_BLOCKS:14:LACG_INST|g_int~0_combout\) # ((P(58) & (P(59) & \block_carry_in[15]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(58),
	datab => \GEN_BLOCKS:14:LACG_INST|g_int~0_combout\,
	datac => P(59),
	datad => \block_carry_in[15]~56_combout\,
	combout => \block_carry_in[15]~57_combout\);

-- Location: LCCOMB_X69_Y72_N8
\block_carry_in[15]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_in[15]~58_combout\ = (P(59) & ((\GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & ((\block_carry_in[14]~55_combout\))) # (!\GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & (\block_carry_in[15]~57_combout\)))) # (!P(59) & 
-- (((\block_carry_in[15]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P(59),
	datab => \GEN_BLOCKS:14:LACG_INST|Pout~0_combout\,
	datac => \block_carry_in[15]~57_combout\,
	datad => \block_carry_in[14]~55_combout\,
	combout => \block_carry_in[15]~58_combout\);

-- Location: IOIBUF_X115_Y22_N1
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X115_Y19_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X114_Y19_N8
\S_internal~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~62_combout\ = \block_carry_in[15]~58_combout\ $ (\B[60]~input_o\ $ (\A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[15]~58_combout\,
	datab => \B[60]~input_o\,
	datac => \A[60]~input_o\,
	combout => \S_internal~62_combout\);

-- Location: IOIBUF_X115_Y18_N8
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X115_Y19_N1
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X114_Y19_N2
\P[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(61) = \A[61]~input_o\ $ (\B[61]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datad => \B[61]~input_o\,
	combout => P(61));

-- Location: LCCOMB_X114_Y19_N20
\S_internal~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~63_combout\ = P(61) $ (((\block_carry_in[15]~58_combout\ & ((\B[60]~input_o\) # (\A[60]~input_o\))) # (!\block_carry_in[15]~58_combout\ & (\B[60]~input_o\ & \A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[15]~58_combout\,
	datab => P(61),
	datac => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => \S_internal~63_combout\);

-- Location: LCCOMB_X114_Y19_N0
\S_internal~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~64_combout\ = (\block_carry_in[15]~58_combout\ & ((\B[60]~input_o\) # (\A[60]~input_o\))) # (!\block_carry_in[15]~58_combout\ & (\B[60]~input_o\ & \A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[15]~58_combout\,
	datab => \B[60]~input_o\,
	datac => \A[60]~input_o\,
	combout => \S_internal~64_combout\);

-- Location: IOIBUF_X115_Y18_N1
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X115_Y23_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X114_Y19_N14
\P[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- P(62) = \A[62]~input_o\ $ (\B[62]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[62]~input_o\,
	datad => \B[62]~input_o\,
	combout => P(62));

-- Location: LCCOMB_X114_Y19_N10
\S_internal~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \S_internal~65_combout\ = P(62) $ (((\A[61]~input_o\ & ((\S_internal~64_combout\) # (\B[61]~input_o\))) # (!\A[61]~input_o\ & (\S_internal~64_combout\ & \B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \S_internal~64_combout\,
	datac => P(62),
	datad => \B[61]~input_o\,
	combout => \S_internal~65_combout\);

-- Location: LCCOMB_X114_Y19_N24
\GEN_BLOCKS:15:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ = (P(62) & (P(61) & (\A[60]~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[60]~input_o\,
	datac => P(62),
	datad => P(61),
	combout => \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X114_Y19_N30
\GEN_BLOCKS:15:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ = (\A[60]~input_o\ & (\B[60]~input_o\ & (P(62) & P(61))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[60]~input_o\,
	datac => P(62),
	datad => P(61),
	combout => \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X114_Y19_N28
\GEN_BLOCKS:15:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|g_int~0_combout\ = (\A[62]~input_o\ & ((\B[62]~input_o\) # ((\A[61]~input_o\ & \B[61]~input_o\)))) # (!\A[62]~input_o\ & (\A[61]~input_o\ & (\B[61]~input_o\ & \B[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[61]~input_o\,
	datac => \A[62]~input_o\,
	datad => \B[62]~input_o\,
	combout => \GEN_BLOCKS:15:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X114_Y19_N18
\GEN_BLOCKS:15:LACG_INST|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \GEN_BLOCKS:15:LACG_INST|C\(3) = (\GEN_BLOCKS:15:LACG_INST|g_int~1_combout\) # ((\GEN_BLOCKS:15:LACG_INST|g_int~0_combout\) # ((\block_carry_in[15]~58_combout\ & \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[15]~58_combout\,
	datab => \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\,
	datac => \GEN_BLOCKS:15:LACG_INST|g_int~1_combout\,
	datad => \GEN_BLOCKS:15:LACG_INST|g_int~0_combout\,
	combout => \GEN_BLOCKS:15:LACG_INST|C\(3));

-- Location: IOIBUF_X115_Y20_N1
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X114_Y19_N12
\S_internal[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- S_internal(63) = \GEN_BLOCKS:15:LACG_INST|C\(3) $ (\B[63]~input_o\ $ (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:15:LACG_INST|C\(3),
	datac => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => S_internal(63));

-- Location: LCCOMB_X114_Y19_N6
\block_carry_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_out~2_combout\ = (\A[61]~input_o\ & ((\B[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\A[61]~input_o\ & (\B[61]~input_o\ & (\B[60]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[61]~input_o\,
	datac => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => \block_carry_out~2_combout\);

-- Location: LCCOMB_X114_Y19_N22
\block_carry_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_out~5_combout\ = (\block_carry_out~2_combout\ & ((\A[62]~input_o\) # (\B[62]~input_o\))) # (!\block_carry_out~2_combout\ & (\A[62]~input_o\ & \B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_out~2_combout\,
	datac => \A[62]~input_o\,
	datad => \B[62]~input_o\,
	combout => \block_carry_out~5_combout\);

-- Location: LCCOMB_X114_Y19_N16
\block_carry_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_out~3_combout\ = (\GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ & (\block_carry_in[15]~58_combout\)) # (!\GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ & ((\block_carry_out~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \block_carry_in[15]~58_combout\,
	datac => \block_carry_out~5_combout\,
	datad => \GEN_BLOCKS:15:LACG_INST|Pout~0_combout\,
	combout => \block_carry_out~3_combout\);

-- Location: LCCOMB_X114_Y19_N26
\block_carry_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \block_carry_out~4_combout\ = (\block_carry_out~3_combout\ & ((\B[63]~input_o\) # (\A[63]~input_o\))) # (!\block_carry_out~3_combout\ & (\B[63]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \block_carry_out~3_combout\,
	datac => \B[63]~input_o\,
	datad => \A[63]~input_o\,
	combout => \block_carry_out~4_combout\);

-- Location: LCCOMB_X114_Y19_N4
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\GEN_BLOCKS:15:LACG_INST|C\(3) & ((\B[63]~input_o\) # (\A[63]~input_o\))) # (!\GEN_BLOCKS:15:LACG_INST|C\(3) & ((!\A[63]~input_o\) # (!\B[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GEN_BLOCKS:15:LACG_INST|C\(3),
	datac => \B[63]~input_o\,
	datad => \A[63]~input_o\,
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


