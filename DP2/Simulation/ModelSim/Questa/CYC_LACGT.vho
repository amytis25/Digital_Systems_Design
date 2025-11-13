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

-- DATE "11/12/2025 16:38:06"

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
-- S[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[16]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[17]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[18]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[19]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[20]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[21]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[22]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[23]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[24]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[25]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[26]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[27]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[28]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[29]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[30]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[31]	=>  Location: PIN_G23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[32]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[33]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[34]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[35]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[36]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[37]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[38]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[39]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[40]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[41]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[42]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[43]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[44]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[45]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[46]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[47]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[48]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[49]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[50]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[51]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[52]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[53]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[54]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[55]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[56]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[57]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[58]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[59]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[60]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[61]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[62]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[63]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ovfl	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AF26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \recur:UQ0|P[3]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|C~4_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~3_combout\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~3_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|C~3_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|S[3]~2_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ3|S[3]~3_combout\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|Pout~1_combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|C~4_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~2_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~3_combout\ : std_logic;
SIGNAL \recur:blk_q0:3:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~4_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q0_GRP|Gout~5_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Pout~2_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|P[3]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|C~5_combout\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|C~6_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~1_combout\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Pout~3_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:TOP_FANOUT|C~4_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Pout~combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~3_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~4_combout\ : std_logic;
SIGNAL \recur:blk_q1:3:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~5_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~6_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~2_combout\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Pout~2_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|P[3]~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|C~5_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|C~6_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Pout~3_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:TOP_FANOUT|C~4_combout\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q1_GRP|Gout~7_combout\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Pout~combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~2_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~3_combout\ : std_logic;
SIGNAL \recur:blk_q2:3:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~4_combout\ : std_logic;
SIGNAL \recur:combine_q16:Q2_GRP|Gout~5_combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|g_int~0_combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|g_int[2]~1_combout\ : std_logic;
SIGNAL \recur:TOP_FANOUT|C~3_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|S[3]~2_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ0|S[3]~3_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~2_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~2_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ : std_logic;
SIGNAL \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ : std_logic;
SIGNAL \Cout~0_combout\ : std_logic;
SIGNAL \Cout~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:TOP_FANOUT|C~4_combout\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~3_combout\ : std_logic;
SIGNAL \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \Cout~2_combout\ : std_logic;
SIGNAL \Cout~3_combout\ : std_logic;
SIGNAL \Cout~4_combout\ : std_logic;
SIGNAL \Cout~5_combout\ : std_logic;
SIGNAL \Cout~6_combout\ : std_logic;
SIGNAL \Cout~7_combout\ : std_logic;
SIGNAL \Cout~8_combout\ : std_logic;
SIGNAL \Cout~9_combout\ : std_logic;
SIGNAL \Ovfl~0_combout\ : std_logic;
SIGNAL \recur:UQ0|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ3|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ0|recur:UQ0|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:UQ2|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ1|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ0|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:UQ1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ0|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ0|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ0|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ0|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ2|recur:UQ1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ1|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ1|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ2|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ2|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ2|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ2|recur:UQ3|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ1|recur:UQ3|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ0|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ2|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ2|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ2|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ2|recur:UQ3|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ2|recur:UQ3|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ3|recur:UQ0|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ1|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ1|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ1|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \recur:UQ3|recur:TOP_FANOUT|g_int\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ2|P\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \recur:UQ3|recur:UQ2|leaf:U_LEAF|C\ : std_logic_vector(3 DOWNTO 1);
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

-- Location: IOOBUF_X0_Y32_N23
\S[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\S[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\S[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(2),
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\S[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ0|S\(3),
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\S[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\S[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S\(1),
	devoe => ww_devoe,
	o => \S[5]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\S[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S\(2),
	devoe => ww_devoe,
	o => \S[6]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\S[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[7]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\S[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[8]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\S[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S\(1),
	devoe => ww_devoe,
	o => \S[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\S[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S\(2),
	devoe => ww_devoe,
	o => \S[10]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\S[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[11]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\S[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[12]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\S[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S\(1),
	devoe => ww_devoe,
	o => \S[13]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\S[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S\(2),
	devoe => ww_devoe,
	o => \S[14]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\S[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ0|recur:UQ3|S[3]~3_combout\,
	devoe => ww_devoe,
	o => \S[15]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\S[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[16]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\S[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S\(1),
	devoe => ww_devoe,
	o => \S[17]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\S[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S\(2),
	devoe => ww_devoe,
	o => \S[18]~output_o\);

-- Location: IOOBUF_X87_Y73_N2
\S[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ0|S\(3),
	devoe => ww_devoe,
	o => \S[19]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\S[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[20]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\S[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S\(1),
	devoe => ww_devoe,
	o => \S[21]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\S[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S\(2),
	devoe => ww_devoe,
	o => \S[22]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\S[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[23]~output_o\);

-- Location: IOOBUF_X115_Y32_N2
\S[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[24]~output_o\);

-- Location: IOOBUF_X115_Y31_N2
\S[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S\(1),
	devoe => ww_devoe,
	o => \S[25]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\S[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S\(2),
	devoe => ww_devoe,
	o => \S[26]~output_o\);

-- Location: IOOBUF_X115_Y33_N2
\S[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[27]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\S[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[28]~output_o\);

-- Location: IOOBUF_X91_Y73_N16
\S[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S\(1),
	devoe => ww_devoe,
	o => \S[29]~output_o\);

-- Location: IOOBUF_X100_Y73_N16
\S[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S\(2),
	devoe => ww_devoe,
	o => \S[30]~output_o\);

-- Location: IOOBUF_X115_Y69_N16
\S[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ1|recur:UQ3|S\(3),
	devoe => ww_devoe,
	o => \S[31]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\S[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[32]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\S[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S\(1),
	devoe => ww_devoe,
	o => \S[33]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\S[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S\(2),
	devoe => ww_devoe,
	o => \S[34]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\S[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ0|S\(3),
	devoe => ww_devoe,
	o => \S[35]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\S[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[36]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\S[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S\(1),
	devoe => ww_devoe,
	o => \S[37]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\S[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S\(2),
	devoe => ww_devoe,
	o => \S[38]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\S[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[39]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\S[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[40]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\S[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S\(1),
	devoe => ww_devoe,
	o => \S[41]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\S[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S\(2),
	devoe => ww_devoe,
	o => \S[42]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\S[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[43]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\S[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[44]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\S[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S\(1),
	devoe => ww_devoe,
	o => \S[45]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\S[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S\(2),
	devoe => ww_devoe,
	o => \S[46]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\S[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ2|recur:UQ3|S\(3),
	devoe => ww_devoe,
	o => \S[47]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\S[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S\(0),
	devoe => ww_devoe,
	o => \S[48]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\S[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S\(1),
	devoe => ww_devoe,
	o => \S[49]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\S[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S\(2),
	devoe => ww_devoe,
	o => \S[50]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\S[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ0|S[3]~3_combout\,
	devoe => ww_devoe,
	o => \S[51]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\S[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S\(0),
	devoe => ww_devoe,
	o => \S[52]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\S[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S\(1),
	devoe => ww_devoe,
	o => \S[53]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\S[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S\(2),
	devoe => ww_devoe,
	o => \S[54]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\S[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ1|S\(3),
	devoe => ww_devoe,
	o => \S[55]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\S[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S\(0),
	devoe => ww_devoe,
	o => \S[56]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\S[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S\(1),
	devoe => ww_devoe,
	o => \S[57]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\S[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S\(2),
	devoe => ww_devoe,
	o => \S[58]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\S[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ2|S\(3),
	devoe => ww_devoe,
	o => \S[59]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\S[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S\(0),
	devoe => ww_devoe,
	o => \S[60]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\S[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S\(1),
	devoe => ww_devoe,
	o => \S[61]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\S[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S\(2),
	devoe => ww_devoe,
	o => \S[62]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\S[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \recur:UQ3|recur:UQ3|S\(3),
	devoe => ww_devoe,
	o => \S[63]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Cout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Cout~9_combout\,
	devoe => ww_devoe,
	o => \Cout~output_o\);

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOIBUF_X0_Y35_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\Cin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X1_Y32_N16
\recur:UQ0|recur:UQ0|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(0) = \A[0]~input_o\ $ (\Cin~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datac => \Cin~input_o\,
	datad => \B[0]~input_o\,
	combout => \recur:UQ0|recur:UQ0|S\(0));

-- Location: IOIBUF_X0_Y34_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X1_Y33_N0
\recur:UQ0|recur:UQ0|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|P\(1) = \B[1]~input_o\ $ (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	combout => \recur:UQ0|recur:UQ0|P\(1));

-- Location: LCCOMB_X1_Y33_N10
\recur:UQ0|recur:UQ0|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(1) = \recur:UQ0|recur:UQ0|P\(1) $ (((\Cin~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))) # (!\Cin~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \recur:UQ0|recur:UQ0|P\(1),
	combout => \recur:UQ0|recur:UQ0|S\(1));

-- Location: LCCOMB_X1_Y33_N6
\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X1_Y33_N28
\recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ = (\Cin~input_o\ & (\A[0]~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\);

-- Location: IOIBUF_X0_Y32_N15
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LCCOMB_X1_Y33_N8
\recur:UQ0|recur:UQ0|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|P\(2) = \A[2]~input_o\ $ (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \recur:UQ0|recur:UQ0|P\(2));

-- Location: LCCOMB_X1_Y33_N2
\recur:UQ0|recur:UQ0|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(2) = \recur:UQ0|recur:UQ0|P\(2) $ (((\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\) # ((\recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ & \recur:UQ0|recur:UQ0|P\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\,
	datab => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\,
	datac => \recur:UQ0|recur:UQ0|P\(2),
	datad => \recur:UQ0|recur:UQ0|P\(1),
	combout => \recur:UQ0|recur:UQ0|S\(2));

-- Location: IOIBUF_X0_Y31_N15
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X1_Y33_N26
\recur:UQ0|P[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|P[3]~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \recur:UQ0|P[3]~0_combout\);

-- Location: LCCOMB_X1_Y33_N16
\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # ((\A[1]~input_o\ & \B[1]~input_o\)))) # (!\B[2]~input_o\ & (\A[1]~input_o\ & (\B[1]~input_o\ & \A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X1_Y33_N22
\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ = (\A[1]~input_o\ & (!\B[1]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[2]~input_o\ $ (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\);

-- Location: LCCOMB_X1_Y33_N12
\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\ = (\Cin~input_o\ & ((\A[0]~input_o\) # (\B[0]~input_o\))) # (!\Cin~input_o\ & (\A[0]~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\);

-- Location: LCCOMB_X1_Y33_N20
\recur:UQ0|recur:UQ0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ0|S\(3) = \recur:UQ0|P[3]~0_combout\ $ (((\recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ & \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|P[3]~0_combout\,
	datab => \recur:UQ0|recur:UQ0|leaf:U_LEAF|g_int~1_combout\,
	datac => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\,
	datad => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~1_combout\,
	combout => \recur:UQ0|recur:UQ0|S\(3));

-- Location: IOIBUF_X0_Y28_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X1_Y33_N30
\recur:UQ0|recur:TOP_FANOUT|C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|C~4_combout\ = (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ & (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\ & (\A[3]~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|C~4_combout\);

-- Location: LCCOMB_X1_Y33_N14
\recur:UQ0|recur:blk_q0:0:Q0_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # ((\A[2]~input_o\ & \B[2]~input_o\)))) # (!\A[3]~input_o\ & (\A[2]~input_o\ & (\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \recur:UQ0|recur:blk_q0:0:Q0_BLK|g_int~0_combout\);

-- Location: LCCOMB_X1_Y33_N24
\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\) # ((\A[0]~input_o\ & \B[0]~input_o\)))) # (!\B[1]~input_o\ & (\A[0]~input_o\ & (\A[1]~input_o\ & \B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: LCCOMB_X1_Y33_N18
\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ = (\recur:UQ0|recur:blk_q0:0:Q0_BLK|g_int~0_combout\) # ((\recur:UQ0|P[3]~0_combout\ & (\recur:UQ0|recur:UQ0|P\(2) & \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|P[3]~0_combout\,
	datab => \recur:UQ0|recur:UQ0|P\(2),
	datac => \recur:UQ0|recur:blk_q0:0:Q0_BLK|g_int~0_combout\,
	datad => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~0_combout\,
	combout => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\);

-- Location: LCCOMB_X1_Y28_N8
\recur:UQ0|recur:UQ1|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S\(0) = \A[4]~input_o\ $ (\B[4]~input_o\ $ (((\recur:UQ0|recur:TOP_FANOUT|C~4_combout\) # (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~4_combout\,
	datad => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	combout => \recur:UQ0|recur:UQ1|S\(0));

-- Location: IOIBUF_X0_Y27_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LCCOMB_X1_Y28_N4
\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ = (\A[4]~input_o\ & ((\B[4]~input_o\) # ((\recur:UQ0|recur:TOP_FANOUT|C~4_combout\) # (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))) # (!\A[4]~input_o\ & (\B[4]~input_o\ & 
-- ((\recur:UQ0|recur:TOP_FANOUT|C~4_combout\) # (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~4_combout\,
	datad => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X1_Y27_N16
\recur:UQ0|recur:UQ1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S\(1) = \A[5]~input_o\ $ (\B[5]~input_o\ $ (\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	datad => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ0|recur:UQ1|S\(1));

-- Location: IOIBUF_X0_Y26_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X1_Y28_N10
\recur:UQ0|recur:UQ1|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|P\(2) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	combout => \recur:UQ0|recur:UQ1|P\(2));

-- Location: LCCOMB_X1_Y28_N18
\recur:UQ0|recur:UQ1|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|P\(1) = \A[5]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \B[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|P\(1));

-- Location: LCCOMB_X1_Y28_N14
\recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1_combout\ = (\recur:UQ0|recur:TOP_FANOUT|C~4_combout\ & (\A[4]~input_o\ $ ((\B[4]~input_o\)))) # (!\recur:UQ0|recur:TOP_FANOUT|C~4_combout\ & (\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & (\A[4]~input_o\ $ 
-- (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~4_combout\,
	datad => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X1_Y28_N16
\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X1_Y28_N28
\recur:UQ0|recur:UQ1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S\(2) = \recur:UQ0|recur:UQ1|P\(2) $ (((\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\) # ((\recur:UQ0|recur:UQ1|P\(1) & \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ1|P\(2),
	datab => \recur:UQ0|recur:UQ1|P\(1),
	datac => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	datad => \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\,
	combout => \recur:UQ0|recur:UQ1|S\(2));

-- Location: IOIBUF_X0_Y25_N22
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X1_Y28_N22
\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = (\B[6]~input_o\ & ((\A[6]~input_o\) # ((\B[5]~input_o\ & \A[5]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\B[5]~input_o\ & \A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X1_Y28_N24
\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\ = (\B[6]~input_o\ & (!\A[6]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\B[5]~input_o\ $ (\A[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\);

-- Location: LCCOMB_X1_Y28_N2
\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~3_combout\ = (\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\ & ((\recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1_combout\) # ((\A[4]~input_o\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	datad => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~2_combout\,
	combout => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~3_combout\);

-- Location: LCCOMB_X1_Y28_N20
\recur:UQ0|recur:UQ1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ1|S\(3) = \B[7]~input_o\ $ (\A[7]~input_o\ $ (((\recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\) # (\recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \recur:UQ0|recur:UQ1|leaf:U_LEAF|g_int~1_combout\,
	datad => \recur:UQ0|recur:UQ1|leaf:U_LEAF|C[3]~3_combout\,
	combout => \recur:UQ0|recur:UQ1|S\(3));

-- Location: IOIBUF_X0_Y43_N15
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: LCCOMB_X1_Y28_N6
\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = (\B[6]~input_o\ & (!\A[6]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\)))) # (!\B[6]~input_o\ & (\A[6]~input_o\ & (\B[7]~input_o\ $ (\A[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[7]~input_o\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: LCCOMB_X1_Y28_N0
\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\ = (\recur:UQ0|recur:UQ1|P\(1) & (\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (\A[4]~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \recur:UQ0|recur:UQ1|P\(1),
	datac => \B[4]~input_o\,
	datad => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\);

-- Location: LCCOMB_X1_Y33_N4
\recur:UQ0|recur:TOP_FANOUT|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|C~2_combout\ = (\recur:UQ0|P[3]~0_combout\ & (\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (\recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\ & \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|P[3]~0_combout\,
	datab => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	datac => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C[3]~2_combout\,
	datad => \recur:UQ0|recur:UQ0|leaf:U_LEAF|C~0_combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\);

-- Location: LCCOMB_X1_Y28_N12
\recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = (\A[5]~input_o\ & ((\B[5]~input_o\) # ((\B[4]~input_o\ & \A[4]~input_o\)))) # (!\A[5]~input_o\ & (\B[4]~input_o\ & (\B[5]~input_o\ & \A[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[4]~input_o\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: LCCOMB_X1_Y28_N26
\recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = (\B[7]~input_o\ & ((\A[7]~input_o\) # ((\B[6]~input_o\ & \A[6]~input_o\)))) # (!\B[7]~input_o\ & (\B[6]~input_o\ & (\A[6]~input_o\ & \A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \B[7]~input_o\,
	datac => \A[6]~input_o\,
	datad => \A[7]~input_o\,
	combout => \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: LCCOMB_X1_Y28_N30
\recur:UQ0|recur:TOP_FANOUT|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|g_int[1]~0_combout\ = (\recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\) # ((\recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Gout~0_combout\,
	datac => \recur:UQ0|recur:blk_q1:0:Q1_BLK|g_int~0_combout\,
	datad => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|g_int[1]~0_combout\);

-- Location: LCCOMB_X1_Y48_N24
\recur:UQ0|recur:TOP_FANOUT|g_int[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|g_int\(1) = (\recur:UQ0|recur:TOP_FANOUT|g_int[1]~0_combout\) # ((\recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ0|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datac => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int[1]~0_combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|g_int\(1));

-- Location: LCCOMB_X1_Y44_N0
\recur:UQ0|recur:UQ2|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S\(0) = \B[8]~input_o\ $ (\A[8]~input_o\ $ (((\recur:UQ0|recur:TOP_FANOUT|C~2_combout\) # (\recur:UQ0|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int\(1),
	combout => \recur:UQ0|recur:UQ2|S\(0));

-- Location: IOIBUF_X0_Y44_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X1_Y44_N28
\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ = (\B[8]~input_o\ & ((\A[8]~input_o\) # ((\recur:UQ0|recur:TOP_FANOUT|C~2_combout\) # (\recur:UQ0|recur:TOP_FANOUT|g_int\(1))))) # (!\B[8]~input_o\ & (\A[8]~input_o\ & 
-- ((\recur:UQ0|recur:TOP_FANOUT|C~2_combout\) # (\recur:UQ0|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int\(1),
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X1_Y44_N30
\recur:UQ0|recur:UQ2|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S\(1) = \B[9]~input_o\ $ (\A[9]~input_o\ $ (\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	datad => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ0|recur:UQ2|S\(1));

-- Location: IOIBUF_X0_Y44_N8
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X1_Y44_N10
\recur:UQ0|recur:UQ2|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|P\(2) = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recur:UQ0|recur:UQ2|P\(2));

-- Location: LCCOMB_X1_Y44_N18
\recur:UQ0|recur:UQ2|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|P\(1) = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datac => \A[9]~input_o\,
	combout => \recur:UQ0|recur:UQ2|P\(1));

-- Location: LCCOMB_X1_Y44_N14
\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1_combout\ = (\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & (\B[8]~input_o\ $ ((\A[8]~input_o\)))) # (!\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & (\recur:UQ0|recur:TOP_FANOUT|g_int\(1) & (\B[8]~input_o\ $ 
-- (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int\(1),
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X1_Y44_N24
\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X1_Y44_N20
\recur:UQ0|recur:UQ2|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S\(2) = \recur:UQ0|recur:UQ2|P\(2) $ (((\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\) # ((\recur:UQ0|recur:UQ2|P\(1) & \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ2|P\(2),
	datab => \recur:UQ0|recur:UQ2|P\(1),
	datac => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	datad => \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\,
	combout => \recur:UQ0|recur:UQ2|S\(2));

-- Location: LCCOMB_X1_Y44_N8
\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\ = (\B[9]~input_o\ & (!\A[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\)))) # (!\B[9]~input_o\ & (\A[9]~input_o\ & (\B[10]~input_o\ $ (\A[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\);

-- Location: LCCOMB_X1_Y44_N26
\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~3_combout\ = (\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\ & ((\recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1_combout\) # ((\B[8]~input_o\ & \A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~2_combout\,
	datad => \A[8]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~3_combout\);

-- Location: IOIBUF_X0_Y45_N22
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: LCCOMB_X1_Y44_N22
\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = (\B[10]~input_o\ & ((\A[10]~input_o\) # ((\B[9]~input_o\ & \A[9]~input_o\)))) # (!\B[10]~input_o\ & (\B[9]~input_o\ & (\A[9]~input_o\ & \A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \B[10]~input_o\,
	datac => \A[9]~input_o\,
	datad => \A[10]~input_o\,
	combout => \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: IOIBUF_X0_Y48_N8
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X1_Y44_N12
\recur:UQ0|recur:UQ2|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ2|S\(3) = \A[11]~input_o\ $ (\B[11]~input_o\ $ (((\recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~3_combout\) # (\recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ2|leaf:U_LEAF|C[3]~3_combout\,
	datab => \A[11]~input_o\,
	datac => \recur:UQ0|recur:UQ2|leaf:U_LEAF|g_int~1_combout\,
	datad => \B[11]~input_o\,
	combout => \recur:UQ0|recur:UQ2|S\(3));

-- Location: IOIBUF_X0_Y51_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X1_Y44_N6
\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = (\A[10]~input_o\ & (!\B[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\)))) # (!\A[10]~input_o\ & (\B[10]~input_o\ & (\A[11]~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LCCOMB_X1_Y44_N16
\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ = (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (\recur:UQ0|recur:UQ2|P\(1) & (\A[8]~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	datab => \A[8]~input_o\,
	datac => \B[8]~input_o\,
	datad => \recur:UQ0|recur:UQ2|P\(1),
	combout => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: LCCOMB_X1_Y48_N2
\recur:UQ0|recur:TOP_FANOUT|C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|C~3_combout\ = (\recur:UQ0|recur:TOP_FANOUT|C~4_combout\ & (\recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\ & \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:TOP_FANOUT|C~4_combout\,
	datac => \recur:UQ0|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	datad => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	combout => \recur:UQ0|recur:TOP_FANOUT|C~3_combout\);

-- Location: LCCOMB_X1_Y44_N4
\recur:combine_q16:Q0_GRP|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~0_combout\ = (\A[9]~input_o\ & ((\B[9]~input_o\) # ((\B[8]~input_o\ & \A[8]~input_o\)))) # (!\A[9]~input_o\ & (\B[8]~input_o\ & (\A[8]~input_o\ & \B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \A[8]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \recur:combine_q16:Q0_GRP|Gout~0_combout\);

-- Location: LCCOMB_X1_Y48_N12
\recur:combine_q16:Q0_GRP|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~1_combout\ = (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & \recur:combine_q16:Q0_GRP|Gout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	datad => \recur:combine_q16:Q0_GRP|Gout~0_combout\,
	combout => \recur:combine_q16:Q0_GRP|Gout~1_combout\);

-- Location: LCCOMB_X1_Y44_N2
\recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = (\A[11]~input_o\ & ((\B[11]~input_o\) # ((\A[10]~input_o\ & \B[10]~input_o\)))) # (!\A[11]~input_o\ & (\A[10]~input_o\ & (\B[10]~input_o\ & \B[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[11]~input_o\,
	datac => \B[10]~input_o\,
	datad => \B[11]~input_o\,
	combout => \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LCCOMB_X1_Y48_N6
\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\ = (\recur:combine_q16:Q0_GRP|Gout~1_combout\) # ((\recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\) # ((\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ0|recur:TOP_FANOUT|g_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q0_GRP|Gout~1_combout\,
	datab => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datac => \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int\(1),
	combout => \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\);

-- Location: LCCOMB_X1_Y52_N0
\recur:UQ0|recur:UQ3|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S\(0) = \B[12]~input_o\ $ (\A[12]~input_o\ $ (((\recur:UQ0|recur:TOP_FANOUT|C~3_combout\) # (\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~3_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\,
	combout => \recur:UQ0|recur:UQ3|S\(0));

-- Location: IOIBUF_X0_Y52_N1
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X1_Y52_N18
\recur:UQ0|recur:UQ3|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ = (\B[12]~input_o\ & ((\A[12]~input_o\) # ((\recur:UQ0|recur:TOP_FANOUT|C~3_combout\) # (\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & 
-- ((\recur:UQ0|recur:TOP_FANOUT|C~3_combout\) # (\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~3_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X1_Y52_N28
\recur:UQ0|recur:UQ3|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S\(1) = \A[13]~input_o\ $ (\B[13]~input_o\ $ (\recur:UQ0|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[13]~input_o\,
	datad => \recur:UQ0|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ0|recur:UQ3|S\(1));

-- Location: IOIBUF_X0_Y53_N1
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: LCCOMB_X1_Y52_N16
\recur:blk_q0:3:Q0_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q0:3:Q0_BLK|Pout~0_combout\ = (\B[12]~input_o\ & (!\A[12]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\)))) # (!\B[12]~input_o\ & (\A[12]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \recur:blk_q0:3:Q0_BLK|Pout~0_combout\);

-- Location: LCCOMB_X1_Y48_N16
\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\ = (\recur:blk_q0:3:Q0_BLK|Pout~0_combout\ & ((\recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\) # ((\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ0|recur:TOP_FANOUT|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:TOP_FANOUT|g_int[2]~1_combout\,
	datab => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\,
	datad => \recur:blk_q0:3:Q0_BLK|Pout~0_combout\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X1_Y52_N22
\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\B[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X0_Y52_N22
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X1_Y52_N20
\recur:UQ0|recur:UQ3|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S\(2) = \A[14]~input_o\ $ (\B[14]~input_o\ $ (((\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\) # (\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\,
	datad => \B[14]~input_o\,
	combout => \recur:UQ0|recur:UQ3|S\(2));

-- Location: LCCOMB_X1_Y52_N12
\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ = (\B[12]~input_o\ & (\A[12]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X1_Y52_N30
\recur:UQ0|recur:UQ3|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S[3]~2_combout\ = (\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\ & (\B[14]~input_o\ $ ((\A[14]~input_o\)))) # (!\recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\ & (\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ & (\B[14]~input_o\ $ 
-- (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \recur:UQ0|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	datac => \A[14]~input_o\,
	datad => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~2_combout\,
	combout => \recur:UQ0|recur:UQ3|S[3]~2_combout\);

-- Location: IOIBUF_X0_Y53_N8
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X1_Y52_N10
\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ = (\A[14]~input_o\ & ((\B[14]~input_o\) # ((\B[13]~input_o\ & \A[13]~input_o\)))) # (!\A[14]~input_o\ & (\B[13]~input_o\ & (\A[13]~input_o\ & \B[14]~input_o\)))

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
	combout => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X1_Y52_N24
\recur:UQ0|recur:UQ3|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ0|recur:UQ3|S[3]~3_combout\ = \B[15]~input_o\ $ (\A[15]~input_o\ $ (((\recur:UQ0|recur:UQ3|S[3]~2_combout\) # (\recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ0|recur:UQ3|S[3]~2_combout\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \recur:UQ0|recur:UQ3|leaf:U_LEAF|g_int~1_combout\,
	combout => \recur:UQ0|recur:UQ3|S[3]~3_combout\);

-- Location: LCCOMB_X1_Y52_N6
\recur:blk_q0:3:Q0_BLK|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q0:3:Q0_BLK|Pout~1_combout\ = (\A[14]~input_o\ & (!\B[14]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\)))) # (!\A[14]~input_o\ & (\B[14]~input_o\ & (\B[15]~input_o\ $ (\A[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \recur:blk_q0:3:Q0_BLK|Pout~1_combout\);

-- Location: LCCOMB_X1_Y48_N20
\recur:TOP_FANOUT|C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|C~4_combout\ = (\recur:blk_q0:3:Q0_BLK|Pout~1_combout\ & (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ & (\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & \recur:blk_q0:3:Q0_BLK|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q0:3:Q0_BLK|Pout~1_combout\,
	datab => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datac => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\,
	datad => \recur:blk_q0:3:Q0_BLK|Pout~0_combout\,
	combout => \recur:TOP_FANOUT|C~4_combout\);

-- Location: IOIBUF_X89_Y73_N15
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: LCCOMB_X1_Y48_N10
\recur:blk_q0:3:Q0_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q0:3:Q0_BLK|Pout~combout\ = (\recur:blk_q0:3:Q0_BLK|Pout~1_combout\ & \recur:blk_q0:3:Q0_BLK|Pout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q0:3:Q0_BLK|Pout~1_combout\,
	datad => \recur:blk_q0:3:Q0_BLK|Pout~0_combout\,
	combout => \recur:blk_q0:3:Q0_BLK|Pout~combout\);

-- Location: LCCOMB_X1_Y52_N26
\recur:combine_q16:Q0_GRP|Gout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~2_combout\ = (\B[13]~input_o\ & ((\A[13]~input_o\) # ((\B[12]~input_o\ & \A[12]~input_o\)))) # (!\B[13]~input_o\ & (\B[12]~input_o\ & (\A[12]~input_o\ & \A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[12]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \recur:combine_q16:Q0_GRP|Gout~2_combout\);

-- Location: LCCOMB_X1_Y48_N28
\recur:combine_q16:Q0_GRP|Gout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~3_combout\ = (\recur:blk_q0:3:Q0_BLK|Pout~1_combout\ & ((\recur:combine_q16:Q0_GRP|Gout~2_combout\) # ((\recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & \recur:blk_q0:3:Q0_BLK|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q0:3:Q0_BLK|Pout~1_combout\,
	datab => \recur:combine_q16:Q0_GRP|Gout~2_combout\,
	datac => \recur:UQ0|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	datad => \recur:blk_q0:3:Q0_BLK|Pout~0_combout\,
	combout => \recur:combine_q16:Q0_GRP|Gout~3_combout\);

-- Location: LCCOMB_X1_Y52_N8
\recur:blk_q0:3:Q0_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q0:3:Q0_BLK|g_int~0_combout\ = (\B[15]~input_o\ & ((\A[15]~input_o\) # ((\A[14]~input_o\ & \B[14]~input_o\)))) # (!\B[15]~input_o\ & (\A[14]~input_o\ & (\A[15]~input_o\ & \B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[15]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[14]~input_o\,
	combout => \recur:blk_q0:3:Q0_BLK|g_int~0_combout\);

-- Location: LCCOMB_X1_Y48_N22
\recur:combine_q16:Q0_GRP|Gout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~4_combout\ = (\recur:combine_q16:Q0_GRP|Gout~3_combout\) # ((\recur:blk_q0:3:Q0_BLK|g_int~0_combout\) # ((\recur:combine_q16:Q0_GRP|Gout~1_combout\ & \recur:blk_q0:3:Q0_BLK|Pout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q0_GRP|Gout~1_combout\,
	datab => \recur:combine_q16:Q0_GRP|Gout~3_combout\,
	datac => \recur:blk_q0:3:Q0_BLK|g_int~0_combout\,
	datad => \recur:blk_q0:3:Q0_BLK|Pout~combout\,
	combout => \recur:combine_q16:Q0_GRP|Gout~4_combout\);

-- Location: LCCOMB_X1_Y48_N0
\recur:combine_q16:Q0_GRP|Gout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q0_GRP|Gout~5_combout\ = (\recur:combine_q16:Q0_GRP|Gout~4_combout\) # ((\recur:blk_q0:3:Q0_BLK|Pout~combout\ & (\recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ0|recur:TOP_FANOUT|g_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q0:3:Q0_BLK|Pout~combout\,
	datab => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datac => \recur:combine_q16:Q0_GRP|Gout~4_combout\,
	datad => \recur:UQ0|recur:TOP_FANOUT|g_int\(1),
	combout => \recur:combine_q16:Q0_GRP|Gout~5_combout\);

-- Location: IOIBUF_X89_Y73_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X89_Y69_N0
\recur:UQ1|recur:UQ0|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S\(0) = \A[16]~input_o\ $ (\B[16]~input_o\ $ (((\recur:TOP_FANOUT|C~4_combout\) # (\recur:combine_q16:Q0_GRP|Gout~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|C~4_combout\,
	datab => \A[16]~input_o\,
	datac => \recur:combine_q16:Q0_GRP|Gout~5_combout\,
	datad => \B[16]~input_o\,
	combout => \recur:UQ1|recur:UQ0|S\(0));

-- Location: LCCOMB_X89_Y69_N18
\recur:UQ1|recur:UQ0|leaf:U_LEAF|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\ = (\A[16]~input_o\ & ((\recur:TOP_FANOUT|C~4_combout\) # ((\recur:combine_q16:Q0_GRP|Gout~5_combout\) # (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\B[16]~input_o\ & ((\recur:TOP_FANOUT|C~4_combout\) # 
-- (\recur:combine_q16:Q0_GRP|Gout~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|C~4_combout\,
	datab => \A[16]~input_o\,
	datac => \recur:combine_q16:Q0_GRP|Gout~5_combout\,
	datad => \B[16]~input_o\,
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\);

-- Location: IOIBUF_X85_Y73_N15
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X96_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X89_Y69_N4
\recur:UQ1|recur:UQ0|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S\(1) = \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\ $ (\A[17]~input_o\ $ (\B[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recur:UQ1|recur:UQ0|S\(1));

-- Location: LCCOMB_X89_Y69_N24
\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[16]~input_o\ & (\A[16]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X89_Y69_N2
\recur:combine_q16:Q1_GRP|Pout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Pout~2_combout\ = (\B[16]~input_o\ & (!\A[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\)))) # (!\B[16]~input_o\ & (\A[16]~input_o\ & (\A[17]~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recur:combine_q16:Q1_GRP|Pout~2_combout\);

-- Location: LCCOMB_X89_Y69_N12
\recur:UQ1|recur:UQ0|leaf:U_LEAF|C[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|C\(2) = (\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\) # ((\recur:combine_q16:Q1_GRP|Pout~2_combout\ & ((\recur:TOP_FANOUT|C~4_combout\) # (\recur:combine_q16:Q0_GRP|Gout~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|C~4_combout\,
	datab => \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\,
	datac => \recur:combine_q16:Q0_GRP|Gout~5_combout\,
	datad => \recur:combine_q16:Q1_GRP|Pout~2_combout\,
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C\(2));

-- Location: IOIBUF_X100_Y73_N22
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X89_Y69_N26
\recur:UQ1|recur:UQ0|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S\(2) = \recur:UQ1|recur:UQ0|leaf:U_LEAF|C\(2) $ (\A[18]~input_o\ $ (\B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C\(2),
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \recur:UQ1|recur:UQ0|S\(2));

-- Location: LCCOMB_X89_Y69_N6
\recur:UQ1|recur:UQ0|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|P\(2) = \A[18]~input_o\ $ (\B[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \recur:UQ1|recur:UQ0|P\(2));

-- Location: LCCOMB_X89_Y69_N22
\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\ = (\recur:combine_q16:Q1_GRP|Pout~2_combout\ & (\recur:UQ1|recur:UQ0|P\(2) & ((\recur:TOP_FANOUT|C~4_combout\) # (\recur:combine_q16:Q0_GRP|Gout~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|C~4_combout\,
	datab => \recur:combine_q16:Q1_GRP|Pout~2_combout\,
	datac => \recur:combine_q16:Q0_GRP|Gout~5_combout\,
	datad => \recur:UQ1|recur:UQ0|P\(2),
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\);

-- Location: LCCOMB_X89_Y69_N14
\recur:UQ1|recur:UQ0|leaf:U_LEAF|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\ = (\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & ((\A[18]~input_o\) # (\B[18]~input_o\))) # (!\recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ & (\A[18]~input_o\ & \B[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ1|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\,
	datac => \A[18]~input_o\,
	datad => \B[18]~input_o\,
	combout => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\);

-- Location: IOIBUF_X87_Y73_N15
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: LCCOMB_X89_Y69_N28
\recur:UQ1|recur:UQ0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ0|S\(3) = \A[19]~input_o\ $ (\B[19]~input_o\ $ (((\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\) # (\recur:UQ1|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	datab => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\,
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \recur:UQ1|recur:UQ0|S\(3));

-- Location: IOIBUF_X89_Y0_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X89_Y69_N10
\recur:UQ1|recur:blk_q0:0:Q0_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\) # ((\A[18]~input_o\ & \B[18]~input_o\)))) # (!\B[19]~input_o\ & (\A[18]~input_o\ & (\A[19]~input_o\ & \B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A[19]~input_o\,
	datad => \B[18]~input_o\,
	combout => \recur:UQ1|recur:blk_q0:0:Q0_BLK|g_int~0_combout\);

-- Location: LCCOMB_X89_Y69_N16
\recur:UQ1|P[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|P[3]~0_combout\ = \A[19]~input_o\ $ (\B[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[19]~input_o\,
	datad => \B[19]~input_o\,
	combout => \recur:UQ1|P[3]~0_combout\);

-- Location: LCCOMB_X89_Y69_N20
\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = (\A[17]~input_o\ & ((\B[17]~input_o\) # ((\B[16]~input_o\ & \A[16]~input_o\)))) # (!\A[17]~input_o\ & (\B[16]~input_o\ & (\A[16]~input_o\ & \B[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \A[16]~input_o\,
	datac => \A[17]~input_o\,
	datad => \B[17]~input_o\,
	combout => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: LCCOMB_X89_Y69_N30
\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ = (\recur:UQ1|recur:blk_q0:0:Q0_BLK|g_int~0_combout\) # ((\recur:UQ1|P[3]~0_combout\ & (\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & \recur:UQ1|recur:UQ0|P\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:blk_q0:0:Q0_BLK|g_int~0_combout\,
	datab => \recur:UQ1|P[3]~0_combout\,
	datac => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~0_combout\,
	datad => \recur:UQ1|recur:UQ0|P\(2),
	combout => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\);

-- Location: LCCOMB_X90_Y69_N12
\recur:UQ1|recur:TOP_FANOUT|C~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|C~5_combout\ = (\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\ & (\A[19]~input_o\ $ (\B[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|C~5_combout\);

-- Location: IOIBUF_X91_Y0_N22
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: LCCOMB_X89_Y4_N0
\recur:UQ1|recur:UQ1|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S\(0) = \B[20]~input_o\ $ (\A[20]~input_o\ $ (((\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # (\recur:UQ1|recur:TOP_FANOUT|C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datac => \recur:UQ1|recur:TOP_FANOUT|C~5_combout\,
	datad => \A[20]~input_o\,
	combout => \recur:UQ1|recur:UQ1|S\(0));

-- Location: IOIBUF_X85_Y0_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: LCCOMB_X89_Y4_N2
\recur:UQ1|recur:UQ1|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ = (\B[20]~input_o\ & ((\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # ((\recur:UQ1|recur:TOP_FANOUT|C~5_combout\) # (\A[20]~input_o\)))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & 
-- ((\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # (\recur:UQ1|recur:TOP_FANOUT|C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datac => \recur:UQ1|recur:TOP_FANOUT|C~5_combout\,
	datad => \A[20]~input_o\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X89_Y4_N20
\recur:UQ1|recur:UQ1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S\(1) = \B[21]~input_o\ $ (\A[21]~input_o\ $ (\recur:UQ1|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ1|recur:UQ1|S\(1));

-- Location: IOIBUF_X85_Y0_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X89_Y0_N22
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X89_Y4_N14
\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\B[21]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ & \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X89_Y4_N8
\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = (\B[20]~input_o\ & (!\A[20]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\)))) # (!\B[20]~input_o\ & (\A[20]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: LCCOMB_X89_Y69_N8
\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1_combout\ = (\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & ((\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # ((\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\ & \recur:UQ1|P[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	datab => \recur:UQ1|P[3]~0_combout\,
	datac => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	datad => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X89_Y4_N30
\recur:UQ1|recur:UQ1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S\(2) = \B[22]~input_o\ $ (\A[22]~input_o\ $ (((\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\) # (\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[22]~input_o\,
	datac => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\,
	datad => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	combout => \recur:UQ1|recur:UQ1|S\(2));

-- Location: IOIBUF_X89_Y0_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X89_Y4_N10
\recur:UQ1|recur:UQ1|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|P\(2) = \B[22]~input_o\ $ (\A[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recur:UQ1|recur:UQ1|P\(2));

-- Location: LCCOMB_X89_Y4_N4
\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = (\B[22]~input_o\ & ((\A[22]~input_o\) # ((\B[21]~input_o\ & \A[21]~input_o\)))) # (!\B[22]~input_o\ & (\B[21]~input_o\ & (\A[21]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X89_Y4_N22
\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~2_combout\ = (\B[20]~input_o\ & (\A[20]~input_o\ & (\B[21]~input_o\ $ (\A[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X89_Y4_N16
\recur:UQ1|recur:UQ1|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|leaf:U_LEAF|C\(3) = (\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ1|recur:UQ1|P\(2) & ((\recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~2_combout\) # (\recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ1|P\(2),
	datab => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~1_combout\,
	datac => \recur:UQ1|recur:UQ1|leaf:U_LEAF|g_int~2_combout\,
	datad => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	combout => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C\(3));

-- Location: LCCOMB_X89_Y4_N26
\recur:UQ1|recur:UQ1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ1|S\(3) = \A[23]~input_o\ $ (\B[23]~input_o\ $ (\recur:UQ1|recur:UQ1|leaf:U_LEAF|C\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \recur:UQ1|recur:UQ1|leaf:U_LEAF|C\(3),
	combout => \recur:UQ1|recur:UQ1|S\(3));

-- Location: IOIBUF_X115_Y35_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X89_Y4_N28
\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ = (\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (\recur:UQ1|recur:UQ1|P\(2) & (\B[23]~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[23]~input_o\,
	datab => \A[23]~input_o\,
	datac => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	datad => \recur:UQ1|recur:UQ1|P\(2),
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\);

-- Location: LCCOMB_X90_Y69_N14
\recur:UQ1|recur:TOP_FANOUT|C~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|C~6_combout\ = (\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\ & (\A[19]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|C~6_combout\);

-- Location: LCCOMB_X89_Y4_N6
\recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\) # ((\B[22]~input_o\ & \A[22]~input_o\)))) # (!\A[23]~input_o\ & (\B[22]~input_o\ & (\B[23]~input_o\ & \A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[22]~input_o\,
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \A[22]~input_o\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: LCCOMB_X89_Y4_N24
\recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = (\B[21]~input_o\ & ((\A[21]~input_o\) # ((\B[20]~input_o\ & \A[20]~input_o\)))) # (!\B[21]~input_o\ & (\B[20]~input_o\ & (\A[21]~input_o\ & \A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[20]~input_o\,
	datab => \B[21]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[20]~input_o\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: LCCOMB_X89_Y4_N18
\recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~1_combout\ = (\recur:UQ1|recur:UQ1|P\(2) & (\recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & (\A[23]~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ1|P\(2),
	datab => \A[23]~input_o\,
	datac => \B[23]~input_o\,
	datad => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~0_combout\,
	combout => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~1_combout\);

-- Location: LCCOMB_X89_Y4_N12
\recur:UQ1|recur:TOP_FANOUT|g_int[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|g_int\(1) = (\recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\) # ((\recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~1_combout\) # ((\recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ & \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:blk_q1:0:Q1_BLK|g_int~0_combout\,
	datab => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Gout~1_combout\,
	datac => \recur:UQ1|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datad => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|g_int\(1));

-- Location: IOIBUF_X115_Y34_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X114_Y34_N8
\recur:UQ1|recur:UQ2|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S\(0) = \B[24]~input_o\ $ (\A[24]~input_o\ $ (((\recur:UQ1|recur:TOP_FANOUT|C~6_combout\) # (\recur:UQ1|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \recur:UQ1|recur:TOP_FANOUT|C~6_combout\,
	datac => \recur:UQ1|recur:TOP_FANOUT|g_int\(1),
	datad => \A[24]~input_o\,
	combout => \recur:UQ1|recur:UQ2|S\(0));

-- Location: IOIBUF_X115_Y34_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X114_Y34_N26
\recur:UQ1|recur:UQ2|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ = (\B[24]~input_o\ & ((\recur:UQ1|recur:TOP_FANOUT|C~6_combout\) # ((\recur:UQ1|recur:TOP_FANOUT|g_int\(1)) # (\A[24]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & 
-- ((\recur:UQ1|recur:TOP_FANOUT|C~6_combout\) # (\recur:UQ1|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \recur:UQ1|recur:TOP_FANOUT|C~6_combout\,
	datac => \recur:UQ1|recur:TOP_FANOUT|g_int\(1),
	datad => \A[24]~input_o\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\);

-- Location: IOIBUF_X115_Y36_N8
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X114_Y34_N28
\recur:UQ1|recur:UQ2|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S\(1) = \B[25]~input_o\ $ (\recur:UQ1|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ $ (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datac => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\,
	datad => \A[25]~input_o\,
	combout => \recur:UQ1|recur:UQ2|S\(1));

-- Location: LCCOMB_X114_Y34_N22
\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\B[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X115_Y35_N15
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X115_Y32_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X114_Y34_N24
\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = (\B[24]~input_o\ & (!\A[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\)))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LCCOMB_X114_Y34_N2
\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1_combout\ = (\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & ((\recur:UQ1|recur:TOP_FANOUT|C~6_combout\) # (\recur:UQ1|recur:TOP_FANOUT|g_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ1|recur:TOP_FANOUT|C~6_combout\,
	datac => \recur:UQ1|recur:TOP_FANOUT|g_int\(1),
	datad => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X114_Y34_N6
\recur:UQ1|recur:UQ2|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S\(2) = \A[26]~input_o\ $ (\B[26]~input_o\ $ (((\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\) # (\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	combout => \recur:UQ1|recur:UQ2|S\(2));

-- Location: IOIBUF_X115_Y33_N8
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X114_Y34_N4
\recur:UQ1|recur:UQ2|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|P\(2) = \A[26]~input_o\ $ (\B[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	combout => \recur:UQ1|recur:UQ2|P\(2));

-- Location: LCCOMB_X114_Y34_N14
\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = (\A[26]~input_o\ & ((\B[26]~input_o\) # ((\B[25]~input_o\ & \A[25]~input_o\)))) # (!\A[26]~input_o\ & (\B[25]~input_o\ & (\B[26]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[25]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X114_Y34_N0
\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~2_combout\ = (\B[24]~input_o\ & (\A[24]~input_o\ & (\B[25]~input_o\ $ (\A[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X114_Y34_N18
\recur:UQ1|recur:UQ2|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|leaf:U_LEAF|C\(3) = (\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ1|recur:UQ2|P\(2) & ((\recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1_combout\) # (\recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ2|P\(2),
	datab => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~1_combout\,
	datad => \recur:UQ1|recur:UQ2|leaf:U_LEAF|g_int~2_combout\,
	combout => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C\(3));

-- Location: IOIBUF_X115_Y36_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: LCCOMB_X114_Y34_N12
\recur:UQ1|recur:UQ2|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ2|S\(3) = \B[27]~input_o\ $ (\recur:UQ1|recur:UQ2|leaf:U_LEAF|C\(3) $ (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \recur:UQ1|recur:UQ2|leaf:U_LEAF|C\(3),
	datad => \A[27]~input_o\,
	combout => \recur:UQ1|recur:UQ2|S\(3));

-- Location: LCCOMB_X114_Y34_N30
\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ = (\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (\recur:UQ1|recur:UQ2|P\(2) & (\B[27]~input_o\ $ (\A[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	datac => \recur:UQ1|recur:UQ2|P\(2),
	datad => \A[27]~input_o\,
	combout => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: LCCOMB_X114_Y34_N10
\recur:combine_q16:Q1_GRP|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~0_combout\ = (\B[25]~input_o\ & ((\A[25]~input_o\) # ((\B[24]~input_o\ & \A[24]~input_o\)))) # (!\B[25]~input_o\ & (\B[24]~input_o\ & (\A[24]~input_o\ & \A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[24]~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[25]~input_o\,
	datad => \A[25]~input_o\,
	combout => \recur:combine_q16:Q1_GRP|Gout~0_combout\);

-- Location: LCCOMB_X114_Y34_N20
\recur:combine_q16:Q1_GRP|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~1_combout\ = (\recur:combine_q16:Q1_GRP|Gout~0_combout\ & (\recur:UQ1|recur:UQ2|P\(2) & (\A[27]~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|Gout~0_combout\,
	datab => \A[27]~input_o\,
	datac => \recur:UQ1|recur:UQ2|P\(2),
	datad => \B[27]~input_o\,
	combout => \recur:combine_q16:Q1_GRP|Gout~1_combout\);

-- Location: LCCOMB_X114_Y34_N16
\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = (\B[27]~input_o\ & ((\A[27]~input_o\) # ((\A[26]~input_o\ & \B[26]~input_o\)))) # (!\B[27]~input_o\ & (\A[26]~input_o\ & (\B[26]~input_o\ & \A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[27]~input_o\,
	datab => \A[26]~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[27]~input_o\,
	combout => \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LCCOMB_X90_Y69_N2
\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\ = (\recur:combine_q16:Q1_GRP|Gout~1_combout\) # ((\recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\) # ((\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ1|recur:TOP_FANOUT|g_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datab => \recur:combine_q16:Q1_GRP|Gout~1_combout\,
	datac => \recur:UQ1|recur:TOP_FANOUT|g_int\(1),
	datad => \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\);

-- Location: IOIBUF_X94_Y73_N1
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X96_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X90_Y69_N8
\recur:combine_q16:Q1_GRP|Pout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Pout~3_combout\ = (\recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (\recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\ & (\A[19]~input_o\ $ (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	datab => \A[19]~input_o\,
	datac => \B[19]~input_o\,
	datad => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	combout => \recur:combine_q16:Q1_GRP|Pout~3_combout\);

-- Location: LCCOMB_X90_Y69_N24
\recur:UQ1|recur:TOP_FANOUT|C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:TOP_FANOUT|C~4_combout\ = (\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\ & \recur:combine_q16:Q1_GRP|Pout~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	datac => \recur:combine_q16:Q1_GRP|Pout~3_combout\,
	combout => \recur:UQ1|recur:TOP_FANOUT|C~4_combout\);

-- Location: LCCOMB_X91_Y69_N0
\recur:UQ1|recur:UQ3|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S\(0) = \B[28]~input_o\ $ (\A[28]~input_o\ $ (((\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ1|recur:TOP_FANOUT|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \recur:UQ1|recur:TOP_FANOUT|C~4_combout\,
	combout => \recur:UQ1|recur:UQ3|S\(0));

-- Location: LCCOMB_X91_Y69_N2
\recur:UQ1|recur:UQ3|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ = (\B[28]~input_o\ & ((\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\) # ((\A[28]~input_o\) # (\recur:UQ1|recur:TOP_FANOUT|C~4_combout\)))) # (!\B[28]~input_o\ & (\A[28]~input_o\ & 
-- ((\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ1|recur:TOP_FANOUT|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datab => \B[28]~input_o\,
	datac => \A[28]~input_o\,
	datad => \recur:UQ1|recur:TOP_FANOUT|C~4_combout\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\);

-- Location: IOIBUF_X105_Y73_N8
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X98_Y73_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X91_Y69_N20
\recur:UQ1|recur:UQ3|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S\(1) = \recur:UQ1|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ $ (\A[29]~input_o\ $ (\B[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \recur:UQ1|recur:UQ3|S\(1));

-- Location: LCCOMB_X91_Y69_N6
\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X91_Y69_N24
\recur:blk_q1:3:Q1_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q1:3:Q1_BLK|Pout~0_combout\ = (\A[28]~input_o\ & (!\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\)))) # (!\A[28]~input_o\ & (\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \recur:blk_q1:3:Q1_BLK|Pout~0_combout\);

-- Location: LCCOMB_X90_Y69_N28
\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1_combout\ = (\recur:blk_q1:3:Q1_BLK|Pout~0_combout\ & ((\recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\) # ((\recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\ & \recur:combine_q16:Q1_GRP|Pout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	datab => \recur:UQ1|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datac => \recur:combine_q16:Q1_GRP|Pout~3_combout\,
	datad => \recur:blk_q1:3:Q1_BLK|Pout~0_combout\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1_combout\);

-- Location: IOIBUF_X107_Y73_N8
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: LCCOMB_X91_Y69_N12
\recur:UQ1|recur:UQ3|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S\(2) = \B[30]~input_o\ $ (\A[30]~input_o\ $ (((\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\) # (\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\,
	datab => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \recur:UQ1|recur:UQ3|S\(2));

-- Location: IOIBUF_X94_Y73_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X91_Y69_N10
\recur:UQ1|recur:UQ3|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|P\(2) = \B[30]~input_o\ $ (\A[30]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \recur:UQ1|recur:UQ3|P\(2));

-- Location: LCCOMB_X91_Y69_N30
\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ = (\A[28]~input_o\ & (\B[28]~input_o\ & (\A[29]~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X91_Y69_N28
\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ = (\B[30]~input_o\ & ((\A[30]~input_o\) # ((\B[29]~input_o\ & \A[29]~input_o\)))) # (!\B[30]~input_o\ & (\B[29]~input_o\ & (\A[29]~input_o\ & \A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \A[29]~input_o\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X91_Y69_N16
\recur:UQ1|recur:UQ3|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|leaf:U_LEAF|C\(3) = (\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ1|recur:UQ3|P\(2) & ((\recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1_combout\) # (\recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ3|P\(2),
	datab => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~2_combout\,
	datad => \recur:UQ1|recur:UQ3|leaf:U_LEAF|g_int~1_combout\,
	combout => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C\(3));

-- Location: IOIBUF_X98_Y73_N15
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X91_Y69_N26
\recur:UQ1|recur:UQ3|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ1|recur:UQ3|S\(3) = \B[31]~input_o\ $ (\recur:UQ1|recur:UQ3|leaf:U_LEAF|C\(3) $ (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \recur:UQ1|recur:UQ3|leaf:U_LEAF|C\(3),
	datac => \A[31]~input_o\,
	combout => \recur:UQ1|recur:UQ3|S\(3));

-- Location: LCCOMB_X91_Y69_N4
\recur:blk_q1:3:Q1_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q1:3:Q1_BLK|Pout~combout\ = (\recur:UQ1|recur:UQ3|P\(2) & (\recur:blk_q1:3:Q1_BLK|Pout~0_combout\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ3|P\(2),
	datab => \recur:blk_q1:3:Q1_BLK|Pout~0_combout\,
	datac => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \recur:blk_q1:3:Q1_BLK|Pout~combout\);

-- Location: LCCOMB_X90_Y69_N4
\recur:combine_q16:Q1_GRP|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Pout~combout\ = (\recur:combine_q16:Q1_GRP|Pout~2_combout\ & (\recur:combine_q16:Q1_GRP|Pout~3_combout\ & (\recur:UQ1|recur:UQ0|P\(2) & \recur:blk_q1:3:Q1_BLK|Pout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|Pout~2_combout\,
	datab => \recur:combine_q16:Q1_GRP|Pout~3_combout\,
	datac => \recur:UQ1|recur:UQ0|P\(2),
	datad => \recur:blk_q1:3:Q1_BLK|Pout~combout\,
	combout => \recur:combine_q16:Q1_GRP|Pout~combout\);

-- Location: LCCOMB_X1_Y48_N26
\recur:TOP_FANOUT|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|C~2_combout\ = (\recur:blk_q0:3:Q0_BLK|Pout~combout\ & (\recur:UQ0|recur:TOP_FANOUT|C~2_combout\ & (\recur:combine_q16:Q1_GRP|Pout~combout\ & \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q0:3:Q0_BLK|Pout~combout\,
	datab => \recur:UQ0|recur:TOP_FANOUT|C~2_combout\,
	datac => \recur:combine_q16:Q1_GRP|Pout~combout\,
	datad => \recur:UQ0|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	combout => \recur:TOP_FANOUT|C~2_combout\);

-- Location: LCCOMB_X91_Y69_N8
\recur:combine_q16:Q1_GRP|Gout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~3_combout\ = (\A[29]~input_o\ & ((\B[29]~input_o\) # ((\A[28]~input_o\ & \B[28]~input_o\)))) # (!\A[29]~input_o\ & (\A[28]~input_o\ & (\B[28]~input_o\ & \B[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \B[28]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[29]~input_o\,
	combout => \recur:combine_q16:Q1_GRP|Gout~3_combout\);

-- Location: LCCOMB_X91_Y69_N18
\recur:combine_q16:Q1_GRP|Gout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~4_combout\ = (\recur:UQ1|recur:UQ3|P\(2) & (\recur:combine_q16:Q1_GRP|Gout~3_combout\ & (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ1|recur:UQ3|P\(2),
	datab => \A[31]~input_o\,
	datac => \recur:combine_q16:Q1_GRP|Gout~3_combout\,
	datad => \B[31]~input_o\,
	combout => \recur:combine_q16:Q1_GRP|Gout~4_combout\);

-- Location: LCCOMB_X91_Y69_N14
\recur:blk_q1:3:Q1_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q1:3:Q1_BLK|g_int~0_combout\ = (\B[31]~input_o\ & ((\A[31]~input_o\) # ((\B[30]~input_o\ & \A[30]~input_o\)))) # (!\B[31]~input_o\ & (\A[31]~input_o\ & (\B[30]~input_o\ & \A[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[31]~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[30]~input_o\,
	datad => \A[30]~input_o\,
	combout => \recur:blk_q1:3:Q1_BLK|g_int~0_combout\);

-- Location: LCCOMB_X90_Y69_N16
\recur:combine_q16:Q1_GRP|Gout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~5_combout\ = (\recur:combine_q16:Q1_GRP|Gout~4_combout\) # ((\recur:blk_q1:3:Q1_BLK|g_int~0_combout\) # ((\recur:blk_q1:3:Q1_BLK|Pout~combout\ & \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q1:3:Q1_BLK|Pout~combout\,
	datab => \recur:combine_q16:Q1_GRP|Gout~4_combout\,
	datac => \recur:blk_q1:3:Q1_BLK|g_int~0_combout\,
	datad => \recur:UQ1|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	combout => \recur:combine_q16:Q1_GRP|Gout~5_combout\);

-- Location: LCCOMB_X90_Y69_N10
\recur:combine_q16:Q1_GRP|Gout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~6_combout\ = (\recur:combine_q16:Q1_GRP|Gout~5_combout\) # ((\recur:combine_q16:Q1_GRP|Gout~1_combout\ & \recur:blk_q1:3:Q1_BLK|Pout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|Gout~1_combout\,
	datab => \recur:combine_q16:Q1_GRP|Gout~5_combout\,
	datad => \recur:blk_q1:3:Q1_BLK|Pout~combout\,
	combout => \recur:combine_q16:Q1_GRP|Gout~6_combout\);

-- Location: LCCOMB_X90_Y69_N6
\recur:combine_q16:Q1_GRP|Gout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~2_combout\ = (\recur:blk_q1:3:Q1_BLK|Pout~combout\ & (\recur:UQ1|recur:TOP_FANOUT|g_int\(1) & \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q1:3:Q1_BLK|Pout~combout\,
	datac => \recur:UQ1|recur:TOP_FANOUT|g_int\(1),
	datad => \recur:UQ1|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	combout => \recur:combine_q16:Q1_GRP|Gout~2_combout\);

-- Location: LCCOMB_X90_Y69_N30
\recur:TOP_FANOUT|g_int[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|g_int\(1) = (\recur:combine_q16:Q1_GRP|Gout~6_combout\) # ((\recur:combine_q16:Q1_GRP|Gout~2_combout\) # ((\recur:combine_q16:Q0_GRP|Gout~5_combout\ & \recur:combine_q16:Q1_GRP|Pout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|Gout~6_combout\,
	datab => \recur:combine_q16:Q0_GRP|Gout~5_combout\,
	datac => \recur:combine_q16:Q1_GRP|Pout~combout\,
	datad => \recur:combine_q16:Q1_GRP|Gout~2_combout\,
	combout => \recur:TOP_FANOUT|g_int\(1));

-- Location: IOIBUF_X56_Y0_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X57_Y4_N16
\recur:UQ2|recur:UQ0|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S\(0) = \B[32]~input_o\ $ (\A[32]~input_o\ $ (((\recur:TOP_FANOUT|C~2_combout\) # (\recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|C~2_combout\,
	datab => \recur:TOP_FANOUT|g_int\(1),
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \recur:UQ2|recur:UQ0|S\(0));

-- Location: IOIBUF_X56_Y0_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X57_Y4_N26
\recur:UQ2|recur:UQ0|leaf:U_LEAF|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\ = (\B[32]~input_o\ & ((\recur:TOP_FANOUT|C~2_combout\) # ((\recur:TOP_FANOUT|g_int\(1)) # (\A[32]~input_o\)))) # (!\B[32]~input_o\ & (\A[32]~input_o\ & ((\recur:TOP_FANOUT|C~2_combout\) # 
-- (\recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|C~2_combout\,
	datab => \recur:TOP_FANOUT|g_int\(1),
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\);

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

-- Location: LCCOMB_X57_Y4_N28
\recur:UQ2|recur:UQ0|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S\(1) = \A[33]~input_o\ $ (\recur:UQ2|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\ $ (\B[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[33]~input_o\,
	datac => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[1]~2_combout\,
	datad => \B[33]~input_o\,
	combout => \recur:UQ2|recur:UQ0|S\(1));

-- Location: IOIBUF_X56_Y0_N22
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

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

-- Location: LCCOMB_X57_Y4_N10
\recur:combine_q16:Q2_GRP|Pout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Pout~2_combout\ = (\B[33]~input_o\ & (!\A[33]~input_o\ & (\B[32]~input_o\ $ (\A[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\B[32]~input_o\ $ (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[33]~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \recur:combine_q16:Q2_GRP|Pout~2_combout\);

-- Location: LCCOMB_X57_Y4_N0
\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\B[32]~input_o\ & \A[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\B[32]~input_o\ & \A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[33]~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X57_Y4_N20
\recur:UQ2|recur:UQ0|leaf:U_LEAF|C[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|C\(2) = (\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\) # ((\recur:combine_q16:Q2_GRP|Pout~2_combout\ & ((\recur:TOP_FANOUT|g_int\(1)) # (\recur:TOP_FANOUT|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Pout~2_combout\,
	datab => \recur:TOP_FANOUT|g_int\(1),
	datac => \recur:TOP_FANOUT|C~2_combout\,
	datad => \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\,
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C\(2));

-- Location: LCCOMB_X57_Y4_N24
\recur:UQ2|recur:UQ0|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S\(2) = \B[34]~input_o\ $ (\A[34]~input_o\ $ (\recur:UQ2|recur:UQ0|leaf:U_LEAF|C\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C\(2),
	combout => \recur:UQ2|recur:UQ0|S\(2));

-- Location: IOIBUF_X52_Y0_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X57_Y4_N6
\recur:UQ2|recur:UQ0|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|P\(2) = \B[34]~input_o\ $ (\A[34]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	combout => \recur:UQ2|recur:UQ0|P\(2));

-- Location: LCCOMB_X57_Y4_N30
\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\ = (\recur:combine_q16:Q2_GRP|Pout~2_combout\ & (\recur:UQ2|recur:UQ0|P\(2) & ((\recur:TOP_FANOUT|g_int\(1)) # (\recur:TOP_FANOUT|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Pout~2_combout\,
	datab => \recur:TOP_FANOUT|g_int\(1),
	datac => \recur:TOP_FANOUT|C~2_combout\,
	datad => \recur:UQ2|recur:UQ0|P\(2),
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\);

-- Location: IOIBUF_X54_Y0_N22
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: LCCOMB_X57_Y4_N12
\recur:UQ2|recur:UQ0|leaf:U_LEAF|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\ = (\B[34]~input_o\ & ((\A[34]~input_o\) # (\recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \recur:UQ2|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\,
	combout => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\);

-- Location: LCCOMB_X58_Y4_N30
\recur:UQ2|recur:UQ0|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ0|S\(3) = \B[35]~input_o\ $ (\A[35]~input_o\ $ (((\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\) # (\recur:UQ2|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	datac => \A[35]~input_o\,
	datad => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C[3]~5_combout\,
	combout => \recur:UQ2|recur:UQ0|S\(3));

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

-- Location: LCCOMB_X57_Y4_N8
\recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ = (\B[35]~input_o\ & ((\A[35]~input_o\) # ((\A[34]~input_o\ & \B[34]~input_o\)))) # (!\B[35]~input_o\ & (\A[35]~input_o\ & (\A[34]~input_o\ & \B[34]~input_o\)))

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
	combout => \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\);

-- Location: LCCOMB_X57_Y4_N18
\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = (\B[33]~input_o\ & ((\A[33]~input_o\) # ((\B[32]~input_o\ & \A[32]~input_o\)))) # (!\B[33]~input_o\ & (\A[33]~input_o\ & (\B[32]~input_o\ & \A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \A[33]~input_o\,
	datac => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: LCCOMB_X58_Y4_N24
\recur:UQ2|P[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|P[3]~0_combout\ = \A[35]~input_o\ $ (\B[35]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[35]~input_o\,
	datad => \B[35]~input_o\,
	combout => \recur:UQ2|P[3]~0_combout\);

-- Location: LCCOMB_X58_Y4_N26
\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ = (\recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\) # ((\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & (\recur:UQ2|recur:UQ0|P\(2) & \recur:UQ2|P[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:blk_q0:0:Q0_BLK|g_int~0_combout\,
	datab => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~0_combout\,
	datac => \recur:UQ2|recur:UQ0|P\(2),
	datad => \recur:UQ2|P[3]~0_combout\,
	combout => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\);

-- Location: LCCOMB_X58_Y4_N8
\recur:UQ2|recur:TOP_FANOUT|C~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|C~5_combout\ = (\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\ & (\B[35]~input_o\ $ (\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datac => \A[35]~input_o\,
	datad => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|C~5_combout\);

-- Location: LCCOMB_X59_Y4_N16
\recur:UQ2|recur:UQ1|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S\(0) = \A[36]~input_o\ $ (\B[36]~input_o\ $ (((\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datad => \recur:UQ2|recur:TOP_FANOUT|C~5_combout\,
	combout => \recur:UQ2|recur:UQ1|S\(0));

-- Location: IOIBUF_X67_Y0_N22
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X67_Y0_N1
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X59_Y4_N18
\recur:UQ2|recur:UQ1|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ = (\A[36]~input_o\ & ((\B[36]~input_o\) # ((\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~5_combout\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & 
-- ((\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \B[36]~input_o\,
	datac => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datad => \recur:UQ2|recur:TOP_FANOUT|C~5_combout\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X59_Y4_N28
\recur:UQ2|recur:UQ1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S\(1) = \A[37]~input_o\ $ (\B[37]~input_o\ $ (\recur:UQ2|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ2|recur:UQ1|S\(1));

-- Location: LCCOMB_X59_Y4_N24
\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = (\A[36]~input_o\ & (!\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\)))) # (!\A[36]~input_o\ & (\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: LCCOMB_X58_Y4_N12
\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1_combout\ = (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & ((\recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # ((\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\ & \recur:UQ2|P[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	datab => \recur:UQ2|P[3]~0_combout\,
	datac => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datad => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1_combout\);

-- Location: IOIBUF_X60_Y0_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X59_Y4_N22
\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[37]~input_o\ & \B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X65_Y0_N15
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X59_Y4_N30
\recur:UQ2|recur:UQ1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S\(2) = \B[38]~input_o\ $ (\A[38]~input_o\ $ (((\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1_combout\) # (\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	datab => \B[38]~input_o\,
	datac => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\,
	datad => \A[38]~input_o\,
	combout => \recur:UQ2|recur:UQ1|S\(2));

-- Location: IOIBUF_X65_Y0_N1
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: LCCOMB_X59_Y4_N26
\recur:UQ2|recur:UQ1|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|P\(2) = \B[38]~input_o\ $ (\A[38]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[38]~input_o\,
	datad => \A[38]~input_o\,
	combout => \recur:UQ2|recur:UQ1|P\(2));

-- Location: LCCOMB_X59_Y4_N20
\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = (\A[38]~input_o\ & ((\B[38]~input_o\) # ((\B[37]~input_o\ & \A[37]~input_o\)))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & (\B[37]~input_o\ & \A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \B[38]~input_o\,
	datac => \B[37]~input_o\,
	datad => \A[37]~input_o\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X59_Y4_N14
\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~2_combout\ = (\A[36]~input_o\ & (\B[36]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X59_Y4_N0
\recur:UQ2|recur:UQ1|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|leaf:U_LEAF|C\(3) = (\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ2|recur:UQ1|P\(2) & ((\recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~2_combout\) # (\recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ1|P\(2),
	datab => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~1_combout\,
	datac => \recur:UQ2|recur:UQ1|leaf:U_LEAF|g_int~2_combout\,
	datad => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	combout => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C\(3));

-- Location: IOIBUF_X60_Y0_N1
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X59_Y4_N2
\recur:UQ2|recur:UQ1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ1|S\(3) = \A[39]~input_o\ $ (\recur:UQ2|recur:UQ1|leaf:U_LEAF|C\(3) $ (\B[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \recur:UQ2|recur:UQ1|leaf:U_LEAF|C\(3),
	datac => \B[39]~input_o\,
	combout => \recur:UQ2|recur:UQ1|S\(3));

-- Location: LCCOMB_X59_Y4_N4
\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ = (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (\recur:UQ2|recur:UQ1|P\(2) & (\B[39]~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	datac => \A[39]~input_o\,
	datad => \recur:UQ2|recur:UQ1|P\(2),
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\);

-- Location: LCCOMB_X58_Y4_N2
\recur:UQ2|recur:TOP_FANOUT|C~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|C~6_combout\ = (\recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\ & (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (\B[35]~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	datac => \A[35]~input_o\,
	datad => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|C~6_combout\);

-- Location: IOIBUF_X49_Y73_N22
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: LCCOMB_X59_Y4_N8
\recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = (\A[37]~input_o\ & ((\B[37]~input_o\) # ((\A[36]~input_o\ & \B[36]~input_o\)))) # (!\A[37]~input_o\ & (\A[36]~input_o\ & (\B[37]~input_o\ & \B[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[37]~input_o\,
	datac => \B[37]~input_o\,
	datad => \B[36]~input_o\,
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: LCCOMB_X59_Y4_N10
\recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~1_combout\ = (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & (\recur:UQ2|recur:UQ1|P\(2) & (\B[39]~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~0_combout\,
	datac => \A[39]~input_o\,
	datad => \recur:UQ2|recur:UQ1|P\(2),
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~1_combout\);

-- Location: LCCOMB_X59_Y4_N6
\recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = (\A[39]~input_o\ & ((\B[39]~input_o\) # ((\B[38]~input_o\ & \A[38]~input_o\)))) # (!\A[39]~input_o\ & (\B[38]~input_o\ & (\B[39]~input_o\ & \A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[38]~input_o\,
	datac => \B[39]~input_o\,
	datad => \A[38]~input_o\,
	combout => \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: LCCOMB_X59_Y4_N12
\recur:UQ2|recur:TOP_FANOUT|g_int[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|g_int\(1) = (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~1_combout\) # ((\recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\) # ((\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ & \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Gout~1_combout\,
	datab => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	datac => \recur:UQ2|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datad => \recur:UQ2|recur:blk_q1:0:Q1_BLK|g_int~0_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|g_int\(1));

-- Location: IOIBUF_X38_Y73_N22
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: LCCOMB_X49_Y69_N24
\recur:UQ2|recur:UQ2|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S\(0) = \B[40]~input_o\ $ (\A[40]~input_o\ $ (((\recur:UQ2|recur:TOP_FANOUT|C~6_combout\) # (\recur:UQ2|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:TOP_FANOUT|C~6_combout\,
	datab => \B[40]~input_o\,
	datac => \recur:UQ2|recur:TOP_FANOUT|g_int\(1),
	datad => \A[40]~input_o\,
	combout => \recur:UQ2|recur:UQ2|S\(0));

-- Location: IOIBUF_X40_Y73_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X49_Y69_N18
\recur:UQ2|recur:UQ2|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ = (\B[40]~input_o\ & ((\recur:UQ2|recur:TOP_FANOUT|C~6_combout\) # ((\recur:UQ2|recur:TOP_FANOUT|g_int\(1)) # (\A[40]~input_o\)))) # (!\B[40]~input_o\ & (\A[40]~input_o\ & 
-- ((\recur:UQ2|recur:TOP_FANOUT|C~6_combout\) # (\recur:UQ2|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:TOP_FANOUT|C~6_combout\,
	datab => \B[40]~input_o\,
	datac => \recur:UQ2|recur:TOP_FANOUT|g_int\(1),
	datad => \A[40]~input_o\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\);

-- Location: IOIBUF_X52_Y73_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X49_Y69_N4
\recur:UQ2|recur:UQ2|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S\(1) = \A[41]~input_o\ $ (\recur:UQ2|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ $ (\B[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\,
	datad => \B[41]~input_o\,
	combout => \recur:UQ2|recur:UQ2|S\(1));

-- Location: LCCOMB_X49_Y69_N30
\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\A[40]~input_o\ & \B[40]~input_o\)))) # (!\A[41]~input_o\ & (\A[40]~input_o\ & (\B[40]~input_o\ & \B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X49_Y69_N16
\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = (\A[41]~input_o\ & (!\B[41]~input_o\ & (\A[40]~input_o\ $ (\B[40]~input_o\)))) # (!\A[41]~input_o\ & (\B[41]~input_o\ & (\A[40]~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LCCOMB_X49_Y69_N2
\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1_combout\ = (\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & ((\recur:UQ2|recur:TOP_FANOUT|g_int\(1)) # (\recur:UQ2|recur:TOP_FANOUT|C~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	datac => \recur:UQ2|recur:TOP_FANOUT|g_int\(1),
	datad => \recur:UQ2|recur:TOP_FANOUT|C~6_combout\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1_combout\);

-- Location: IOIBUF_X49_Y73_N15
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X49_Y69_N6
\recur:UQ2|recur:UQ2|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S\(2) = \A[42]~input_o\ $ (\B[42]~input_o\ $ (((\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\) # (\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\,
	datab => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	datac => \A[42]~input_o\,
	datad => \B[42]~input_o\,
	combout => \recur:UQ2|recur:UQ2|S\(2));

-- Location: LCCOMB_X49_Y69_N12
\recur:UQ2|recur:UQ2|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|P\(2) = \B[42]~input_o\ $ (\A[42]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datac => \A[42]~input_o\,
	combout => \recur:UQ2|recur:UQ2|P\(2));

-- Location: LCCOMB_X49_Y69_N0
\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~2_combout\ = (\A[40]~input_o\ & (\B[40]~input_o\ & (\A[41]~input_o\ $ (\B[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X49_Y69_N22
\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = (\B[42]~input_o\ & ((\A[42]~input_o\) # ((\A[41]~input_o\ & \B[41]~input_o\)))) # (!\B[42]~input_o\ & (\A[41]~input_o\ & (\A[42]~input_o\ & \B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[41]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[41]~input_o\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X49_Y69_N26
\recur:UQ2|recur:UQ2|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|leaf:U_LEAF|C\(3) = (\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ2|recur:UQ2|P\(2) & ((\recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~2_combout\) # (\recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ2|P\(2),
	datab => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~2_combout\,
	datac => \recur:UQ2|recur:UQ2|leaf:U_LEAF|g_int~1_combout\,
	datad => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	combout => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C\(3));

-- Location: IOIBUF_X42_Y73_N8
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: LCCOMB_X49_Y69_N20
\recur:UQ2|recur:UQ2|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ2|S\(3) = \recur:UQ2|recur:UQ2|leaf:U_LEAF|C\(3) $ (\A[43]~input_o\ $ (\B[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ2|leaf:U_LEAF|C\(3),
	datac => \A[43]~input_o\,
	datad => \B[43]~input_o\,
	combout => \recur:UQ2|recur:UQ2|S\(3));

-- Location: LCCOMB_X49_Y69_N10
\recur:combine_q16:Q2_GRP|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~0_combout\ = (\A[41]~input_o\ & ((\B[41]~input_o\) # ((\A[40]~input_o\ & \B[40]~input_o\)))) # (!\A[41]~input_o\ & (\A[40]~input_o\ & (\B[40]~input_o\ & \B[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[41]~input_o\,
	datab => \A[40]~input_o\,
	datac => \B[40]~input_o\,
	datad => \B[41]~input_o\,
	combout => \recur:combine_q16:Q2_GRP|Gout~0_combout\);

-- Location: LCCOMB_X49_Y69_N28
\recur:combine_q16:Q2_GRP|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~1_combout\ = (\recur:UQ2|recur:UQ2|P\(2) & (\recur:combine_q16:Q2_GRP|Gout~0_combout\ & (\A[43]~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ2|P\(2),
	datab => \recur:combine_q16:Q2_GRP|Gout~0_combout\,
	datac => \A[43]~input_o\,
	datad => \B[43]~input_o\,
	combout => \recur:combine_q16:Q2_GRP|Gout~1_combout\);

-- Location: LCCOMB_X49_Y69_N14
\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ = (\recur:UQ2|recur:UQ2|P\(2) & (\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (\A[43]~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ2|P\(2),
	datab => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	datac => \A[43]~input_o\,
	datad => \B[43]~input_o\,
	combout => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: LCCOMB_X49_Y69_N8
\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = (\A[43]~input_o\ & ((\B[43]~input_o\) # ((\B[42]~input_o\ & \A[42]~input_o\)))) # (!\A[43]~input_o\ & (\B[42]~input_o\ & (\A[42]~input_o\ & \B[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[42]~input_o\,
	datab => \A[42]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[43]~input_o\,
	combout => \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LCCOMB_X56_Y4_N24
\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\ = (\recur:combine_q16:Q2_GRP|Gout~1_combout\) # ((\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\) # ((\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Gout~1_combout\,
	datab => \recur:UQ2|recur:TOP_FANOUT|g_int\(1),
	datac => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datad => \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X57_Y4_N2
\recur:combine_q16:Q2_GRP|Pout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Pout~3_combout\ = (\recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\ & (\recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\ & (\B[35]~input_o\ $ (\A[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datad => \recur:UQ2|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	combout => \recur:combine_q16:Q2_GRP|Pout~3_combout\);

-- Location: LCCOMB_X57_Y4_N4
\recur:UQ2|recur:TOP_FANOUT|C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:TOP_FANOUT|C~4_combout\ = (\recur:combine_q16:Q2_GRP|Pout~3_combout\ & \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:combine_q16:Q2_GRP|Pout~3_combout\,
	datac => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	combout => \recur:UQ2|recur:TOP_FANOUT|C~4_combout\);

-- Location: LCCOMB_X53_Y4_N8
\recur:UQ2|recur:UQ3|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S\(0) = \A[44]~input_o\ $ (\B[44]~input_o\ $ (((\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \recur:UQ2|recur:TOP_FANOUT|C~4_combout\,
	combout => \recur:UQ2|recur:UQ3|S\(0));

-- Location: IOIBUF_X49_Y0_N1
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: LCCOMB_X53_Y4_N2
\recur:UQ2|recur:UQ3|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ = (\A[44]~input_o\ & ((\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\) # ((\B[44]~input_o\) # (\recur:UQ2|recur:TOP_FANOUT|C~4_combout\)))) # (!\A[44]~input_o\ & (\B[44]~input_o\ & 
-- ((\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ2|recur:TOP_FANOUT|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datab => \A[44]~input_o\,
	datac => \B[44]~input_o\,
	datad => \recur:UQ2|recur:TOP_FANOUT|C~4_combout\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X53_Y4_N12
\recur:UQ2|recur:UQ3|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S\(1) = \A[45]~input_o\ $ (\B[45]~input_o\ $ (\recur:UQ2|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ2|recur:UQ3|S\(1));

-- Location: IOIBUF_X49_Y0_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: LCCOMB_X53_Y4_N16
\recur:blk_q2:3:Q2_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q2:3:Q2_BLK|Pout~0_combout\ = (\B[44]~input_o\ & (!\A[44]~input_o\ & (\A[45]~input_o\ $ (\B[45]~input_o\)))) # (!\B[44]~input_o\ & (\A[44]~input_o\ & (\A[45]~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[44]~input_o\,
	combout => \recur:blk_q2:3:Q2_BLK|Pout~0_combout\);

-- Location: LCCOMB_X53_Y4_N18
\recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1_combout\ = (\recur:blk_q2:3:Q2_BLK|Pout~0_combout\ & ((\recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\) # ((\recur:combine_q16:Q2_GRP|Pout~3_combout\ & \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Pout~3_combout\,
	datab => \recur:blk_q2:3:Q2_BLK|Pout~0_combout\,
	datac => \recur:UQ2|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datad => \recur:UQ2|recur:UQ0|leaf:U_LEAF|C~3_combout\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X53_Y4_N30
\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\B[44]~input_o\ & \A[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[44]~input_o\ & (\B[45]~input_o\ & \A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[44]~input_o\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X47_Y0_N1
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X53_Y4_N22
\recur:UQ2|recur:UQ3|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S\(2) = \A[46]~input_o\ $ (\B[46]~input_o\ $ (((\recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1_combout\) # (\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\,
	datad => \B[46]~input_o\,
	combout => \recur:UQ2|recur:UQ3|S\(2));

-- Location: IOIBUF_X54_Y0_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X53_Y4_N0
\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~2_combout\ = (\B[44]~input_o\ & (\A[44]~input_o\ & (\A[45]~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[44]~input_o\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X53_Y4_N14
\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\ = (\B[46]~input_o\ & ((\A[46]~input_o\) # ((\A[45]~input_o\ & \B[45]~input_o\)))) # (!\B[46]~input_o\ & (\A[45]~input_o\ & (\B[45]~input_o\ & \A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[46]~input_o\,
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X53_Y4_N20
\recur:UQ2|recur:UQ3|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|P\(2) = \B[46]~input_o\ $ (\A[46]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \recur:UQ2|recur:UQ3|P\(2));

-- Location: LCCOMB_X53_Y4_N26
\recur:UQ2|recur:UQ3|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|leaf:U_LEAF|C\(3) = (\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ2|recur:UQ3|P\(2) & ((\recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1_combout\) # (\recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	datab => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~2_combout\,
	datac => \recur:UQ2|recur:UQ3|leaf:U_LEAF|g_int~1_combout\,
	datad => \recur:UQ2|recur:UQ3|P\(2),
	combout => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C\(3));

-- Location: LCCOMB_X53_Y4_N28
\recur:UQ2|recur:UQ3|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ2|recur:UQ3|S\(3) = \B[47]~input_o\ $ (\A[47]~input_o\ $ (\recur:UQ2|recur:UQ3|leaf:U_LEAF|C\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[47]~input_o\,
	datab => \A[47]~input_o\,
	datac => \recur:UQ2|recur:UQ3|leaf:U_LEAF|C\(3),
	combout => \recur:UQ2|recur:UQ3|S\(3));

-- Location: LCCOMB_X90_Y69_N26
\recur:combine_q16:Q1_GRP|Gout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q1_GRP|Gout~7_combout\ = (\recur:combine_q16:Q1_GRP|Gout~5_combout\) # ((\recur:combine_q16:Q1_GRP|Gout~2_combout\) # ((\recur:blk_q1:3:Q1_BLK|Pout~combout\ & \recur:combine_q16:Q1_GRP|Gout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q1:3:Q1_BLK|Pout~combout\,
	datab => \recur:combine_q16:Q1_GRP|Gout~5_combout\,
	datac => \recur:combine_q16:Q1_GRP|Gout~1_combout\,
	datad => \recur:combine_q16:Q1_GRP|Gout~2_combout\,
	combout => \recur:combine_q16:Q1_GRP|Gout~7_combout\);

-- Location: LCCOMB_X53_Y4_N6
\recur:blk_q2:3:Q2_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q2:3:Q2_BLK|Pout~combout\ = (\recur:blk_q2:3:Q2_BLK|Pout~0_combout\ & (\recur:UQ2|recur:UQ3|P\(2) & (\B[47]~input_o\ $ (\A[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:blk_q2:3:Q2_BLK|Pout~0_combout\,
	datab => \recur:UQ2|recur:UQ3|P\(2),
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \recur:blk_q2:3:Q2_BLK|Pout~combout\);

-- Location: LCCOMB_X57_Y4_N14
\recur:combine_q16:Q2_GRP|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Pout~combout\ = (\recur:combine_q16:Q2_GRP|Pout~2_combout\ & (\recur:combine_q16:Q2_GRP|Pout~3_combout\ & (\recur:blk_q2:3:Q2_BLK|Pout~combout\ & \recur:UQ2|recur:UQ0|P\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Pout~2_combout\,
	datab => \recur:combine_q16:Q2_GRP|Pout~3_combout\,
	datac => \recur:blk_q2:3:Q2_BLK|Pout~combout\,
	datad => \recur:UQ2|recur:UQ0|P\(2),
	combout => \recur:combine_q16:Q2_GRP|Pout~combout\);

-- Location: LCCOMB_X53_Y4_N10
\recur:combine_q16:Q2_GRP|Gout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~2_combout\ = (\A[45]~input_o\ & ((\B[45]~input_o\) # ((\B[44]~input_o\ & \A[44]~input_o\)))) # (!\A[45]~input_o\ & (\B[44]~input_o\ & (\B[45]~input_o\ & \A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \A[45]~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[44]~input_o\,
	combout => \recur:combine_q16:Q2_GRP|Gout~2_combout\);

-- Location: LCCOMB_X53_Y4_N4
\recur:combine_q16:Q2_GRP|Gout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~3_combout\ = (\recur:combine_q16:Q2_GRP|Gout~2_combout\ & (\recur:UQ2|recur:UQ3|P\(2) & (\A[47]~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Gout~2_combout\,
	datab => \A[47]~input_o\,
	datac => \B[47]~input_o\,
	datad => \recur:UQ2|recur:UQ3|P\(2),
	combout => \recur:combine_q16:Q2_GRP|Gout~3_combout\);

-- Location: LCCOMB_X53_Y4_N24
\recur:blk_q2:3:Q2_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:blk_q2:3:Q2_BLK|g_int~0_combout\ = (\A[47]~input_o\ & ((\B[47]~input_o\) # ((\B[46]~input_o\ & \A[46]~input_o\)))) # (!\A[47]~input_o\ & (\B[46]~input_o\ & (\B[47]~input_o\ & \A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[46]~input_o\,
	datab => \A[47]~input_o\,
	datac => \B[47]~input_o\,
	datad => \A[46]~input_o\,
	combout => \recur:blk_q2:3:Q2_BLK|g_int~0_combout\);

-- Location: LCCOMB_X56_Y4_N10
\recur:combine_q16:Q2_GRP|Gout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~4_combout\ = (\recur:combine_q16:Q2_GRP|Gout~1_combout\) # ((\recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\) # ((\recur:UQ2|recur:TOP_FANOUT|g_int\(1) & \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Gout~1_combout\,
	datab => \recur:UQ2|recur:TOP_FANOUT|g_int\(1),
	datac => \recur:UQ2|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datad => \recur:UQ2|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	combout => \recur:combine_q16:Q2_GRP|Gout~4_combout\);

-- Location: LCCOMB_X56_Y4_N20
\recur:combine_q16:Q2_GRP|Gout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:combine_q16:Q2_GRP|Gout~5_combout\ = (\recur:combine_q16:Q2_GRP|Gout~3_combout\) # ((\recur:blk_q2:3:Q2_BLK|g_int~0_combout\) # ((\recur:blk_q2:3:Q2_BLK|Pout~combout\ & \recur:combine_q16:Q2_GRP|Gout~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q2_GRP|Gout~3_combout\,
	datab => \recur:blk_q2:3:Q2_BLK|g_int~0_combout\,
	datac => \recur:blk_q2:3:Q2_BLK|Pout~combout\,
	datad => \recur:combine_q16:Q2_GRP|Gout~4_combout\,
	combout => \recur:combine_q16:Q2_GRP|Gout~5_combout\);

-- Location: LCCOMB_X90_Y69_N0
\recur:TOP_FANOUT|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|g_int~0_combout\ = (\recur:combine_q16:Q0_GRP|Gout~5_combout\ & \recur:combine_q16:Q1_GRP|Pout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:combine_q16:Q0_GRP|Gout~5_combout\,
	datac => \recur:combine_q16:Q1_GRP|Pout~combout\,
	combout => \recur:TOP_FANOUT|g_int~0_combout\);

-- Location: LCCOMB_X72_Y69_N10
\recur:TOP_FANOUT|g_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|g_int[2]~1_combout\ = (\recur:combine_q16:Q2_GRP|Gout~5_combout\) # ((\recur:combine_q16:Q2_GRP|Pout~combout\ & ((\recur:combine_q16:Q1_GRP|Gout~7_combout\) # (\recur:TOP_FANOUT|g_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:combine_q16:Q1_GRP|Gout~7_combout\,
	datab => \recur:combine_q16:Q2_GRP|Pout~combout\,
	datac => \recur:combine_q16:Q2_GRP|Gout~5_combout\,
	datad => \recur:TOP_FANOUT|g_int~0_combout\,
	combout => \recur:TOP_FANOUT|g_int[2]~1_combout\);

-- Location: LCCOMB_X72_Y69_N16
\recur:TOP_FANOUT|C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:TOP_FANOUT|C~3_combout\ = (\recur:combine_q16:Q2_GRP|Pout~combout\ & (\recur:TOP_FANOUT|C~4_combout\ & \recur:combine_q16:Q1_GRP|Pout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:combine_q16:Q2_GRP|Pout~combout\,
	datac => \recur:TOP_FANOUT|C~4_combout\,
	datad => \recur:combine_q16:Q1_GRP|Pout~combout\,
	combout => \recur:TOP_FANOUT|C~3_combout\);

-- Location: IOIBUF_X72_Y73_N8
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X72_Y69_N4
\recur:UQ3|recur:UQ0|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S\(0) = \A[48]~input_o\ $ (\B[48]~input_o\ $ (((\recur:TOP_FANOUT|g_int[2]~1_combout\) # (\recur:TOP_FANOUT|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|g_int[2]~1_combout\,
	datab => \recur:TOP_FANOUT|C~3_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \recur:UQ3|recur:UQ0|S\(0));

-- Location: IOIBUF_X69_Y73_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: IOIBUF_X105_Y73_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: LCCOMB_X72_Y69_N30
\recur:UQ3|recur:UQ0|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[1]~0_combout\ = (\A[48]~input_o\ & ((\recur:TOP_FANOUT|g_int[2]~1_combout\) # ((\recur:TOP_FANOUT|C~3_combout\) # (\B[48]~input_o\)))) # (!\A[48]~input_o\ & (\B[48]~input_o\ & ((\recur:TOP_FANOUT|g_int[2]~1_combout\) # 
-- (\recur:TOP_FANOUT|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|g_int[2]~1_combout\,
	datab => \recur:TOP_FANOUT|C~3_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X72_Y69_N24
\recur:UQ3|recur:UQ0|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S\(1) = \B[49]~input_o\ $ (\A[49]~input_o\ $ (\recur:UQ3|recur:UQ0|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ3|recur:UQ0|S\(1));

-- Location: LCCOMB_X72_Y69_N20
\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ = (\B[49]~input_o\ & (!\A[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X72_Y69_N14
\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\ = (\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ & ((\recur:TOP_FANOUT|g_int[2]~1_combout\) # (\recur:TOP_FANOUT|C~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|g_int[2]~1_combout\,
	datab => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\,
	datad => \recur:TOP_FANOUT|C~3_combout\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\);

-- Location: IOIBUF_X72_Y73_N1
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: LCCOMB_X72_Y69_N2
\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\A[48]~input_o\ & \B[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X73_Y69_N8
\recur:UQ3|recur:UQ0|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S\(2) = \B[50]~input_o\ $ (\A[50]~input_o\ $ (((\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\) # (\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\,
	datab => \B[50]~input_o\,
	datac => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int[1]~0_combout\,
	datad => \A[50]~input_o\,
	combout => \recur:UQ3|recur:UQ0|S\(2));

-- Location: LCCOMB_X72_Y69_N8
\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\ = (\A[50]~input_o\ & ((\B[50]~input_o\) # ((\B[49]~input_o\ & \A[49]~input_o\)))) # (!\A[50]~input_o\ & (\B[49]~input_o\ & (\A[49]~input_o\ & \B[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \A[50]~input_o\,
	datad => \B[50]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X72_Y69_N18
\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~2_combout\ = (\A[48]~input_o\ & (\B[48]~input_o\ & (\B[49]~input_o\ $ (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X73_Y69_N2
\recur:UQ3|recur:UQ0|S[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S[3]~2_combout\ = (\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\ & ((\B[50]~input_o\ $ (\A[50]~input_o\)))) # (!\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\ & (\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~2_combout\ & (\B[50]~input_o\ $ 
-- (\A[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~2_combout\,
	datab => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~2_combout\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \recur:UQ3|recur:UQ0|S[3]~2_combout\);

-- Location: IOIBUF_X52_Y73_N1
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X73_Y69_N4
\recur:UQ3|recur:UQ0|S[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ0|S[3]~3_combout\ = \A[51]~input_o\ $ (\B[51]~input_o\ $ (((\recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\) # (\recur:UQ3|recur:UQ0|S[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ0|leaf:U_LEAF|g_int~1_combout\,
	datab => \recur:UQ3|recur:UQ0|S[3]~2_combout\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \recur:UQ3|recur:UQ0|S[3]~3_combout\);

-- Location: LCCOMB_X73_Y69_N10
\recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\ = (\A[51]~input_o\ & ((\B[51]~input_o\) # ((\A[50]~input_o\ & \B[50]~input_o\)))) # (!\A[51]~input_o\ & (\A[50]~input_o\ & (\B[50]~input_o\ & \B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \B[50]~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\);

-- Location: LCCOMB_X72_Y69_N22
\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ = (\B[49]~input_o\ & ((\A[49]~input_o\) # ((\A[48]~input_o\ & \B[48]~input_o\)))) # (!\B[49]~input_o\ & (\A[49]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\);

-- Location: LCCOMB_X73_Y69_N0
\recur:UQ3|recur:TOP_FANOUT|C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~0_combout\ = (\A[50]~input_o\ & (!\B[50]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\)))) # (!\A[50]~input_o\ & (\B[50]~input_o\ & (\A[51]~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \B[50]~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~0_combout\);

-- Location: LCCOMB_X73_Y69_N28
\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\ = (\recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\) # ((\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\ & \recur:UQ3|recur:TOP_FANOUT|C~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q0:0:Q0_BLK|g_int~0_combout\,
	datab => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~0_combout\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~0_combout\,
	combout => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\);

-- Location: IOIBUF_X85_Y73_N1
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: LCCOMB_X72_Y69_N28
\recur:UQ3|recur:TOP_FANOUT|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~1_combout\ = (\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ & (\recur:UQ3|recur:TOP_FANOUT|C~0_combout\ & ((\recur:TOP_FANOUT|g_int[2]~1_combout\) # (\recur:TOP_FANOUT|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|g_int[2]~1_combout\,
	datab => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|C~0_combout\,
	datad => \recur:TOP_FANOUT|C~3_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~1_combout\);

-- Location: LCCOMB_X79_Y69_N24
\recur:UQ3|recur:UQ1|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S\(0) = \B[52]~input_o\ $ (\A[52]~input_o\ $ (((\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~1_combout\,
	combout => \recur:UQ3|recur:UQ1|S\(0));

-- Location: IOIBUF_X83_Y73_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X79_Y69_N26
\recur:UQ3|recur:UQ1|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ = (\B[52]~input_o\ & ((\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # ((\A[52]~input_o\) # (\recur:UQ3|recur:TOP_FANOUT|C~1_combout\)))) # (!\B[52]~input_o\ & (\A[52]~input_o\ & 
-- ((\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~1_combout\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\);

-- Location: IOIBUF_X83_Y73_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: LCCOMB_X79_Y69_N12
\recur:UQ3|recur:UQ1|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S\(1) = \B[53]~input_o\ $ (\recur:UQ3|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\ $ (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datac => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C[1]~0_combout\,
	datad => \A[53]~input_o\,
	combout => \recur:UQ3|recur:UQ1|S\(1));

-- Location: LCCOMB_X79_Y69_N22
\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X79_Y69_N8
\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ = (\B[53]~input_o\ & (!\A[53]~input_o\ & (\B[52]~input_o\ $ (\A[52]~input_o\)))) # (!\B[53]~input_o\ & (\A[53]~input_o\ & (\B[52]~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\);

-- Location: LCCOMB_X79_Y69_N18
\recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1_combout\ = (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & ((\recur:UQ3|recur:TOP_FANOUT|C~1_combout\) # (\recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ3|recur:TOP_FANOUT|C~1_combout\,
	datac => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	datad => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1_combout\);

-- Location: IOIBUF_X83_Y73_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X79_Y73_N8
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X79_Y69_N30
\recur:UQ3|recur:UQ1|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S\(2) = \A[54]~input_o\ $ (\B[54]~input_o\ $ (((\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\) # (\recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int[1]~0_combout\,
	datab => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \recur:UQ3|recur:UQ1|S\(2));

-- Location: IOIBUF_X81_Y73_N1
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X79_Y69_N6
\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\ = (\B[54]~input_o\ & ((\A[54]~input_o\) # ((\B[53]~input_o\ & \A[53]~input_o\)))) # (!\B[54]~input_o\ & (\B[53]~input_o\ & (\A[54]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \B[54]~input_o\,
	datac => \A[54]~input_o\,
	datad => \A[53]~input_o\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X79_Y69_N16
\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~2_combout\ = (\B[52]~input_o\ & (\A[52]~input_o\ & (\B[53]~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X79_Y69_N20
\recur:UQ3|recur:UQ1|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|P\(2) = \B[54]~input_o\ $ (\A[54]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datac => \A[54]~input_o\,
	combout => \recur:UQ3|recur:UQ1|P\(2));

-- Location: LCCOMB_X79_Y69_N2
\recur:UQ3|recur:UQ1|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|leaf:U_LEAF|C\(3) = (\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ3|recur:UQ1|P\(2) & ((\recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1_combout\) # (\recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~1_combout\,
	datab => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ3|recur:UQ1|leaf:U_LEAF|g_int~2_combout\,
	datad => \recur:UQ3|recur:UQ1|P\(2),
	combout => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C\(3));

-- Location: IOIBUF_X102_Y73_N1
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X73_Y69_N14
\recur:UQ3|recur:UQ1|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ1|S\(3) = \A[55]~input_o\ $ (\recur:UQ3|recur:UQ1|leaf:U_LEAF|C\(3) $ (\B[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datac => \recur:UQ3|recur:UQ1|leaf:U_LEAF|C\(3),
	datad => \B[55]~input_o\,
	combout => \recur:UQ3|recur:UQ1|S\(3));

-- Location: LCCOMB_X79_Y69_N0
\recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\) # ((\B[52]~input_o\ & \A[52]~input_o\)))) # (!\B[53]~input_o\ & (\B[52]~input_o\ & (\A[52]~input_o\ & \A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \B[52]~input_o\,
	datac => \A[52]~input_o\,
	datad => \A[53]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\);

-- Location: LCCOMB_X79_Y69_N10
\recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~1_combout\ = (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\ & (\recur:UQ3|recur:UQ1|P\(2) & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~0_combout\,
	datab => \recur:UQ3|recur:UQ1|P\(2),
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~1_combout\);

-- Location: LCCOMB_X79_Y69_N14
\recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\ = (\A[55]~input_o\ & ((\B[55]~input_o\) # ((\B[54]~input_o\ & \A[54]~input_o\)))) # (!\A[55]~input_o\ & (\B[54]~input_o\ & (\A[54]~input_o\ & \B[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[54]~input_o\,
	datab => \A[55]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[55]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\);

-- Location: LCCOMB_X79_Y69_N4
\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~combout\ = (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\ & (\recur:UQ3|recur:UQ1|P\(2) & (\A[55]~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~0_combout\,
	datab => \recur:UQ3|recur:UQ1|P\(2),
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~combout\);

-- Location: LCCOMB_X79_Y69_N28
\recur:UQ3|recur:TOP_FANOUT|g_int[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|g_int\(1) = (\recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~1_combout\) # ((\recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\) # ((\recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~combout\ & \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Gout~1_combout\,
	datab => \recur:UQ3|recur:blk_q1:0:Q1_BLK|g_int~0_combout\,
	datac => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	datad => \recur:UQ3|recur:blk_q0:0:Q0_BLK|Gout~1_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|g_int\(1));

-- Location: IOIBUF_X62_Y73_N15
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X72_Y69_N0
\recur:UQ3|recur:TOP_FANOUT|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~2_combout\ = (\recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\ & (\recur:UQ3|recur:TOP_FANOUT|C~0_combout\ & \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ3|recur:UQ0|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|C~0_combout\,
	datad => \recur:UQ3|recur:blk_q1:0:Q1_BLK|Pout~combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~2_combout\);

-- Location: LCCOMB_X72_Y69_N26
\recur:UQ3|recur:TOP_FANOUT|C~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~3_combout\ = (\recur:UQ3|recur:TOP_FANOUT|C~2_combout\ & ((\recur:TOP_FANOUT|g_int[2]~1_combout\) # ((\recur:TOP_FANOUT|C~2_combout\ & \recur:combine_q16:Q2_GRP|Pout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|C~2_combout\,
	datab => \recur:UQ3|recur:TOP_FANOUT|C~2_combout\,
	datac => \recur:combine_q16:Q2_GRP|Pout~combout\,
	datad => \recur:TOP_FANOUT|g_int[2]~1_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~3_combout\);

-- Location: LCCOMB_X62_Y69_N8
\recur:UQ3|recur:UQ2|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S\(0) = \A[56]~input_o\ $ (\B[56]~input_o\ $ (((\recur:UQ3|recur:TOP_FANOUT|g_int\(1)) # (\recur:UQ3|recur:TOP_FANOUT|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:TOP_FANOUT|g_int\(1),
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~3_combout\,
	combout => \recur:UQ3|recur:UQ2|S\(0));

-- Location: IOIBUF_X54_Y73_N8
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: LCCOMB_X62_Y69_N26
\recur:UQ3|recur:UQ2|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ = (\A[56]~input_o\ & ((\recur:UQ3|recur:TOP_FANOUT|g_int\(1)) # ((\B[56]~input_o\) # (\recur:UQ3|recur:TOP_FANOUT|C~3_combout\)))) # (!\A[56]~input_o\ & (\B[56]~input_o\ & 
-- ((\recur:UQ3|recur:TOP_FANOUT|g_int\(1)) # (\recur:UQ3|recur:TOP_FANOUT|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:TOP_FANOUT|g_int\(1),
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~3_combout\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\);

-- Location: IOIBUF_X62_Y73_N22
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X62_Y69_N4
\recur:UQ3|recur:UQ2|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S\(1) = \A[57]~input_o\ $ (\recur:UQ3|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\ $ (\B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datac => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C[1]~0_combout\,
	datad => \B[57]~input_o\,
	combout => \recur:UQ3|recur:UQ2|S\(1));

-- Location: IOIBUF_X60_Y73_N22
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X62_Y69_N24
\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ = (\A[57]~input_o\ & (!\B[57]~input_o\ & (\A[56]~input_o\ $ (\B[56]~input_o\)))) # (!\A[57]~input_o\ & (\B[57]~input_o\ & (\A[56]~input_o\ $ (\B[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \B[57]~input_o\,
	combout => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\);

-- Location: LCCOMB_X62_Y69_N2
\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1_combout\ = (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & ((\recur:UQ3|recur:TOP_FANOUT|C~3_combout\) # (\recur:UQ3|recur:TOP_FANOUT|g_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ3|recur:TOP_FANOUT|C~3_combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|g_int\(1),
	datad => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1_combout\);

-- Location: IOIBUF_X58_Y73_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X62_Y69_N6
\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\A[57]~input_o\ & (\A[56]~input_o\ & (\B[56]~input_o\ & \B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \B[57]~input_o\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: LCCOMB_X62_Y69_N22
\recur:UQ3|recur:UQ2|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S\(2) = \B[58]~input_o\ $ (\A[58]~input_o\ $ (((\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1_combout\) # (\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	datac => \A[58]~input_o\,
	datad => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int[1]~0_combout\,
	combout => \recur:UQ3|recur:UQ2|S\(2));

-- Location: IOIBUF_X60_Y73_N1
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X62_Y69_N0
\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~2_combout\ = (\A[56]~input_o\ & (\B[56]~input_o\ & (\A[57]~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \B[57]~input_o\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~2_combout\);

-- Location: LCCOMB_X62_Y69_N14
\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\ = (\B[58]~input_o\ & ((\A[58]~input_o\) # ((\A[57]~input_o\ & \B[57]~input_o\)))) # (!\B[58]~input_o\ & (\A[57]~input_o\ & (\A[58]~input_o\ & \B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \A[57]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[57]~input_o\,
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\);

-- Location: LCCOMB_X62_Y69_N20
\recur:UQ3|recur:UQ2|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|P\(2) = \A[58]~input_o\ $ (\B[58]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[58]~input_o\,
	datad => \B[58]~input_o\,
	combout => \recur:UQ3|recur:UQ2|P\(2));

-- Location: LCCOMB_X62_Y69_N18
\recur:UQ3|recur:UQ2|leaf:U_LEAF|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|leaf:U_LEAF|C\(3) = (\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\) # ((\recur:UQ3|recur:UQ2|P\(2) & ((\recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~2_combout\) # (\recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~2_combout\,
	datab => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ3|recur:UQ2|leaf:U_LEAF|g_int~1_combout\,
	datad => \recur:UQ3|recur:UQ2|P\(2),
	combout => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C\(3));

-- Location: LCCOMB_X62_Y69_N12
\recur:UQ3|recur:UQ2|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ2|S\(3) = \A[59]~input_o\ $ (\B[59]~input_o\ $ (\recur:UQ3|recur:UQ2|leaf:U_LEAF|C\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \B[59]~input_o\,
	datad => \recur:UQ3|recur:UQ2|leaf:U_LEAF|C\(3),
	combout => \recur:UQ3|recur:UQ2|S\(3));

-- Location: IOIBUF_X67_Y73_N22
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X62_Y69_N30
\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ = (\recur:UQ3|recur:UQ2|P\(2) & (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\ & (\A[59]~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \recur:UQ3|recur:UQ2|P\(2),
	datac => \B[59]~input_o\,
	datad => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~0_combout\,
	combout => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\);

-- Location: LCCOMB_X62_Y69_N16
\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ = (\A[59]~input_o\ & ((\B[59]~input_o\) # ((\A[58]~input_o\ & \B[58]~input_o\)))) # (!\A[59]~input_o\ & (\B[59]~input_o\ & (\A[58]~input_o\ & \B[58]~input_o\)))

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
	combout => \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\);

-- Location: LCCOMB_X62_Y69_N10
\Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~0_combout\ = (\A[57]~input_o\ & ((\B[57]~input_o\) # ((\A[56]~input_o\ & \B[56]~input_o\)))) # (!\A[57]~input_o\ & (\A[56]~input_o\ & (\B[56]~input_o\ & \B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \A[56]~input_o\,
	datac => \B[56]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Cout~0_combout\);

-- Location: LCCOMB_X62_Y69_N28
\Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~1_combout\ = (\recur:UQ3|recur:UQ2|P\(2) & (\Cout~0_combout\ & (\A[59]~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \recur:UQ3|recur:UQ2|P\(2),
	datac => \B[59]~input_o\,
	datad => \Cout~0_combout\,
	combout => \Cout~1_combout\);

-- Location: LCCOMB_X68_Y69_N16
\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\ = (\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\) # ((\Cout~1_combout\) # ((\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ3|recur:TOP_FANOUT|g_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datab => \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|g_int\(1),
	datad => \Cout~1_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X72_Y69_N12
\recur:UQ3|recur:TOP_FANOUT|C~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:TOP_FANOUT|C~4_combout\ = (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ & (\recur:UQ3|recur:TOP_FANOUT|C~2_combout\ & ((\recur:TOP_FANOUT|g_int[2]~1_combout\) # (\recur:TOP_FANOUT|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:TOP_FANOUT|g_int[2]~1_combout\,
	datab => \recur:TOP_FANOUT|C~3_combout\,
	datac => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~2_combout\,
	combout => \recur:UQ3|recur:TOP_FANOUT|C~4_combout\);

-- Location: LCCOMB_X68_Y69_N2
\recur:UQ3|recur:UQ3|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S\(0) = \A[60]~input_o\ $ (\B[60]~input_o\ $ (((\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datac => \B[60]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~4_combout\,
	combout => \recur:UQ3|recur:UQ3|S\(0));

-- Location: IOIBUF_X67_Y73_N8
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X65_Y73_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: LCCOMB_X68_Y69_N20
\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\ = (\A[60]~input_o\ & ((\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\) # ((\B[60]~input_o\) # (\recur:UQ3|recur:TOP_FANOUT|C~4_combout\)))) # (!\A[60]~input_o\ & (\B[60]~input_o\ & 
-- ((\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\) # (\recur:UQ3|recur:TOP_FANOUT|C~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datac => \B[60]~input_o\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~4_combout\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\);

-- Location: LCCOMB_X68_Y69_N22
\recur:UQ3|recur:UQ3|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S\(1) = \B[61]~input_o\ $ (\A[61]~input_o\ $ (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datac => \A[61]~input_o\,
	datad => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[1]~0_combout\,
	combout => \recur:UQ3|recur:UQ3|S\(1));

-- Location: LCCOMB_X68_Y69_N8
\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\B[61]~input_o\ & (\B[60]~input_o\ & (\A[61]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X68_Y69_N18
\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\ = (\B[61]~input_o\ & (!\A[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\)))) # (!\B[61]~input_o\ & (\A[61]~input_o\ & (\B[60]~input_o\ $ (\A[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\);

-- Location: LCCOMB_X68_Y69_N28
\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\ = (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\ & ((\recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\) # ((\recur:UQ3|recur:TOP_FANOUT|C~3_combout\ & \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:TOP_FANOUT|C~3_combout\,
	datab => \recur:UQ3|recur:TOP_FANOUT|g_int[2]~0_combout\,
	datac => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datad => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\);

-- Location: LCCOMB_X68_Y69_N30
\recur:UQ3|recur:UQ3|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S\(2) = \A[62]~input_o\ $ (\B[62]~input_o\ $ (((\recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\) # (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:UQ3|leaf:U_LEAF|g_int[1]~0_combout\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\,
	combout => \recur:UQ3|recur:UQ3|S\(2));

-- Location: IOIBUF_X74_Y0_N8
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: LCCOMB_X68_Y69_N0
\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~3_combout\ = (\B[61]~input_o\ & ((\A[61]~input_o\) # ((\B[60]~input_o\ & \A[60]~input_o\)))) # (!\B[61]~input_o\ & (\B[60]~input_o\ & (\A[61]~input_o\ & \A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \B[60]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~3_combout\);

-- Location: LCCOMB_X68_Y69_N26
\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\ = (\A[62]~input_o\ & ((\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~3_combout\) # ((\B[62]~input_o\) # (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\)))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & 
-- ((\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~3_combout\) # (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~3_combout\,
	datac => \B[62]~input_o\,
	datad => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~2_combout\,
	combout => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\);

-- Location: IOIBUF_X74_Y0_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: LCCOMB_X73_Y4_N0
\recur:UQ3|recur:UQ3|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \recur:UQ3|recur:UQ3|S\(3) = \B[63]~input_o\ $ (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\ $ (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\,
	datac => \A[63]~input_o\,
	combout => \recur:UQ3|recur:UQ3|S\(3));

-- Location: LCCOMB_X68_Y69_N12
\Cout~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~2_combout\ = (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\ & (\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ3|recur:TOP_FANOUT|C~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	datac => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datad => \recur:UQ3|recur:TOP_FANOUT|C~2_combout\,
	combout => \Cout~2_combout\);

-- Location: LCCOMB_X68_Y69_N6
\Cout~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~3_combout\ = (\recur:TOP_FANOUT|g_int\(1) & (\recur:combine_q16:Q2_GRP|Pout~combout\ & \Cout~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:TOP_FANOUT|g_int\(1),
	datac => \recur:combine_q16:Q2_GRP|Pout~combout\,
	datad => \Cout~2_combout\,
	combout => \Cout~3_combout\);

-- Location: LCCOMB_X68_Y69_N24
\Cout~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~4_combout\ = (\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & ((\B[60]~input_o\) # (\A[60]~input_o\))) # (!\recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\ & (\B[60]~input_o\ & \A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \recur:UQ3|recur:blk_q2:0:Q2_BLK|g_int~0_combout\,
	datac => \B[60]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Cout~4_combout\);

-- Location: LCCOMB_X68_Y69_N10
\Cout~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~5_combout\ = (\recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\ & ((\Cout~1_combout\) # ((\recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\ & \recur:UQ3|recur:TOP_FANOUT|g_int\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \recur:UQ3|recur:blk_q2:0:Q2_BLK|Pout~combout\,
	datab => \Cout~1_combout\,
	datac => \recur:UQ3|recur:TOP_FANOUT|g_int\(1),
	datad => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C~1_combout\,
	combout => \Cout~5_combout\);

-- Location: LCCOMB_X68_Y69_N4
\Cout~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~6_combout\ = (\Cout~5_combout\) # ((\B[61]~input_o\ & ((\Cout~4_combout\) # (\A[61]~input_o\))) # (!\B[61]~input_o\ & (\Cout~4_combout\ & \A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \Cout~4_combout\,
	datac => \A[61]~input_o\,
	datad => \Cout~5_combout\,
	combout => \Cout~6_combout\);

-- Location: LCCOMB_X72_Y69_N6
\Cout~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~7_combout\ = (\Cout~6_combout\) # ((\Cout~2_combout\ & ((\recur:combine_q16:Q2_GRP|Gout~5_combout\) # (\recur:TOP_FANOUT|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout~2_combout\,
	datab => \Cout~6_combout\,
	datac => \recur:combine_q16:Q2_GRP|Gout~5_combout\,
	datad => \recur:TOP_FANOUT|C~3_combout\,
	combout => \Cout~7_combout\);

-- Location: LCCOMB_X68_Y69_N14
\Cout~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~8_combout\ = (\A[62]~input_o\ & ((\Cout~3_combout\) # ((\B[62]~input_o\) # (\Cout~7_combout\)))) # (!\A[62]~input_o\ & (\B[62]~input_o\ & ((\Cout~3_combout\) # (\Cout~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cout~3_combout\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \Cout~7_combout\,
	combout => \Cout~8_combout\);

-- Location: LCCOMB_X73_Y4_N28
\Cout~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cout~9_combout\ = (\B[63]~input_o\ & ((\A[63]~input_o\) # (\Cout~8_combout\))) # (!\B[63]~input_o\ & (\A[63]~input_o\ & \Cout~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Cout~8_combout\,
	combout => \Cout~9_combout\);

-- Location: LCCOMB_X73_Y4_N2
\Ovfl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Ovfl~0_combout\ = (\B[63]~input_o\ & ((\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\) # (!\A[63]~input_o\))) # (!\B[63]~input_o\ & ((\A[63]~input_o\) # (!\recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \recur:UQ3|recur:UQ3|leaf:U_LEAF|C[3]~4_combout\,
	datac => \A[63]~input_o\,
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


