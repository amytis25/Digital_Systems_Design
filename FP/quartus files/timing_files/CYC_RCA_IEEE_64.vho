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

-- DATE "11/30/2025 21:18:59"

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
	A : IN std_logic_vector(63 DOWNTO 0);
	B : IN std_logic_vector(63 DOWNTO 0);
	FuncClass : IN std_logic_vector(1 DOWNTO 0);
	LogicFN : IN std_logic_vector(1 DOWNTO 0);
	ShiftFN : IN std_logic_vector(1 DOWNTO 0);
	AddnSub : IN std_logic;
	ExtWord : IN std_logic;
	Y : OUT std_logic_vector(63 DOWNTO 0);
	Zero : OUT std_logic;
	AltB : OUT std_logic;
	AltBu : OUT std_logic
	);
END EN_ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_T25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_A : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(63 DOWNTO 0);
SIGNAL ww_FuncClass : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LogicFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ShiftFN : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_AddnSub : std_logic;
SIGNAL ww_ExtWord : std_logic;
SIGNAL ww_Y : std_logic_vector(63 DOWNTO 0);
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
SIGNAL \Y[32]~output_o\ : std_logic;
SIGNAL \Y[33]~output_o\ : std_logic;
SIGNAL \Y[34]~output_o\ : std_logic;
SIGNAL \Y[35]~output_o\ : std_logic;
SIGNAL \Y[36]~output_o\ : std_logic;
SIGNAL \Y[37]~output_o\ : std_logic;
SIGNAL \Y[38]~output_o\ : std_logic;
SIGNAL \Y[39]~output_o\ : std_logic;
SIGNAL \Y[40]~output_o\ : std_logic;
SIGNAL \Y[41]~output_o\ : std_logic;
SIGNAL \Y[42]~output_o\ : std_logic;
SIGNAL \Y[43]~output_o\ : std_logic;
SIGNAL \Y[44]~output_o\ : std_logic;
SIGNAL \Y[45]~output_o\ : std_logic;
SIGNAL \Y[46]~output_o\ : std_logic;
SIGNAL \Y[47]~output_o\ : std_logic;
SIGNAL \Y[48]~output_o\ : std_logic;
SIGNAL \Y[49]~output_o\ : std_logic;
SIGNAL \Y[50]~output_o\ : std_logic;
SIGNAL \Y[51]~output_o\ : std_logic;
SIGNAL \Y[52]~output_o\ : std_logic;
SIGNAL \Y[53]~output_o\ : std_logic;
SIGNAL \Y[54]~output_o\ : std_logic;
SIGNAL \Y[55]~output_o\ : std_logic;
SIGNAL \Y[56]~output_o\ : std_logic;
SIGNAL \Y[57]~output_o\ : std_logic;
SIGNAL \Y[58]~output_o\ : std_logic;
SIGNAL \Y[59]~output_o\ : std_logic;
SIGNAL \Y[60]~output_o\ : std_logic;
SIGNAL \Y[61]~output_o\ : std_logic;
SIGNAL \Y[62]~output_o\ : std_logic;
SIGNAL \Y[63]~output_o\ : std_logic;
SIGNAL \Zero~output_o\ : std_logic;
SIGNAL \AltB~output_o\ : std_logic;
SIGNAL \AltBu~output_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \Add|C[1]~0_combout\ : std_logic;
SIGNAL \Add|C[2]~1_combout\ : std_logic;
SIGNAL \Add|C[3]~2_combout\ : std_logic;
SIGNAL \Add|C[4]~3_combout\ : std_logic;
SIGNAL \Add|C[5]~4_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Add|C[6]~5_combout\ : std_logic;
SIGNAL \Add|C[7]~6_combout\ : std_logic;
SIGNAL \Add|C[8]~7_combout\ : std_logic;
SIGNAL \Add|C[9]~8_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Add|C[10]~9_combout\ : std_logic;
SIGNAL \Add|C[11]~10_combout\ : std_logic;
SIGNAL \Add|C[12]~11_combout\ : std_logic;
SIGNAL \Add|C[13]~12_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \Add|C[14]~13_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \Add|C[15]~14_combout\ : std_logic;
SIGNAL \Add|C[16]~15_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \Add|C[17]~16_combout\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Add|C[18]~17_combout\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Add|C[19]~18_combout\ : std_logic;
SIGNAL \Add|C[20]~19_combout\ : std_logic;
SIGNAL \Add|C[21]~20_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \Add|C[22]~21_combout\ : std_logic;
SIGNAL \Add|C[23]~22_combout\ : std_logic;
SIGNAL \Add|C[24]~23_combout\ : std_logic;
SIGNAL \Add|C[25]~24_combout\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \Add|C[26]~25_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Add|C[27]~26_combout\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \Add|C[28]~27_combout\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Add|C[29]~28_combout\ : std_logic;
SIGNAL \Add|C[30]~29_combout\ : std_logic;
SIGNAL \Add|C[31]~30_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \Add|C[32]~31_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \Add|C[33]~32_combout\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Add|C[34]~33_combout\ : std_logic;
SIGNAL \Add|C[35]~34_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \Add|C[36]~35_combout\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \Add|C[37]~36_combout\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \Add|C[38]~37_combout\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \Add|C[39]~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \Add|C[40]~39_combout\ : std_logic;
SIGNAL \Add|C[41]~40_combout\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Add|C[42]~41_combout\ : std_logic;
SIGNAL \Add|C[43]~42_combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \Add|C[44]~43_combout\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \Add|C[45]~44_combout\ : std_logic;
SIGNAL \Add|C[46]~45_combout\ : std_logic;
SIGNAL \Add|C[47]~46_combout\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \Add|C[48]~47_combout\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \Add|C[49]~48_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \Add|C[50]~49_combout\ : std_logic;
SIGNAL \Add|C[51]~50_combout\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Add|C[52]~51_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \Add|C[53]~52_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Add|C[54]~53_combout\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Add|C[55]~54_combout\ : std_logic;
SIGNAL \Add|C[56]~55_combout\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Add|C[57]~56_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \Add|C[58]~57_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \Add|C[59]~58_combout\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Add|C[60]~59_combout\ : std_logic;
SIGNAL \Add|C[61]~60_combout\ : std_logic;
SIGNAL \Add|C[62]~61_combout\ : std_logic;
SIGNAL \Add|C[63]~62_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~35_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~37_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~38_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~39_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~40_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~41_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~33_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~29_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~30_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~34_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~42_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~19_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~21_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~25_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~27_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \Shift|ShiftRight0~46_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~47_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~9_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~44_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~45_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~48_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~52_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~53_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~54_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~50_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~49_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~51_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~55_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~56_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~68_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~67_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~69_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~64_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~65_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~66_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~70_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~58_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~57_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~59_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~61_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~60_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~62_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~63_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~71_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~72_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux63~0_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~21_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~92_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~22_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~93_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~94_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~19_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~89_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~90_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~91_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~95_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~24_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~97_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~23_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~96_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~98_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~25_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~27_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~26_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~100_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~28_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~29_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~30_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~99_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~101_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~102_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~14_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~79_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~13_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~78_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~80_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~11_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~73_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~74_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~75_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~12_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~76_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~77_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~81_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~17_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~85_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~18_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~86_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~87_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~82_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~16_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~83_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~84_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~88_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~4_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~7_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~285_combout\ : std_logic;
SIGNAL \Logic|xor_result[2]~0_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~58_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~59_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~56_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~57_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~113_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~54_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~53_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~55_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~51_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~52_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~110_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~111_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~45_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~46_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~43_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~44_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~107_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~41_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~42_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~39_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~40_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~106_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~108_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~47_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~48_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~49_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~50_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~109_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~112_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~35_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~36_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~37_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~38_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~104_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~31_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~32_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~33_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~34_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~103_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~105_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~60_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~61_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~62_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~63_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Mux61~7_combout\ : std_logic;
SIGNAL \Mux61~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~68_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~69_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~117_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~70_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~71_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~79_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~73_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~72_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~120_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~74_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~75_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~121_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~122_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~80_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~76_combout\ : std_logic;
SIGNAL \Mux60~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~77_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~78_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~124_combout\ : std_logic;
SIGNAL \Mux60~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~118_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~119_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~123_combout\ : std_logic;
SIGNAL \Mux60~10_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~64_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~65_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~114_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~66_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~67_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~115_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~116_combout\ : std_logic;
SIGNAL \Mux60~11_combout\ : std_logic;
SIGNAL \Logic|xor_result[3]~1_combout\ : std_logic;
SIGNAL \Mux60~12_combout\ : std_logic;
SIGNAL \Mux60~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~286_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Mux60~7_combout\ : std_logic;
SIGNAL \Mux60~14_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux59~8_combout\ : std_logic;
SIGNAL \Logic|xor_result[4]~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~131_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~81_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~129_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~130_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~82_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~125_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~126_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~127_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~128_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \Add|S[4]~0_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~132_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~133_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~134_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \Mux59~5_combout\ : std_logic;
SIGNAL \Mux59~6_combout\ : std_logic;
SIGNAL \Mux59~7_combout\ : std_logic;
SIGNAL \Mux59~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Mux59~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~135_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~83_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~84_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~137_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~138_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~85_combout\ : std_logic;
SIGNAL \Add|S[5]~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~140_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~141_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~142_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~143_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~136_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~139_combout\ : std_logic;
SIGNAL \Mux58~5_combout\ : std_logic;
SIGNAL \Logic|xor_result[5]~3_combout\ : std_logic;
SIGNAL \Mux58~6_combout\ : std_logic;
SIGNAL \Mux58~7_combout\ : std_logic;
SIGNAL \Mux58~9_combout\ : std_logic;
SIGNAL \Mux58~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \Logic|xor_result[6]~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~150_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~151_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~148_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~149_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~152_combout\ : std_logic;
SIGNAL \Add|S[6]~2_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~146_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~145_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~147_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~144_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~86_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~87_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \Mux57~6_combout\ : std_logic;
SIGNAL \Mux57~7_combout\ : std_logic;
SIGNAL \Mux57~9_combout\ : std_logic;
SIGNAL \Mux57~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~155_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~156_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~153_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~88_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~89_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~154_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~157_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~160_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~159_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~161_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~158_combout\ : std_logic;
SIGNAL \Mux56~6_combout\ : std_logic;
SIGNAL \Mux56~7_combout\ : std_logic;
SIGNAL \Add|S[7]~3_combout\ : std_logic;
SIGNAL \Mux56~8_combout\ : std_logic;
SIGNAL \Mux56~9_combout\ : std_logic;
SIGNAL \Logic|xor_result[7]~5_combout\ : std_logic;
SIGNAL \Mux56~10_combout\ : std_logic;
SIGNAL \Mux56~11_combout\ : std_logic;
SIGNAL \Mux56~13_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Mux56~12_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Add|S[8]~4_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~162_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~163_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~218_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~165_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~164_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~166_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~90_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~91_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Logic|xor_result[8]~6_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux55~5_combout\ : std_logic;
SIGNAL \Mux55~6_combout\ : std_logic;
SIGNAL \Logic|xor_result[9]~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \Add|S[9]~5_combout\ : std_logic;
SIGNAL \Mux54~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~92_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~167_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~168_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~93_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~225_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~226_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~170_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~169_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~171_combout\ : std_logic;
SIGNAL \Mux54~5_combout\ : std_logic;
SIGNAL \Mux54~7_combout\ : std_logic;
SIGNAL \Mux54~8_combout\ : std_logic;
SIGNAL \Mux54~9_combout\ : std_logic;
SIGNAL \Mux54~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \Add|S[10]~6_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~172_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~173_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~94_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~95_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~175_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~174_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~176_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~219_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Logic|xor_result[10]~8_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Mux53~5_combout\ : std_logic;
SIGNAL \Mux53~6_combout\ : std_logic;
SIGNAL \Logic|xor_result[11]~9_combout\ : std_logic;
SIGNAL \Add|S[11]~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~180_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~179_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~181_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~177_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~178_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~220_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~96_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~97_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Mux52~5_combout\ : std_logic;
SIGNAL \Mux52~6_combout\ : std_logic;
SIGNAL \Mux51~5_combout\ : std_logic;
SIGNAL \Mux51~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \Add|S[12]~8_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~186_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~185_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~187_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~189_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~188_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~190_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~191_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~182_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~183_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~184_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~98_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~99_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Mux50~5_combout\ : std_logic;
SIGNAL \Mux50~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \Add|S[13]~9_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~195_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~192_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~193_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~194_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~100_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~101_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~196_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~197_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~198_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~199_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \Add|S[14]~10_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~102_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~103_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \Mux49~6_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Mux48~5_combout\ : std_logic;
SIGNAL \Mux48~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~200_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~201_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~104_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~287_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~202_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~203_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \Add|S[15]~11_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~204_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~105_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Mux47~5_combout\ : std_logic;
SIGNAL \Mux47~6_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Add|S[16]~12_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \Mux47~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Add|S[17]~13_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~205_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~106_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Mux46~6_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~206_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~107_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~5_combout\ : std_logic;
SIGNAL \Mux45~6_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \Add|S[18]~14_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Add|S[19]~15_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~207_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~108_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \Mux44~6_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~103_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Mux43~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~109_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~208_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~104_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~105_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~106_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~107_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~288_combout\ : std_logic;
SIGNAL \Add|S[20]~16_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Mux42~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~110_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~209_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~108_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~109_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~110_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~111_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~289_combout\ : std_logic;
SIGNAL \Add|S[21]~17_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \Mux41~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~111_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~210_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~112_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~113_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~114_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~115_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~290_combout\ : std_logic;
SIGNAL \Add|S[22]~18_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Mux40~5_combout\ : std_logic;
SIGNAL \Mux40~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~211_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~116_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Add|S[23]~19_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~116_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~117_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~118_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~119_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~291_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~120_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~121_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~122_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~123_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~124_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Mux39~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~212_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~117_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Add|S[24]~20_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Add|S[25]~21_combout\ : std_logic;
SIGNAL \Mux38~5_combout\ : std_logic;
SIGNAL \Mux38~6_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~213_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~118_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~125_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~126_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~127_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~128_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~129_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~130_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~131_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~132_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~133_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~134_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~221_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~119_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \Mux37~6_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Add|S[26]~22_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~135_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~136_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~137_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~138_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~139_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~222_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~112_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Mux36~6_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Add|S[27]~23_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Add|S[28]~24_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~140_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~141_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~142_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~143_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~144_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~145_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~113_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~223_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \Mux35~6_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~114_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~224_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Mux34~6_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Add|S[29]~25_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~147_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~148_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~149_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~150_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~146_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~151_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Add|S[30]~26_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~156_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~152_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~153_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~154_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~155_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~157_combout\ : std_logic;
SIGNAL \Mux33~7_combout\ : std_logic;
SIGNAL \Mux33~8_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~214_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Shift|ShiftRight1~115_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Mux33~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~159_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~160_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~161_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~162_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~158_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~11_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Logic|xor_result[31]~10_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~9_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~10_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~13_combout\ : std_logic;
SIGNAL \Logic|Mux32~0_combout\ : std_logic;
SIGNAL \Logic|Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Logic|Mux31~0_combout\ : std_logic;
SIGNAL \Logic|Mux31~1_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Shift|ShiftLeft0~163_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~164_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~165_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~14_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~15_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~16_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~17_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~22_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~166_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~167_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~168_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~169_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~21_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~23_combout\ : std_logic;
SIGNAL \Add|S[32]~27_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~20_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~215_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~216_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~18_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~19_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[32]~24_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~171_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~172_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~173_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~174_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add|S[33]~28_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~170_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~175_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~176_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~177_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~178_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add|S[34]~29_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~179_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~180_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~181_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~182_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Add|S[35]~30_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Mux27~7_combout\ : std_logic;
SIGNAL \Add|S[36]~31_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~292_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~183_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~184_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~185_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~186_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux26~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~187_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~188_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~189_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~190_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add|S[37]~32_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~293_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~191_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~192_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~193_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~194_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~195_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Add|S[38]~33_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~197_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~198_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~199_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~200_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~196_combout\ : std_logic;
SIGNAL \Add|S[39]~34_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Mux23~7_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~202_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~203_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~204_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~201_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~205_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add|S[40]~35_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~207_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~208_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~209_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~206_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~210_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Add|S[41]~36_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~211_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~212_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~213_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~214_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~215_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add|S[42]~37_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Mux21~7_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Add|S[43]~38_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~216_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~217_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~218_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~219_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~220_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Add|S[44]~39_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~221_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~222_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~223_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~224_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~225_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Mux19~7_combout\ : std_logic;
SIGNAL \Mux19~8_combout\ : std_logic;
SIGNAL \Mux19~10_combout\ : std_logic;
SIGNAL \Mux19~11_combout\ : std_logic;
SIGNAL \Mux19~9_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~227_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~228_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~229_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~226_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~230_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add|S[45]~40_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux18~7_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Add|S[46]~41_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~232_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~233_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~234_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~231_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~235_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~236_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~237_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~238_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~239_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~240_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add|S[47]~42_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~241_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~242_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~243_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Add|S[48]~43_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Add|S[49]~44_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~244_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~245_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~246_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Add|S[50]~45_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~247_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~248_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~249_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Add|S[51]~46_combout\ : std_logic;
SIGNAL \Mux12~10_combout\ : std_logic;
SIGNAL \Mux12~11_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~250_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~251_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~252_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Add|S[52]~47_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~253_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~254_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~255_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Add|S[53]~48_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~256_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~257_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~258_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~259_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~260_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~261_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Add|S[54]~49_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~262_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~263_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~264_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Add|S[55]~50_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add|S[56]~51_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~265_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~266_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~267_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~268_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add|S[57]~52_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~270_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~269_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~271_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Add|S[58]~53_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~273_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~272_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~274_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Add|S[59]~54_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~10_combout\ : std_logic;
SIGNAL \Mux4~11_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~275_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Add|S[60]~55_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~276_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Add|S[61]~56_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Add|S[62]~57_combout\ : std_logic;
SIGNAL \Y_LorS[62]~0_combout\ : std_logic;
SIGNAL \Y_LorS[62]~1_combout\ : std_logic;
SIGNAL \Y_LorS[62]~2_combout\ : std_logic;
SIGNAL \Y_LorS[62]~3_combout\ : std_logic;
SIGNAL \Y_LorS[62]~4_combout\ : std_logic;
SIGNAL \Y_LorS[62]~5_combout\ : std_logic;
SIGNAL \Y_LorS[62]~6_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Logic|Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Shift|ShiftRight0~217_combout\ : std_logic;
SIGNAL \Add|S[63]~58_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~25_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~278_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~279_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~280_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~281_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~282_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~283_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~277_combout\ : std_logic;
SIGNAL \Shift|ShiftLeft0~284_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~26_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Logic|Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add|S\ : std_logic_vector(63 DOWNTO 0);
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

-- Location: IOOBUF_X0_Y46_N23
\Y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux63~1_combout\,
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~1_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~8_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\Y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux60~14_combout\,
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~9_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~8_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~8_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~12_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~6_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~10_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~6_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~6_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\Y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux51~4_combout\,
	devoe => ww_devoe,
	o => \Y[12]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux50~4_combout\,
	devoe => ww_devoe,
	o => \Y[13]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\Y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux49~4_combout\,
	devoe => ww_devoe,
	o => \Y[14]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~4_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~4_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~4_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~4_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~4_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~4_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~4_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~4_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~4_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~4_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~4_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~4_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~4_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~4_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~4_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~6_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Y[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~0_combout\,
	devoe => ww_devoe,
	o => \Y[31]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~1_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~5_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~5_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X83_Y73_N16
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~5_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~5_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~5_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~5_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~5_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~5_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\Y[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~5_combout\,
	devoe => ww_devoe,
	o => \Y[41]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~5_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~5_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~9_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~5_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~5_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~5_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~6_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Y[49]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~6_combout\,
	devoe => ww_devoe,
	o => \Y[49]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Y[50]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~6_combout\,
	devoe => ww_devoe,
	o => \Y[50]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~9_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\Y[52]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~6_combout\,
	devoe => ww_devoe,
	o => \Y[52]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\Y[53]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~6_combout\,
	devoe => ww_devoe,
	o => \Y[53]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\Y[54]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~6_combout\,
	devoe => ww_devoe,
	o => \Y[54]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\Y[55]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~6_combout\,
	devoe => ww_devoe,
	o => \Y[55]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~6_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Y[57]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \Y[57]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\Y[58]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~6_combout\,
	devoe => ww_devoe,
	o => \Y[58]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~9_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~10_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~10_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~5_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
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

-- Location: IOOBUF_X29_Y0_N16
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

-- Location: IOOBUF_X33_Y0_N2
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

-- Location: IOIBUF_X0_Y34_N1
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: IOIBUF_X69_Y0_N8
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: IOIBUF_X115_Y35_N15
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X65_Y73_N8
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: IOIBUF_X115_Y33_N8
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: IOIBUF_X72_Y0_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: IOIBUF_X72_Y73_N15
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X62_Y0_N15
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: IOIBUF_X67_Y0_N22
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X69_Y73_N15
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: IOIBUF_X74_Y0_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X74_Y0_N22
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X69_Y73_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: IOIBUF_X54_Y73_N1
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: IOIBUF_X31_Y73_N1
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X20_Y73_N15
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: IOIBUF_X56_Y73_N15
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: IOIBUF_X56_Y73_N22
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X27_Y73_N15
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: IOIBUF_X0_Y33_N22
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: IOIBUF_X0_Y33_N15
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X67_Y73_N8
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X20_Y73_N22
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
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: IOIBUF_X27_Y73_N22
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X0_Y45_N15
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: IOIBUF_X0_Y28_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: IOIBUF_X31_Y0_N1
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X0_Y29_N15
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: IOIBUF_X0_Y30_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X0_Y46_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X74_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X0_Y34_N15
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X115_Y44_N8
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X45_Y73_N8
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X49_Y38_N0
\Add|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add|C[1]~0_combout\);

-- Location: LCCOMB_X49_Y38_N18
\Add|C[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[2]~1_combout\ = (\A[1]~input_o\ & ((\Add|C[1]~0_combout\) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|C[1]~0_combout\ & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \Add|C[1]~0_combout\,
	combout => \Add|C[2]~1_combout\);

-- Location: LCCOMB_X49_Y38_N4
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

-- Location: LCCOMB_X49_Y36_N8
\Add|C[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[4]~3_combout\ = (\A[3]~input_o\ & ((\Add|C[3]~2_combout\) # (\B[3]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[3]~input_o\ & (\Add|C[3]~2_combout\ & (\B[3]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[3]~input_o\,
	datad => \Add|C[3]~2_combout\,
	combout => \Add|C[4]~3_combout\);

-- Location: LCCOMB_X54_Y35_N0
\Add|C[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[5]~4_combout\ = (\A[4]~input_o\ & ((\Add|C[4]~3_combout\) # (\B[4]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[4]~input_o\ & (\Add|C[4]~3_combout\ & (\B[4]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Add|C[4]~3_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[5]~4_combout\);

-- Location: IOIBUF_X0_Y30_N1
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X54_Y35_N2
\Add|C[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[6]~5_combout\ = (\Add|C[5]~4_combout\ & ((\A[5]~input_o\) # (\B[5]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[5]~4_combout\ & (\A[5]~input_o\ & (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Add|C[5]~4_combout\,
	datac => \A[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[6]~5_combout\);

-- Location: LCCOMB_X54_Y36_N24
\Add|C[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[7]~6_combout\ = (\A[6]~input_o\ & ((\Add|C[6]~5_combout\) # (\AddnSub~input_o\ $ (\B[6]~input_o\)))) # (!\A[6]~input_o\ & (\Add|C[6]~5_combout\ & (\AddnSub~input_o\ $ (\B[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \Add|C[6]~5_combout\,
	combout => \Add|C[7]~6_combout\);

-- Location: LCCOMB_X48_Y36_N24
\Add|C[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[8]~7_combout\ = (\A[7]~input_o\ & ((\Add|C[7]~6_combout\) # (\B[7]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[7]~input_o\ & (\Add|C[7]~6_combout\ & (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[7]~6_combout\,
	combout => \Add|C[8]~7_combout\);

-- Location: LCCOMB_X48_Y36_N2
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

-- Location: IOIBUF_X0_Y42_N1
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X49_Y36_N2
\Add|C[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[10]~9_combout\ = (\Add|C[9]~8_combout\ & ((\A[9]~input_o\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\Add|C[9]~8_combout\ & (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[9]~8_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|C[10]~9_combout\);

-- Location: LCCOMB_X52_Y35_N24
\Add|C[11]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[11]~10_combout\ = (\A[10]~input_o\ & ((\Add|C[10]~9_combout\) # (\AddnSub~input_o\ $ (\B[10]~input_o\)))) # (!\A[10]~input_o\ & (\Add|C[10]~9_combout\ & (\AddnSub~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \Add|C[10]~9_combout\,
	combout => \Add|C[11]~10_combout\);

-- Location: LCCOMB_X52_Y35_N2
\Add|C[12]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[12]~11_combout\ = (\A[11]~input_o\ & ((\Add|C[11]~10_combout\) # (\AddnSub~input_o\ $ (\B[11]~input_o\)))) # (!\A[11]~input_o\ & (\Add|C[11]~10_combout\ & (\AddnSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \Add|C[11]~10_combout\,
	combout => \Add|C[12]~11_combout\);

-- Location: LCCOMB_X52_Y37_N2
\Add|C[13]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[13]~12_combout\ = (\A[12]~input_o\ & ((\Add|C[12]~11_combout\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\A[12]~input_o\ & (\Add|C[12]~11_combout\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \Add|C[12]~11_combout\,
	combout => \Add|C[13]~12_combout\);

-- Location: IOIBUF_X31_Y73_N8
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: LCCOMB_X54_Y39_N16
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

-- Location: IOIBUF_X0_Y43_N15
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X52_Y73_N8
\B[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: LCCOMB_X54_Y39_N18
\Add|C[15]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[15]~14_combout\ = (\Add|C[14]~13_combout\ & ((\A[14]~input_o\) # (\AddnSub~input_o\ $ (\B[14]~input_o\)))) # (!\Add|C[14]~13_combout\ & (\A[14]~input_o\ & (\AddnSub~input_o\ $ (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[14]~13_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|C[15]~14_combout\);

-- Location: LCCOMB_X53_Y39_N16
\Add|C[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[16]~15_combout\ = (\A[15]~input_o\ & ((\Add|C[15]~14_combout\) # (\B[15]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[15]~input_o\ & (\Add|C[15]~14_combout\ & (\B[15]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[15]~input_o\,
	datad => \Add|C[15]~14_combout\,
	combout => \Add|C[16]~15_combout\);

-- Location: IOIBUF_X0_Y29_N22
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X53_Y37_N24
\Add|C[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[17]~16_combout\ = (\A[16]~input_o\ & ((\Add|C[16]~15_combout\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\Add|C[16]~15_combout\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[16]~15_combout\,
	datad => \B[16]~input_o\,
	combout => \Add|C[17]~16_combout\);

-- Location: IOIBUF_X0_Y42_N8
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: IOIBUF_X47_Y73_N15
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X47_Y39_N16
\Add|C[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[18]~17_combout\ = (\Add|C[17]~16_combout\ & ((\A[17]~input_o\) # (\B[17]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[17]~16_combout\ & (\A[17]~input_o\ & (\B[17]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[17]~16_combout\,
	datab => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[18]~17_combout\);

-- Location: IOIBUF_X38_Y73_N1
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X49_Y41_N24
\Add|C[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[19]~18_combout\ = (\Add|C[18]~17_combout\ & ((\A[18]~input_o\) # (\AddnSub~input_o\ $ (\B[18]~input_o\)))) # (!\Add|C[18]~17_combout\ & (\A[18]~input_o\ & (\AddnSub~input_o\ $ (\B[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[18]~17_combout\,
	datab => \A[18]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[18]~input_o\,
	combout => \Add|C[19]~18_combout\);

-- Location: LCCOMB_X49_Y41_N2
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

-- Location: LCCOMB_X48_Y36_N4
\Add|C[21]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[21]~20_combout\ = (\A[20]~input_o\ & ((\Add|C[20]~19_combout\) # (\B[20]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[20]~input_o\ & (\Add|C[20]~19_combout\ & (\B[20]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[20]~19_combout\,
	combout => \Add|C[21]~20_combout\);

-- Location: IOIBUF_X42_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X47_Y39_N18
\Add|C[22]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[22]~21_combout\ = (\Add|C[21]~20_combout\ & ((\A[21]~input_o\) # (\AddnSub~input_o\ $ (\B[21]~input_o\)))) # (!\Add|C[21]~20_combout\ & (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[21]~20_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|C[22]~21_combout\);

-- Location: LCCOMB_X46_Y37_N0
\Add|C[23]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[23]~22_combout\ = (\A[22]~input_o\ & ((\Add|C[22]~21_combout\) # (\B[22]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[22]~input_o\ & (\Add|C[22]~21_combout\ & (\B[22]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[22]~21_combout\,
	combout => \Add|C[23]~22_combout\);

-- Location: LCCOMB_X46_Y37_N26
\Add|C[24]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[24]~23_combout\ = (\A[23]~input_o\ & ((\Add|C[23]~22_combout\) # (\B[23]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[23]~input_o\ & (\Add|C[23]~22_combout\ & (\B[23]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[23]~22_combout\,
	combout => \Add|C[24]~23_combout\);

-- Location: LCCOMB_X52_Y37_N28
\Add|C[25]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[25]~24_combout\ = (\A[24]~input_o\ & ((\Add|C[24]~23_combout\) # (\AddnSub~input_o\ $ (\B[24]~input_o\)))) # (!\A[24]~input_o\ & (\Add|C[24]~23_combout\ & (\AddnSub~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \Add|C[24]~23_combout\,
	combout => \Add|C[25]~24_combout\);

-- Location: IOIBUF_X72_Y73_N1
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X56_Y40_N8
\Add|C[26]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[26]~25_combout\ = (\Add|C[25]~24_combout\ & ((\A[25]~input_o\) # (\AddnSub~input_o\ $ (\B[25]~input_o\)))) # (!\Add|C[25]~24_combout\ & (\A[25]~input_o\ & (\AddnSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[25]~24_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add|C[26]~25_combout\);

-- Location: IOIBUF_X0_Y47_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X56_Y40_N26
\Add|C[27]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[27]~26_combout\ = (\Add|C[26]~25_combout\ & ((\A[26]~input_o\) # (\AddnSub~input_o\ $ (\B[26]~input_o\)))) # (!\Add|C[26]~25_combout\ & (\A[26]~input_o\ & (\AddnSub~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[26]~25_combout\,
	datab => \A[26]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[26]~input_o\,
	combout => \Add|C[27]~26_combout\);

-- Location: IOIBUF_X20_Y73_N1
\B[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(27),
	o => \B[27]~input_o\);

-- Location: LCCOMB_X53_Y39_N10
\Add|C[28]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[28]~27_combout\ = (\A[27]~input_o\ & ((\Add|C[27]~26_combout\) # (\AddnSub~input_o\ $ (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\Add|C[27]~26_combout\ & (\AddnSub~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Add|C[27]~26_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[27]~input_o\,
	combout => \Add|C[28]~27_combout\);

-- Location: IOIBUF_X27_Y0_N22
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X53_Y37_N2
\Add|C[29]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[29]~28_combout\ = (\Add|C[28]~27_combout\ & ((\A[28]~input_o\) # (\B[28]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[28]~27_combout\ & (\A[28]~input_o\ & (\B[28]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Add|C[28]~27_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[28]~input_o\,
	combout => \Add|C[29]~28_combout\);

-- Location: LCCOMB_X52_Y41_N16
\Add|C[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[30]~29_combout\ = (\A[29]~input_o\ & ((\Add|C[29]~28_combout\) # (\B[29]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[29]~input_o\ & (\Add|C[29]~28_combout\ & (\B[29]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[29]~input_o\,
	datad => \Add|C[29]~28_combout\,
	combout => \Add|C[30]~29_combout\);

-- Location: LCCOMB_X52_Y41_N26
\Add|C[31]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[31]~30_combout\ = (\A[30]~input_o\ & ((\Add|C[30]~29_combout\) # (\B[30]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[30]~input_o\ & (\Add|C[30]~29_combout\ & (\B[30]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[30]~29_combout\,
	combout => \Add|C[31]~30_combout\);

-- Location: IOIBUF_X56_Y73_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: LCCOMB_X55_Y41_N24
\Add|C[32]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[32]~31_combout\ = (\A[31]~input_o\ & ((\Add|C[31]~30_combout\) # (\AddnSub~input_o\ $ (\B[31]~input_o\)))) # (!\A[31]~input_o\ & (\Add|C[31]~30_combout\ & (\AddnSub~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[31]~input_o\,
	datac => \Add|C[31]~30_combout\,
	datad => \B[31]~input_o\,
	combout => \Add|C[32]~31_combout\);

-- Location: IOIBUF_X56_Y73_N1
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: LCCOMB_X57_Y41_N8
\Add|C[33]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[33]~32_combout\ = (\Add|C[32]~31_combout\ & ((\A[32]~input_o\) # (\B[32]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[32]~31_combout\ & (\A[32]~input_o\ & (\B[32]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \Add|C[32]~31_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[32]~input_o\,
	combout => \Add|C[33]~32_combout\);

-- Location: IOIBUF_X115_Y47_N15
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X57_Y41_N10
\Add|C[34]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[34]~33_combout\ = (\Add|C[33]~32_combout\ & ((\A[33]~input_o\) # (\B[33]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[33]~32_combout\ & (\A[33]~input_o\ & (\B[33]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \Add|C[33]~32_combout\,
	datac => \A[33]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[34]~33_combout\);

-- Location: LCCOMB_X57_Y41_N20
\Add|C[35]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[35]~34_combout\ = (\A[34]~input_o\ & ((\Add|C[34]~33_combout\) # (\AddnSub~input_o\ $ (\B[34]~input_o\)))) # (!\A[34]~input_o\ & (\Add|C[34]~33_combout\ & (\AddnSub~input_o\ $ (\B[34]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \Add|C[34]~33_combout\,
	combout => \Add|C[35]~34_combout\);

-- Location: IOIBUF_X79_Y73_N1
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: LCCOMB_X57_Y41_N30
\Add|C[36]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[36]~35_combout\ = (\A[35]~input_o\ & ((\Add|C[35]~34_combout\) # (\AddnSub~input_o\ $ (\B[35]~input_o\)))) # (!\A[35]~input_o\ & (\Add|C[35]~34_combout\ & (\AddnSub~input_o\ $ (\B[35]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \Add|C[35]~34_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \Add|C[36]~35_combout\);

-- Location: IOIBUF_X58_Y73_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: LCCOMB_X58_Y40_N16
\Add|C[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[37]~36_combout\ = (\Add|C[36]~35_combout\ & ((\A[36]~input_o\) # (\AddnSub~input_o\ $ (\B[36]~input_o\)))) # (!\Add|C[36]~35_combout\ & (\A[36]~input_o\ & (\AddnSub~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[36]~35_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Add|C[37]~36_combout\);

-- Location: IOIBUF_X72_Y73_N8
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: LCCOMB_X58_Y40_N26
\Add|C[38]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[38]~37_combout\ = (\Add|C[37]~36_combout\ & ((\A[37]~input_o\) # (\AddnSub~input_o\ $ (\B[37]~input_o\)))) # (!\Add|C[37]~36_combout\ & (\A[37]~input_o\ & (\AddnSub~input_o\ $ (\B[37]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[37]~36_combout\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Add|C[38]~37_combout\);

-- Location: IOIBUF_X115_Y53_N15
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X56_Y40_N4
\Add|C[39]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[39]~38_combout\ = (\A[38]~input_o\ & ((\Add|C[38]~37_combout\) # (\AddnSub~input_o\ $ (\B[38]~input_o\)))) # (!\A[38]~input_o\ & (\Add|C[38]~37_combout\ & (\AddnSub~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \Add|C[38]~37_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \Add|C[39]~38_combout\);

-- Location: IOIBUF_X115_Y40_N8
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: LCCOMB_X63_Y37_N0
\Add|C[40]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[40]~39_combout\ = (\A[39]~input_o\ & ((\Add|C[39]~38_combout\) # (\AddnSub~input_o\ $ (\B[39]~input_o\)))) # (!\A[39]~input_o\ & (\Add|C[39]~38_combout\ & (\AddnSub~input_o\ $ (\B[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[39]~input_o\,
	datac => \Add|C[39]~38_combout\,
	datad => \B[39]~input_o\,
	combout => \Add|C[40]~39_combout\);

-- Location: LCCOMB_X63_Y37_N10
\Add|C[41]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[41]~40_combout\ = (\A[40]~input_o\ & ((\Add|C[40]~39_combout\) # (\AddnSub~input_o\ $ (\B[40]~input_o\)))) # (!\A[40]~input_o\ & (\Add|C[40]~39_combout\ & (\AddnSub~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	datad => \Add|C[40]~39_combout\,
	combout => \Add|C[41]~40_combout\);

-- Location: IOIBUF_X69_Y73_N1
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: IOIBUF_X83_Y73_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X63_Y37_N20
\Add|C[42]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[42]~41_combout\ = (\Add|C[41]~40_combout\ & ((\A[41]~input_o\) # (\B[41]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|C[41]~40_combout\ & (\A[41]~input_o\ & (\B[41]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[41]~40_combout\,
	datab => \B[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[41]~input_o\,
	combout => \Add|C[42]~41_combout\);

-- Location: LCCOMB_X63_Y37_N30
\Add|C[43]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[43]~42_combout\ = (\A[42]~input_o\ & ((\Add|C[42]~41_combout\) # (\AddnSub~input_o\ $ (\B[42]~input_o\)))) # (!\A[42]~input_o\ & (\Add|C[42]~41_combout\ & (\AddnSub~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[42]~input_o\,
	datad => \Add|C[42]~41_combout\,
	combout => \Add|C[43]~42_combout\);

-- Location: IOIBUF_X115_Y31_N8
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X115_Y36_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: LCCOMB_X62_Y34_N16
\Add|C[44]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[44]~43_combout\ = (\Add|C[43]~42_combout\ & ((\A[43]~input_o\) # (\AddnSub~input_o\ $ (\B[43]~input_o\)))) # (!\Add|C[43]~42_combout\ & (\A[43]~input_o\ & (\AddnSub~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[43]~42_combout\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Add|C[44]~43_combout\);

-- Location: IOIBUF_X115_Y29_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: IOIBUF_X115_Y34_N15
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X62_Y34_N10
\Add|C[45]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[45]~44_combout\ = (\Add|C[44]~43_combout\ & ((\A[44]~input_o\) # (\AddnSub~input_o\ $ (\B[44]~input_o\)))) # (!\Add|C[44]~43_combout\ & (\A[44]~input_o\ & (\AddnSub~input_o\ $ (\B[44]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[44]~43_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Add|C[45]~44_combout\);

-- Location: LCCOMB_X62_Y34_N28
\Add|C[46]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[46]~45_combout\ = (\A[45]~input_o\ & ((\Add|C[45]~44_combout\) # (\AddnSub~input_o\ $ (\B[45]~input_o\)))) # (!\A[45]~input_o\ & (\Add|C[45]~44_combout\ & (\AddnSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[45]~input_o\,
	datad => \Add|C[45]~44_combout\,
	combout => \Add|C[46]~45_combout\);

-- Location: LCCOMB_X62_Y34_N14
\Add|C[47]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[47]~46_combout\ = (\A[46]~input_o\ & ((\Add|C[46]~45_combout\) # (\AddnSub~input_o\ $ (\B[46]~input_o\)))) # (!\A[46]~input_o\ & (\Add|C[46]~45_combout\ & (\AddnSub~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[46]~input_o\,
	datad => \Add|C[46]~45_combout\,
	combout => \Add|C[47]~46_combout\);

-- Location: IOIBUF_X67_Y0_N1
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: LCCOMB_X60_Y34_N8
\Add|C[48]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[48]~47_combout\ = (\Add|C[47]~46_combout\ & ((\A[47]~input_o\) # (\AddnSub~input_o\ $ (\B[47]~input_o\)))) # (!\Add|C[47]~46_combout\ & (\A[47]~input_o\ & (\AddnSub~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[47]~46_combout\,
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \Add|C[48]~47_combout\);

-- Location: IOIBUF_X115_Y31_N1
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X60_Y34_N10
\Add|C[49]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[49]~48_combout\ = (\A[48]~input_o\ & ((\Add|C[48]~47_combout\) # (\AddnSub~input_o\ $ (\B[48]~input_o\)))) # (!\A[48]~input_o\ & (\Add|C[48]~47_combout\ & (\AddnSub~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \Add|C[48]~47_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|C[49]~48_combout\);

-- Location: IOIBUF_X56_Y0_N1
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\B[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(49),
	o => \B[49]~input_o\);

-- Location: LCCOMB_X60_Y34_N12
\Add|C[50]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[50]~49_combout\ = (\Add|C[49]~48_combout\ & ((\A[49]~input_o\) # (\AddnSub~input_o\ $ (\B[49]~input_o\)))) # (!\Add|C[49]~48_combout\ & (\A[49]~input_o\ & (\AddnSub~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[49]~48_combout\,
	datab => \A[49]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[49]~input_o\,
	combout => \Add|C[50]~49_combout\);

-- Location: LCCOMB_X60_Y34_N30
\Add|C[51]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[51]~50_combout\ = (\A[50]~input_o\ & ((\Add|C[50]~49_combout\) # (\AddnSub~input_o\ $ (\B[50]~input_o\)))) # (!\A[50]~input_o\ & (\Add|C[50]~49_combout\ & (\AddnSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[50]~input_o\,
	datad => \Add|C[50]~49_combout\,
	combout => \Add|C[51]~50_combout\);

-- Location: IOIBUF_X52_Y0_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X59_Y37_N0
\Add|C[52]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[52]~51_combout\ = (\Add|C[51]~50_combout\ & ((\A[51]~input_o\) # (\AddnSub~input_o\ $ (\B[51]~input_o\)))) # (!\Add|C[51]~50_combout\ & (\A[51]~input_o\ & (\AddnSub~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[51]~50_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Add|C[52]~51_combout\);

-- Location: IOIBUF_X74_Y73_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: LCCOMB_X59_Y37_N10
\Add|C[53]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[53]~52_combout\ = (\A[52]~input_o\ & ((\Add|C[52]~51_combout\) # (\AddnSub~input_o\ $ (\B[52]~input_o\)))) # (!\A[52]~input_o\ & (\Add|C[52]~51_combout\ & (\AddnSub~input_o\ $ (\B[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \Add|C[52]~51_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[52]~input_o\,
	combout => \Add|C[53]~52_combout\);

-- Location: IOIBUF_X60_Y0_N22
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X115_Y33_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X59_Y37_N12
\Add|C[54]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[54]~53_combout\ = (\Add|C[53]~52_combout\ & ((\A[53]~input_o\) # (\AddnSub~input_o\ $ (\B[53]~input_o\)))) # (!\Add|C[53]~52_combout\ & (\A[53]~input_o\ & (\AddnSub~input_o\ $ (\B[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[53]~52_combout\,
	datab => \A[53]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[53]~input_o\,
	combout => \Add|C[54]~53_combout\);

-- Location: IOIBUF_X72_Y0_N8
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: IOIBUF_X115_Y32_N1
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X62_Y37_N16
\Add|C[55]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[55]~54_combout\ = (\Add|C[54]~53_combout\ & ((\A[54]~input_o\) # (\AddnSub~input_o\ $ (\B[54]~input_o\)))) # (!\Add|C[54]~53_combout\ & (\A[54]~input_o\ & (\AddnSub~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[54]~53_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Add|C[55]~54_combout\);

-- Location: LCCOMB_X62_Y37_N2
\Add|C[56]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[56]~55_combout\ = (\A[55]~input_o\ & ((\Add|C[55]~54_combout\) # (\AddnSub~input_o\ $ (\B[55]~input_o\)))) # (!\A[55]~input_o\ & (\Add|C[55]~54_combout\ & (\AddnSub~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \Add|C[55]~54_combout\,
	combout => \Add|C[56]~55_combout\);

-- Location: IOIBUF_X65_Y0_N1
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X62_Y37_N12
\Add|C[57]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[57]~56_combout\ = (\A[56]~input_o\ & ((\Add|C[56]~55_combout\) # (\B[56]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[56]~input_o\ & (\Add|C[56]~55_combout\ & (\B[56]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \Add|C[56]~55_combout\,
	datac => \B[56]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[57]~56_combout\);

-- Location: IOIBUF_X115_Y34_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X63_Y34_N8
\Add|C[58]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[58]~57_combout\ = (\Add|C[57]~56_combout\ & ((\A[57]~input_o\) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\Add|C[57]~56_combout\ & (\A[57]~input_o\ & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[57]~56_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Add|C[58]~57_combout\);

-- Location: IOIBUF_X115_Y36_N8
\B[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(58),
	o => \B[58]~input_o\);

-- Location: LCCOMB_X63_Y34_N26
\Add|C[59]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[59]~58_combout\ = (\A[58]~input_o\ & ((\Add|C[58]~57_combout\) # (\AddnSub~input_o\ $ (\B[58]~input_o\)))) # (!\A[58]~input_o\ & (\Add|C[58]~57_combout\ & (\AddnSub~input_o\ $ (\B[58]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[58]~57_combout\,
	datad => \B[58]~input_o\,
	combout => \Add|C[59]~58_combout\);

-- Location: IOIBUF_X115_Y27_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X63_Y34_N28
\Add|C[60]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[60]~59_combout\ = (\Add|C[59]~58_combout\ & ((\A[59]~input_o\) # (\AddnSub~input_o\ $ (\B[59]~input_o\)))) # (!\Add|C[59]~58_combout\ & (\A[59]~input_o\ & (\AddnSub~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[59]~58_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Add|C[60]~59_combout\);

-- Location: LCCOMB_X59_Y39_N8
\Add|C[61]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[61]~60_combout\ = (\A[60]~input_o\ & ((\Add|C[60]~59_combout\) # (\B[60]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[60]~input_o\ & (\Add|C[60]~59_combout\ & (\B[60]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datac => \Add|C[60]~59_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[61]~60_combout\);

-- Location: LCCOMB_X59_Y39_N2
\Add|C[62]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[62]~61_combout\ = (\A[61]~input_o\ & ((\Add|C[61]~60_combout\) # (\B[61]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[61]~input_o\ & (\Add|C[61]~60_combout\ & (\B[61]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[61]~input_o\,
	datac => \Add|C[61]~60_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|C[62]~61_combout\);

-- Location: LCCOMB_X59_Y39_N28
\Add|C[63]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|C[63]~62_combout\ = (\A[62]~input_o\ & ((\Add|C[62]~61_combout\) # (\AddnSub~input_o\ $ (\B[62]~input_o\)))) # (!\A[62]~input_o\ & (\Add|C[62]~61_combout\ & (\AddnSub~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[62]~input_o\,
	datac => \A[62]~input_o\,
	datad => \Add|C[62]~61_combout\,
	combout => \Add|C[63]~62_combout\);

-- Location: LCCOMB_X48_Y37_N6
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\A[63]~input_o\ & ((\Add|C[63]~62_combout\) # (\AddnSub~input_o\ $ (\B[63]~input_o\)))) # (!\A[63]~input_o\ & (\Add|C[63]~62_combout\ & (\AddnSub~input_o\ $ (\B[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \Add|C[63]~62_combout\,
	combout => \Add|Cout~0_combout\);

-- Location: IOIBUF_X0_Y35_N15
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: LCCOMB_X49_Y40_N0
\Shift|ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~36_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ShiftRight0~36_combout\);

-- Location: LCCOMB_X48_Y40_N12
\Shift|ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~35_combout\ = (\B[1]~input_o\ & (\A[23]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[23]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftRight0~35_combout\);

-- Location: LCCOMB_X49_Y40_N2
\Shift|ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~37_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~35_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~36_combout\,
	datad => \Shift|ShiftRight0~35_combout\,
	combout => \Shift|ShiftRight0~37_combout\);

-- Location: LCCOMB_X49_Y40_N28
\Shift|ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~38_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|ShiftRight0~38_combout\);

-- Location: LCCOMB_X50_Y40_N16
\Shift|ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~39_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~39_combout\);

-- Location: LCCOMB_X50_Y40_N18
\Shift|ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~40_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~38_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~38_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~39_combout\,
	combout => \Shift|ShiftRight0~40_combout\);

-- Location: LCCOMB_X50_Y40_N4
\Shift|ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~41_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~37_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~37_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~40_combout\,
	combout => \Shift|ShiftRight0~41_combout\);

-- Location: LCCOMB_X48_Y40_N8
\Shift|ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~32_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Shift|ShiftRight0~32_combout\);

-- Location: LCCOMB_X49_Y38_N6
\Shift|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~31_combout\ = (\B[1]~input_o\ & (\A[27]~input_o\)) # (!\B[1]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Shift|ShiftRight0~31_combout\);

-- Location: LCCOMB_X48_Y40_N26
\Shift|ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~33_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~31_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~32_combout\,
	datad => \Shift|ShiftRight0~31_combout\,
	combout => \Shift|ShiftRight0~33_combout\);

-- Location: LCCOMB_X53_Y41_N18
\Shift|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~29_combout\ = (\B[1]~input_o\ & (\A[30]~input_o\)) # (!\B[1]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Shift|ShiftRight0~29_combout\);

-- Location: LCCOMB_X53_Y41_N24
\Shift|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~28_combout\ = (\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftRight0~28_combout\);

-- Location: LCCOMB_X53_Y41_N28
\Shift|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~30_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~28_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~29_combout\,
	datad => \Shift|ShiftRight0~28_combout\,
	combout => \Shift|ShiftRight0~30_combout\);

-- Location: LCCOMB_X54_Y37_N18
\Shift|ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~34_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~30_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~33_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~30_combout\,
	combout => \Shift|ShiftRight0~34_combout\);

-- Location: LCCOMB_X56_Y37_N8
\Shift|ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~42_combout\ = (\Shift|ShiftRight0~34_combout\) # ((\Shift|ShiftRight0~41_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~41_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~34_combout\,
	combout => \Shift|ShiftRight0~42_combout\);

-- Location: LCCOMB_X52_Y34_N10
\Shift|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~18_combout\ = (\B[1]~input_o\ & (\A[50]~input_o\)) # (!\B[1]~input_o\ & ((\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[50]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Shift|ShiftRight0~18_combout\);

-- Location: LCCOMB_X52_Y34_N16
\Shift|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~17_combout\ = (\B[1]~input_o\ & (\A[51]~input_o\)) # (!\B[1]~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Shift|ShiftRight0~17_combout\);

-- Location: LCCOMB_X52_Y34_N28
\Shift|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~19_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~17_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~18_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~17_combout\,
	combout => \Shift|ShiftRight0~19_combout\);

-- Location: LCCOMB_X55_Y34_N26
\Shift|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~15_combout\ = (\B[1]~input_o\ & ((\A[54]~input_o\))) # (!\B[1]~input_o\ & (\A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~15_combout\);

-- Location: LCCOMB_X55_Y34_N16
\Shift|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~14_combout\ = (\B[1]~input_o\ & (\A[55]~input_o\)) # (!\B[1]~input_o\ & ((\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[55]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Shift|ShiftRight0~14_combout\);

-- Location: LCCOMB_X55_Y34_N12
\Shift|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~16_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~14_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~15_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~14_combout\,
	combout => \Shift|ShiftRight0~16_combout\);

-- Location: LCCOMB_X54_Y37_N24
\Shift|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~20_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~16_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~19_combout\,
	datac => \Shift|ShiftRight0~16_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~20_combout\);

-- Location: LCCOMB_X58_Y34_N0
\Shift|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~21_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[61]~input_o\)) # (!\B[0]~input_o\ & ((\A[60]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shift|ShiftRight0~21_combout\);

-- Location: LCCOMB_X59_Y35_N10
\Shift|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~8_combout\ = (\B[0]~input_o\ & ((\A[63]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[62]~input_o\,
	datac => \A[63]~input_o\,
	combout => \Shift|ShiftRight1~8_combout\);

-- Location: LCCOMB_X58_Y36_N0
\Shift|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~22_combout\ = (\Shift|ShiftRight0~21_combout\) # ((\Shift|ShiftRight1~8_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~21_combout\,
	datab => \Shift|ShiftRight1~8_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~22_combout\);

-- Location: LCCOMB_X58_Y34_N4
\Shift|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~24_combout\ = (\B[1]~input_o\ & ((\A[58]~input_o\))) # (!\B[1]~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|ShiftRight0~24_combout\);

-- Location: LCCOMB_X58_Y34_N10
\Shift|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~23_combout\ = (\B[1]~input_o\ & ((\A[59]~input_o\))) # (!\B[1]~input_o\ & (\A[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~23_combout\);

-- Location: LCCOMB_X58_Y34_N6
\Shift|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~25_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~23_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~24_combout\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Shift|ShiftRight0~25_combout\);

-- Location: LCCOMB_X57_Y37_N8
\Shift|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~26_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~22_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~22_combout\,
	datad => \Shift|ShiftRight0~25_combout\,
	combout => \Shift|ShiftRight0~26_combout\);

-- Location: LCCOMB_X57_Y37_N26
\Shift|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~27_combout\ = (\Shift|ShiftRight0~20_combout\) # ((\Shift|ShiftRight0~26_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~20_combout\,
	datac => \Shift|ShiftRight0~26_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~27_combout\);

-- Location: LCCOMB_X48_Y37_N22
\Shift|ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~43_combout\ = (\B[4]~input_o\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~27_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~42_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~27_combout\,
	combout => \Shift|ShiftRight0~43_combout\);

-- Location: IOIBUF_X49_Y0_N22
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: LCCOMB_X47_Y37_N24
\Shift|ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~46_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

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
	combout => \Shift|ShiftRight0~46_combout\);

-- Location: LCCOMB_X47_Y37_N10
\Shift|ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~10_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[4]~input_o\,
	datac => \A[5]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~10_combout\);

-- Location: LCCOMB_X47_Y37_N20
\Shift|ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~47_combout\ = (\Shift|ShiftRight0~46_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftRight1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~46_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight1~10_combout\,
	combout => \Shift|ShiftRight0~47_combout\);

-- Location: LCCOMB_X49_Y37_N8
\Shift|ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~9_combout\ = (\B[0]~input_o\ & ((\A[3]~input_o\))) # (!\B[0]~input_o\ & (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[2]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ShiftRight1~9_combout\);

-- Location: LCCOMB_X49_Y38_N8
\Shift|ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~44_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[1]~input_o\)) # (!\B[0]~input_o\ & ((\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~44_combout\);

-- Location: LCCOMB_X50_Y37_N24
\Shift|ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~45_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~44_combout\) # ((\B[1]~input_o\ & \Shift|ShiftRight1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight1~9_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~44_combout\,
	combout => \Shift|ShiftRight0~45_combout\);

-- Location: LCCOMB_X50_Y37_N26
\Shift|ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~48_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftRight0~45_combout\) # ((\Shift|ShiftRight0~47_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~47_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~45_combout\,
	combout => \Shift|ShiftRight0~48_combout\);

-- Location: LCCOMB_X47_Y36_N16
\Shift|ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~52_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftRight0~52_combout\);

-- Location: LCCOMB_X47_Y36_N18
\Shift|ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~53_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~53_combout\);

-- Location: LCCOMB_X50_Y37_N12
\Shift|ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~54_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~52_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~52_combout\,
	datad => \Shift|ShiftRight0~53_combout\,
	combout => \Shift|ShiftRight0~54_combout\);

-- Location: LCCOMB_X54_Y39_N22
\Shift|ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~50_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftRight0~50_combout\);

-- Location: LCCOMB_X54_Y39_N28
\Shift|ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~49_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftRight0~49_combout\);

-- Location: LCCOMB_X54_Y39_N8
\Shift|ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~51_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~49_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~50_combout\,
	datab => \Shift|ShiftRight0~49_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~51_combout\);

-- Location: LCCOMB_X50_Y37_N22
\Shift|ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~55_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~51_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~54_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~51_combout\,
	combout => \Shift|ShiftRight0~55_combout\);

-- Location: LCCOMB_X56_Y37_N18
\Shift|ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~56_combout\ = (!\B[5]~input_o\ & ((\Shift|ShiftRight0~48_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~48_combout\,
	datab => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~55_combout\,
	combout => \Shift|ShiftRight0~56_combout\);

-- Location: LCCOMB_X57_Y40_N10
\Shift|ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~68_combout\ = (\B[1]~input_o\ & ((\A[34]~input_o\))) # (!\B[1]~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Shift|ShiftRight0~68_combout\);

-- Location: LCCOMB_X57_Y40_N24
\Shift|ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~67_combout\ = (\B[1]~input_o\ & (\A[35]~input_o\)) # (!\B[1]~input_o\ & ((\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ShiftRight0~67_combout\);

-- Location: LCCOMB_X57_Y40_N4
\Shift|ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~69_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~67_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~68_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~67_combout\,
	combout => \Shift|ShiftRight0~69_combout\);

-- Location: LCCOMB_X59_Y38_N8
\Shift|ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~64_combout\ = (\B[1]~input_o\ & ((\A[43]~input_o\))) # (!\B[1]~input_o\ & (\A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Shift|ShiftRight0~64_combout\);

-- Location: LCCOMB_X59_Y38_N10
\Shift|ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~65_combout\ = (\B[1]~input_o\ & (\A[42]~input_o\)) # (!\B[1]~input_o\ & ((\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[42]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Shift|ShiftRight0~65_combout\);

-- Location: LCCOMB_X59_Y38_N20
\Shift|ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~66_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~64_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~64_combout\,
	datad => \Shift|ShiftRight0~65_combout\,
	combout => \Shift|ShiftRight0~66_combout\);

-- Location: LCCOMB_X54_Y37_N6
\Shift|ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~70_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~66_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~69_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~66_combout\,
	combout => \Shift|ShiftRight0~70_combout\);

-- Location: LCCOMB_X57_Y34_N26
\Shift|ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~58_combout\ = (\B[1]~input_o\ & ((\A[46]~input_o\))) # (!\B[1]~input_o\ & (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[44]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Shift|ShiftRight0~58_combout\);

-- Location: LCCOMB_X57_Y34_N8
\Shift|ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~57_combout\ = (\B[1]~input_o\ & (\A[47]~input_o\)) # (!\B[1]~input_o\ & ((\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[47]~input_o\,
	datac => \A[45]~input_o\,
	combout => \Shift|ShiftRight0~57_combout\);

-- Location: LCCOMB_X57_Y34_N4
\Shift|ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~59_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~57_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~58_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~57_combout\,
	combout => \Shift|ShiftRight0~59_combout\);

-- Location: LCCOMB_X60_Y38_N26
\Shift|ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~61_combout\ = (\B[1]~input_o\ & (\A[38]~input_o\)) # (!\B[1]~input_o\ & ((\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \A[36]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight0~61_combout\);

-- Location: LCCOMB_X60_Y38_N0
\Shift|ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~60_combout\ = (\B[1]~input_o\ & ((\A[39]~input_o\))) # (!\B[1]~input_o\ & (\A[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	combout => \Shift|ShiftRight0~60_combout\);

-- Location: LCCOMB_X60_Y38_N20
\Shift|ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~62_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~60_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~61_combout\,
	datad => \Shift|ShiftRight0~60_combout\,
	combout => \Shift|ShiftRight0~62_combout\);

-- Location: LCCOMB_X54_Y37_N12
\Shift|ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~63_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~59_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~59_combout\,
	datac => \Shift|ShiftRight0~62_combout\,
	combout => \Shift|ShiftRight0~63_combout\);

-- Location: LCCOMB_X54_Y37_N8
\Shift|ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~71_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~63_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~70_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~63_combout\,
	combout => \Shift|ShiftRight0~71_combout\);

-- Location: LCCOMB_X48_Y37_N8
\Shift|ShiftRight0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~72_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~56_combout\) # ((\B[5]~input_o\ & \Shift|ShiftRight0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~56_combout\,
	datab => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~71_combout\,
	combout => \Shift|ShiftRight0~72_combout\);

-- Location: LCCOMB_X59_Y35_N0
\Shift|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~20_combout\ = (\B[2]~input_o\) # ((\B[0]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X55_Y35_N0
\Shift|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~21_combout\ = (\B[3]~input_o\) # ((\B[4]~input_o\) # (\Shift|ShiftLeft0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~20_combout\,
	combout => \Shift|ShiftLeft0~21_combout\);

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

-- Location: LCCOMB_X52_Y36_N8
\Y_ShiftOrArith[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~1_combout\ = (\ShiftFN[0]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[0]~1_combout\);

-- Location: LCCOMB_X48_Y37_N18
\Y_ShiftOrArith[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~0_combout\ = (!\ShiftFN[0]~input_o\ & (\B[0]~input_o\ $ (\A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~0_combout\);

-- Location: LCCOMB_X48_Y37_N12
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (\Y_ShiftOrArith[0]~0_combout\) # ((\A[0]~input_o\ & (!\Shift|ShiftLeft0~21_combout\ & \Y_ShiftOrArith[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \Shift|ShiftLeft0~21_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Y_ShiftOrArith[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: LCCOMB_X48_Y37_N26
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight0~43_combout\) # ((\Shift|ShiftRight0~72_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~43_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Shift|ShiftRight0~72_combout\,
	datad => \Y_ShiftOrArith[0]~2_combout\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: IOIBUF_X38_Y73_N15
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: LCCOMB_X48_Y37_N16
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\A[63]~input_o\ & (\Add|C[63]~62_combout\ & (\AddnSub~input_o\ $ (!\B[63]~input_o\)))) # (!\A[63]~input_o\ & ((\Add|C[63]~62_combout\) # (\AddnSub~input_o\ $ (!\B[63]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \Add|C[63]~62_combout\,
	combout => \AltB~0_combout\);

-- Location: LCCOMB_X48_Y37_N4
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\FuncClass[0]~input_o\ & (((\FuncClass[1]~input_o\)))) # (!\FuncClass[0]~input_o\ & ((\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) # (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \AltB~0_combout\,
	combout => \Mux63~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LCCOMB_X52_Y37_N16
\Logic|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux63~0_combout\ = (\B[0]~input_o\ & (\LogicFN[1]~input_o\ $ (((\LogicFN[0]~input_o\ & !\A[0]~input_o\))))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Logic|Mux63~0_combout\);

-- Location: LCCOMB_X48_Y37_N0
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\FuncClass[0]~input_o\ & ((\Mux63~0_combout\ & (!\Add|Cout~0_combout\)) # (!\Mux63~0_combout\ & ((\Logic|Mux63~0_combout\))))) # (!\FuncClass[0]~input_o\ & (((\Mux63~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|Cout~0_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux63~0_combout\,
	datad => \Logic|Mux63~0_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X49_Y38_N10
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (\A[1]~input_o\ & (\LogicFN[1]~input_o\ $ (((!\B[1]~input_o\ & \LogicFN[0]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\LogicFN[0]~input_o\ $ (\LogicFN[1]~input_o\))))

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
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X59_Y38_N30
\Shift|ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~21_combout\ = (\B[1]~input_o\ & (\A[44]~input_o\)) # (!\B[1]~input_o\ & ((\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[44]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Shift|ShiftRight1~21_combout\);

-- Location: LCCOMB_X59_Y38_N24
\Shift|ShiftRight0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~92_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~21_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~64_combout\,
	datac => \Shift|ShiftRight1~21_combout\,
	combout => \Shift|ShiftRight0~92_combout\);

-- Location: LCCOMB_X58_Y40_N28
\Shift|ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~22_combout\ = (\B[1]~input_o\ & ((\A[36]~input_o\))) # (!\B[1]~input_o\ & (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Shift|ShiftRight1~22_combout\);

-- Location: LCCOMB_X57_Y40_N14
\Shift|ShiftRight0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~93_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~22_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~67_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~22_combout\,
	combout => \Shift|ShiftRight0~93_combout\);

-- Location: LCCOMB_X57_Y38_N24
\Shift|ShiftRight0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~94_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~92_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~92_combout\,
	datab => \Shift|ShiftRight0~93_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~94_combout\);

-- Location: LCCOMB_X52_Y34_N30
\Shift|ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~19_combout\ = (\B[1]~input_o\ & ((\A[48]~input_o\))) # (!\B[1]~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Shift|ShiftRight1~19_combout\);

-- Location: LCCOMB_X57_Y34_N22
\Shift|ShiftRight0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~89_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~19_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~19_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~57_combout\,
	combout => \Shift|ShiftRight0~89_combout\);

-- Location: LCCOMB_X60_Y38_N14
\Shift|ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~20_combout\ = (\B[1]~input_o\ & ((\A[40]~input_o\))) # (!\B[1]~input_o\ & (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~20_combout\);

-- Location: LCCOMB_X60_Y38_N16
\Shift|ShiftRight0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~90_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~20_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~20_combout\,
	datad => \Shift|ShiftRight0~60_combout\,
	combout => \Shift|ShiftRight0~90_combout\);

-- Location: LCCOMB_X58_Y35_N16
\Shift|ShiftRight0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~91_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~89_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~89_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~90_combout\,
	combout => \Shift|ShiftRight0~91_combout\);

-- Location: LCCOMB_X57_Y38_N2
\Shift|ShiftRight0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~95_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~91_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~94_combout\,
	datad => \Shift|ShiftRight0~91_combout\,
	combout => \Shift|ShiftRight0~95_combout\);

-- Location: LCCOMB_X55_Y34_N6
\Shift|ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~24_combout\ = (\B[1]~input_o\ & ((\A[52]~input_o\))) # (!\B[1]~input_o\ & (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[50]~input_o\,
	datac => \A[52]~input_o\,
	combout => \Shift|ShiftRight1~24_combout\);

-- Location: LCCOMB_X55_Y34_N8
\Shift|ShiftRight0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~97_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~24_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~17_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~24_combout\,
	combout => \Shift|ShiftRight0~97_combout\);

-- Location: LCCOMB_X58_Y34_N24
\Shift|ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~23_combout\ = (\B[1]~input_o\ & (\A[56]~input_o\)) # (!\B[1]~input_o\ & ((\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[56]~input_o\,
	datac => \A[54]~input_o\,
	combout => \Shift|ShiftRight1~23_combout\);

-- Location: LCCOMB_X58_Y34_N2
\Shift|ShiftRight0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~96_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~23_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~14_combout\,
	datad => \Shift|ShiftRight1~23_combout\,
	combout => \Shift|ShiftRight0~96_combout\);

-- Location: LCCOMB_X58_Y35_N26
\Shift|ShiftRight0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~98_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~96_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~97_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~96_combout\,
	combout => \Shift|ShiftRight0~98_combout\);

-- Location: LCCOMB_X59_Y35_N12
\Shift|ShiftRight1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~25_combout\ = (\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[62]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shift|ShiftRight1~25_combout\);

-- Location: LCCOMB_X59_Y35_N24
\Shift|ShiftRight1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~27_combout\ = (\B[2]~input_o\ & ((\B[1]~input_o\ & (\A[63]~input_o\)) # (!\B[1]~input_o\ & ((\Shift|ShiftRight1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~25_combout\,
	combout => \Shift|ShiftRight1~27_combout\);

-- Location: LCCOMB_X58_Y34_N12
\Shift|ShiftRight1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~26_combout\ = (\B[1]~input_o\ & ((\A[60]~input_o\))) # (!\B[1]~input_o\ & (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[58]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shift|ShiftRight1~26_combout\);

-- Location: LCCOMB_X58_Y34_N30
\Shift|ShiftRight0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~100_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~26_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~26_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~23_combout\,
	combout => \Shift|ShiftRight0~100_combout\);

-- Location: LCCOMB_X58_Y35_N6
\Shift|ShiftRight1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~28_combout\ = (\Shift|ShiftRight1~27_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~27_combout\,
	datad => \Shift|ShiftRight0~100_combout\,
	combout => \Shift|ShiftRight1~28_combout\);

-- Location: LCCOMB_X57_Y35_N24
\Shift|ShiftRight1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~29_combout\ = (\Shift|ShiftRight0~98_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~98_combout\,
	datad => \Shift|ShiftRight1~28_combout\,
	combout => \Shift|ShiftRight1~29_combout\);

-- Location: LCCOMB_X56_Y35_N12
\Shift|ShiftRight1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~30_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~29_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~95_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~29_combout\,
	combout => \Shift|ShiftRight1~30_combout\);

-- Location: LCCOMB_X49_Y38_N26
\Shift|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~22_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X56_Y34_N16
\Shift|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~23_combout\ = (\B[2]~input_o\) # ((\B[3]~input_o\) # (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X56_Y35_N30
\Shift|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~24_combout\ = (\Shift|ShiftLeft0~22_combout\ & (!\B[4]~input_o\ & (!\B[5]~input_o\ & !\Shift|ShiftLeft0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~22_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftLeft0~23_combout\,
	combout => \Shift|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X49_Y38_N16
\Add|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(1) = \A[1]~input_o\ $ (\AddnSub~input_o\ $ (\B[1]~input_o\ $ (\Add|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[1]~input_o\,
	datad => \Add|C[1]~0_combout\,
	combout => \Add|S\(1));

-- Location: LCCOMB_X56_Y35_N0
\Y_ShiftOrArith[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~5_combout\ = (\ShiftFN[0]~input_o\ & ((\ShiftFN[1]~input_o\) # ((\Shift|ShiftLeft0~24_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((\Add|S\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Shift|ShiftLeft0~24_combout\,
	datad => \Add|S\(1),
	combout => \Y_ShiftOrArith[1]~5_combout\);

-- Location: LCCOMB_X59_Y35_N6
\Shift|ShiftRight0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~99_combout\ = (\B[1]~input_o\ & (\A[63]~input_o\ & (!\B[0]~input_o\))) # (!\B[1]~input_o\ & (((\Shift|ShiftRight1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~25_combout\,
	combout => \Shift|ShiftRight0~99_combout\);

-- Location: LCCOMB_X58_Y35_N4
\Shift|ShiftRight0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~101_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~99_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~100_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~99_combout\,
	combout => \Shift|ShiftRight0~101_combout\);

-- Location: LCCOMB_X56_Y35_N10
\Shift|ShiftRight0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~102_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~101_combout\) # ((\Shift|ShiftRight0~98_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~101_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~98_combout\,
	datad => \Shift|ShiftRight0~95_combout\,
	combout => \Shift|ShiftRight0~102_combout\);

-- Location: LCCOMB_X56_Y35_N26
\Y_ShiftOrArith[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~6_combout\ = (\Y_ShiftOrArith[1]~5_combout\ & ((\Shift|ShiftRight1~30_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Y_ShiftOrArith[1]~5_combout\ & (((\ShiftFN[1]~input_o\ & \Shift|ShiftRight0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~30_combout\,
	datab => \Y_ShiftOrArith[1]~5_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight0~102_combout\,
	combout => \Y_ShiftOrArith[1]~6_combout\);

-- Location: LCCOMB_X47_Y36_N20
\Shift|ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~14_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftRight1~14_combout\);

-- Location: LCCOMB_X47_Y36_N30
\Shift|ShiftRight0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~79_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~14_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~52_combout\,
	datab => \Shift|ShiftRight1~14_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~79_combout\);

-- Location: LCCOMB_X50_Y40_N6
\Shift|ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~13_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~13_combout\);

-- Location: LCCOMB_X54_Y39_N26
\Shift|ShiftRight0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~78_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~13_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~13_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~49_combout\,
	combout => \Shift|ShiftRight0~78_combout\);

-- Location: LCCOMB_X57_Y38_N0
\Shift|ShiftRight0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~80_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~78_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~79_combout\,
	datac => \Shift|ShiftRight0~78_combout\,
	combout => \Shift|ShiftRight0~80_combout\);

-- Location: LCCOMB_X45_Y37_N24
\Shift|ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~11_combout\ = (\B[0]~input_o\ & (\A[4]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \A[3]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~11_combout\);

-- Location: LCCOMB_X49_Y38_N20
\Shift|ShiftRight0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~73_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight0~73_combout\);

-- Location: LCCOMB_X45_Y37_N26
\Shift|ShiftRight0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~74_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~73_combout\) # ((\Shift|ShiftRight1~11_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~11_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight0~73_combout\,
	combout => \Shift|ShiftRight0~74_combout\);

-- Location: LCCOMB_X47_Y37_N6
\Shift|ShiftRight0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~75_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

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
	combout => \Shift|ShiftRight0~75_combout\);

-- Location: LCCOMB_X47_Y37_N0
\Shift|ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~12_combout\ = (\B[0]~input_o\ & ((\A[6]~input_o\))) # (!\B[0]~input_o\ & (\A[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[5]~input_o\,
	datac => \A[6]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~12_combout\);

-- Location: LCCOMB_X47_Y37_N18
\Shift|ShiftRight0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~76_combout\ = (\Shift|ShiftRight0~75_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~75_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight1~12_combout\,
	combout => \Shift|ShiftRight0~76_combout\);

-- Location: LCCOMB_X50_Y37_N0
\Shift|ShiftRight0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~77_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftRight0~74_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~74_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~76_combout\,
	combout => \Shift|ShiftRight0~77_combout\);

-- Location: LCCOMB_X50_Y37_N10
\Shift|ShiftRight0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~81_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~77_combout\) # ((\Shift|ShiftRight0~80_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~80_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~77_combout\,
	combout => \Shift|ShiftRight0~81_combout\);

-- Location: LCCOMB_X48_Y40_N22
\Shift|ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~17_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[22]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Shift|ShiftRight1~17_combout\);

-- Location: LCCOMB_X48_Y40_N16
\Shift|ShiftRight0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~85_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~17_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~17_combout\,
	datad => \Shift|ShiftRight0~35_combout\,
	combout => \Shift|ShiftRight0~85_combout\);

-- Location: LCCOMB_X49_Y40_N6
\Shift|ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~18_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[20]~input_o\,
	datac => \A[18]~input_o\,
	combout => \Shift|ShiftRight1~18_combout\);

-- Location: LCCOMB_X49_Y40_N16
\Shift|ShiftRight0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~86_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~18_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~38_combout\,
	datad => \Shift|ShiftRight1~18_combout\,
	combout => \Shift|ShiftRight0~86_combout\);

-- Location: LCCOMB_X57_Y38_N20
\Shift|ShiftRight0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~87_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~85_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~85_combout\,
	datad => \Shift|ShiftRight0~86_combout\,
	combout => \Shift|ShiftRight0~87_combout\);

-- Location: LCCOMB_X53_Y41_N30
\Shift|ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~15_combout\ = (\B[1]~input_o\ & ((\A[32]~input_o\))) # (!\B[1]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Shift|ShiftRight1~15_combout\);

-- Location: LCCOMB_X53_Y41_N0
\Shift|ShiftRight0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~82_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~15_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~28_combout\,
	datac => \Shift|ShiftRight1~15_combout\,
	combout => \Shift|ShiftRight0~82_combout\);

-- Location: LCCOMB_X53_Y41_N26
\Shift|ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~16_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Shift|ShiftRight1~16_combout\);

-- Location: LCCOMB_X49_Y38_N30
\Shift|ShiftRight0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~83_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~16_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight0~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~31_combout\,
	datad => \Shift|ShiftRight1~16_combout\,
	combout => \Shift|ShiftRight0~83_combout\);

-- Location: LCCOMB_X57_Y38_N10
\Shift|ShiftRight0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~84_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~82_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~82_combout\,
	datad => \Shift|ShiftRight0~83_combout\,
	combout => \Shift|ShiftRight0~84_combout\);

-- Location: LCCOMB_X57_Y38_N6
\Shift|ShiftRight0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~88_combout\ = (\Shift|ShiftRight0~84_combout\) # ((\Shift|ShiftRight0~87_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~87_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~84_combout\,
	combout => \Shift|ShiftRight0~88_combout\);

-- Location: LCCOMB_X56_Y35_N16
\Y_ShiftOrArith[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~4_combout\ = (\Shift|ShiftRight0~81_combout\) # ((\B[4]~input_o\ & \Shift|ShiftRight0~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~81_combout\,
	datad => \Shift|ShiftRight0~88_combout\,
	combout => \Y_ShiftOrArith[1]~4_combout\);

-- Location: LCCOMB_X56_Y35_N28
\Y_ShiftOrArith[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~7_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\ & (\Y_ShiftOrArith[1]~6_combout\)) # (!\B[5]~input_o\ & ((\Y_ShiftOrArith[1]~4_combout\))))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~6_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Y_ShiftOrArith[1]~4_combout\,
	combout => \Y_ShiftOrArith[1]~7_combout\);

-- Location: LCCOMB_X56_Y35_N22
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux62~0_combout\)) # (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux62~0_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Y_ShiftOrArith[1]~7_combout\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X50_Y35_N8
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\FuncClass[0]~input_o\) # (\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X49_Y38_N24
\Shift|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~25_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[0]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X49_Y38_N2
\Shift|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~26_combout\ = (\Shift|ShiftLeft0~25_combout\) # ((\B[0]~input_o\ & (!\B[1]~input_o\ & \A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[1]~input_o\,
	datad => \Shift|ShiftLeft0~25_combout\,
	combout => \Shift|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X55_Y40_N22
\Shift|ShiftLeft0~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~285_combout\ = (!\B[2]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftLeft0~26_combout\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~26_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~285_combout\);

-- Location: LCCOMB_X49_Y38_N28
\Logic|xor_result[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[2]~0_combout\ = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Logic|xor_result[2]~0_combout\);

-- Location: LCCOMB_X49_Y38_N22
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (!\ShiftFN[0]~input_o\ & (\Add|C[2]~1_combout\ $ (\AddnSub~input_o\ $ (\Logic|xor_result[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Add|C[2]~1_combout\,
	datac => \AddnSub~input_o\,
	datad => \Logic|xor_result[2]~0_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X55_Y40_N24
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (!\Mux60~0_combout\ & ((\Mux61~0_combout\) # ((\Shift|ShiftLeft0~285_combout\ & \Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~285_combout\,
	datab => \Mux60~0_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Mux61~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X55_Y41_N30
\Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = (\FuncClass[0]~input_o\ & \LogicFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux60~5_combout\);

-- Location: LCCOMB_X55_Y41_N4
\Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = (\FuncClass[0]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux60~4_combout\);

-- Location: LCCOMB_X55_Y41_N2
\Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (!\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux60~3_combout\);

-- Location: LCCOMB_X53_Y36_N16
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\B[5]~input_o\ & ((\ShiftFN[0]~input_o\))) # (!\B[5]~input_o\ & (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X47_Y36_N2
\Shift|ShiftRight1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~58_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~58_combout\);

-- Location: LCCOMB_X47_Y36_N28
\Shift|ShiftRight1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~59_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~58_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~14_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~58_combout\,
	combout => \Shift|ShiftRight1~59_combout\);

-- Location: LCCOMB_X50_Y40_N0
\Shift|ShiftRight1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~56_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftRight1~56_combout\);

-- Location: LCCOMB_X50_Y40_N2
\Shift|ShiftRight1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~57_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~56_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~56_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~13_combout\,
	combout => \Shift|ShiftRight1~57_combout\);

-- Location: LCCOMB_X53_Y40_N26
\Shift|ShiftRight0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~113_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~57_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~59_combout\,
	datad => \Shift|ShiftRight1~57_combout\,
	combout => \Shift|ShiftRight0~113_combout\);

-- Location: LCCOMB_X50_Y39_N16
\Shift|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~27_combout\ = (\B[2]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X56_Y34_N26
\Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = (\B[3]~input_o\) # ((!\B[2]~input_o\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X47_Y36_N8
\Shift|ShiftRight1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~54_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftRight1~54_combout\);

-- Location: LCCOMB_X47_Y37_N12
\Shift|ShiftRight1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~53_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftRight1~53_combout\);

-- Location: LCCOMB_X47_Y37_N14
\Shift|ShiftRight1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~55_combout\ = (\Shift|ShiftRight1~53_combout\) # ((\B[0]~input_o\ & \Shift|ShiftRight1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~54_combout\,
	datad => \Shift|ShiftRight1~53_combout\,
	combout => \Shift|ShiftRight1~55_combout\);

-- Location: LCCOMB_X50_Y37_N4
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\Shift|ShiftLeft0~27_combout\ & (((\Mux60~2_combout\) # (\Shift|ShiftRight1~55_combout\)))) # (!\Shift|ShiftLeft0~27_combout\ & (\Shift|ShiftRight1~9_combout\ & (!\Mux60~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~27_combout\,
	datab => \Shift|ShiftRight1~9_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|ShiftRight1~55_combout\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X50_Y37_N30
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\Mux61~2_combout\ & (((\Shift|ShiftRight0~113_combout\) # (!\Mux60~2_combout\)))) # (!\Mux61~2_combout\ & (\Shift|ShiftRight1~10_combout\ & ((\Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~10_combout\,
	datab => \Shift|ShiftRight0~113_combout\,
	datac => \Mux61~2_combout\,
	datad => \Mux60~2_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X58_Y34_N20
\Shift|ShiftRight1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~51_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[61]~input_o\)) # (!\B[1]~input_o\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[61]~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftRight1~51_combout\);

-- Location: LCCOMB_X58_Y34_N22
\Shift|ShiftRight1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~52_combout\ = (\Shift|ShiftRight1~51_combout\) # ((\Shift|ShiftRight1~26_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~26_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~51_combout\,
	combout => \Shift|ShiftRight1~52_combout\);

-- Location: LCCOMB_X59_Y35_N18
\Shift|ShiftRight0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~110_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~8_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~8_combout\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight1~52_combout\,
	combout => \Shift|ShiftRight0~110_combout\);

-- Location: LCCOMB_X57_Y39_N8
\Shift|ShiftRight0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~111_combout\ = (\B[3]~input_o\ & \Shift|ShiftRight0~110_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~110_combout\,
	combout => \Shift|ShiftRight0~111_combout\);

-- Location: LCCOMB_X58_Y40_N6
\Shift|ShiftRight1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~45_combout\ = (\B[1]~input_o\ & ((\A[37]~input_o\))) # (!\B[1]~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[35]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~45_combout\);

-- Location: LCCOMB_X58_Y40_N8
\Shift|ShiftRight1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~46_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~45_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~22_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~45_combout\,
	combout => \Shift|ShiftRight1~46_combout\);

-- Location: LCCOMB_X57_Y34_N0
\Shift|ShiftRight1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~43_combout\ = (\B[1]~input_o\ & (\A[45]~input_o\)) # (!\B[1]~input_o\ & ((\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~43_combout\);

-- Location: LCCOMB_X57_Y34_N10
\Shift|ShiftRight1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~44_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~43_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~43_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~21_combout\,
	combout => \Shift|ShiftRight1~44_combout\);

-- Location: LCCOMB_X58_Y36_N28
\Shift|ShiftRight0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~107_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~44_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~46_combout\,
	datad => \Shift|ShiftRight1~44_combout\,
	combout => \Shift|ShiftRight0~107_combout\);

-- Location: LCCOMB_X60_Y38_N18
\Shift|ShiftRight1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~41_combout\ = (\B[1]~input_o\ & ((\A[41]~input_o\))) # (!\B[1]~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	combout => \Shift|ShiftRight1~41_combout\);

-- Location: LCCOMB_X60_Y38_N28
\Shift|ShiftRight1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~42_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~41_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~20_combout\,
	datad => \Shift|ShiftRight1~41_combout\,
	combout => \Shift|ShiftRight1~42_combout\);

-- Location: LCCOMB_X52_Y34_N24
\Shift|ShiftRight1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~39_combout\ = (\B[1]~input_o\ & ((\A[49]~input_o\))) # (!\B[1]~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Shift|ShiftRight1~39_combout\);

-- Location: LCCOMB_X52_Y34_N2
\Shift|ShiftRight1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~40_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~39_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~19_combout\,
	datad => \Shift|ShiftRight1~39_combout\,
	combout => \Shift|ShiftRight1~40_combout\);

-- Location: LCCOMB_X58_Y36_N18
\Shift|ShiftRight0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~106_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~40_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~42_combout\,
	datad => \Shift|ShiftRight1~40_combout\,
	combout => \Shift|ShiftRight0~106_combout\);

-- Location: LCCOMB_X58_Y36_N14
\Shift|ShiftRight0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~108_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~106_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~107_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~107_combout\,
	datad => \Shift|ShiftRight0~106_combout\,
	combout => \Shift|ShiftRight0~108_combout\);

-- Location: LCCOMB_X58_Y34_N16
\Shift|ShiftRight1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~47_combout\ = (\B[1]~input_o\ & (\A[57]~input_o\)) # (!\B[1]~input_o\ & ((\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|ShiftRight1~47_combout\);

-- Location: LCCOMB_X58_Y34_N26
\Shift|ShiftRight1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~48_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~47_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~47_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~23_combout\,
	combout => \Shift|ShiftRight1~48_combout\);

-- Location: LCCOMB_X55_Y34_N10
\Shift|ShiftRight1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~49_combout\ = (\B[1]~input_o\ & ((\A[53]~input_o\))) # (!\B[1]~input_o\ & (\A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Shift|ShiftRight1~49_combout\);

-- Location: LCCOMB_X55_Y34_N4
\Shift|ShiftRight1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~50_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~49_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~49_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~24_combout\,
	combout => \Shift|ShiftRight1~50_combout\);

-- Location: LCCOMB_X58_Y36_N16
\Shift|ShiftRight0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~109_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~48_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~48_combout\,
	datad => \Shift|ShiftRight1~50_combout\,
	combout => \Shift|ShiftRight0~109_combout\);

-- Location: LCCOMB_X57_Y39_N10
\Shift|ShiftRight0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~112_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~111_combout\) # ((\Shift|ShiftRight0~109_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~111_combout\,
	datac => \Shift|ShiftRight0~108_combout\,
	datad => \Shift|ShiftRight0~109_combout\,
	combout => \Shift|ShiftRight0~112_combout\);

-- Location: LCCOMB_X57_Y39_N28
\Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (\Mux60~1_combout\ & (((\B[5]~input_o\)))) # (!\Mux60~1_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~112_combout\))) # (!\B[5]~input_o\ & (\Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~3_combout\,
	datab => \Mux60~1_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~112_combout\,
	combout => \Mux61~4_combout\);

-- Location: LCCOMB_X48_Y40_N10
\Shift|ShiftRight1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~35_combout\ = (\B[1]~input_o\ & (\A[25]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[25]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Shift|ShiftRight1~35_combout\);

-- Location: LCCOMB_X48_Y40_N20
\Shift|ShiftRight1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~36_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~35_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~17_combout\,
	datad => \Shift|ShiftRight1~35_combout\,
	combout => \Shift|ShiftRight1~36_combout\);

-- Location: LCCOMB_X49_Y40_N26
\Shift|ShiftRight1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~37_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftRight1~37_combout\);

-- Location: LCCOMB_X49_Y40_N20
\Shift|ShiftRight1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~38_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~37_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~37_combout\,
	datad => \Shift|ShiftRight1~18_combout\,
	combout => \Shift|ShiftRight1~38_combout\);

-- Location: LCCOMB_X53_Y40_N14
\Shift|ShiftRight0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~104_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~36_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~36_combout\,
	datad => \Shift|ShiftRight1~38_combout\,
	combout => \Shift|ShiftRight0~104_combout\);

-- Location: LCCOMB_X57_Y40_N0
\Shift|ShiftRight1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~31_combout\ = (\B[1]~input_o\ & ((\A[33]~input_o\))) # (!\B[1]~input_o\ & (\A[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[31]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ShiftRight1~31_combout\);

-- Location: LCCOMB_X53_Y40_N24
\Shift|ShiftRight1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~32_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight1~31_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~31_combout\,
	datac => \Shift|ShiftRight1~15_combout\,
	combout => \Shift|ShiftRight1~32_combout\);

-- Location: LCCOMB_X53_Y41_N12
\Shift|ShiftRight1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~33_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Shift|ShiftRight1~33_combout\);

-- Location: LCCOMB_X53_Y40_N18
\Shift|ShiftRight1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~34_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight1~33_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~16_combout\,
	datad => \Shift|ShiftRight1~33_combout\,
	combout => \Shift|ShiftRight1~34_combout\);

-- Location: LCCOMB_X53_Y40_N28
\Shift|ShiftRight0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~103_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~32_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~32_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~34_combout\,
	combout => \Shift|ShiftRight0~103_combout\);

-- Location: LCCOMB_X53_Y40_N8
\Shift|ShiftRight0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~105_combout\ = (\Shift|ShiftRight0~103_combout\) # ((\Shift|ShiftRight0~104_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~104_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~103_combout\,
	combout => \Shift|ShiftRight0~105_combout\);

-- Location: LCCOMB_X59_Y35_N20
\Shift|ShiftRight1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~60_combout\ = (\B[0]~input_o\ & (((\A[63]~input_o\)))) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[63]~input_o\))) # (!\B[1]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftRight1~60_combout\);

-- Location: LCCOMB_X59_Y35_N22
\Shift|ShiftRight1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~61_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~60_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~52_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~60_combout\,
	combout => \Shift|ShiftRight1~61_combout\);

-- Location: LCCOMB_X57_Y39_N6
\Shift|ShiftRight1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~62_combout\ = (\Shift|ShiftRight0~109_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight1~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~109_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~61_combout\,
	combout => \Shift|ShiftRight1~62_combout\);

-- Location: LCCOMB_X57_Y39_N24
\Shift|ShiftRight1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~63_combout\ = (\B[4]~input_o\ & (\Shift|ShiftRight1~62_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~62_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~108_combout\,
	combout => \Shift|ShiftRight1~63_combout\);

-- Location: LCCOMB_X57_Y39_N26
\Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = (\Mux60~1_combout\ & ((\Mux61~4_combout\ & ((\Shift|ShiftRight1~63_combout\))) # (!\Mux61~4_combout\ & (\Shift|ShiftRight0~105_combout\)))) # (!\Mux60~1_combout\ & (\Mux61~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Mux61~4_combout\,
	datac => \Shift|ShiftRight0~105_combout\,
	datad => \Shift|ShiftRight1~63_combout\,
	combout => \Mux61~5_combout\);

-- Location: LCCOMB_X50_Y37_N16
\Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = (\Mux60~4_combout\ & (\Logic|xor_result[2]~0_combout\ & (\Mux60~3_combout\))) # (!\Mux60~4_combout\ & (((\Mux61~5_combout\) # (!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[2]~0_combout\,
	datab => \Mux60~4_combout\,
	datac => \Mux60~3_combout\,
	datad => \Mux61~5_combout\,
	combout => \Mux61~6_combout\);

-- Location: LCCOMB_X55_Y40_N10
\Mux61~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~7_combout\ = (\B[2]~input_o\ & ((\Mux61~6_combout\) # ((\A[2]~input_o\ & \Mux60~5_combout\)))) # (!\B[2]~input_o\ & (\Mux61~6_combout\ & ((\A[2]~input_o\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \Mux60~5_combout\,
	datad => \Mux61~6_combout\,
	combout => \Mux61~7_combout\);

-- Location: LCCOMB_X55_Y40_N28
\Mux61~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~8_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux61~1_combout\) # ((\Mux60~0_combout\ & \Mux61~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux61~1_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux61~7_combout\,
	combout => \Mux61~8_combout\);

-- Location: LCCOMB_X58_Y34_N8
\Shift|ShiftRight1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~68_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~24_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~24_combout\,
	datad => \Shift|ShiftRight1~47_combout\,
	combout => \Shift|ShiftRight1~68_combout\);

-- Location: LCCOMB_X55_Y34_N14
\Shift|ShiftRight1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~69_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~15_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~15_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~49_combout\,
	combout => \Shift|ShiftRight1~69_combout\);

-- Location: LCCOMB_X52_Y38_N24
\Shift|ShiftRight0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~117_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~69_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~68_combout\,
	datad => \Shift|ShiftRight1~69_combout\,
	combout => \Shift|ShiftRight0~117_combout\);

-- Location: LCCOMB_X59_Y35_N16
\Shift|ShiftRight1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~70_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[60]~input_o\))) # (!\B[0]~input_o\ & (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[59]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shift|ShiftRight1~70_combout\);

-- Location: LCCOMB_X59_Y35_N26
\Shift|ShiftRight1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~71_combout\ = (\Shift|ShiftRight1~70_combout\) # ((\B[1]~input_o\ & \Shift|ShiftRight1~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftRight1~70_combout\,
	datad => \Shift|ShiftRight1~25_combout\,
	combout => \Shift|ShiftRight1~71_combout\);

-- Location: LCCOMB_X52_Y38_N8
\Shift|ShiftRight1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~79_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\A[63]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~71_combout\,
	combout => \Shift|ShiftRight1~79_combout\);

-- Location: LCCOMB_X59_Y38_N2
\Shift|ShiftRight1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~73_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~65_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~41_combout\,
	datad => \Shift|ShiftRight0~65_combout\,
	combout => \Shift|ShiftRight1~73_combout\);

-- Location: LCCOMB_X52_Y34_N20
\Shift|ShiftRight1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~72_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~18_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~18_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~39_combout\,
	combout => \Shift|ShiftRight1~72_combout\);

-- Location: LCCOMB_X53_Y38_N22
\Shift|ShiftRight0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~120_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~72_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~73_combout\,
	datad => \Shift|ShiftRight1~72_combout\,
	combout => \Shift|ShiftRight0~120_combout\);

-- Location: LCCOMB_X57_Y34_N28
\Shift|ShiftRight1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~74_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~58_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~58_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~43_combout\,
	combout => \Shift|ShiftRight1~74_combout\);

-- Location: LCCOMB_X60_Y38_N22
\Shift|ShiftRight1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~75_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~61_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight1~45_combout\,
	datac => \Shift|ShiftRight0~61_combout\,
	combout => \Shift|ShiftRight1~75_combout\);

-- Location: LCCOMB_X53_Y38_N8
\Shift|ShiftRight0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~121_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~74_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~74_combout\,
	datac => \Shift|ShiftRight1~75_combout\,
	combout => \Shift|ShiftRight0~121_combout\);

-- Location: LCCOMB_X53_Y38_N18
\Shift|ShiftRight0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~122_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~120_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~120_combout\,
	datab => \Shift|ShiftRight0~121_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~122_combout\);

-- Location: LCCOMB_X52_Y38_N2
\Shift|ShiftRight1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~80_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~117_combout\) # ((\Shift|ShiftRight1~79_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~117_combout\,
	datac => \Shift|ShiftRight1~79_combout\,
	datad => \Shift|ShiftRight0~122_combout\,
	combout => \Shift|ShiftRight1~80_combout\);

-- Location: LCCOMB_X52_Y39_N24
\Shift|ShiftRight1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~76_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~53_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~53_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~54_combout\,
	combout => \Shift|ShiftRight1~76_combout\);

-- Location: LCCOMB_X52_Y39_N10
\Mux60~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~8_combout\ = (\Mux60~2_combout\ & (((\Shift|ShiftLeft0~27_combout\)))) # (!\Mux60~2_combout\ & ((\Shift|ShiftLeft0~27_combout\ & ((\Shift|ShiftRight1~76_combout\))) # (!\Shift|ShiftLeft0~27_combout\ & (\Shift|ShiftRight1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|ShiftRight1~11_combout\,
	datac => \Shift|ShiftLeft0~27_combout\,
	datad => \Shift|ShiftRight1~76_combout\,
	combout => \Mux60~8_combout\);

-- Location: LCCOMB_X50_Y40_N28
\Shift|ShiftRight1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~77_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~39_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~39_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight1~56_combout\,
	combout => \Shift|ShiftRight1~77_combout\);

-- Location: LCCOMB_X52_Y39_N20
\Shift|ShiftRight1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~78_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~50_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~58_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~50_combout\,
	combout => \Shift|ShiftRight1~78_combout\);

-- Location: LCCOMB_X52_Y39_N6
\Shift|ShiftRight0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~124_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~77_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~77_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~78_combout\,
	combout => \Shift|ShiftRight0~124_combout\);

-- Location: LCCOMB_X52_Y39_N0
\Mux60~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~9_combout\ = (\Mux60~8_combout\ & (((\Shift|ShiftRight0~124_combout\) # (!\Mux60~2_combout\)))) # (!\Mux60~8_combout\ & (\Shift|ShiftRight1~12_combout\ & (\Mux60~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~8_combout\,
	datab => \Shift|ShiftRight1~12_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|ShiftRight0~124_combout\,
	combout => \Mux60~9_combout\);

-- Location: LCCOMB_X56_Y34_N28
\Shift|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~30_combout\ = (!\B[1]~input_o\ & !\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X52_Y38_N26
\Shift|ShiftRight0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~118_combout\ = (\B[2]~input_o\ & (\A[63]~input_o\ & (\Shift|ShiftLeft0~30_combout\))) # (!\B[2]~input_o\ & (((\Shift|ShiftRight1~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftLeft0~30_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~71_combout\,
	combout => \Shift|ShiftRight0~118_combout\);

-- Location: LCCOMB_X52_Y38_N20
\Shift|ShiftRight0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~119_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~117_combout\) # ((\Shift|ShiftRight0~118_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~118_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~117_combout\,
	combout => \Shift|ShiftRight0~119_combout\);

-- Location: LCCOMB_X52_Y38_N14
\Shift|ShiftRight0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~123_combout\ = (\Shift|ShiftRight0~119_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~119_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~122_combout\,
	combout => \Shift|ShiftRight0~123_combout\);

-- Location: LCCOMB_X52_Y39_N26
\Mux60~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~10_combout\ = (\B[5]~input_o\ & (((\Mux60~1_combout\) # (\Shift|ShiftRight0~123_combout\)))) # (!\B[5]~input_o\ & (\Mux60~9_combout\ & (!\Mux60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux60~9_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight0~123_combout\,
	combout => \Mux60~10_combout\);

-- Location: LCCOMB_X57_Y40_N2
\Shift|ShiftRight1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~64_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~68_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~31_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftRight0~68_combout\,
	combout => \Shift|ShiftRight1~64_combout\);

-- Location: LCCOMB_X53_Y41_N6
\Shift|ShiftRight1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~65_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~29_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftRight0~29_combout\,
	datad => \Shift|ShiftRight1~33_combout\,
	combout => \Shift|ShiftRight1~65_combout\);

-- Location: LCCOMB_X53_Y38_N24
\Shift|ShiftRight0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~114_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~64_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~64_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~65_combout\,
	combout => \Shift|ShiftRight0~114_combout\);

-- Location: LCCOMB_X48_Y40_N6
\Shift|ShiftRight1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~66_combout\ = (\B[0]~input_o\ & (\Shift|ShiftRight0~32_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftRight1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight0~32_combout\,
	datad => \Shift|ShiftRight1~35_combout\,
	combout => \Shift|ShiftRight1~66_combout\);

-- Location: LCCOMB_X49_Y40_N14
\Shift|ShiftRight1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~67_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftRight0~36_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftRight1~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftRight1~37_combout\,
	datad => \Shift|ShiftRight0~36_combout\,
	combout => \Shift|ShiftRight1~67_combout\);

-- Location: LCCOMB_X53_Y38_N26
\Shift|ShiftRight0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~115_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~66_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~66_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~67_combout\,
	combout => \Shift|ShiftRight0~115_combout\);

-- Location: LCCOMB_X53_Y38_N4
\Shift|ShiftRight0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~116_combout\ = (\Shift|ShiftRight0~114_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftRight0~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~114_combout\,
	datac => \Shift|ShiftRight0~115_combout\,
	combout => \Shift|ShiftRight0~116_combout\);

-- Location: LCCOMB_X49_Y36_N10
\Mux60~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~11_combout\ = (\Mux60~1_combout\ & ((\Mux60~10_combout\ & (\Shift|ShiftRight1~80_combout\)) # (!\Mux60~10_combout\ & ((\Shift|ShiftRight0~116_combout\))))) # (!\Mux60~1_combout\ & (((\Mux60~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~80_combout\,
	datab => \Mux60~1_combout\,
	datac => \Mux60~10_combout\,
	datad => \Shift|ShiftRight0~116_combout\,
	combout => \Mux60~11_combout\);

-- Location: LCCOMB_X49_Y36_N20
\Logic|xor_result[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[3]~1_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \Logic|xor_result[3]~1_combout\);

-- Location: LCCOMB_X49_Y36_N12
\Mux60~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~12_combout\ = (\Mux60~4_combout\ & (((\Mux60~3_combout\ & \Logic|xor_result[3]~1_combout\)))) # (!\Mux60~4_combout\ & ((\Mux60~11_combout\) # ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~11_combout\,
	datab => \Mux60~4_combout\,
	datac => \Mux60~3_combout\,
	datad => \Logic|xor_result[3]~1_combout\,
	combout => \Mux60~12_combout\);

-- Location: LCCOMB_X49_Y36_N22
\Mux60~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~13_combout\ = (\B[3]~input_o\ & ((\Mux60~12_combout\) # ((\A[3]~input_o\ & \Mux60~5_combout\)))) # (!\B[3]~input_o\ & (\Mux60~12_combout\ & ((\A[3]~input_o\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[3]~input_o\,
	datac => \Mux60~5_combout\,
	datad => \Mux60~12_combout\,
	combout => \Mux60~13_combout\);

-- Location: LCCOMB_X49_Y37_N10
\Shift|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~28_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[2]~input_o\)) # (!\B[0]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X49_Y37_N12
\Shift|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~29_combout\ = (\Shift|ShiftLeft0~28_combout\) # ((\Shift|ShiftLeft0~22_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~22_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~28_combout\,
	combout => \Shift|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X49_Y37_N16
\Shift|ShiftLeft0~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~286_combout\ = (!\B[2]~input_o\ & (!\B[4]~input_o\ & (!\B[3]~input_o\ & \Shift|ShiftLeft0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~286_combout\);

-- Location: LCCOMB_X49_Y36_N30
\Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = (!\ShiftFN[0]~input_o\ & (\Logic|xor_result[3]~1_combout\ $ (\AddnSub~input_o\ $ (\Add|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Logic|xor_result[3]~1_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[3]~2_combout\,
	combout => \Mux60~6_combout\);

-- Location: LCCOMB_X49_Y36_N24
\Mux60~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~7_combout\ = (!\Mux60~0_combout\ & ((\Mux60~6_combout\) # ((\Shift|ShiftLeft0~286_combout\ & \Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~286_combout\,
	datab => \Y_ShiftOrArith[0]~1_combout\,
	datac => \Mux60~6_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux60~7_combout\);

-- Location: LCCOMB_X49_Y36_N0
\Mux60~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~14_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux60~7_combout\) # ((\Mux60~0_combout\ & \Mux60~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux60~0_combout\,
	datac => \Mux60~13_combout\,
	datad => \Mux60~7_combout\,
	combout => \Mux60~14_combout\);

-- Location: LCCOMB_X50_Y37_N14
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\B[4]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X50_Y35_N12
\Mux59~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~8_combout\ = (!\Mux60~0_combout\ & (\ShiftFN[0]~input_o\ & (!\B[5]~input_o\ & !\Mux56~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Mux56~3_combout\,
	combout => \Mux59~8_combout\);

-- Location: LCCOMB_X53_Y36_N18
\Logic|xor_result[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[4]~2_combout\ = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Logic|xor_result[4]~2_combout\);

-- Location: LCCOMB_X54_Y37_N16
\Shift|ShiftRight0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~131_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~25_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~16_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~25_combout\,
	combout => \Shift|ShiftRight0~131_combout\);

-- Location: LCCOMB_X58_Y36_N22
\Shift|ShiftRight1~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~81_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\A[63]~input_o\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~22_combout\,
	datad => \A[63]~input_o\,
	combout => \Shift|ShiftRight1~81_combout\);

-- Location: LCCOMB_X54_Y37_N4
\Shift|ShiftRight0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~129_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~19_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~19_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~66_combout\,
	combout => \Shift|ShiftRight0~129_combout\);

-- Location: LCCOMB_X54_Y37_N14
\Shift|ShiftRight0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~130_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~129_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~129_combout\,
	datad => \Shift|ShiftRight0~63_combout\,
	combout => \Shift|ShiftRight0~130_combout\);

-- Location: LCCOMB_X53_Y36_N10
\Shift|ShiftRight1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~82_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~131_combout\) # ((\Shift|ShiftRight1~81_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~131_combout\,
	datab => \Shift|ShiftRight1~81_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~130_combout\,
	combout => \Shift|ShiftRight1~82_combout\);

-- Location: LCCOMB_X55_Y37_N0
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X50_Y37_N18
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\B[4]~input_o\) # ((!\B[3]~input_o\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X50_Y37_N28
\Shift|ShiftRight0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~125_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~40_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~40_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~51_combout\,
	combout => \Shift|ShiftRight0~125_combout\);

-- Location: LCCOMB_X50_Y37_N8
\Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = (\Mux56~2_combout\ & (((\Mux56~3_combout\)))) # (!\Mux56~2_combout\ & ((\Mux56~3_combout\ & ((\Shift|ShiftRight0~125_combout\))) # (!\Mux56~3_combout\ & (\Shift|ShiftRight0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~47_combout\,
	datab => \Mux56~2_combout\,
	datac => \Mux56~3_combout\,
	datad => \Shift|ShiftRight0~125_combout\,
	combout => \Mux59~2_combout\);

-- Location: LCCOMB_X54_Y37_N10
\Shift|ShiftRight0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~126_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~69_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~69_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~30_combout\,
	combout => \Shift|ShiftRight0~126_combout\);

-- Location: LCCOMB_X50_Y40_N14
\Shift|ShiftRight0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~127_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~33_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~33_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~37_combout\,
	combout => \Shift|ShiftRight0~127_combout\);

-- Location: LCCOMB_X50_Y40_N8
\Shift|ShiftRight0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~128_combout\ = (\Shift|ShiftRight0~126_combout\) # ((\Shift|ShiftRight0~127_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~126_combout\,
	datac => \Shift|ShiftRight0~127_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~128_combout\);

-- Location: LCCOMB_X50_Y37_N2
\Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = (\Mux56~2_combout\ & ((\Mux59~2_combout\ & ((\Shift|ShiftRight0~128_combout\))) # (!\Mux59~2_combout\ & (\Shift|ShiftRight0~54_combout\)))) # (!\Mux56~2_combout\ & (((\Mux59~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~54_combout\,
	datab => \Mux56~2_combout\,
	datac => \Mux59~2_combout\,
	datad => \Shift|ShiftRight0~128_combout\,
	combout => \Mux59~3_combout\);

-- Location: LCCOMB_X53_Y36_N30
\Add|S[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[4]~0_combout\ = \B[4]~input_o\ $ (\AddnSub~input_o\ $ (\A[4]~input_o\ $ (\Add|C[4]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[4]~input_o\,
	datad => \Add|C[4]~3_combout\,
	combout => \Add|S[4]~0_combout\);

-- Location: LCCOMB_X56_Y36_N8
\Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (\ShiftFN[1]~input_o\ & \B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux56~5_combout\);

-- Location: LCCOMB_X58_Y36_N2
\Shift|ShiftRight0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~132_combout\ = (!\B[2]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~132_combout\);

-- Location: LCCOMB_X58_Y36_N20
\Shift|ShiftRight0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~133_combout\ = (\Shift|ShiftRight0~132_combout\ & ((\Shift|ShiftRight0~21_combout\) # ((\Shift|ShiftRight1~8_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~21_combout\,
	datab => \Shift|ShiftRight1~8_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftRight0~132_combout\,
	combout => \Shift|ShiftRight0~133_combout\);

-- Location: LCCOMB_X53_Y36_N12
\Shift|ShiftRight0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~134_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftRight0~133_combout\) # (\Shift|ShiftRight0~131_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~130_combout\,
	datac => \Shift|ShiftRight0~133_combout\,
	datad => \Shift|ShiftRight0~131_combout\,
	combout => \Shift|ShiftRight0~134_combout\);

-- Location: LCCOMB_X53_Y36_N24
\Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = (\Mux56~4_combout\ & (((\Mux56~5_combout\)))) # (!\Mux56~4_combout\ & ((\Mux56~5_combout\ & ((\Shift|ShiftRight0~134_combout\))) # (!\Mux56~5_combout\ & (\Add|S[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[4]~0_combout\,
	datab => \Mux56~4_combout\,
	datac => \Mux56~5_combout\,
	datad => \Shift|ShiftRight0~134_combout\,
	combout => \Mux59~4_combout\);

-- Location: LCCOMB_X53_Y36_N20
\Mux59~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~5_combout\ = (\Mux56~4_combout\ & ((\Mux59~4_combout\ & (\Shift|ShiftRight1~82_combout\)) # (!\Mux59~4_combout\ & ((\Mux59~3_combout\))))) # (!\Mux56~4_combout\ & (((\Mux59~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~82_combout\,
	datab => \Mux56~4_combout\,
	datac => \Mux59~3_combout\,
	datad => \Mux59~4_combout\,
	combout => \Mux59~5_combout\);

-- Location: LCCOMB_X52_Y35_N20
\Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~6_combout\ = (\Mux60~4_combout\ & (\Logic|xor_result[4]~2_combout\ & ((\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (((\Mux59~5_combout\) # (!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[4]~2_combout\,
	datab => \Mux60~4_combout\,
	datac => \Mux59~5_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux59~6_combout\);

-- Location: LCCOMB_X50_Y35_N26
\Mux59~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~7_combout\ = (\Mux60~5_combout\ & ((\B[4]~input_o\ & ((\A[4]~input_o\) # (\Mux59~6_combout\))) # (!\B[4]~input_o\ & (\A[4]~input_o\ & \Mux59~6_combout\)))) # (!\Mux60~5_combout\ & (((\Mux59~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~5_combout\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Mux59~6_combout\,
	combout => \Mux59~7_combout\);

-- Location: LCCOMB_X50_Y35_N0
\Mux59~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~10_combout\ = (\Mux59~7_combout\ & ((\FuncClass[0]~input_o\) # ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~7_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux59~10_combout\);

-- Location: LCCOMB_X49_Y37_N14
\Shift|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~31_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[1]~input_o\)) # (!\B[1]~input_o\ & ((\A[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[3]~input_o\,
	combout => \Shift|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X49_Y37_N24
\Shift|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~32_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[2]~input_o\,
	combout => \Shift|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X49_Y37_N26
\Shift|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~33_combout\ = (\Shift|ShiftLeft0~31_combout\) # ((!\B[0]~input_o\ & \Shift|ShiftLeft0~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~31_combout\,
	datad => \Shift|ShiftLeft0~32_combout\,
	combout => \Shift|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X50_Y36_N24
\Shift|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~34_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftLeft0~30_combout\ & \A[0]~input_o\)))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~33_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~30_combout\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X50_Y35_N22
\Mux59~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~9_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux59~10_combout\) # ((\Mux59~8_combout\ & \Shift|ShiftLeft0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~8_combout\,
	datab => \Mux59~10_combout\,
	datac => \Shift|ShiftLeft0~34_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux59~9_combout\);

-- Location: LCCOMB_X49_Y37_N4
\Shift|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~35_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X49_Y37_N6
\Shift|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~36_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~32_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~35_combout\,
	datad => \Shift|ShiftLeft0~32_combout\,
	combout => \Shift|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X49_Y37_N0
\Shift|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~37_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~22_combout\ & (!\B[1]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|ShiftLeft0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~22_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~36_combout\,
	combout => \Shift|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X58_Y35_N24
\Shift|ShiftRight0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~135_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~100_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~96_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~100_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~96_combout\,
	combout => \Shift|ShiftRight0~135_combout\);

-- Location: LCCOMB_X59_Y35_N28
\Shift|ShiftRight1~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~83_combout\ = (\B[1]~input_o\ & (((\A[63]~input_o\)))) # (!\B[1]~input_o\ & ((\B[2]~input_o\ & (\A[63]~input_o\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~25_combout\,
	combout => \Shift|ShiftRight1~83_combout\);

-- Location: LCCOMB_X58_Y35_N8
\Shift|ShiftRight1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~84_combout\ = (\Shift|ShiftRight0~135_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight1~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~135_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~83_combout\,
	combout => \Shift|ShiftRight1~84_combout\);

-- Location: LCCOMB_X58_Y35_N12
\Shift|ShiftRight0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~137_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~97_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~97_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~92_combout\,
	combout => \Shift|ShiftRight0~137_combout\);

-- Location: LCCOMB_X58_Y35_N14
\Shift|ShiftRight0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~138_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~137_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~91_combout\,
	datad => \Shift|ShiftRight0~137_combout\,
	combout => \Shift|ShiftRight0~138_combout\);

-- Location: LCCOMB_X54_Y35_N30
\Shift|ShiftRight1~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~85_combout\ = (\B[4]~input_o\ & (\Shift|ShiftRight1~84_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~84_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~138_combout\,
	combout => \Shift|ShiftRight1~85_combout\);

-- Location: LCCOMB_X54_Y35_N26
\Add|S[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[5]~1_combout\ = \B[5]~input_o\ $ (\Add|C[5]~4_combout\ $ (\A[5]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Add|C[5]~4_combout\,
	datac => \A[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[5]~1_combout\);

-- Location: LCCOMB_X57_Y38_N28
\Shift|ShiftRight0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~140_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~86_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~78_combout\,
	datad => \Shift|ShiftRight0~86_combout\,
	combout => \Shift|ShiftRight0~140_combout\);

-- Location: LCCOMB_X50_Y37_N20
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (\Mux56~2_combout\ & (((\Mux56~3_combout\)))) # (!\Mux56~2_combout\ & ((\Mux56~3_combout\ & (\Shift|ShiftRight0~140_combout\)) # (!\Mux56~3_combout\ & ((\Shift|ShiftRight0~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~140_combout\,
	datab => \Mux56~2_combout\,
	datac => \Mux56~3_combout\,
	datad => \Shift|ShiftRight0~76_combout\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X57_Y38_N14
\Shift|ShiftRight0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~141_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~93_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~82_combout\,
	datad => \Shift|ShiftRight0~93_combout\,
	combout => \Shift|ShiftRight0~141_combout\);

-- Location: LCCOMB_X57_Y38_N8
\Shift|ShiftRight0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~142_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~83_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~85_combout\,
	datad => \Shift|ShiftRight0~83_combout\,
	combout => \Shift|ShiftRight0~142_combout\);

-- Location: LCCOMB_X57_Y38_N26
\Shift|ShiftRight0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~143_combout\ = (\Shift|ShiftRight0~141_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftRight0~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~141_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~142_combout\,
	combout => \Shift|ShiftRight0~143_combout\);

-- Location: LCCOMB_X54_Y35_N8
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\Mux56~2_combout\ & ((\Mux58~2_combout\ & ((\Shift|ShiftRight0~143_combout\))) # (!\Mux58~2_combout\ & (\Shift|ShiftRight0~79_combout\)))) # (!\Mux56~2_combout\ & (((\Mux58~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \Shift|ShiftRight0~79_combout\,
	datac => \Mux58~2_combout\,
	datad => \Shift|ShiftRight0~143_combout\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X54_Y35_N20
\Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = (\Mux56~5_combout\ & (((\Mux56~4_combout\)))) # (!\Mux56~5_combout\ & ((\Mux56~4_combout\ & ((\Mux58~3_combout\))) # (!\Mux56~4_combout\ & (\Add|S[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~5_combout\,
	datab => \Add|S[5]~1_combout\,
	datac => \Mux58~3_combout\,
	datad => \Mux56~4_combout\,
	combout => \Mux58~4_combout\);

-- Location: LCCOMB_X58_Y35_N2
\Shift|ShiftRight0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~136_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~135_combout\) # ((\Shift|ShiftRight0~132_combout\ & \Shift|ShiftRight0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~132_combout\,
	datab => \Shift|ShiftRight0~135_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~99_combout\,
	combout => \Shift|ShiftRight0~136_combout\);

-- Location: LCCOMB_X54_Y35_N6
\Shift|ShiftRight0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~139_combout\ = (\Shift|ShiftRight0~136_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~138_combout\,
	datad => \Shift|ShiftRight0~136_combout\,
	combout => \Shift|ShiftRight0~139_combout\);

-- Location: LCCOMB_X54_Y35_N24
\Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~5_combout\ = (\Mux58~4_combout\ & ((\Shift|ShiftRight1~85_combout\) # ((!\Mux56~5_combout\)))) # (!\Mux58~4_combout\ & (((\Mux56~5_combout\ & \Shift|ShiftRight0~139_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~85_combout\,
	datab => \Mux58~4_combout\,
	datac => \Mux56~5_combout\,
	datad => \Shift|ShiftRight0~139_combout\,
	combout => \Mux58~5_combout\);

-- Location: LCCOMB_X54_Y35_N4
\Logic|xor_result[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[5]~3_combout\ = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Logic|xor_result[5]~3_combout\);

-- Location: LCCOMB_X52_Y35_N22
\Mux58~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~6_combout\ = (\Mux60~4_combout\ & (((\Logic|xor_result[5]~3_combout\ & \Mux60~3_combout\)))) # (!\Mux60~4_combout\ & ((\Mux58~5_combout\) # ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~5_combout\,
	datab => \Mux60~4_combout\,
	datac => \Logic|xor_result[5]~3_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux58~6_combout\);

-- Location: LCCOMB_X50_Y35_N16
\Mux58~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~7_combout\ = (\A[5]~input_o\ & ((\Mux58~6_combout\) # ((\B[5]~input_o\ & \Mux60~5_combout\)))) # (!\A[5]~input_o\ & (\Mux58~6_combout\ & ((\B[5]~input_o\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Mux60~5_combout\,
	datad => \Mux58~6_combout\,
	combout => \Mux58~7_combout\);

-- Location: LCCOMB_X50_Y35_N2
\Mux58~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~9_combout\ = (\Mux58~7_combout\ & ((\FuncClass[0]~input_o\) # ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux58~7_combout\,
	combout => \Mux58~9_combout\);

-- Location: LCCOMB_X50_Y35_N18
\Mux58~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~8_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux58~9_combout\) # ((\Mux59~8_combout\ & \Shift|ShiftLeft0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~8_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Shift|ShiftLeft0~37_combout\,
	datad => \Mux58~9_combout\,
	combout => \Mux58~8_combout\);

-- Location: LCCOMB_X47_Y37_N16
\Shift|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~38_combout\ = (\B[1]~input_o\ & ((\A[4]~input_o\))) # (!\B[1]~input_o\ & (\A[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Shift|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X49_Y37_N2
\Shift|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~39_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~35_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~38_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~35_combout\,
	combout => \Shift|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X55_Y40_N6
\Shift|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~40_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~26_combout\,
	datac => \Shift|ShiftLeft0~39_combout\,
	combout => \Shift|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X54_Y36_N2
\Logic|xor_result[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[6]~4_combout\ = \B[6]~input_o\ $ (\A[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[6]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Logic|xor_result[6]~4_combout\);

-- Location: LCCOMB_X58_Y36_N12
\Shift|ShiftRight0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~150_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~50_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~50_combout\,
	datad => \Shift|ShiftRight1~44_combout\,
	combout => \Shift|ShiftRight0~150_combout\);

-- Location: LCCOMB_X58_Y36_N6
\Shift|ShiftRight0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~151_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~150_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~150_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~106_combout\,
	combout => \Shift|ShiftRight0~151_combout\);

-- Location: LCCOMB_X58_Y36_N8
\Shift|ShiftRight0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~148_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight1~52_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~48_combout\,
	datad => \Shift|ShiftRight1~52_combout\,
	combout => \Shift|ShiftRight0~148_combout\);

-- Location: LCCOMB_X58_Y36_N26
\Shift|ShiftRight0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~149_combout\ = (\Shift|ShiftRight0~148_combout\) # ((!\B[1]~input_o\ & (\Shift|ShiftRight1~8_combout\ & \Shift|ShiftRight0~132_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~148_combout\,
	datab => \B[1]~input_o\,
	datac => \Shift|ShiftRight1~8_combout\,
	datad => \Shift|ShiftRight0~132_combout\,
	combout => \Shift|ShiftRight0~149_combout\);

-- Location: LCCOMB_X54_Y36_N14
\Shift|ShiftRight0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~152_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~149_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~151_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~149_combout\,
	combout => \Shift|ShiftRight0~152_combout\);

-- Location: LCCOMB_X54_Y36_N16
\Add|S[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[6]~2_combout\ = \AddnSub~input_o\ $ (\A[6]~input_o\ $ (\B[6]~input_o\ $ (\Add|C[6]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[6]~input_o\,
	datac => \B[6]~input_o\,
	datad => \Add|C[6]~5_combout\,
	combout => \Add|S[6]~2_combout\);

-- Location: LCCOMB_X54_Y36_N10
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\Mux56~5_combout\ & ((\Shift|ShiftRight0~152_combout\) # ((\Mux56~4_combout\)))) # (!\Mux56~5_combout\ & (((!\Mux56~4_combout\ & \Add|S[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~5_combout\,
	datab => \Shift|ShiftRight0~152_combout\,
	datac => \Mux56~4_combout\,
	datad => \Add|S[6]~2_combout\,
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X53_Y40_N0
\Shift|ShiftRight0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~146_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~34_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~36_combout\,
	datad => \Shift|ShiftRight1~34_combout\,
	combout => \Shift|ShiftRight0~146_combout\);

-- Location: LCCOMB_X53_Y40_N6
\Shift|ShiftRight0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~145_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~46_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~46_combout\,
	datad => \Shift|ShiftRight1~32_combout\,
	combout => \Shift|ShiftRight0~145_combout\);

-- Location: LCCOMB_X53_Y40_N2
\Shift|ShiftRight0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~147_combout\ = (\Shift|ShiftRight0~145_combout\) # ((\Shift|ShiftRight0~146_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~146_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~145_combout\,
	combout => \Shift|ShiftRight0~147_combout\);

-- Location: LCCOMB_X53_Y40_N4
\Shift|ShiftRight0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~144_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~38_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~38_combout\,
	datad => \Shift|ShiftRight1~57_combout\,
	combout => \Shift|ShiftRight0~144_combout\);

-- Location: LCCOMB_X50_Y37_N6
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\Mux56~3_combout\ & ((\Shift|ShiftRight0~144_combout\) # ((\Mux56~2_combout\)))) # (!\Mux56~3_combout\ & (((\Shift|ShiftRight1~55_combout\ & !\Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~144_combout\,
	datab => \Shift|ShiftRight1~55_combout\,
	datac => \Mux56~3_combout\,
	datad => \Mux56~2_combout\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X54_Y36_N4
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux56~2_combout\ & ((\Mux57~2_combout\ & ((\Shift|ShiftRight0~147_combout\))) # (!\Mux57~2_combout\ & (\Shift|ShiftRight1~59_combout\)))) # (!\Mux56~2_combout\ & (((\Mux57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \Shift|ShiftRight1~59_combout\,
	datac => \Shift|ShiftRight0~147_combout\,
	datad => \Mux57~2_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X55_Y35_N10
\Shift|ShiftRight1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~86_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~20_combout\ & ((\A[63]~input_o\))) # (!\Shift|ShiftLeft0~20_combout\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftLeft0~20_combout\,
	combout => \Shift|ShiftRight1~86_combout\);

-- Location: LCCOMB_X54_Y36_N20
\Shift|ShiftRight1~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~87_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~86_combout\) # ((\Shift|ShiftRight0~148_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~86_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~148_combout\,
	datad => \Shift|ShiftRight0~151_combout\,
	combout => \Shift|ShiftRight1~87_combout\);

-- Location: LCCOMB_X54_Y36_N30
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (\Mux57~4_combout\ & (((\Shift|ShiftRight1~87_combout\) # (!\Mux56~4_combout\)))) # (!\Mux57~4_combout\ & (\Mux57~3_combout\ & (\Mux56~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~4_combout\,
	datab => \Mux57~3_combout\,
	datac => \Mux56~4_combout\,
	datad => \Shift|ShiftRight1~87_combout\,
	combout => \Mux57~5_combout\);

-- Location: LCCOMB_X54_Y36_N0
\Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~6_combout\ = (\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Logic|xor_result[6]~4_combout\)) # (!\Mux60~4_combout\ & ((\Mux57~5_combout\))))) # (!\Mux60~3_combout\ & (((!\Mux60~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Logic|xor_result[6]~4_combout\,
	datac => \Mux57~5_combout\,
	datad => \Mux60~4_combout\,
	combout => \Mux57~6_combout\);

-- Location: LCCOMB_X54_Y36_N18
\Mux57~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~7_combout\ = (\B[6]~input_o\ & ((\Mux57~6_combout\) # ((\A[6]~input_o\ & \Mux60~5_combout\)))) # (!\B[6]~input_o\ & (\Mux57~6_combout\ & ((\A[6]~input_o\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Mux60~5_combout\,
	datad => \Mux57~6_combout\,
	combout => \Mux57~7_combout\);

-- Location: LCCOMB_X50_Y35_N4
\Mux57~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~9_combout\ = (\Mux57~7_combout\ & ((\FuncClass[0]~input_o\) # ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~7_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux57~9_combout\);

-- Location: LCCOMB_X50_Y35_N20
\Mux57~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~8_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux57~9_combout\) # ((\Mux59~8_combout\ & \Shift|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~8_combout\,
	datab => \Shift|ShiftLeft0~40_combout\,
	datac => \Mux57~9_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux57~8_combout\);

-- Location: LCCOMB_X52_Y38_N30
\Shift|ShiftRight0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~155_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~69_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~69_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~74_combout\,
	combout => \Shift|ShiftRight0~155_combout\);

-- Location: LCCOMB_X53_Y38_N12
\Shift|ShiftRight0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~156_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~155_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~120_combout\,
	datab => \Shift|ShiftRight0~155_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~156_combout\);

-- Location: LCCOMB_X52_Y38_N4
\Shift|ShiftRight0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~153_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~71_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~68_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~71_combout\,
	combout => \Shift|ShiftRight0~153_combout\);

-- Location: LCCOMB_X55_Y35_N18
\Shift|ShiftRight1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~88_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & ((\A[63]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~153_combout\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~88_combout\);

-- Location: LCCOMB_X55_Y35_N20
\Shift|ShiftRight1~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~89_combout\ = (\Shift|ShiftRight1~88_combout\) # ((\Shift|ShiftRight0~156_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~156_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~88_combout\,
	combout => \Shift|ShiftRight1~89_combout\);

-- Location: LCCOMB_X55_Y35_N28
\Shift|ShiftRight0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~154_combout\ = (\B[3]~input_o\ & (\A[63]~input_o\ & (!\Shift|ShiftLeft0~20_combout\))) # (!\B[3]~input_o\ & (((\Shift|ShiftRight0~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftLeft0~20_combout\,
	datac => \Shift|ShiftRight0~153_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~154_combout\);

-- Location: LCCOMB_X55_Y35_N30
\Shift|ShiftRight0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~157_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight0~154_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~156_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~156_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~154_combout\,
	combout => \Shift|ShiftRight0~157_combout\);

-- Location: LCCOMB_X53_Y38_N0
\Shift|ShiftRight0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~160_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight1~65_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight1~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~66_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~65_combout\,
	combout => \Shift|ShiftRight0~160_combout\);

-- Location: LCCOMB_X53_Y38_N14
\Shift|ShiftRight0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~159_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~75_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~64_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~75_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~64_combout\,
	combout => \Shift|ShiftRight0~159_combout\);

-- Location: LCCOMB_X52_Y39_N16
\Shift|ShiftRight0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~161_combout\ = (\Shift|ShiftRight0~159_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftRight0~160_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~160_combout\,
	datad => \Shift|ShiftRight0~159_combout\,
	combout => \Shift|ShiftRight0~161_combout\);

-- Location: LCCOMB_X52_Y39_N4
\Shift|ShiftRight0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~158_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight1~67_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight1~67_combout\,
	datac => \Shift|ShiftRight1~77_combout\,
	combout => \Shift|ShiftRight0~158_combout\);

-- Location: LCCOMB_X52_Y39_N14
\Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~6_combout\ = (\Mux56~3_combout\ & ((\Shift|ShiftRight0~158_combout\) # ((\Mux56~2_combout\)))) # (!\Mux56~3_combout\ & (((!\Mux56~2_combout\ & \Shift|ShiftRight1~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~3_combout\,
	datab => \Shift|ShiftRight0~158_combout\,
	datac => \Mux56~2_combout\,
	datad => \Shift|ShiftRight1~76_combout\,
	combout => \Mux56~6_combout\);

-- Location: LCCOMB_X52_Y39_N18
\Mux56~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~7_combout\ = (\Mux56~2_combout\ & ((\Mux56~6_combout\ & (\Shift|ShiftRight0~161_combout\)) # (!\Mux56~6_combout\ & ((\Shift|ShiftRight1~78_combout\))))) # (!\Mux56~2_combout\ & (((\Mux56~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \Shift|ShiftRight0~161_combout\,
	datac => \Mux56~6_combout\,
	datad => \Shift|ShiftRight1~78_combout\,
	combout => \Mux56~7_combout\);

-- Location: LCCOMB_X48_Y36_N30
\Add|S[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[7]~3_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[7]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[7]~6_combout\,
	combout => \Add|S[7]~3_combout\);

-- Location: LCCOMB_X55_Y35_N16
\Mux56~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~8_combout\ = (\Mux56~4_combout\ & ((\Mux56~7_combout\) # ((\Mux56~5_combout\)))) # (!\Mux56~4_combout\ & (((\Add|S[7]~3_combout\ & !\Mux56~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~7_combout\,
	datab => \Add|S[7]~3_combout\,
	datac => \Mux56~4_combout\,
	datad => \Mux56~5_combout\,
	combout => \Mux56~8_combout\);

-- Location: LCCOMB_X55_Y35_N6
\Mux56~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~9_combout\ = (\Mux56~5_combout\ & ((\Mux56~8_combout\ & (\Shift|ShiftRight1~89_combout\)) # (!\Mux56~8_combout\ & ((\Shift|ShiftRight0~157_combout\))))) # (!\Mux56~5_combout\ & (((\Mux56~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~5_combout\,
	datab => \Shift|ShiftRight1~89_combout\,
	datac => \Shift|ShiftRight0~157_combout\,
	datad => \Mux56~8_combout\,
	combout => \Mux56~9_combout\);

-- Location: LCCOMB_X52_Y35_N0
\Logic|xor_result[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[7]~5_combout\ = \A[7]~input_o\ $ (\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Logic|xor_result[7]~5_combout\);

-- Location: LCCOMB_X52_Y35_N10
\Mux56~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~10_combout\ = (\Mux60~4_combout\ & (((\Logic|xor_result[7]~5_combout\ & \Mux60~3_combout\)))) # (!\Mux60~4_combout\ & ((\Mux56~9_combout\) # ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~9_combout\,
	datab => \Mux60~4_combout\,
	datac => \Logic|xor_result[7]~5_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux56~10_combout\);

-- Location: LCCOMB_X50_Y35_N30
\Mux56~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~11_combout\ = (\Mux60~5_combout\ & ((\A[7]~input_o\ & ((\B[7]~input_o\) # (\Mux56~10_combout\))) # (!\A[7]~input_o\ & (\B[7]~input_o\ & \Mux56~10_combout\)))) # (!\Mux60~5_combout\ & (((\Mux56~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~5_combout\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Mux56~10_combout\,
	combout => \Mux56~11_combout\);

-- Location: LCCOMB_X50_Y35_N14
\Mux56~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~13_combout\ = (\Mux56~11_combout\ & ((\FuncClass[0]~input_o\) # ((\ShiftFN[1]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~11_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux56~13_combout\);

-- Location: LCCOMB_X47_Y37_N26
\Shift|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~41_combout\ = (\B[1]~input_o\ & ((\A[5]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X47_Y37_N28
\Shift|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~42_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~38_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~41_combout\,
	datad => \Shift|ShiftLeft0~38_combout\,
	combout => \Shift|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X50_Y35_N24
\Shift|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~43_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~29_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~42_combout\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X50_Y35_N10
\Mux56~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~12_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux56~13_combout\) # ((\Mux59~8_combout\ & \Shift|ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~8_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux56~13_combout\,
	datad => \Shift|ShiftLeft0~43_combout\,
	combout => \Mux56~12_combout\);

-- Location: LCCOMB_X56_Y36_N26
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (!\ShiftFN[1]~input_o\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X52_Y37_N6
\Shift|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~44_combout\ = (\B[3]~input_o\ & (!\Shift|ShiftLeft0~20_combout\ & \A[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~20_combout\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X47_Y37_N30
\Shift|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~45_combout\ = (\B[1]~input_o\ & (\A[6]~input_o\)) # (!\B[1]~input_o\ & ((\A[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Shift|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X47_Y37_N8
\Shift|ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~46_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~41_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~45_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~41_combout\,
	combout => \Shift|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X52_Y37_N24
\Shift|ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~47_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~33_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~46_combout\,
	datad => \Shift|ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X52_Y37_N26
\Shift|ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~48_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~44_combout\) # (\Shift|ShiftLeft0~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~44_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~47_combout\,
	combout => \Shift|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X56_Y36_N4
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\ShiftFN[0]~input_o\ & ((\B[5]~input_o\) # (!\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X48_Y36_N26
\Add|S[8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[8]~4_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[8]~7_combout\)))

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
	combout => \Add|S[8]~4_combout\);

-- Location: LCCOMB_X56_Y36_N6
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & (\Shift|ShiftLeft0~48_combout\)) # (!\Mux54~3_combout\ & ((\Add|S[8]~4_combout\))))) # (!\Mux54~2_combout\ & (((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Shift|ShiftLeft0~48_combout\,
	datac => \Mux54~3_combout\,
	datad => \Add|S[8]~4_combout\,
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X57_Y35_N18
\Mux54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (!\B[5]~input_o\ & ((\B[3]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X52_Y36_N26
\Mux54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\B[4]~input_o\) # (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X54_Y37_N26
\Shift|ShiftRight0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~162_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~16_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~16_combout\,
	datac => \Shift|ShiftRight0~59_combout\,
	combout => \Shift|ShiftRight0~162_combout\);

-- Location: LCCOMB_X54_Y37_N28
\Shift|ShiftRight0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~163_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~162_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~129_combout\,
	datac => \Shift|ShiftRight0~162_combout\,
	combout => \Shift|ShiftRight0~163_combout\);

-- Location: LCCOMB_X57_Y37_N24
\Shift|ShiftRight0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~218_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftRight0~26_combout\ & !\B[3]~input_o\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~163_combout\,
	datac => \Shift|ShiftRight0~26_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~218_combout\);

-- Location: LCCOMB_X56_Y37_N28
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux54~0_combout\ & (((\Mux54~1_combout\)))) # (!\Mux54~0_combout\ & ((\Mux54~1_combout\ & ((\Shift|ShiftRight0~218_combout\))) # (!\Mux54~1_combout\ & (\Shift|ShiftRight0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Shift|ShiftRight0~55_combout\,
	datac => \Mux54~1_combout\,
	datad => \Shift|ShiftRight0~218_combout\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X54_Y37_N0
\Shift|ShiftRight0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~165_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight0~62_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~62_combout\,
	datad => \Shift|ShiftRight0~30_combout\,
	combout => \Shift|ShiftRight0~165_combout\);

-- Location: LCCOMB_X54_Y37_N30
\Shift|ShiftRight0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~164_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~69_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~33_combout\,
	datac => \Shift|ShiftRight0~69_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~164_combout\);

-- Location: LCCOMB_X56_Y37_N6
\Shift|ShiftRight0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~166_combout\ = (\Shift|ShiftRight0~164_combout\) # ((\Shift|ShiftRight0~165_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~165_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~164_combout\,
	combout => \Shift|ShiftRight0~166_combout\);

-- Location: LCCOMB_X56_Y37_N24
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\Mux54~0_combout\ & ((\Mux55~0_combout\ & ((\Shift|ShiftRight0~166_combout\))) # (!\Mux55~0_combout\ & (\Shift|ShiftRight0~41_combout\)))) # (!\Mux54~0_combout\ & (\Mux55~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Mux55~0_combout\,
	datac => \Shift|ShiftRight0~41_combout\,
	datad => \Shift|ShiftRight0~166_combout\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X57_Y37_N28
\Shift|ShiftRight1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~90_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftRight0~26_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~90_combout\);

-- Location: LCCOMB_X57_Y37_N22
\Shift|ShiftRight1~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~91_combout\ = (\Shift|ShiftRight1~90_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~163_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~163_combout\,
	datad => \Shift|ShiftRight1~90_combout\,
	combout => \Shift|ShiftRight1~91_combout\);

-- Location: LCCOMB_X56_Y36_N24
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\Mux55~2_combout\ & ((\Mux55~1_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux55~2_combout\ & (((\ShiftFN[1]~input_o\ & \Shift|ShiftRight1~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~2_combout\,
	datab => \Mux55~1_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight1~91_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X48_Y36_N0
\Logic|xor_result[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[8]~6_combout\ = \A[8]~input_o\ $ (\B[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datad => \B[8]~input_o\,
	combout => \Logic|xor_result[8]~6_combout\);

-- Location: LCCOMB_X48_Y36_N28
\Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = (\Mux60~4_combout\ & (((\Mux60~3_combout\ & \Logic|xor_result[8]~6_combout\)))) # (!\Mux60~4_combout\ & ((\Mux55~3_combout\) # ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Mux55~3_combout\,
	datac => \Mux60~3_combout\,
	datad => \Logic|xor_result[8]~6_combout\,
	combout => \Mux55~4_combout\);

-- Location: LCCOMB_X48_Y36_N6
\Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~5_combout\ = (\A[8]~input_o\ & ((\Mux55~4_combout\) # ((\B[8]~input_o\ & \Mux60~5_combout\)))) # (!\A[8]~input_o\ & (\Mux55~4_combout\ & ((\B[8]~input_o\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[8]~input_o\,
	datac => \Mux60~5_combout\,
	datad => \Mux55~4_combout\,
	combout => \Mux55~5_combout\);

-- Location: LCCOMB_X48_Y36_N16
\Mux55~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux55~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux55~5_combout\,
	combout => \Mux55~6_combout\);

-- Location: LCCOMB_X49_Y36_N26
\Logic|xor_result[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[9]~7_combout\ = \B[9]~input_o\ $ (\A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Logic|xor_result[9]~7_combout\);

-- Location: LCCOMB_X47_Y36_N6
\Shift|ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~49_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[7]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X47_Y37_N2
\Shift|ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~50_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~45_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~45_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~49_combout\,
	combout => \Shift|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X49_Y37_N28
\Shift|ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~51_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~22_combout\ & (!\B[1]~input_o\))) # (!\B[3]~input_o\ & (((\Shift|ShiftLeft0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~22_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ShiftLeft0~50_combout\,
	combout => \Shift|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X49_Y37_N22
\Shift|ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~52_combout\ = (\B[2]~input_o\ & (((!\B[3]~input_o\ & \Shift|ShiftLeft0~36_combout\)))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~51_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~36_combout\,
	combout => \Shift|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X57_Y35_N8
\Shift|ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~53_combout\ = (!\B[4]~input_o\ & \Shift|ShiftLeft0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~52_combout\,
	combout => \Shift|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X49_Y36_N28
\Add|S[9]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[9]~5_combout\ = \Add|C[9]~8_combout\ $ (\AddnSub~input_o\ $ (\B[9]~input_o\ $ (\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[9]~8_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Add|S[9]~5_combout\);

-- Location: LCCOMB_X56_Y36_N10
\Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~6_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & (\Shift|ShiftLeft0~53_combout\)) # (!\Mux54~3_combout\ & ((\Add|S[9]~5_combout\))))) # (!\Mux54~2_combout\ & (((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Shift|ShiftLeft0~53_combout\,
	datac => \Mux54~3_combout\,
	datad => \Add|S[9]~5_combout\,
	combout => \Mux54~6_combout\);

-- Location: LCCOMB_X57_Y35_N20
\Shift|ShiftRight1~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~92_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~28_combout\,
	combout => \Shift|ShiftRight1~92_combout\);

-- Location: LCCOMB_X58_Y35_N10
\Shift|ShiftRight0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~167_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~96_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~89_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~96_combout\,
	combout => \Shift|ShiftRight0~167_combout\);

-- Location: LCCOMB_X58_Y35_N28
\Shift|ShiftRight0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~168_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~167_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~167_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~137_combout\,
	combout => \Shift|ShiftRight0~168_combout\);

-- Location: LCCOMB_X57_Y35_N22
\Shift|ShiftRight1~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~93_combout\ = (\Shift|ShiftRight1~92_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~92_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~168_combout\,
	combout => \Shift|ShiftRight1~93_combout\);

-- Location: LCCOMB_X58_Y35_N22
\Shift|ShiftRight0~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~225_combout\ = (\B[3]~input_o\) # ((\B[2]~input_o\ & ((\Shift|ShiftRight0~99_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~100_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~99_combout\,
	combout => \Shift|ShiftRight0~225_combout\);

-- Location: LCCOMB_X57_Y35_N4
\Shift|ShiftRight0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~226_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftRight0~225_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~168_combout\ & ((\Shift|ShiftRight0~225_combout\) # (!\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~225_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~168_combout\,
	combout => \Shift|ShiftRight0~226_combout\);

-- Location: LCCOMB_X57_Y38_N4
\Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (\Mux54~1_combout\ & ((\Mux54~0_combout\) # ((\Shift|ShiftRight0~226_combout\)))) # (!\Mux54~1_combout\ & (!\Mux54~0_combout\ & ((\Shift|ShiftRight0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Mux54~0_combout\,
	datac => \Shift|ShiftRight0~226_combout\,
	datad => \Shift|ShiftRight0~80_combout\,
	combout => \Mux54~4_combout\);

-- Location: LCCOMB_X57_Y38_N16
\Shift|ShiftRight0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~170_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~90_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~82_combout\,
	datad => \Shift|ShiftRight0~90_combout\,
	combout => \Shift|ShiftRight0~170_combout\);

-- Location: LCCOMB_X57_Y38_N30
\Shift|ShiftRight0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~169_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~93_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~83_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~93_combout\,
	combout => \Shift|ShiftRight0~169_combout\);

-- Location: LCCOMB_X57_Y38_N18
\Shift|ShiftRight0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~171_combout\ = (\Shift|ShiftRight0~169_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~170_combout\,
	datac => \Shift|ShiftRight0~169_combout\,
	combout => \Shift|ShiftRight0~171_combout\);

-- Location: LCCOMB_X57_Y38_N12
\Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~5_combout\ = (\Mux54~0_combout\ & ((\Mux54~4_combout\ & ((\Shift|ShiftRight0~171_combout\))) # (!\Mux54~4_combout\ & (\Shift|ShiftRight0~87_combout\)))) # (!\Mux54~0_combout\ & (((\Mux54~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Shift|ShiftRight0~87_combout\,
	datac => \Mux54~4_combout\,
	datad => \Shift|ShiftRight0~171_combout\,
	combout => \Mux54~5_combout\);

-- Location: LCCOMB_X56_Y36_N20
\Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~7_combout\ = (\Mux54~6_combout\ & (((\Mux54~5_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux54~6_combout\ & (\Shift|ShiftRight1~93_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~6_combout\,
	datab => \Shift|ShiftRight1~93_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux54~5_combout\,
	combout => \Mux54~7_combout\);

-- Location: LCCOMB_X49_Y36_N6
\Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~8_combout\ = (\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Logic|xor_result[9]~7_combout\)) # (!\Mux60~4_combout\ & ((\Mux54~7_combout\))))) # (!\Mux60~3_combout\ & (!\Mux60~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Mux60~4_combout\,
	datac => \Logic|xor_result[9]~7_combout\,
	datad => \Mux54~7_combout\,
	combout => \Mux54~8_combout\);

-- Location: LCCOMB_X49_Y36_N16
\Mux54~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~9_combout\ = (\Mux54~8_combout\ & (((\B[9]~input_o\) # (\A[9]~input_o\)) # (!\Mux60~5_combout\))) # (!\Mux54~8_combout\ & (\Mux60~5_combout\ & (\B[9]~input_o\ & \A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~8_combout\,
	datab => \Mux60~5_combout\,
	datac => \B[9]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Mux54~9_combout\);

-- Location: LCCOMB_X49_Y36_N18
\Mux54~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~10_combout\ = (!\FuncClass[1]~input_o\ & \Mux54~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux54~9_combout\,
	combout => \Mux54~10_combout\);

-- Location: LCCOMB_X55_Y40_N8
\Shift|ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~54_combout\ = (\B[2]~input_o\ & (!\B[3]~input_o\ & \Shift|ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~39_combout\,
	combout => \Shift|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X47_Y36_N0
\Shift|ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~55_combout\ = (\B[1]~input_o\ & ((\A[8]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datac => \A[8]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X47_Y36_N10
\Shift|ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~56_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~49_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~55_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~49_combout\,
	combout => \Shift|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X55_Y40_N18
\Shift|ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~57_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~26_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~56_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~26_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X55_Y40_N4
\Shift|ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~58_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~54_combout\) # (\Shift|ShiftLeft0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~54_combout\,
	datad => \Shift|ShiftLeft0~57_combout\,
	combout => \Shift|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X52_Y35_N14
\Add|S[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[10]~6_combout\ = \AddnSub~input_o\ $ (\A[10]~input_o\ $ (\B[10]~input_o\ $ (\Add|C[10]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	datad => \Add|C[10]~9_combout\,
	combout => \Add|S[10]~6_combout\);

-- Location: LCCOMB_X56_Y36_N22
\Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\Mux54~3_combout\ & (\Shift|ShiftLeft0~58_combout\ & (\Mux54~2_combout\))) # (!\Mux54~3_combout\ & (((\Add|S[10]~6_combout\) # (!\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~58_combout\,
	datab => \Mux54~3_combout\,
	datac => \Mux54~2_combout\,
	datad => \Add|S[10]~6_combout\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X58_Y36_N24
\Shift|ShiftRight0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~172_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight1~48_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~40_combout\,
	datac => \Shift|ShiftRight1~48_combout\,
	combout => \Shift|ShiftRight0~172_combout\);

-- Location: LCCOMB_X58_Y36_N10
\Shift|ShiftRight0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~173_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~172_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~150_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~172_combout\,
	combout => \Shift|ShiftRight0~173_combout\);

-- Location: LCCOMB_X57_Y36_N24
\Shift|ShiftRight1~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~94_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~61_combout\,
	combout => \Shift|ShiftRight1~94_combout\);

-- Location: LCCOMB_X57_Y36_N10
\Shift|ShiftRight1~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~95_combout\ = (\Shift|ShiftRight1~94_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~173_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~173_combout\,
	datad => \Shift|ShiftRight1~94_combout\,
	combout => \Shift|ShiftRight1~95_combout\);

-- Location: LCCOMB_X53_Y40_N30
\Shift|ShiftRight0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~175_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~42_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~42_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight1~32_combout\,
	combout => \Shift|ShiftRight0~175_combout\);

-- Location: LCCOMB_X53_Y40_N12
\Shift|ShiftRight0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~174_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight1~46_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~46_combout\,
	datad => \Shift|ShiftRight1~34_combout\,
	combout => \Shift|ShiftRight0~174_combout\);

-- Location: LCCOMB_X53_Y40_N16
\Shift|ShiftRight0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~176_combout\ = (\Shift|ShiftRight0~174_combout\) # ((\B[2]~input_o\ & \Shift|ShiftRight0~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~175_combout\,
	datad => \Shift|ShiftRight0~174_combout\,
	combout => \Shift|ShiftRight0~176_combout\);

-- Location: LCCOMB_X57_Y36_N0
\Shift|ShiftRight0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~219_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & ((\Shift|ShiftRight0~110_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~173_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~110_combout\,
	combout => \Shift|ShiftRight0~219_combout\);

-- Location: LCCOMB_X57_Y36_N28
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Mux54~0_combout\ & (\Mux54~1_combout\)) # (!\Mux54~0_combout\ & ((\Mux54~1_combout\ & ((\Shift|ShiftRight0~219_combout\))) # (!\Mux54~1_combout\ & (\Shift|ShiftRight0~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|ShiftRight0~113_combout\,
	datad => \Shift|ShiftRight0~219_combout\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X57_Y36_N6
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Mux54~0_combout\ & ((\Mux53~0_combout\ & (\Shift|ShiftRight0~176_combout\)) # (!\Mux53~0_combout\ & ((\Shift|ShiftRight0~104_combout\))))) # (!\Mux54~0_combout\ & (((\Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Shift|ShiftRight0~176_combout\,
	datac => \Shift|ShiftRight0~104_combout\,
	datad => \Mux53~0_combout\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X56_Y36_N16
\Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\Mux53~2_combout\ & (((\Mux53~1_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux53~2_combout\ & (\Shift|ShiftRight1~95_combout\ & (\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~2_combout\,
	datab => \Shift|ShiftRight1~95_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux53~1_combout\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X52_Y35_N12
\Logic|xor_result[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[10]~8_combout\ = \A[10]~input_o\ $ (\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[10]~input_o\,
	datac => \B[10]~input_o\,
	combout => \Logic|xor_result[10]~8_combout\);

-- Location: LCCOMB_X52_Y35_N8
\Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\Mux60~4_combout\ & (((\Logic|xor_result[10]~8_combout\ & \Mux60~3_combout\)))) # (!\Mux60~4_combout\ & ((\Mux53~3_combout\) # ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~3_combout\,
	datab => \Mux60~4_combout\,
	datac => \Logic|xor_result[10]~8_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux53~4_combout\);

-- Location: LCCOMB_X52_Y35_N26
\Mux53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~5_combout\ = (\B[10]~input_o\ & ((\Mux53~4_combout\) # ((\A[10]~input_o\ & \Mux60~5_combout\)))) # (!\B[10]~input_o\ & (\Mux53~4_combout\ & ((\A[10]~input_o\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Mux53~4_combout\,
	datac => \A[10]~input_o\,
	datad => \Mux60~5_combout\,
	combout => \Mux53~5_combout\);

-- Location: LCCOMB_X52_Y35_N28
\Mux53~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux53~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux53~5_combout\,
	combout => \Mux53~6_combout\);

-- Location: LCCOMB_X52_Y35_N6
\Logic|xor_result[11]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[11]~9_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	combout => \Logic|xor_result[11]~9_combout\);

-- Location: LCCOMB_X52_Y35_N16
\Add|S[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[11]~7_combout\ = \AddnSub~input_o\ $ (\B[11]~input_o\ $ (\A[11]~input_o\ $ (\Add|C[11]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[11]~input_o\,
	datac => \A[11]~input_o\,
	datad => \Add|C[11]~10_combout\,
	combout => \Add|S[11]~7_combout\);

-- Location: LCCOMB_X47_Y36_N12
\Shift|ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~59_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[11]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X47_Y36_N14
\Shift|ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~60_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~55_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~59_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~55_combout\,
	combout => \Shift|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X50_Y39_N10
\Shift|ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~61_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~29_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~60_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X50_Y39_N20
\Shift|ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~62_combout\ = (\Shift|ShiftLeft0~61_combout\) # ((\Shift|ShiftLeft0~42_combout\ & (\B[2]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~42_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~61_combout\,
	combout => \Shift|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X53_Y35_N30
\Shift|ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~63_combout\ = (\Shift|ShiftLeft0~62_combout\ & !\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~62_combout\,
	datac => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X53_Y35_N16
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & ((\Shift|ShiftLeft0~63_combout\))) # (!\Mux54~3_combout\ & (\Add|S[11]~7_combout\)))) # (!\Mux54~2_combout\ & (((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Add|S[11]~7_combout\,
	datac => \Shift|ShiftLeft0~63_combout\,
	datad => \Mux54~3_combout\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X53_Y38_N16
\Shift|ShiftRight0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~180_combout\ = (\B[3]~input_o\ & (\Shift|ShiftRight1~73_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight1~73_combout\,
	datad => \Shift|ShiftRight1~64_combout\,
	combout => \Shift|ShiftRight0~180_combout\);

-- Location: LCCOMB_X53_Y38_N6
\Shift|ShiftRight0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~179_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight1~75_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~75_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~65_combout\,
	combout => \Shift|ShiftRight0~179_combout\);

-- Location: LCCOMB_X53_Y38_N10
\Shift|ShiftRight0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~181_combout\ = (\Shift|ShiftRight0~179_combout\) # ((\Shift|ShiftRight0~180_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~180_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~179_combout\,
	combout => \Shift|ShiftRight0~181_combout\);

-- Location: LCCOMB_X53_Y38_N2
\Shift|ShiftRight0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~177_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight1~68_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight1~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~68_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~72_combout\,
	combout => \Shift|ShiftRight0~177_combout\);

-- Location: LCCOMB_X53_Y38_N28
\Shift|ShiftRight0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~178_combout\ = (\Shift|ShiftRight0~177_combout\) # ((\Shift|ShiftRight0~155_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~155_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~177_combout\,
	combout => \Shift|ShiftRight0~178_combout\);

-- Location: LCCOMB_X52_Y38_N12
\Shift|ShiftRight0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~220_combout\ = (\B[4]~input_o\ & (\Shift|ShiftRight0~118_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ShiftRight0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~118_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~178_combout\,
	combout => \Shift|ShiftRight0~220_combout\);

-- Location: LCCOMB_X53_Y35_N26
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\Mux54~0_combout\ & (((\Mux54~1_combout\)))) # (!\Mux54~0_combout\ & ((\Mux54~1_combout\ & (\Shift|ShiftRight0~220_combout\)) # (!\Mux54~1_combout\ & ((\Shift|ShiftRight0~124_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~220_combout\,
	datab => \Mux54~0_combout\,
	datac => \Shift|ShiftRight0~124_combout\,
	datad => \Mux54~1_combout\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X53_Y35_N4
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux54~0_combout\ & ((\Mux52~0_combout\ & (\Shift|ShiftRight0~181_combout\)) # (!\Mux52~0_combout\ & ((\Shift|ShiftRight0~115_combout\))))) # (!\Mux54~0_combout\ & (((\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~181_combout\,
	datab => \Mux54~0_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ShiftRight0~115_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X55_Y35_N8
\Shift|ShiftRight1~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~96_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~27_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~27_combout\ & ((\Shift|ShiftRight1~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~27_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~71_combout\,
	combout => \Shift|ShiftRight1~96_combout\);

-- Location: LCCOMB_X53_Y35_N24
\Shift|ShiftRight1~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~97_combout\ = (\Shift|ShiftRight1~96_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~178_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight1~96_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~178_combout\,
	combout => \Shift|ShiftRight1~97_combout\);

-- Location: LCCOMB_X53_Y35_N18
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux52~2_combout\ & (\Mux52~1_combout\)) # (!\Mux52~2_combout\ & ((\Shift|ShiftRight1~97_combout\))))) # (!\ShiftFN[1]~input_o\ & (\Mux52~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux52~2_combout\,
	datac => \Mux52~1_combout\,
	datad => \Shift|ShiftRight1~97_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X52_Y35_N18
\Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\Mux60~4_combout\ & (\Logic|xor_result[11]~9_combout\ & (\Mux60~3_combout\))) # (!\Mux60~4_combout\ & (((\Mux52~3_combout\) # (!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[11]~9_combout\,
	datab => \Mux60~4_combout\,
	datac => \Mux60~3_combout\,
	datad => \Mux52~3_combout\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X52_Y35_N4
\Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~5_combout\ = (\A[11]~input_o\ & ((\Mux52~4_combout\) # ((\Mux60~5_combout\ & \B[11]~input_o\)))) # (!\A[11]~input_o\ & (\Mux52~4_combout\ & ((\B[11]~input_o\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datab => \Mux60~5_combout\,
	datac => \B[11]~input_o\,
	datad => \Mux52~4_combout\,
	combout => \Mux52~5_combout\);

-- Location: LCCOMB_X56_Y41_N16
\Mux52~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux52~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux52~5_combout\,
	combout => \Mux52~6_combout\);

-- Location: LCCOMB_X52_Y37_N20
\Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~5_combout\ = (\LogicFN[1]~input_o\ & ((\B[12]~input_o\ & ((\A[12]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[12]~input_o\ & (!\LogicFN[0]~input_o\ & \A[12]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[12]~input_o\ $ (\A[12]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[12]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Mux51~5_combout\);

-- Location: LCCOMB_X52_Y37_N14
\Mux51~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~6_combout\ = (\Mux51~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[0]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux51~5_combout\,
	combout => \Mux51~6_combout\);

-- Location: LCCOMB_X47_Y36_N24
\Shift|ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~64_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[10]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X47_Y36_N26
\Shift|ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~65_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~59_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~59_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~64_combout\,
	combout => \Shift|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X50_Y36_N18
\Shift|ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~66_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~46_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~65_combout\,
	datad => \Shift|ShiftLeft0~46_combout\,
	combout => \Shift|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X50_Y36_N28
\Shift|ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~67_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~66_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~66_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~34_combout\,
	combout => \Shift|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X52_Y37_N4
\Add|S[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[12]~8_combout\ = \AddnSub~input_o\ $ (\A[12]~input_o\ $ (\B[12]~input_o\ $ (\Add|C[12]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[12]~input_o\,
	datad => \Add|C[12]~11_combout\,
	combout => \Add|S[12]~8_combout\);

-- Location: LCCOMB_X56_Y36_N18
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & (\Shift|ShiftLeft0~67_combout\)) # (!\Mux54~3_combout\ & ((\Add|S[12]~8_combout\))))) # (!\Mux54~2_combout\ & (((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Shift|ShiftLeft0~67_combout\,
	datac => \Mux54~3_combout\,
	datad => \Add|S[12]~8_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X57_Y40_N6
\Shift|ShiftRight0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~186_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[34]~input_o\))) # (!\B[1]~input_o\ & (\A[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Shift|ShiftRight0~186_combout\);

-- Location: LCCOMB_X57_Y40_N20
\Shift|ShiftRight0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~185_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[35]~input_o\)) # (!\B[1]~input_o\ & ((\A[33]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ShiftRight0~185_combout\);

-- Location: LCCOMB_X57_Y40_N8
\Shift|ShiftRight0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~187_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftRight0~186_combout\) # (\Shift|ShiftRight0~185_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~186_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~185_combout\,
	combout => \Shift|ShiftRight0~187_combout\);

-- Location: LCCOMB_X59_Y38_N14
\Shift|ShiftRight0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~189_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[42]~input_o\)) # (!\B[1]~input_o\ & ((\A[40]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[42]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Shift|ShiftRight0~189_combout\);

-- Location: LCCOMB_X59_Y38_N4
\Shift|ShiftRight0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~188_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[43]~input_o\))) # (!\B[1]~input_o\ & (\A[41]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[41]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Shift|ShiftRight0~188_combout\);

-- Location: LCCOMB_X59_Y38_N16
\Shift|ShiftRight0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~190_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftRight0~189_combout\) # (\Shift|ShiftRight0~188_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~189_combout\,
	datac => \Shift|ShiftRight0~188_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~190_combout\);

-- Location: LCCOMB_X56_Y37_N26
\Shift|ShiftRight0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~191_combout\ = (\B[2]~input_o\ & (((\Shift|ShiftRight0~187_combout\) # (\Shift|ShiftRight0~190_combout\)))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~165_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~165_combout\,
	datac => \Shift|ShiftRight0~187_combout\,
	datad => \Shift|ShiftRight0~190_combout\,
	combout => \Shift|ShiftRight0~191_combout\);

-- Location: LCCOMB_X54_Y37_N2
\Shift|ShiftRight0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~182_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~25_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~19_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~25_combout\,
	combout => \Shift|ShiftRight0~182_combout\);

-- Location: LCCOMB_X54_Y37_N20
\Shift|ShiftRight0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~183_combout\ = (\Shift|ShiftRight0~182_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~162_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~182_combout\,
	datac => \Shift|ShiftRight0~162_combout\,
	combout => \Shift|ShiftRight0~183_combout\);

-- Location: LCCOMB_X57_Y37_N4
\Shift|ShiftRight0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~184_combout\ = (\B[4]~input_o\ & (((!\Shift|ShiftLeft0~27_combout\ & \Shift|ShiftRight0~22_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~183_combout\,
	datac => \Shift|ShiftLeft0~27_combout\,
	datad => \Shift|ShiftRight0~22_combout\,
	combout => \Shift|ShiftRight0~184_combout\);

-- Location: LCCOMB_X57_Y36_N16
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux54~0_combout\ & (\Mux54~1_combout\)) # (!\Mux54~0_combout\ & ((\Mux54~1_combout\ & ((\Shift|ShiftRight0~184_combout\))) # (!\Mux54~1_combout\ & (\Shift|ShiftRight0~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|ShiftRight0~125_combout\,
	datad => \Shift|ShiftRight0~184_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X56_Y37_N4
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Mux54~0_combout\ & ((\Mux51~0_combout\ & ((\Shift|ShiftRight0~191_combout\))) # (!\Mux51~0_combout\ & (\Shift|ShiftRight0~127_combout\)))) # (!\Mux54~0_combout\ & (((\Mux51~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Shift|ShiftRight0~127_combout\,
	datac => \Shift|ShiftRight0~191_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X57_Y37_N0
\Shift|ShiftRight1~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~98_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~27_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~27_combout\ & ((\Shift|ShiftRight0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftLeft0~27_combout\,
	datad => \Shift|ShiftRight0~22_combout\,
	combout => \Shift|ShiftRight1~98_combout\);

-- Location: LCCOMB_X57_Y37_N18
\Shift|ShiftRight1~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~99_combout\ = (\Shift|ShiftRight1~98_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~183_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~183_combout\,
	datad => \Shift|ShiftRight1~98_combout\,
	combout => \Shift|ShiftRight1~99_combout\);

-- Location: LCCOMB_X58_Y37_N0
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\Mux51~2_combout\ & (((\Mux51~1_combout\)) # (!\ShiftFN[1]~input_o\))) # (!\Mux51~2_combout\ & (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight1~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux51~2_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux51~1_combout\,
	datad => \Shift|ShiftRight1~99_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X58_Y37_N26
\Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux51~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux51~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux51~6_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux51~3_combout\,
	combout => \Mux51~4_combout\);

-- Location: LCCOMB_X54_Y39_N10
\Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~5_combout\ = (\B[13]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[13]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[13]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[13]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[13]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Mux50~5_combout\);

-- Location: LCCOMB_X54_Y39_N20
\Mux50~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~6_combout\ = (\Mux50~5_combout\ & ((\B[1]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux50~5_combout\,
	combout => \Mux50~6_combout\);

-- Location: LCCOMB_X47_Y36_N4
\Shift|ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~68_combout\ = (\B[1]~input_o\ & ((\A[11]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datab => \A[11]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X47_Y36_N22
\Shift|ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~69_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~64_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~64_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~68_combout\,
	combout => \Shift|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X50_Y38_N24
\Shift|ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~70_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~50_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~69_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~50_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X54_Y38_N8
\Shift|ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~71_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~70_combout\) # ((\Shift|ShiftLeft0~37_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~37_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~70_combout\,
	combout => \Shift|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X54_Y39_N4
\Add|S[13]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[13]~9_combout\ = \AddnSub~input_o\ $ (\Add|C[13]~12_combout\ $ (\B[13]~input_o\ $ (\A[13]~input_o\)))

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
	combout => \Add|S[13]~9_combout\);

-- Location: LCCOMB_X58_Y38_N18
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & (\Shift|ShiftLeft0~71_combout\)) # (!\Mux54~3_combout\ & ((\Add|S[13]~9_combout\))))) # (!\Mux54~2_combout\ & (((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Shift|ShiftLeft0~71_combout\,
	datac => \Mux54~3_combout\,
	datad => \Add|S[13]~9_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X57_Y38_N22
\Shift|ShiftRight0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~195_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~94_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~170_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~170_combout\,
	datad => \Shift|ShiftRight0~94_combout\,
	combout => \Shift|ShiftRight0~195_combout\);

-- Location: LCCOMB_X58_Y35_N30
\Shift|ShiftRight0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~192_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight0~100_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~97_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~100_combout\,
	combout => \Shift|ShiftRight0~192_combout\);

-- Location: LCCOMB_X58_Y35_N0
\Shift|ShiftRight0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~193_combout\ = (\Shift|ShiftRight0~192_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~167_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~192_combout\,
	datad => \Shift|ShiftRight0~167_combout\,
	combout => \Shift|ShiftRight0~193_combout\);

-- Location: LCCOMB_X58_Y38_N28
\Shift|ShiftRight0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~194_combout\ = (\B[4]~input_o\ & (((!\Shift|ShiftLeft0~27_combout\ & \Shift|ShiftRight0~99_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~193_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~193_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~27_combout\,
	datad => \Shift|ShiftRight0~99_combout\,
	combout => \Shift|ShiftRight0~194_combout\);

-- Location: LCCOMB_X58_Y38_N22
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux54~0_combout\ & (((\Mux54~1_combout\)))) # (!\Mux54~0_combout\ & ((\Mux54~1_combout\ & ((\Shift|ShiftRight0~194_combout\))) # (!\Mux54~1_combout\ & (\Shift|ShiftRight0~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Shift|ShiftRight0~140_combout\,
	datac => \Mux54~1_combout\,
	datad => \Shift|ShiftRight0~194_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X58_Y38_N8
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux54~0_combout\ & ((\Mux50~0_combout\ & (\Shift|ShiftRight0~195_combout\)) # (!\Mux50~0_combout\ & ((\Shift|ShiftRight0~142_combout\))))) # (!\Mux54~0_combout\ & (((\Mux50~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~0_combout\,
	datab => \Shift|ShiftRight0~195_combout\,
	datac => \Mux50~0_combout\,
	datad => \Shift|ShiftRight0~142_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X58_Y38_N24
\Shift|ShiftRight1~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~100_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~23_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~23_combout\ & ((\Shift|ShiftRight1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \Shift|ShiftRight1~25_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~100_combout\);

-- Location: LCCOMB_X58_Y38_N10
\Shift|ShiftRight1~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~101_combout\ = (\Shift|ShiftRight1~100_combout\) # ((\Shift|ShiftRight0~193_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~193_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~100_combout\,
	combout => \Shift|ShiftRight1~101_combout\);

-- Location: LCCOMB_X58_Y38_N20
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux50~2_combout\ & (\Mux50~1_combout\)) # (!\Mux50~2_combout\ & ((\Shift|ShiftRight1~101_combout\))))) # (!\ShiftFN[1]~input_o\ & (\Mux50~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux50~2_combout\,
	datac => \Mux50~1_combout\,
	datad => \Shift|ShiftRight1~101_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X58_Y37_N4
\Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux50~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux50~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux50~6_combout\,
	datad => \Mux50~3_combout\,
	combout => \Mux50~4_combout\);

-- Location: LCCOMB_X58_Y36_N4
\Shift|ShiftRight0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~196_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftRight1~52_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight1~50_combout\,
	datad => \Shift|ShiftRight1~52_combout\,
	combout => \Shift|ShiftRight0~196_combout\);

-- Location: LCCOMB_X58_Y36_N30
\Shift|ShiftRight0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~197_combout\ = (\Shift|ShiftRight0~196_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftRight0~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftRight0~196_combout\,
	datad => \Shift|ShiftRight0~172_combout\,
	combout => \Shift|ShiftRight0~197_combout\);

-- Location: LCCOMB_X55_Y39_N18
\Shift|ShiftRight0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~198_combout\ = (\B[4]~input_o\ & (((!\Shift|ShiftLeft0~23_combout\ & \Shift|ShiftRight1~8_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~197_combout\,
	datac => \Shift|ShiftLeft0~23_combout\,
	datad => \Shift|ShiftRight1~8_combout\,
	combout => \Shift|ShiftRight0~198_combout\);

-- Location: LCCOMB_X55_Y39_N4
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Mux54~1_combout\ & (((\Shift|ShiftRight0~198_combout\) # (\Mux54~0_combout\)))) # (!\Mux54~1_combout\ & (\Shift|ShiftRight0~144_combout\ & ((!\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~144_combout\,
	datab => \Shift|ShiftRight0~198_combout\,
	datac => \Mux54~1_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X53_Y40_N10
\Shift|ShiftRight0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~199_combout\ = (\B[2]~input_o\ & (\Shift|ShiftRight0~107_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~107_combout\,
	datac => \Shift|ShiftRight0~175_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~199_combout\);

-- Location: LCCOMB_X55_Y39_N22
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\Mux54~0_combout\ & ((\Mux49~0_combout\ & ((\Shift|ShiftRight0~199_combout\))) # (!\Mux49~0_combout\ & (\Shift|ShiftRight0~146_combout\)))) # (!\Mux54~0_combout\ & (((\Mux49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~146_combout\,
	datab => \Mux54~0_combout\,
	datac => \Mux49~0_combout\,
	datad => \Shift|ShiftRight0~199_combout\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X54_Y39_N30
\Shift|ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~72_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[14]~input_o\,
	datad => \A[12]~input_o\,
	combout => \Shift|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X54_Y39_N0
\Shift|ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~73_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~68_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~72_combout\,
	datab => \Shift|ShiftLeft0~68_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X54_Y40_N0
\Shift|ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~74_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~56_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~56_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~73_combout\,
	combout => \Shift|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X54_Y40_N26
\Shift|ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~75_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~74_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~74_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~40_combout\,
	combout => \Shift|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X54_Y39_N2
\Add|S[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[14]~10_combout\ = \AddnSub~input_o\ $ (\Add|C[14]~13_combout\ $ (\A[14]~input_o\ $ (\B[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[14]~13_combout\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|S[14]~10_combout\);

-- Location: LCCOMB_X55_Y39_N16
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & (\Shift|ShiftLeft0~75_combout\)) # (!\Mux54~3_combout\ & ((\Add|S[14]~10_combout\))))) # (!\Mux54~2_combout\ & (((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~75_combout\,
	datab => \Mux54~2_combout\,
	datac => \Mux54~3_combout\,
	datad => \Add|S[14]~10_combout\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X58_Y37_N14
\Shift|ShiftRight1~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~102_combout\ = (\B[3]~input_o\ & (((\A[63]~input_o\)))) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~20_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~20_combout\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~20_combout\,
	datac => \A[63]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Shift|ShiftRight1~102_combout\);

-- Location: LCCOMB_X55_Y39_N24
\Shift|ShiftRight1~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~103_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftRight1~102_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~197_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~102_combout\,
	combout => \Shift|ShiftRight1~103_combout\);

-- Location: LCCOMB_X55_Y39_N26
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\Mux49~2_combout\ & ((\Mux49~1_combout\) # ((!\ShiftFN[1]~input_o\)))) # (!\Mux49~2_combout\ & (((\ShiftFN[1]~input_o\ & \Shift|ShiftRight1~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~1_combout\,
	datab => \Mux49~2_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight1~103_combout\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X54_Y39_N24
\Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = (\B[14]~input_o\ & ((\A[14]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[14]~input_o\ & ((\A[14]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[14]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux49~5_combout\);

-- Location: LCCOMB_X53_Y39_N6
\Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~6_combout\ = (\Mux49~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Mux49~5_combout\,
	combout => \Mux49~6_combout\);

-- Location: LCCOMB_X53_Y39_N20
\Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux49~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux49~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux49~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux49~6_combout\,
	combout => \Mux49~4_combout\);

-- Location: LCCOMB_X53_Y39_N18
\Mux48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[15]~input_o\ & \B[15]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[15]~input_o\ $ (\B[15]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[15]~input_o\) # (\B[15]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Mux48~5_combout\);

-- Location: LCCOMB_X53_Y39_N12
\Mux48~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~6_combout\ = (\Mux48~5_combout\ & ((\B[3]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux48~5_combout\,
	combout => \Mux48~6_combout\);

-- Location: LCCOMB_X53_Y38_N20
\Shift|ShiftRight0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~200_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftRight1~69_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight1~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight1~69_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight1~72_combout\,
	combout => \Shift|ShiftRight0~200_combout\);

-- Location: LCCOMB_X55_Y35_N2
\Shift|ShiftRight0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~201_combout\ = (\Shift|ShiftRight0~200_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftRight0~153_combout\,
	datad => \Shift|ShiftRight0~200_combout\,
	combout => \Shift|ShiftRight0~201_combout\);

-- Location: LCCOMB_X55_Y36_N24
\Shift|ShiftRight1~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~104_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~201_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight0~201_combout\,
	combout => \Shift|ShiftRight1~104_combout\);

-- Location: LCCOMB_X55_Y36_N22
\Shift|ShiftLeft0~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~287_combout\ = (!\B[3]~input_o\ & (!\Shift|ShiftLeft0~20_combout\ & \B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~20_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~287_combout\);

-- Location: LCCOMB_X55_Y36_N10
\Shift|ShiftRight0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~202_combout\ = (\A[63]~input_o\ & ((\Shift|ShiftLeft0~287_combout\) # ((!\B[4]~input_o\ & \Shift|ShiftRight0~201_combout\)))) # (!\A[63]~input_o\ & (!\B[4]~input_o\ & ((\Shift|ShiftRight0~201_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~287_combout\,
	datad => \Shift|ShiftRight0~201_combout\,
	combout => \Shift|ShiftRight0~202_combout\);

-- Location: LCCOMB_X52_Y39_N12
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (\Mux54~1_combout\ & ((\Shift|ShiftRight0~202_combout\) # ((\Mux54~0_combout\)))) # (!\Mux54~1_combout\ & (((\Shift|ShiftRight0~158_combout\ & !\Mux54~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Shift|ShiftRight0~202_combout\,
	datac => \Shift|ShiftRight0~158_combout\,
	datad => \Mux54~0_combout\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X53_Y38_N30
\Shift|ShiftRight0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~203_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftRight0~121_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~180_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~180_combout\,
	datac => \Shift|ShiftRight0~121_combout\,
	combout => \Shift|ShiftRight0~203_combout\);

-- Location: LCCOMB_X53_Y39_N14
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\Mux48~0_combout\ & (((\Shift|ShiftRight0~203_combout\)) # (!\Mux54~0_combout\))) # (!\Mux48~0_combout\ & (\Mux54~0_combout\ & ((\Shift|ShiftRight0~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Mux54~0_combout\,
	datac => \Shift|ShiftRight0~203_combout\,
	datad => \Shift|ShiftRight0~160_combout\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X54_Y39_N12
\Shift|ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~76_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X54_Y39_N14
\Shift|ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~77_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~72_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~72_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~76_combout\,
	combout => \Shift|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X50_Y39_N6
\Shift|ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~78_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~60_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~60_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~77_combout\,
	combout => \Shift|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X50_Y39_N24
\Shift|ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~79_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~78_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~78_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~43_combout\,
	combout => \Shift|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X53_Y39_N8
\Add|S[15]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[15]~11_combout\ = \B[15]~input_o\ $ (\AddnSub~input_o\ $ (\A[15]~input_o\ $ (\Add|C[15]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[15]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[15]~input_o\,
	datad => \Add|C[15]~14_combout\,
	combout => \Add|S[15]~11_combout\);

-- Location: LCCOMB_X53_Y39_N2
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\Mux54~2_combout\ & ((\Mux54~3_combout\ & (\Shift|ShiftLeft0~79_combout\)) # (!\Mux54~3_combout\ & ((\Add|S[15]~11_combout\))))) # (!\Mux54~2_combout\ & (((!\Mux54~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Shift|ShiftLeft0~79_combout\,
	datac => \Add|S[15]~11_combout\,
	datad => \Mux54~3_combout\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X53_Y39_N28
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux48~2_combout\ & ((\Mux48~1_combout\))) # (!\Mux48~2_combout\ & (\Shift|ShiftRight1~104_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Shift|ShiftRight1~104_combout\,
	datac => \Mux48~1_combout\,
	datad => \Mux48~2_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X53_Y39_N30
\Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux48~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux48~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~6_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux48~3_combout\,
	combout => \Mux48~4_combout\);

-- Location: LCCOMB_X55_Y37_N12
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\FuncClass[0]~input_o\) # ((\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X57_Y37_N6
\Shift|ShiftRight0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~204_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~20_combout\) # ((\Shift|ShiftRight0~26_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~20_combout\,
	datac => \Shift|ShiftRight0~26_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight0~204_combout\);

-- Location: LCCOMB_X53_Y37_N14
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\B[5]~input_o\ & ((\Mux60~1_combout\) # ((\Shift|ShiftRight0~204_combout\)))) # (!\B[5]~input_o\ & (!\Mux60~1_combout\ & (\Shift|ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux60~1_combout\,
	datac => \Shift|ShiftRight0~42_combout\,
	datad => \Shift|ShiftRight0~204_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X57_Y37_N16
\Shift|ShiftRight1~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~105_combout\ = (\Shift|ShiftRight0~204_combout\) # ((\B[4]~input_o\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[63]~input_o\,
	datad => \Shift|ShiftRight0~204_combout\,
	combout => \Shift|ShiftRight1~105_combout\);

-- Location: LCCOMB_X53_Y37_N8
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\Mux60~1_combout\ & ((\Mux47~0_combout\ & ((\Shift|ShiftRight1~105_combout\))) # (!\Mux47~0_combout\ & (\Shift|ShiftRight0~71_combout\)))) # (!\Mux60~1_combout\ & (((\Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~71_combout\,
	datab => \Mux60~1_combout\,
	datac => \Mux47~0_combout\,
	datad => \Shift|ShiftRight1~105_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X53_Y37_N12
\Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~5_combout\ = (\B[16]~input_o\ & ((\A[16]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[16]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[16]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[16]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[16]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux47~5_combout\);

-- Location: LCCOMB_X53_Y37_N6
\Mux47~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~6_combout\ = (\Mux47~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[4]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[4]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux47~5_combout\,
	combout => \Mux47~6_combout\);

-- Location: LCCOMB_X53_Y37_N26
\Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (\Mux33~1_combout\ & (((\Mux60~0_combout\ & \Mux47~6_combout\)))) # (!\Mux33~1_combout\ & ((\Mux47~1_combout\) # ((!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux47~1_combout\,
	datac => \Mux60~0_combout\,
	datad => \Mux47~6_combout\,
	combout => \Mux47~2_combout\);

-- Location: LCCOMB_X50_Y36_N22
\Shift|ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~80_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~33_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~65_combout\,
	datad => \Shift|ShiftLeft0~33_combout\,
	combout => \Shift|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X50_Y40_N10
\Shift|ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~81_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[14]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X50_Y40_N20
\Shift|ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~82_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~76_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~81_combout\,
	datab => \Shift|ShiftLeft0~76_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X50_Y36_N16
\Shift|ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~83_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~46_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~46_combout\,
	datad => \Shift|ShiftLeft0~82_combout\,
	combout => \Shift|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X50_Y36_N10
\Shift|ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~84_combout\ = (\Shift|ShiftLeft0~80_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftLeft0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~80_combout\,
	datad => \Shift|ShiftLeft0~83_combout\,
	combout => \Shift|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X55_Y36_N28
\Shift|ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~85_combout\ = (\Shift|ShiftLeft0~287_combout\ & ((\A[0]~input_o\) # ((!\B[4]~input_o\ & \Shift|ShiftLeft0~84_combout\)))) # (!\Shift|ShiftLeft0~287_combout\ & (!\B[4]~input_o\ & (\Shift|ShiftLeft0~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~287_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~84_combout\,
	datad => \A[0]~input_o\,
	combout => \Shift|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X55_Y37_N26
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X53_Y37_N20
\Add|S[16]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[16]~12_combout\ = \A[16]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[16]~15_combout\ $ (\B[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[16]~15_combout\,
	datad => \B[16]~input_o\,
	combout => \Add|S[16]~12_combout\);

-- Location: LCCOMB_X53_Y37_N4
\Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = (\Mux47~2_combout\ & (((\Add|S[16]~12_combout\) # (!\Mux33~0_combout\)))) # (!\Mux47~2_combout\ & (\Shift|ShiftLeft0~85_combout\ & (\Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~2_combout\,
	datab => \Shift|ShiftLeft0~85_combout\,
	datac => \Mux33~0_combout\,
	datad => \Add|S[16]~12_combout\,
	combout => \Mux47~3_combout\);

-- Location: LCCOMB_X56_Y41_N2
\Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux47~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux47~3_combout\,
	combout => \Mux47~4_combout\);

-- Location: LCCOMB_X50_Y40_N22
\Shift|ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~87_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[17]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X50_Y40_N24
\Shift|ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~88_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~81_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~87_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~81_combout\,
	combout => \Shift|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X50_Y38_N20
\Shift|ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~89_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~50_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~50_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~88_combout\,
	combout => \Shift|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X50_Y38_N10
\Shift|ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~86_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~36_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~69_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~36_combout\,
	combout => \Shift|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X50_Y38_N6
\Shift|ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~90_combout\ = (\Shift|ShiftLeft0~86_combout\) # ((\Shift|ShiftLeft0~89_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~89_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~86_combout\,
	combout => \Shift|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X54_Y38_N2
\Shift|ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~91_combout\ = (\B[4]~input_o\ & (\Shift|ShiftLeft0~22_combout\ & ((!\Shift|ShiftLeft0~23_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~22_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~90_combout\,
	datad => \Shift|ShiftLeft0~23_combout\,
	combout => \Shift|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X47_Y39_N20
\Add|S[17]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[17]~13_combout\ = \Add|C[17]~16_combout\ $ (\A[17]~input_o\ $ (\B[17]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[17]~16_combout\,
	datab => \A[17]~input_o\,
	datac => \B[17]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[17]~13_combout\);

-- Location: LCCOMB_X56_Y35_N8
\Shift|ShiftRight0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~205_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~101_combout\) # (\Shift|ShiftRight0~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~101_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~98_combout\,
	combout => \Shift|ShiftRight0~205_combout\);

-- Location: LCCOMB_X56_Y35_N2
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux60~1_combout\ & (((\B[5]~input_o\)))) # (!\Mux60~1_combout\ & ((\B[5]~input_o\ & (\Shift|ShiftRight0~205_combout\)) # (!\B[5]~input_o\ & ((\Shift|ShiftRight0~88_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~205_combout\,
	datab => \Mux60~1_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~88_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X56_Y35_N20
\Shift|ShiftRight1~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~106_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~29_combout\,
	combout => \Shift|ShiftRight1~106_combout\);

-- Location: LCCOMB_X56_Y35_N14
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux46~0_combout\ & (((\Shift|ShiftRight1~106_combout\) # (!\Mux60~1_combout\)))) # (!\Mux46~0_combout\ & (\Shift|ShiftRight0~95_combout\ & (\Mux60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~95_combout\,
	datab => \Mux46~0_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight1~106_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X47_Y39_N0
\Mux46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = (\B[17]~input_o\ & ((\A[17]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[17]~input_o\ & ((\A[17]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[17]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datab => \A[17]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux46~5_combout\);

-- Location: LCCOMB_X47_Y39_N10
\Mux46~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~6_combout\ = (\Mux46~5_combout\ & ((\B[5]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux46~5_combout\,
	combout => \Mux46~6_combout\);

-- Location: LCCOMB_X47_Y39_N6
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Mux33~1_combout\ & (((\Mux60~0_combout\ & \Mux46~6_combout\)))) # (!\Mux33~1_combout\ & ((\Mux46~1_combout\) # ((!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux46~1_combout\,
	datac => \Mux60~0_combout\,
	datad => \Mux46~6_combout\,
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X47_Y39_N8
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (\Mux33~0_combout\ & ((\Mux46~2_combout\ & ((\Add|S[17]~13_combout\))) # (!\Mux46~2_combout\ & (\Shift|ShiftLeft0~91_combout\)))) # (!\Mux33~0_combout\ & (((\Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~91_combout\,
	datab => \Add|S[17]~13_combout\,
	datac => \Mux33~0_combout\,
	datad => \Mux46~2_combout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X47_Y39_N2
\Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\Mux46~3_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux46~3_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X57_Y39_N12
\Shift|ShiftRight0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~206_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~109_combout\) # ((\B[3]~input_o\ & \Shift|ShiftRight0~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~109_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~110_combout\,
	combout => \Shift|ShiftRight0~206_combout\);

-- Location: LCCOMB_X57_Y39_N30
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\B[5]~input_o\ & ((\Mux60~1_combout\) # ((\Shift|ShiftRight0~206_combout\)))) # (!\B[5]~input_o\ & (!\Mux60~1_combout\ & (\Shift|ShiftRight0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux60~1_combout\,
	datac => \Shift|ShiftRight0~105_combout\,
	datad => \Shift|ShiftRight0~206_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X57_Y39_N0
\Shift|ShiftRight1~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~107_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~62_combout\,
	combout => \Shift|ShiftRight1~107_combout\);

-- Location: LCCOMB_X57_Y39_N2
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\Mux45~0_combout\ & (((\Shift|ShiftRight1~107_combout\)) # (!\Mux60~1_combout\))) # (!\Mux45~0_combout\ & (\Mux60~1_combout\ & (\Shift|ShiftRight0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~0_combout\,
	datab => \Mux60~1_combout\,
	datac => \Shift|ShiftRight0~108_combout\,
	datad => \Shift|ShiftRight1~107_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X49_Y41_N20
\Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~5_combout\ = (\LogicFN[1]~input_o\ & ((\A[18]~input_o\ & ((\B[18]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[18]~input_o\ & (!\LogicFN[0]~input_o\ & \B[18]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[18]~input_o\ $ (\B[18]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[18]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[18]~input_o\,
	combout => \Mux45~5_combout\);

-- Location: LCCOMB_X49_Y41_N6
\Mux45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~6_combout\ = (\Mux45~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[6]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[6]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux45~5_combout\,
	combout => \Mux45~6_combout\);

-- Location: LCCOMB_X49_Y41_N30
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Mux33~1_combout\ & (((\Mux60~0_combout\ & \Mux45~6_combout\)))) # (!\Mux33~1_combout\ & ((\Mux45~1_combout\) # ((!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux45~1_combout\,
	datac => \Mux60~0_combout\,
	datad => \Mux45~6_combout\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X50_Y40_N26
\Shift|ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~93_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[18]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X50_Y40_N12
\Shift|ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~94_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~87_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~87_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~93_combout\,
	combout => \Shift|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X54_Y40_N22
\Shift|ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~95_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~56_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~56_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~94_combout\,
	combout => \Shift|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X54_Y40_N12
\Shift|ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~92_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~39_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~39_combout\,
	datad => \Shift|ShiftLeft0~73_combout\,
	combout => \Shift|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X54_Y40_N16
\Shift|ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~96_combout\ = (\Shift|ShiftLeft0~92_combout\) # ((\Shift|ShiftLeft0~95_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~95_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~92_combout\,
	combout => \Shift|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X56_Y38_N8
\Shift|ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~97_combout\ = (\B[4]~input_o\ & (!\Shift|ShiftLeft0~27_combout\ & ((\Shift|ShiftLeft0~26_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~27_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~96_combout\,
	datad => \Shift|ShiftLeft0~26_combout\,
	combout => \Shift|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X49_Y41_N28
\Add|S[18]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[18]~14_combout\ = \Add|C[18]~17_combout\ $ (\A[18]~input_o\ $ (\AddnSub~input_o\ $ (\B[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[18]~17_combout\,
	datab => \A[18]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[18]~input_o\,
	combout => \Add|S[18]~14_combout\);

-- Location: LCCOMB_X49_Y41_N0
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (\Mux45~2_combout\ & (((\Add|S[18]~14_combout\)) # (!\Mux33~0_combout\))) # (!\Mux45~2_combout\ & (\Mux33~0_combout\ & (\Shift|ShiftLeft0~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~2_combout\,
	datab => \Mux33~0_combout\,
	datac => \Shift|ShiftLeft0~97_combout\,
	datad => \Add|S[18]~14_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X49_Y41_N18
\Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux45~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux45~3_combout\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X49_Y41_N12
\Add|S[19]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[19]~15_combout\ = \AddnSub~input_o\ $ (\A[19]~input_o\ $ (\B[19]~input_o\ $ (\Add|C[19]~18_combout\)))

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
	combout => \Add|S[19]~15_combout\);

-- Location: LCCOMB_X52_Y38_N16
\Shift|ShiftRight0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~207_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~117_combout\) # ((\Shift|ShiftRight0~118_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~118_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~117_combout\,
	combout => \Shift|ShiftRight0~207_combout\);

-- Location: LCCOMB_X52_Y38_N10
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\B[5]~input_o\ & ((\Shift|ShiftRight0~207_combout\) # ((\Mux60~1_combout\)))) # (!\B[5]~input_o\ & (((!\Mux60~1_combout\ & \Shift|ShiftRight0~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~207_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight0~116_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X52_Y38_N28
\Shift|ShiftRight1~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~108_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & (((\Shift|ShiftRight1~79_combout\) # (\Shift|ShiftRight0~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~79_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~117_combout\,
	combout => \Shift|ShiftRight1~108_combout\);

-- Location: LCCOMB_X52_Y38_N22
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\Mux44~0_combout\ & (((\Shift|ShiftRight1~108_combout\) # (!\Mux60~1_combout\)))) # (!\Mux44~0_combout\ & (\Shift|ShiftRight0~122_combout\ & (\Mux60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~0_combout\,
	datab => \Shift|ShiftRight0~122_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight1~108_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X62_Y37_N4
\Mux44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = (\LogicFN[1]~input_o\ & ((\B[19]~input_o\ & ((\A[19]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[19]~input_o\ & (\A[19]~input_o\ & !\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[19]~input_o\ $ (\A[19]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \A[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux44~5_combout\);

-- Location: LCCOMB_X48_Y36_N14
\Mux44~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~6_combout\ = (\Mux44~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~5_combout\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[7]~input_o\,
	combout => \Mux44~6_combout\);

-- Location: LCCOMB_X49_Y41_N22
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (\Mux33~1_combout\ & (((\Mux60~0_combout\ & \Mux44~6_combout\)))) # (!\Mux33~1_combout\ & ((\Mux44~1_combout\) # ((!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux44~1_combout\,
	datac => \Mux60~0_combout\,
	datad => \Mux44~6_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X50_Y39_N26
\Shift|ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~98_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~42_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~42_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~77_combout\,
	combout => \Shift|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X49_Y40_N8
\Shift|ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~99_combout\ = (\B[1]~input_o\ & (\A[17]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[17]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X50_Y40_N30
\Shift|ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~100_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~93_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~99_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~93_combout\,
	combout => \Shift|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X50_Y39_N4
\Shift|ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~101_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~60_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~100_combout\,
	datad => \Shift|ShiftLeft0~60_combout\,
	combout => \Shift|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X50_Y39_N14
\Shift|ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~102_combout\ = (\Shift|ShiftLeft0~98_combout\) # ((!\B[2]~input_o\ & \Shift|ShiftLeft0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~98_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~101_combout\,
	combout => \Shift|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X50_Y39_N8
\Shift|ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~103_combout\ = (\B[4]~input_o\ & (\Shift|ShiftLeft0~29_combout\ & (!\Shift|ShiftLeft0~27_combout\))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~29_combout\,
	datab => \Shift|ShiftLeft0~27_combout\,
	datac => \Shift|ShiftLeft0~102_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftLeft0~103_combout\);

-- Location: LCCOMB_X49_Y41_N16
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (\Mux33~0_combout\ & ((\Mux44~2_combout\ & (\Add|S[19]~15_combout\)) # (!\Mux44~2_combout\ & ((\Shift|ShiftLeft0~103_combout\))))) # (!\Mux33~0_combout\ & (((\Mux44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[19]~15_combout\,
	datab => \Mux33~0_combout\,
	datac => \Mux44~2_combout\,
	datad => \Shift|ShiftLeft0~103_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X49_Y41_N10
\Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux44~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux44~3_combout\,
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X48_Y36_N18
\Mux43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = (\A[20]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[20]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[20]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \B[20]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[20]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[20]~input_o\,
	combout => \Mux43~5_combout\);

-- Location: LCCOMB_X48_Y36_N12
\Mux43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~6_combout\ = (\Mux43~5_combout\ & ((\B[8]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux43~5_combout\,
	combout => \Mux43~6_combout\);

-- Location: LCCOMB_X53_Y36_N26
\Shift|ShiftRight1~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~109_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & (((\Shift|ShiftRight1~81_combout\) # (\Shift|ShiftRight0~131_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~81_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~131_combout\,
	combout => \Shift|ShiftRight1~109_combout\);

-- Location: LCCOMB_X53_Y36_N6
\Shift|ShiftRight0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~208_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~133_combout\) # (\Shift|ShiftRight0~131_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Shift|ShiftRight0~133_combout\,
	datad => \Shift|ShiftRight0~131_combout\,
	combout => \Shift|ShiftRight0~208_combout\);

-- Location: LCCOMB_X53_Y36_N0
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\B[5]~input_o\ & ((\Mux60~1_combout\) # ((\Shift|ShiftRight0~208_combout\)))) # (!\B[5]~input_o\ & (!\Mux60~1_combout\ & (\Shift|ShiftRight0~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux60~1_combout\,
	datac => \Shift|ShiftRight0~128_combout\,
	datad => \Shift|ShiftRight0~208_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X53_Y36_N4
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux60~1_combout\ & ((\Mux43~0_combout\ & (\Shift|ShiftRight1~109_combout\)) # (!\Mux43~0_combout\ & ((\Shift|ShiftRight0~130_combout\))))) # (!\Mux60~1_combout\ & (((\Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~109_combout\,
	datab => \Mux60~1_combout\,
	datac => \Mux43~0_combout\,
	datad => \Shift|ShiftRight0~130_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X48_Y36_N20
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Mux33~1_combout\ & (\Mux60~0_combout\ & (\Mux43~6_combout\))) # (!\Mux33~1_combout\ & (((\Mux43~1_combout\)) # (!\Mux60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux43~6_combout\,
	datad => \Mux43~1_combout\,
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X49_Y40_N18
\Shift|ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~104_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[20]~input_o\,
	datac => \A[18]~input_o\,
	combout => \Shift|ShiftLeft0~104_combout\);

-- Location: LCCOMB_X49_Y40_N4
\Shift|ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~105_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~99_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~104_combout\,
	datac => \Shift|ShiftLeft0~99_combout\,
	combout => \Shift|ShiftLeft0~105_combout\);

-- Location: LCCOMB_X50_Y36_N12
\Shift|ShiftLeft0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~106_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~65_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~65_combout\,
	datad => \Shift|ShiftLeft0~105_combout\,
	combout => \Shift|ShiftLeft0~106_combout\);

-- Location: LCCOMB_X50_Y36_N6
\Shift|ShiftLeft0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~107_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~83_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~106_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~83_combout\,
	combout => \Shift|ShiftLeft0~107_combout\);

-- Location: LCCOMB_X50_Y36_N14
\Shift|ShiftLeft0~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~288_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftLeft0~34_combout\))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~34_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~107_combout\,
	combout => \Shift|ShiftLeft0~288_combout\);

-- Location: LCCOMB_X48_Y36_N10
\Add|S[20]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[20]~16_combout\ = \A[20]~input_o\ $ (\B[20]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[20]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[20]~input_o\,
	datab => \B[20]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[20]~19_combout\,
	combout => \Add|S[20]~16_combout\);

-- Location: LCCOMB_X48_Y36_N22
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (\Mux33~0_combout\ & ((\Mux43~2_combout\ & ((\Add|S[20]~16_combout\))) # (!\Mux43~2_combout\ & (\Shift|ShiftLeft0~288_combout\)))) # (!\Mux33~0_combout\ & (\Mux43~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \Mux43~2_combout\,
	datac => \Shift|ShiftLeft0~288_combout\,
	datad => \Add|S[20]~16_combout\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X48_Y36_N8
\Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\Mux43~3_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~3_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X47_Y39_N12
\Mux42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = (\A[21]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[21]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[21]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[21]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[21]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Mux42~5_combout\);

-- Location: LCCOMB_X47_Y39_N14
\Mux42~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~6_combout\ = (\Mux42~5_combout\ & ((\B[9]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux42~5_combout\,
	combout => \Mux42~6_combout\);

-- Location: LCCOMB_X54_Y35_N28
\Shift|ShiftRight1~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~110_combout\ = (\B[4]~input_o\ & ((\A[63]~input_o\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight1~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~84_combout\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	combout => \Shift|ShiftRight1~110_combout\);

-- Location: LCCOMB_X58_Y35_N18
\Shift|ShiftRight0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~209_combout\ = (!\B[4]~input_o\ & ((\Shift|ShiftRight0~135_combout\) # ((\Shift|ShiftRight0~132_combout\ & \Shift|ShiftRight0~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~132_combout\,
	datab => \Shift|ShiftRight0~135_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~99_combout\,
	combout => \Shift|ShiftRight0~209_combout\);

-- Location: LCCOMB_X54_Y35_N10
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\B[5]~input_o\ & (((\Shift|ShiftRight0~209_combout\) # (\Mux60~1_combout\)))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~143_combout\ & ((!\Mux60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~143_combout\,
	datac => \Shift|ShiftRight0~209_combout\,
	datad => \Mux60~1_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X54_Y35_N22
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux60~1_combout\ & ((\Mux42~0_combout\ & (\Shift|ShiftRight1~110_combout\)) # (!\Mux42~0_combout\ & ((\Shift|ShiftRight0~138_combout\))))) # (!\Mux60~1_combout\ & (((\Mux42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Shift|ShiftRight1~110_combout\,
	datac => \Shift|ShiftRight0~138_combout\,
	datad => \Mux42~0_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X47_Y39_N30
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Mux33~1_combout\ & (\Mux42~6_combout\ & (\Mux60~0_combout\))) # (!\Mux33~1_combout\ & (((\Mux42~1_combout\) # (!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux42~6_combout\,
	datac => \Mux60~0_combout\,
	datad => \Mux42~1_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X49_Y40_N22
\Shift|ShiftLeft0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~108_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftLeft0~108_combout\);

-- Location: LCCOMB_X49_Y40_N24
\Shift|ShiftLeft0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~109_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~104_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~104_combout\,
	datac => \Shift|ShiftLeft0~108_combout\,
	combout => \Shift|ShiftLeft0~109_combout\);

-- Location: LCCOMB_X50_Y38_N0
\Shift|ShiftLeft0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~110_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~69_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~69_combout\,
	datab => \Shift|ShiftLeft0~109_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~110_combout\);

-- Location: LCCOMB_X50_Y38_N2
\Shift|ShiftLeft0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~111_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~89_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~89_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~110_combout\,
	combout => \Shift|ShiftLeft0~111_combout\);

-- Location: LCCOMB_X47_Y39_N26
\Shift|ShiftLeft0~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~289_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & (\Shift|ShiftLeft0~37_combout\))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~37_combout\,
	datad => \Shift|ShiftLeft0~111_combout\,
	combout => \Shift|ShiftLeft0~289_combout\);

-- Location: LCCOMB_X47_Y39_N28
\Add|S[21]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[21]~17_combout\ = \Add|C[21]~20_combout\ $ (\AddnSub~input_o\ $ (\A[21]~input_o\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[21]~20_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|S[21]~17_combout\);

-- Location: LCCOMB_X47_Y39_N24
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (\Mux42~2_combout\ & (((\Add|S[21]~17_combout\)) # (!\Mux33~0_combout\))) # (!\Mux42~2_combout\ & (\Mux33~0_combout\ & (\Shift|ShiftLeft0~289_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~2_combout\,
	datab => \Mux33~0_combout\,
	datac => \Shift|ShiftLeft0~289_combout\,
	datad => \Add|S[21]~17_combout\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X56_Y41_N20
\Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (\Mux42~3_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~3_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X46_Y37_N16
\Mux41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = (\A[22]~input_o\ & ((\B[22]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[22]~input_o\ & ((\B[22]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[22]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux41~5_combout\);

-- Location: LCCOMB_X46_Y37_N18
\Mux41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~6_combout\ = (\Mux41~5_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[10]~input_o\,
	datad => \Mux41~5_combout\,
	combout => \Mux41~6_combout\);

-- Location: LCCOMB_X54_Y36_N8
\Shift|ShiftRight1~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~111_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\)))) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~86_combout\) # ((\Shift|ShiftRight0~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~86_combout\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftRight0~148_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~111_combout\);

-- Location: LCCOMB_X54_Y36_N12
\Shift|ShiftRight0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~210_combout\ = (!\B[4]~input_o\ & \Shift|ShiftRight0~149_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~149_combout\,
	combout => \Shift|ShiftRight0~210_combout\);

-- Location: LCCOMB_X54_Y36_N6
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\Mux60~1_combout\ & (\B[5]~input_o\)) # (!\Mux60~1_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~210_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \B[5]~input_o\,
	datac => \Shift|ShiftRight0~147_combout\,
	datad => \Shift|ShiftRight0~210_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X54_Y36_N26
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux60~1_combout\ & ((\Mux41~0_combout\ & ((\Shift|ShiftRight1~111_combout\))) # (!\Mux41~0_combout\ & (\Shift|ShiftRight0~151_combout\)))) # (!\Mux60~1_combout\ & (((\Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~151_combout\,
	datab => \Shift|ShiftRight1~111_combout\,
	datac => \Mux60~1_combout\,
	datad => \Mux41~0_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X46_Y37_N6
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Mux60~0_combout\ & ((\Mux33~1_combout\ & (\Mux41~6_combout\)) # (!\Mux33~1_combout\ & ((\Mux41~1_combout\))))) # (!\Mux60~0_combout\ & (!\Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux33~1_combout\,
	datac => \Mux41~6_combout\,
	datad => \Mux41~1_combout\,
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X49_Y40_N10
\Shift|ShiftLeft0~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~112_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ShiftLeft0~112_combout\);

-- Location: LCCOMB_X49_Y40_N12
\Shift|ShiftLeft0~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~113_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~108_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~112_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~108_combout\,
	datad => \Shift|ShiftLeft0~112_combout\,
	combout => \Shift|ShiftLeft0~113_combout\);

-- Location: LCCOMB_X54_Y40_N10
\Shift|ShiftLeft0~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~114_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~73_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~113_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~113_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~73_combout\,
	combout => \Shift|ShiftLeft0~114_combout\);

-- Location: LCCOMB_X54_Y40_N4
\Shift|ShiftLeft0~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~115_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~95_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~114_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~95_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~114_combout\,
	combout => \Shift|ShiftLeft0~115_combout\);

-- Location: LCCOMB_X54_Y40_N30
\Shift|ShiftLeft0~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~290_combout\ = (\B[4]~input_o\ & (((!\B[3]~input_o\ & \Shift|ShiftLeft0~40_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftLeft0~115_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~40_combout\,
	combout => \Shift|ShiftLeft0~290_combout\);

-- Location: LCCOMB_X46_Y37_N28
\Add|S[22]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[22]~18_combout\ = \A[22]~input_o\ $ (\B[22]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[22]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[22]~input_o\,
	datab => \B[22]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[22]~21_combout\,
	combout => \Add|S[22]~18_combout\);

-- Location: LCCOMB_X46_Y37_N24
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (\Mux41~2_combout\ & (((\Add|S[22]~18_combout\) # (!\Mux33~0_combout\)))) # (!\Mux41~2_combout\ & (\Shift|ShiftLeft0~290_combout\ & (\Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux41~2_combout\,
	datab => \Shift|ShiftLeft0~290_combout\,
	datac => \Mux33~0_combout\,
	datad => \Add|S[22]~18_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X46_Y37_N10
\Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux41~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux41~3_combout\,
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X46_Y37_N12
\Mux40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~5_combout\ = (\A[23]~input_o\ & ((\B[23]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[23]~input_o\ & ((\B[23]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[23]~input_o\ & (!\LogicFN[0]~input_o\ & 
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
	combout => \Mux40~5_combout\);

-- Location: LCCOMB_X46_Y37_N30
\Mux40~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~6_combout\ = (\Mux40~5_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[11]~input_o\,
	datad => \Mux40~5_combout\,
	combout => \Mux40~6_combout\);

-- Location: LCCOMB_X55_Y35_N4
\Shift|ShiftRight0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~211_combout\ = (!\B[4]~input_o\ & \Shift|ShiftRight0~154_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~154_combout\,
	combout => \Shift|ShiftRight0~211_combout\);

-- Location: LCCOMB_X52_Y39_N30
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\B[5]~input_o\ & ((\Shift|ShiftRight0~211_combout\) # ((\Mux60~1_combout\)))) # (!\B[5]~input_o\ & (((!\Mux60~1_combout\ & \Shift|ShiftRight0~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~211_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight0~161_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X55_Y35_N14
\Shift|ShiftRight1~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~116_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\)))) # (!\B[4]~input_o\ & ((\B[3]~input_o\ & ((\A[63]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ShiftRight0~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~153_combout\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftRight1~116_combout\);

-- Location: LCCOMB_X52_Y39_N8
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Mux60~1_combout\ & ((\Mux40~0_combout\ & ((\Shift|ShiftRight1~116_combout\))) # (!\Mux40~0_combout\ & (\Shift|ShiftRight0~156_combout\)))) # (!\Mux60~1_combout\ & (((\Mux40~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Shift|ShiftRight0~156_combout\,
	datac => \Mux40~0_combout\,
	datad => \Shift|ShiftRight1~116_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X46_Y37_N22
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (\Mux60~0_combout\ & ((\Mux33~1_combout\ & (\Mux40~6_combout\)) # (!\Mux33~1_combout\ & ((\Mux40~1_combout\))))) # (!\Mux60~0_combout\ & (!\Mux33~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux33~1_combout\,
	datac => \Mux40~6_combout\,
	datad => \Mux40~1_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X46_Y37_N20
\Add|S[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[23]~19_combout\ = \A[23]~input_o\ $ (\B[23]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[23]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[23]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[23]~22_combout\,
	combout => \Add|S[23]~19_combout\);

-- Location: LCCOMB_X48_Y40_N0
\Shift|ShiftLeft0~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~116_combout\ = (\B[1]~input_o\ & ((\A[21]~input_o\))) # (!\B[1]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[23]~input_o\,
	datad => \A[21]~input_o\,
	combout => \Shift|ShiftLeft0~116_combout\);

-- Location: LCCOMB_X49_Y40_N30
\Shift|ShiftLeft0~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~117_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~112_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~116_combout\,
	datad => \Shift|ShiftLeft0~112_combout\,
	combout => \Shift|ShiftLeft0~117_combout\);

-- Location: LCCOMB_X50_Y39_N2
\Shift|ShiftLeft0~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~118_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~77_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~117_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~117_combout\,
	datad => \Shift|ShiftLeft0~77_combout\,
	combout => \Shift|ShiftLeft0~118_combout\);

-- Location: LCCOMB_X50_Y39_N28
\Shift|ShiftLeft0~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~119_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~101_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~101_combout\,
	datad => \Shift|ShiftLeft0~118_combout\,
	combout => \Shift|ShiftLeft0~119_combout\);

-- Location: LCCOMB_X50_Y39_N22
\Shift|ShiftLeft0~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~291_combout\ = (\B[4]~input_o\ & (((!\B[3]~input_o\ & \Shift|ShiftLeft0~43_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~119_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~43_combout\,
	combout => \Shift|ShiftLeft0~291_combout\);

-- Location: LCCOMB_X46_Y37_N8
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (\Mux40~2_combout\ & ((\Add|S[23]~19_combout\) # ((!\Mux33~0_combout\)))) # (!\Mux40~2_combout\ & (((\Mux33~0_combout\ & \Shift|ShiftLeft0~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~2_combout\,
	datab => \Add|S[23]~19_combout\,
	datac => \Mux33~0_combout\,
	datad => \Shift|ShiftLeft0~291_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X46_Y37_N2
\Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux40~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux40~3_combout\,
	combout => \Mux40~4_combout\);

-- Location: LCCOMB_X48_Y40_N18
\Shift|ShiftLeft0~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~120_combout\ = (\B[1]~input_o\ & (\A[22]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[22]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Shift|ShiftLeft0~120_combout\);

-- Location: LCCOMB_X48_Y40_N28
\Shift|ShiftLeft0~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~121_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~116_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~120_combout\,
	datad => \Shift|ShiftLeft0~116_combout\,
	combout => \Shift|ShiftLeft0~121_combout\);

-- Location: LCCOMB_X50_Y36_N0
\Shift|ShiftLeft0~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~122_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~82_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~121_combout\,
	datad => \Shift|ShiftLeft0~82_combout\,
	combout => \Shift|ShiftLeft0~122_combout\);

-- Location: LCCOMB_X50_Y36_N2
\Shift|ShiftLeft0~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~123_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~106_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~106_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~122_combout\,
	combout => \Shift|ShiftLeft0~123_combout\);

-- Location: LCCOMB_X52_Y37_N30
\Shift|ShiftLeft0~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~124_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftLeft0~47_combout\) # (\Shift|ShiftLeft0~44_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~123_combout\,
	datab => \Shift|ShiftLeft0~47_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~44_combout\,
	combout => \Shift|ShiftLeft0~124_combout\);

-- Location: LCCOMB_X52_Y37_N8
\Mux39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = (\LogicFN[1]~input_o\ & ((\B[24]~input_o\ & ((\A[24]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[24]~input_o\ & (\A[24]~input_o\ & !\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[24]~input_o\ $ (\A[24]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[24]~input_o\,
	datac => \A[24]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux39~5_combout\);

-- Location: LCCOMB_X52_Y37_N18
\Mux39~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~6_combout\ = (\Mux39~5_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux39~5_combout\,
	datad => \B[12]~input_o\,
	combout => \Mux39~6_combout\);

-- Location: LCCOMB_X57_Y37_N2
\Shift|ShiftRight0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~212_combout\ = (!\Mux56~3_combout\ & ((\B[2]~input_o\ & (\Shift|ShiftRight0~22_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftRight0~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~22_combout\,
	datac => \Mux56~3_combout\,
	datad => \Shift|ShiftRight0~25_combout\,
	combout => \Shift|ShiftRight0~212_combout\);

-- Location: LCCOMB_X56_Y37_N14
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\Mux60~1_combout\ & (((\B[5]~input_o\)))) # (!\Mux60~1_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~212_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~166_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~166_combout\,
	datab => \Mux60~1_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~212_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X57_Y37_N10
\Shift|ShiftRight1~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~117_combout\ = (\Shift|ShiftRight0~212_combout\) # ((\A[63]~input_o\ & ((\B[4]~input_o\) # (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftRight0~212_combout\,
	combout => \Shift|ShiftRight1~117_combout\);

-- Location: LCCOMB_X52_Y37_N10
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\Mux39~0_combout\ & (((\Shift|ShiftRight1~117_combout\) # (!\Mux60~1_combout\)))) # (!\Mux39~0_combout\ & (\Shift|ShiftRight0~163_combout\ & (\Mux60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~0_combout\,
	datab => \Shift|ShiftRight0~163_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight1~117_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X52_Y37_N12
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Mux33~1_combout\ & (\Mux39~6_combout\ & (\Mux60~0_combout\))) # (!\Mux33~1_combout\ & (((\Mux39~1_combout\) # (!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux39~6_combout\,
	datac => \Mux60~0_combout\,
	datad => \Mux39~1_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X52_Y37_N0
\Add|S[24]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[24]~20_combout\ = \AddnSub~input_o\ $ (\A[24]~input_o\ $ (\B[24]~input_o\ $ (\Add|C[24]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \Add|C[24]~23_combout\,
	combout => \Add|S[24]~20_combout\);

-- Location: LCCOMB_X52_Y37_N22
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (\Mux39~2_combout\ & (((\Add|S[24]~20_combout\) # (!\Mux33~0_combout\)))) # (!\Mux39~2_combout\ & (\Shift|ShiftLeft0~124_combout\ & (\Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~124_combout\,
	datab => \Mux39~2_combout\,
	datac => \Mux33~0_combout\,
	datad => \Add|S[24]~20_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X56_Y41_N14
\Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux39~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux39~3_combout\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X56_Y40_N6
\Add|S[25]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[25]~21_combout\ = \Add|C[25]~24_combout\ $ (\AddnSub~input_o\ $ (\A[25]~input_o\ $ (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[25]~24_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add|S[25]~21_combout\);

-- Location: LCCOMB_X56_Y40_N2
\Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[25]~input_o\ & \B[25]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[25]~input_o\ $ (\B[25]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[25]~input_o\) # (\B[25]~input_o\)) # 
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
	combout => \Mux38~5_combout\);

-- Location: LCCOMB_X56_Y40_N12
\Mux38~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~6_combout\ = (\Mux38~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[13]~input_o\,
	datad => \Mux38~5_combout\,
	combout => \Mux38~6_combout\);

-- Location: LCCOMB_X58_Y35_N20
\Shift|ShiftRight0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~213_combout\ = (!\Mux56~3_combout\ & ((\B[2]~input_o\ & ((\Shift|ShiftRight0~99_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftRight0~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~100_combout\,
	datab => \B[2]~input_o\,
	datac => \Mux56~3_combout\,
	datad => \Shift|ShiftRight0~99_combout\,
	combout => \Shift|ShiftRight0~213_combout\);

-- Location: LCCOMB_X57_Y35_N10
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Mux60~1_combout\ & (((\B[5]~input_o\)))) # (!\Mux60~1_combout\ & ((\B[5]~input_o\ & (\Shift|ShiftRight0~213_combout\)) # (!\B[5]~input_o\ & ((\Shift|ShiftRight0~171_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Shift|ShiftRight0~213_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftRight0~171_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X57_Y35_N2
\Shift|ShiftRight1~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~118_combout\ = (\B[3]~input_o\ & (((\A[63]~input_o\)))) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~28_combout\,
	combout => \Shift|ShiftRight1~118_combout\);

-- Location: LCCOMB_X57_Y35_N12
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\Mux38~0_combout\ & ((\Shift|ShiftRight1~118_combout\) # ((!\Mux60~1_combout\)))) # (!\Mux38~0_combout\ & (((\Mux60~1_combout\ & \Shift|ShiftRight0~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~0_combout\,
	datab => \Shift|ShiftRight1~118_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight0~168_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X56_Y40_N16
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Mux33~1_combout\ & (\Mux38~6_combout\ & ((\Mux60~0_combout\)))) # (!\Mux33~1_combout\ & (((\Mux38~1_combout\) # (!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~6_combout\,
	datab => \Mux33~1_combout\,
	datac => \Mux38~1_combout\,
	datad => \Mux60~0_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X48_Y40_N14
\Shift|ShiftLeft0~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~125_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[25]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Shift|ShiftLeft0~125_combout\);

-- Location: LCCOMB_X48_Y40_N24
\Shift|ShiftLeft0~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~126_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~120_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~120_combout\,
	datac => \Shift|ShiftLeft0~125_combout\,
	combout => \Shift|ShiftLeft0~126_combout\);

-- Location: LCCOMB_X50_Y38_N4
\Shift|ShiftLeft0~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~127_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~88_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~126_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~126_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~88_combout\,
	combout => \Shift|ShiftLeft0~127_combout\);

-- Location: LCCOMB_X50_Y38_N30
\Shift|ShiftLeft0~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~128_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~110_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~127_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~110_combout\,
	combout => \Shift|ShiftLeft0~128_combout\);

-- Location: LCCOMB_X57_Y39_N20
\Shift|ShiftLeft0~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~129_combout\ = (\B[4]~input_o\ & (\Shift|ShiftLeft0~52_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~52_combout\,
	datad => \Shift|ShiftLeft0~128_combout\,
	combout => \Shift|ShiftLeft0~129_combout\);

-- Location: LCCOMB_X56_Y40_N10
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (\Mux38~2_combout\ & ((\Add|S[25]~21_combout\) # ((!\Mux33~0_combout\)))) # (!\Mux38~2_combout\ & (((\Mux33~0_combout\ & \Shift|ShiftLeft0~129_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[25]~21_combout\,
	datab => \Mux38~2_combout\,
	datac => \Mux33~0_combout\,
	datad => \Shift|ShiftLeft0~129_combout\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X56_Y41_N0
\Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux38~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux38~3_combout\,
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X48_Y40_N2
\Shift|ShiftLeft0~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~130_combout\ = (\B[1]~input_o\ & ((\A[24]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[26]~input_o\,
	datad => \A[24]~input_o\,
	combout => \Shift|ShiftLeft0~130_combout\);

-- Location: LCCOMB_X48_Y40_N4
\Shift|ShiftLeft0~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~131_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~125_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~130_combout\,
	datac => \Shift|ShiftLeft0~125_combout\,
	combout => \Shift|ShiftLeft0~131_combout\);

-- Location: LCCOMB_X54_Y40_N14
\Shift|ShiftLeft0~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~132_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~94_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~131_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~131_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~94_combout\,
	combout => \Shift|ShiftLeft0~132_combout\);

-- Location: LCCOMB_X54_Y40_N8
\Shift|ShiftLeft0~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~133_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~114_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~132_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~132_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~114_combout\,
	combout => \Shift|ShiftLeft0~133_combout\);

-- Location: LCCOMB_X55_Y40_N14
\Shift|ShiftLeft0~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~134_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftLeft0~54_combout\) # (\Shift|ShiftLeft0~57_combout\)))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~133_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~133_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~54_combout\,
	datad => \Shift|ShiftLeft0~57_combout\,
	combout => \Shift|ShiftLeft0~134_combout\);

-- Location: LCCOMB_X57_Y36_N2
\Shift|ShiftRight0~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~221_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \Shift|ShiftRight0~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight0~110_combout\,
	combout => \Shift|ShiftRight0~221_combout\);

-- Location: LCCOMB_X57_Y36_N18
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\B[5]~input_o\ & (((\Mux60~1_combout\) # (\Shift|ShiftRight0~221_combout\)))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~176_combout\ & (!\Mux60~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ShiftRight0~176_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight0~221_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X57_Y36_N12
\Shift|ShiftRight1~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~119_combout\ = (\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftRight1~61_combout\,
	combout => \Shift|ShiftRight1~119_combout\);

-- Location: LCCOMB_X57_Y36_N4
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux60~1_combout\ & ((\Mux37~0_combout\ & ((\Shift|ShiftRight1~119_combout\))) # (!\Mux37~0_combout\ & (\Shift|ShiftRight0~173_combout\)))) # (!\Mux60~1_combout\ & (\Mux37~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \Mux37~0_combout\,
	datac => \Shift|ShiftRight0~173_combout\,
	datad => \Shift|ShiftRight1~119_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X56_Y40_N30
\Mux37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[26]~input_o\ & \B[26]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[26]~input_o\) # (\B[26]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[26]~input_o\,
	datad => \B[26]~input_o\,
	combout => \Mux37~5_combout\);

-- Location: LCCOMB_X56_Y40_N24
\Mux37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~6_combout\ = (\Mux37~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux37~5_combout\,
	datad => \B[14]~input_o\,
	combout => \Mux37~6_combout\);

-- Location: LCCOMB_X56_Y40_N14
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Mux60~0_combout\ & ((\Mux33~1_combout\ & ((\Mux37~6_combout\))) # (!\Mux33~1_combout\ & (\Mux37~1_combout\)))) # (!\Mux60~0_combout\ & (((!\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux33~1_combout\,
	datad => \Mux37~6_combout\,
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X56_Y40_N28
\Add|S[26]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[26]~22_combout\ = \Add|C[26]~25_combout\ $ (\A[26]~input_o\ $ (\AddnSub~input_o\ $ (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[26]~25_combout\,
	datab => \A[26]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[26]~input_o\,
	combout => \Add|S[26]~22_combout\);

-- Location: LCCOMB_X56_Y40_N0
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (\Mux37~2_combout\ & (((\Add|S[26]~22_combout\) # (!\Mux33~0_combout\)))) # (!\Mux37~2_combout\ & (\Shift|ShiftLeft0~134_combout\ & (\Mux33~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~134_combout\,
	datab => \Mux37~2_combout\,
	datac => \Mux33~0_combout\,
	datad => \Add|S[26]~22_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X56_Y41_N26
\Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux37~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux37~3_combout\,
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X49_Y38_N12
\Shift|ShiftLeft0~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~135_combout\ = (\B[1]~input_o\ & ((\A[25]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Shift|ShiftLeft0~135_combout\);

-- Location: LCCOMB_X48_Y40_N30
\Shift|ShiftLeft0~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~136_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~130_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~130_combout\,
	datac => \Shift|ShiftLeft0~135_combout\,
	combout => \Shift|ShiftLeft0~136_combout\);

-- Location: LCCOMB_X48_Y39_N0
\Shift|ShiftLeft0~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~137_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~100_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~136_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~136_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~100_combout\,
	combout => \Shift|ShiftLeft0~137_combout\);

-- Location: LCCOMB_X48_Y39_N26
\Shift|ShiftLeft0~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~138_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~118_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~137_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~118_combout\,
	datad => \Shift|ShiftLeft0~137_combout\,
	combout => \Shift|ShiftLeft0~138_combout\);

-- Location: LCCOMB_X50_Y39_N30
\Shift|ShiftLeft0~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~139_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~62_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~138_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~62_combout\,
	combout => \Shift|ShiftLeft0~139_combout\);

-- Location: LCCOMB_X52_Y38_N6
\Shift|ShiftRight0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~222_combout\ = (\Shift|ShiftRight0~118_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~118_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~222_combout\);

-- Location: LCCOMB_X53_Y35_N12
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\B[5]~input_o\ & ((\Shift|ShiftRight0~222_combout\) # ((\Mux60~1_combout\)))) # (!\B[5]~input_o\ & (((!\Mux60~1_combout\ & \Shift|ShiftRight0~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~222_combout\,
	datab => \B[5]~input_o\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight0~181_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X56_Y38_N18
\Shift|ShiftRight1~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~112_combout\ = (\Shift|ShiftLeft0~27_combout\ & (((\A[63]~input_o\)))) # (!\Shift|ShiftLeft0~27_combout\ & ((\B[4]~input_o\ & ((\A[63]~input_o\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight1~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~27_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftRight1~71_combout\,
	datad => \A[63]~input_o\,
	combout => \Shift|ShiftRight1~112_combout\);

-- Location: LCCOMB_X53_Y35_N6
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux36~0_combout\ & ((\Shift|ShiftRight1~112_combout\) # ((!\Mux60~1_combout\)))) # (!\Mux36~0_combout\ & (((\Mux60~1_combout\ & \Shift|ShiftRight0~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \Shift|ShiftRight1~112_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ShiftRight0~178_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X53_Y39_N22
\Mux36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[27]~input_o\ & \B[27]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[27]~input_o\ $ (\B[27]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[27]~input_o\) # (\B[27]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[27]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux36~5_combout\);

-- Location: LCCOMB_X53_Y39_N24
\Mux36~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~6_combout\ = (\Mux36~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux36~5_combout\,
	datad => \B[15]~input_o\,
	combout => \Mux36~6_combout\);

-- Location: LCCOMB_X53_Y39_N26
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (\Mux60~0_combout\ & ((\Mux33~1_combout\ & ((\Mux36~6_combout\))) # (!\Mux33~1_combout\ & (\Mux36~1_combout\)))) # (!\Mux60~0_combout\ & (((!\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Mux36~1_combout\,
	datac => \Mux33~1_combout\,
	datad => \Mux36~6_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X53_Y39_N0
\Add|S[27]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[27]~23_combout\ = \A[27]~input_o\ $ (\Add|C[27]~26_combout\ $ (\AddnSub~input_o\ $ (\B[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \Add|C[27]~26_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[27]~input_o\,
	combout => \Add|S[27]~23_combout\);

-- Location: LCCOMB_X53_Y39_N4
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (\Mux33~0_combout\ & ((\Mux36~2_combout\ & ((\Add|S[27]~23_combout\))) # (!\Mux36~2_combout\ & (\Shift|ShiftLeft0~139_combout\)))) # (!\Mux33~0_combout\ & (((\Mux36~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \Shift|ShiftLeft0~139_combout\,
	datac => \Mux36~2_combout\,
	datad => \Add|S[27]~23_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X56_Y41_N12
\Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux36~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux36~3_combout\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X53_Y37_N0
\Add|S[28]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[28]~24_combout\ = \B[28]~input_o\ $ (\Add|C[28]~27_combout\ $ (\AddnSub~input_o\ $ (\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \Add|C[28]~27_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[28]~input_o\,
	combout => \Add|S[28]~24_combout\);

-- Location: LCCOMB_X50_Y36_N4
\Shift|ShiftLeft0~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~140_combout\ = (\Shift|ShiftLeft0~66_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~66_combout\,
	datad => \Shift|ShiftLeft0~34_combout\,
	combout => \Shift|ShiftLeft0~140_combout\);

-- Location: LCCOMB_X53_Y41_N16
\Shift|ShiftLeft0~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~141_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Shift|ShiftLeft0~141_combout\);

-- Location: LCCOMB_X49_Y38_N14
\Shift|ShiftLeft0~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~142_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~135_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~141_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~141_combout\,
	datad => \Shift|ShiftLeft0~135_combout\,
	combout => \Shift|ShiftLeft0~142_combout\);

-- Location: LCCOMB_X50_Y36_N30
\Shift|ShiftLeft0~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~143_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~105_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~142_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~142_combout\,
	datad => \Shift|ShiftLeft0~105_combout\,
	combout => \Shift|ShiftLeft0~143_combout\);

-- Location: LCCOMB_X50_Y36_N8
\Shift|ShiftLeft0~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~144_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~122_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~143_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~143_combout\,
	datad => \Shift|ShiftLeft0~122_combout\,
	combout => \Shift|ShiftLeft0~144_combout\);

-- Location: LCCOMB_X53_Y37_N22
\Shift|ShiftLeft0~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~145_combout\ = (\B[4]~input_o\ & (\Shift|ShiftLeft0~140_combout\)) # (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~144_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~140_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~144_combout\,
	combout => \Shift|ShiftLeft0~145_combout\);

-- Location: LCCOMB_X57_Y37_N20
\Shift|ShiftRight1~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~113_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftLeft0~27_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~27_combout\ & ((\Shift|ShiftRight0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Shift|ShiftLeft0~27_combout\,
	datad => \Shift|ShiftRight0~22_combout\,
	combout => \Shift|ShiftRight1~113_combout\);

-- Location: LCCOMB_X57_Y37_N12
\Shift|ShiftRight0~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~223_combout\ = (!\B[2]~input_o\ & (\Shift|ShiftRight0~22_combout\ & (!\B[3]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftRight0~22_combout\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight0~223_combout\);

-- Location: LCCOMB_X56_Y37_N16
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux60~1_combout\ & (((\B[5]~input_o\)))) # (!\Mux60~1_combout\ & ((\B[5]~input_o\ & ((\Shift|ShiftRight0~223_combout\))) # (!\B[5]~input_o\ & (\Shift|ShiftRight0~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~191_combout\,
	datab => \Mux60~1_combout\,
	datac => \Shift|ShiftRight0~223_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X53_Y37_N18
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux60~1_combout\ & ((\Mux35~0_combout\ & ((\Shift|ShiftRight1~113_combout\))) # (!\Mux35~0_combout\ & (\Shift|ShiftRight0~183_combout\)))) # (!\Mux60~1_combout\ & (((\Mux35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~183_combout\,
	datab => \Shift|ShiftRight1~113_combout\,
	datac => \Mux60~1_combout\,
	datad => \Mux35~0_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X53_Y37_N16
\Mux35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = (\A[28]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[28]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[28]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[28]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[28]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[28]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[28]~input_o\,
	combout => \Mux35~5_combout\);

-- Location: LCCOMB_X53_Y37_N10
\Mux35~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~6_combout\ = (\Mux35~5_combout\ & ((\B[16]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[16]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux35~5_combout\,
	combout => \Mux35~6_combout\);

-- Location: LCCOMB_X53_Y37_N28
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Mux33~1_combout\ & (((\Mux60~0_combout\ & \Mux35~6_combout\)))) # (!\Mux33~1_combout\ & ((\Mux35~1_combout\) # ((!\Mux60~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux35~1_combout\,
	datac => \Mux60~0_combout\,
	datad => \Mux35~6_combout\,
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X53_Y37_N30
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (\Mux33~0_combout\ & ((\Mux35~2_combout\ & (\Add|S[28]~24_combout\)) # (!\Mux35~2_combout\ & ((\Shift|ShiftLeft0~145_combout\))))) # (!\Mux33~0_combout\ & (((\Mux35~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~0_combout\,
	datab => \Add|S[28]~24_combout\,
	datac => \Shift|ShiftLeft0~145_combout\,
	datad => \Mux35~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X56_Y41_N6
\Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux35~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux35~3_combout\,
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X58_Y38_N16
\Shift|ShiftRight1~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~114_combout\ = (\Shift|ShiftLeft0~23_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~23_combout\ & ((\B[4]~input_o\ & (\A[63]~input_o\)) # (!\B[4]~input_o\ & ((\Shift|ShiftRight1~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftLeft0~23_combout\,
	datac => \Shift|ShiftRight1~25_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ShiftRight1~114_combout\);

-- Location: LCCOMB_X58_Y38_N14
\Shift|ShiftRight0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~224_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & (!\B[2]~input_o\ & \Shift|ShiftRight0~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~99_combout\,
	combout => \Shift|ShiftRight0~224_combout\);

-- Location: LCCOMB_X58_Y38_N6
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\B[5]~input_o\ & ((\Mux60~1_combout\) # ((\Shift|ShiftRight0~224_combout\)))) # (!\B[5]~input_o\ & (!\Mux60~1_combout\ & ((\Shift|ShiftRight0~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Mux60~1_combout\,
	datac => \Shift|ShiftRight0~224_combout\,
	datad => \Shift|ShiftRight0~195_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X58_Y38_N2
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux60~1_combout\ & ((\Mux34~0_combout\ & ((\Shift|ShiftRight1~114_combout\))) # (!\Mux34~0_combout\ & (\Shift|ShiftRight0~193_combout\)))) # (!\Mux60~1_combout\ & (((\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~193_combout\,
	datab => \Shift|ShiftRight1~114_combout\,
	datac => \Mux60~1_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X52_Y41_N8
\Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\B[29]~input_o\ & ((\A[29]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[29]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[29]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[29]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X52_Y41_N2
\Mux34~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~6_combout\ = (\Mux34~5_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux34~5_combout\,
	datad => \B[17]~input_o\,
	combout => \Mux34~6_combout\);

-- Location: LCCOMB_X52_Y41_N30
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Mux60~0_combout\ & ((\Mux33~1_combout\ & ((\Mux34~6_combout\))) # (!\Mux33~1_combout\ & (\Mux34~1_combout\)))) # (!\Mux60~0_combout\ & (((!\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~1_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux33~1_combout\,
	datad => \Mux34~6_combout\,
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X52_Y41_N20
\Add|S[29]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[29]~25_combout\ = \B[29]~input_o\ $ (\AddnSub~input_o\ $ (\A[29]~input_o\ $ (\Add|C[29]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[29]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[29]~input_o\,
	datad => \Add|C[29]~28_combout\,
	combout => \Add|S[29]~25_combout\);

-- Location: LCCOMB_X53_Y41_N10
\Shift|ShiftLeft0~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~147_combout\ = (\B[1]~input_o\ & ((\A[27]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[27]~input_o\,
	combout => \Shift|ShiftLeft0~147_combout\);

-- Location: LCCOMB_X53_Y41_N20
\Shift|ShiftLeft0~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~148_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~141_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~141_combout\,
	datad => \Shift|ShiftLeft0~147_combout\,
	combout => \Shift|ShiftLeft0~148_combout\);

-- Location: LCCOMB_X50_Y38_N8
\Shift|ShiftLeft0~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~149_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~109_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~148_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~148_combout\,
	datab => \Shift|ShiftLeft0~109_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~149_combout\);

-- Location: LCCOMB_X50_Y38_N26
\Shift|ShiftLeft0~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~150_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~127_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~149_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~127_combout\,
	datac => \Shift|ShiftLeft0~149_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~150_combout\);

-- Location: LCCOMB_X54_Y38_N12
\Shift|ShiftLeft0~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~146_combout\ = (\Shift|ShiftLeft0~70_combout\) # ((\Shift|ShiftLeft0~37_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~37_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~70_combout\,
	combout => \Shift|ShiftLeft0~146_combout\);

-- Location: LCCOMB_X54_Y38_N22
\Shift|ShiftLeft0~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~151_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~146_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~150_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~150_combout\,
	datad => \Shift|ShiftLeft0~146_combout\,
	combout => \Shift|ShiftLeft0~151_combout\);

-- Location: LCCOMB_X52_Y41_N0
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (\Mux34~2_combout\ & ((\Add|S[29]~25_combout\) # ((!\Mux33~0_combout\)))) # (!\Mux34~2_combout\ & (((\Mux33~0_combout\ & \Shift|ShiftLeft0~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux34~2_combout\,
	datab => \Add|S[29]~25_combout\,
	datac => \Mux33~0_combout\,
	datad => \Shift|ShiftLeft0~151_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X52_Y41_N10
\Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux34~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux34~3_combout\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X52_Y41_N12
\Add|S[30]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[30]~26_combout\ = \A[30]~input_o\ $ (\B[30]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[30]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \B[30]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|C[30]~29_combout\,
	combout => \Add|S[30]~26_combout\);

-- Location: LCCOMB_X54_Y40_N6
\Shift|ShiftLeft0~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~156_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~26_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~39_combout\,
	datad => \Shift|ShiftLeft0~26_combout\,
	combout => \Shift|ShiftLeft0~156_combout\);

-- Location: LCCOMB_X53_Y41_N22
\Shift|ShiftLeft0~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~152_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Shift|ShiftLeft0~152_combout\);

-- Location: LCCOMB_X53_Y41_N8
\Shift|ShiftLeft0~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~153_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~147_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~152_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~152_combout\,
	datad => \Shift|ShiftLeft0~147_combout\,
	combout => \Shift|ShiftLeft0~153_combout\);

-- Location: LCCOMB_X54_Y40_N18
\Shift|ShiftLeft0~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~154_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~113_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~153_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~153_combout\,
	datad => \Shift|ShiftLeft0~113_combout\,
	combout => \Shift|ShiftLeft0~154_combout\);

-- Location: LCCOMB_X54_Y40_N20
\Shift|ShiftLeft0~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~155_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~132_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~154_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~132_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~154_combout\,
	combout => \Shift|ShiftLeft0~155_combout\);

-- Location: LCCOMB_X54_Y40_N24
\Shift|ShiftLeft0~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~157_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~156_combout\) # ((\Shift|ShiftLeft0~74_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~156_combout\,
	datab => \Shift|ShiftLeft0~155_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ShiftLeft0~74_combout\,
	combout => \Shift|ShiftLeft0~157_combout\);

-- Location: LCCOMB_X52_Y41_N28
\Mux33~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~7_combout\ = (\A[30]~input_o\ & ((\B[30]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[30]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[30]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[30]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[30]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux33~7_combout\);

-- Location: LCCOMB_X52_Y41_N22
\Mux33~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~8_combout\ = (\Mux33~7_combout\ & ((\LogicFN[1]~input_o\) # ((\B[18]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[18]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux33~7_combout\,
	combout => \Mux33~8_combout\);

-- Location: LCCOMB_X55_Y39_N12
\Shift|ShiftRight0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~214_combout\ = (!\B[4]~input_o\ & (!\Shift|ShiftLeft0~23_combout\ & \Shift|ShiftRight1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~23_combout\,
	datad => \Shift|ShiftRight1~8_combout\,
	combout => \Shift|ShiftRight0~214_combout\);

-- Location: LCCOMB_X55_Y39_N30
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\B[5]~input_o\ & ((\Shift|ShiftRight0~214_combout\) # ((\Mux60~1_combout\)))) # (!\B[5]~input_o\ & (((\Shift|ShiftRight0~199_combout\ & !\Mux60~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~214_combout\,
	datab => \Shift|ShiftRight0~199_combout\,
	datac => \B[5]~input_o\,
	datad => \Mux60~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X55_Y39_N8
\Shift|ShiftRight1~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight1~115_combout\ = (\Shift|ShiftLeft0~21_combout\ & (\A[63]~input_o\)) # (!\Shift|ShiftLeft0~21_combout\ & ((\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftLeft0~21_combout\,
	datad => \A[62]~input_o\,
	combout => \Shift|ShiftRight1~115_combout\);

-- Location: LCCOMB_X55_Y39_N2
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (\Mux33~2_combout\ & (((\Shift|ShiftRight1~115_combout\)) # (!\Mux60~1_combout\))) # (!\Mux33~2_combout\ & (\Mux60~1_combout\ & ((\Shift|ShiftRight0~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~2_combout\,
	datab => \Mux60~1_combout\,
	datac => \Shift|ShiftRight1~115_combout\,
	datad => \Shift|ShiftRight0~197_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X52_Y41_N6
\Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\Mux33~1_combout\ & (\Mux60~0_combout\ & (\Mux33~8_combout\))) # (!\Mux33~1_combout\ & (((\Mux33~3_combout\)) # (!\Mux60~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux33~8_combout\,
	datad => \Mux33~3_combout\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X52_Y41_N24
\Mux33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (\Mux33~0_combout\ & ((\Mux33~4_combout\ & (\Add|S[30]~26_combout\)) # (!\Mux33~4_combout\ & ((\Shift|ShiftLeft0~157_combout\))))) # (!\Mux33~0_combout\ & (((\Mux33~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[30]~26_combout\,
	datab => \Shift|ShiftLeft0~157_combout\,
	datac => \Mux33~0_combout\,
	datad => \Mux33~4_combout\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X52_Y41_N18
\Mux33~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux33~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux33~5_combout\,
	combout => \Mux33~6_combout\);

-- Location: LCCOMB_X53_Y41_N2
\Shift|ShiftLeft0~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~159_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[29]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Shift|ShiftLeft0~159_combout\);

-- Location: LCCOMB_X53_Y41_N4
\Shift|ShiftLeft0~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~160_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~152_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~159_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~152_combout\,
	datad => \Shift|ShiftLeft0~159_combout\,
	combout => \Shift|ShiftLeft0~160_combout\);

-- Location: LCCOMB_X48_Y39_N12
\Shift|ShiftLeft0~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~161_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~117_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~117_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~160_combout\,
	combout => \Shift|ShiftLeft0~161_combout\);

-- Location: LCCOMB_X48_Y39_N6
\Shift|ShiftLeft0~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~162_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~137_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~161_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~161_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~137_combout\,
	combout => \Shift|ShiftLeft0~162_combout\);

-- Location: LCCOMB_X50_Y39_N0
\Shift|ShiftLeft0~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~158_combout\ = (\Shift|ShiftLeft0~78_combout\) # ((\Shift|ShiftLeft0~43_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~43_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~78_combout\,
	combout => \Shift|ShiftLeft0~158_combout\);

-- Location: LCCOMB_X55_Y37_N8
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X55_Y36_N0
\Y_ShiftOrArith[31]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~11_combout\ = (\Mux4~0_combout\ & ((\B[4]~input_o\ & ((\Shift|ShiftLeft0~158_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~162_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~158_combout\,
	datad => \Mux4~0_combout\,
	combout => \Y_ShiftOrArith[31]~11_combout\);

-- Location: LCCOMB_X55_Y37_N14
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\ShiftFN[0]~input_o\ & !\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X55_Y41_N16
\Logic|xor_result[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[31]~10_combout\ = \A[31]~input_o\ $ (\B[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[31]~input_o\,
	datad => \B[31]~input_o\,
	combout => \Logic|xor_result[31]~10_combout\);

-- Location: LCCOMB_X55_Y41_N22
\Y_ShiftOrArith[31]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~8_combout\ = (\Mux12~0_combout\ & (\AddnSub~input_o\ $ (\Add|C[31]~30_combout\ $ (\Logic|xor_result[31]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[31]~30_combout\,
	datad => \Logic|xor_result[31]~10_combout\,
	combout => \Y_ShiftOrArith[31]~8_combout\);

-- Location: LCCOMB_X56_Y36_N28
\Y_ShiftOrArith[31]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~9_combout\ = (\A[63]~input_o\ & (\ShiftFN[1]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[31]~9_combout\);

-- Location: LCCOMB_X55_Y36_N6
\Y_ShiftOrArith[31]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~10_combout\ = (\Y_ShiftOrArith[31]~8_combout\) # ((\Y_ShiftOrArith[31]~9_combout\ & ((\ShiftFN[0]~input_o\) # (!\Shift|ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~8_combout\,
	datab => \Shift|ShiftLeft0~21_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_ShiftOrArith[31]~9_combout\,
	combout => \Y_ShiftOrArith[31]~10_combout\);

-- Location: LCCOMB_X55_Y36_N18
\Y_ShiftOrArith[31]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~12_combout\ = (\ShiftFN[1]~input_o\ & ((\B[4]~input_o\ & ((\Shift|ShiftRight0~201_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftRight0~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~203_combout\,
	datab => \B[4]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Shift|ShiftRight0~201_combout\,
	combout => \Y_ShiftOrArith[31]~12_combout\);

-- Location: LCCOMB_X55_Y36_N4
\Y_ShiftOrArith[31]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~13_combout\ = (\Y_ShiftOrArith[31]~10_combout\) # ((!\B[5]~input_o\ & ((\Y_ShiftOrArith[31]~11_combout\) # (\Y_ShiftOrArith[31]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Y_ShiftOrArith[31]~11_combout\,
	datac => \Y_ShiftOrArith[31]~10_combout\,
	datad => \Y_ShiftOrArith[31]~12_combout\,
	combout => \Y_ShiftOrArith[31]~13_combout\);

-- Location: LCCOMB_X55_Y41_N26
\Logic|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux32~0_combout\ = (\LogicFN[1]~input_o\ & (((\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\Logic|xor_result[31]~10_combout\)) # (!\LogicFN[0]~input_o\ & ((\B[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Logic|xor_result[31]~10_combout\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Logic|Mux32~0_combout\);

-- Location: LCCOMB_X55_Y41_N28
\Logic|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux32~1_combout\ = (\LogicFN[1]~input_o\ & ((\A[31]~input_o\ & ((\B[31]~input_o\) # (!\Logic|Mux32~0_combout\))) # (!\A[31]~input_o\ & (!\Logic|Mux32~0_combout\ & \B[31]~input_o\)))) # (!\LogicFN[1]~input_o\ & (((\Logic|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[31]~input_o\,
	datac => \Logic|Mux32~0_combout\,
	datad => \B[31]~input_o\,
	combout => \Logic|Mux32~1_combout\);

-- Location: LCCOMB_X55_Y41_N8
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux32~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[31]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_ShiftOrArith[31]~13_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Logic|Mux32~1_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X57_Y41_N4
\Logic|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux31~0_combout\ = (\B[32]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[32]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[32]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \A[32]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[32]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Logic|Mux31~0_combout\);

-- Location: LCCOMB_X57_Y41_N6
\Logic|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux31~1_combout\ = (\Logic|Mux31~0_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Logic|Mux31~0_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux31~1_combout\);

-- Location: IOIBUF_X0_Y32_N22
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X47_Y37_N4
\Shift|ShiftLeft0~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~163_combout\ = (\B[1]~input_o\ & (((\B[0]~input_o\)))) # (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[6]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[6]~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~163_combout\);

-- Location: LCCOMB_X47_Y37_N22
\Shift|ShiftLeft0~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~164_combout\ = (\B[1]~input_o\ & ((\Shift|ShiftLeft0~163_combout\ & (\A[4]~input_o\)) # (!\Shift|ShiftLeft0~163_combout\ & ((\A[5]~input_o\))))) # (!\B[1]~input_o\ & (((\Shift|ShiftLeft0~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[4]~input_o\,
	datac => \Shift|ShiftLeft0~163_combout\,
	datad => \A[5]~input_o\,
	combout => \Shift|ShiftLeft0~164_combout\);

-- Location: LCCOMB_X50_Y39_N18
\Shift|ShiftLeft0~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~165_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~29_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~164_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~165_combout\);

-- Location: LCCOMB_X50_Y39_N12
\Y_ShiftOrArith[31]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~14_combout\ = (\B[4]~input_o\ & ((\Shift|ShiftLeft0~78_combout\) # ((\Shift|ShiftLeft0~165_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ShiftLeft0~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~78_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~162_combout\,
	datad => \Shift|ShiftLeft0~165_combout\,
	combout => \Y_ShiftOrArith[31]~14_combout\);

-- Location: LCCOMB_X55_Y36_N30
\Y_ShiftOrArith[31]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~15_combout\ = (!\B[5]~input_o\ & ((\Y_ShiftOrArith[31]~12_combout\) # ((\Y_ShiftOrArith[31]~14_combout\ & \Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Y_ShiftOrArith[31]~12_combout\,
	datac => \Y_ShiftOrArith[31]~14_combout\,
	datad => \Mux4~0_combout\,
	combout => \Y_ShiftOrArith[31]~15_combout\);

-- Location: LCCOMB_X55_Y36_N16
\Y_ShiftOrArith[31]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~16_combout\ = (\A[63]~input_o\ & (\Mux56~5_combout\ & ((\ShiftFN[0]~input_o\) # (!\Shift|ShiftLeft0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftLeft0~21_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Mux56~5_combout\,
	combout => \Y_ShiftOrArith[31]~16_combout\);

-- Location: LCCOMB_X55_Y36_N2
\Y_ShiftOrArith[32]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~17_combout\ = (\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~8_combout\) # ((\Y_ShiftOrArith[31]~15_combout\) # (\Y_ShiftOrArith[31]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~8_combout\,
	datab => \ExtWord~input_o\,
	datac => \Y_ShiftOrArith[31]~15_combout\,
	datad => \Y_ShiftOrArith[31]~16_combout\,
	combout => \Y_ShiftOrArith[32]~17_combout\);

-- Location: LCCOMB_X55_Y36_N14
\Y_ShiftOrArith[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~22_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & (!\Shift|ShiftLeft0~20_combout\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~20_combout\,
	datad => \A[0]~input_o\,
	combout => \Y_ShiftOrArith[0]~22_combout\);

-- Location: LCCOMB_X57_Y40_N26
\Shift|ShiftLeft0~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~166_combout\ = (\B[1]~input_o\ & ((\A[30]~input_o\))) # (!\B[1]~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[30]~input_o\,
	combout => \Shift|ShiftLeft0~166_combout\);

-- Location: LCCOMB_X53_Y40_N20
\Shift|ShiftLeft0~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~167_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~159_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~166_combout\,
	datad => \Shift|ShiftLeft0~159_combout\,
	combout => \Shift|ShiftLeft0~167_combout\);

-- Location: LCCOMB_X50_Y36_N26
\Shift|ShiftLeft0~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~168_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~121_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~167_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~121_combout\,
	datad => \Shift|ShiftLeft0~167_combout\,
	combout => \Shift|ShiftLeft0~168_combout\);

-- Location: LCCOMB_X50_Y36_N20
\Shift|ShiftLeft0~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~169_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~143_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~168_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~143_combout\,
	combout => \Shift|ShiftLeft0~169_combout\);

-- Location: LCCOMB_X55_Y36_N20
\Y_ShiftOrArith[32]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~21_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Shift|ShiftLeft0~84_combout\))) # (!\B[4]~input_o\ & (\Shift|ShiftLeft0~169_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~169_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~84_combout\,
	datad => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[32]~21_combout\);

-- Location: LCCOMB_X55_Y36_N8
\Y_ShiftOrArith[32]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~23_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_ShiftOrArith[32]~21_combout\) # ((\B[5]~input_o\ & \Y_ShiftOrArith[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_ShiftOrArith[0]~22_combout\,
	datad => \Y_ShiftOrArith[32]~21_combout\,
	combout => \Y_ShiftOrArith[32]~23_combout\);

-- Location: LCCOMB_X57_Y41_N0
\Add|S[32]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[32]~27_combout\ = \B[32]~input_o\ $ (\A[32]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Add|S[32]~27_combout\);

-- Location: LCCOMB_X57_Y41_N18
\Y_ShiftOrArith[32]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~20_combout\ = (!\ShiftFN[0]~input_o\ & (\Add|C[32]~31_combout\ $ (\AddnSub~input_o\ $ (\Add|S[32]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Add|C[32]~31_combout\,
	datac => \AddnSub~input_o\,
	datad => \Add|S[32]~27_combout\,
	combout => \Y_ShiftOrArith[32]~20_combout\);

-- Location: LCCOMB_X54_Y37_N22
\Shift|ShiftRight0~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~215_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftRight0~59_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftRight0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftRight0~59_combout\,
	datac => \Shift|ShiftRight0~62_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftRight0~215_combout\);

-- Location: LCCOMB_X56_Y37_N2
\Shift|ShiftRight0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~216_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftRight0~187_combout\) # (\Shift|ShiftRight0~190_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftRight0~187_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftRight0~190_combout\,
	combout => \Shift|ShiftRight0~216_combout\);

-- Location: LCCOMB_X57_Y37_N14
\Y_ShiftOrArith[32]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~18_combout\ = (\B[4]~input_o\ & (((\Shift|ShiftRight0~27_combout\)))) # (!\B[4]~input_o\ & ((\Shift|ShiftRight0~215_combout\) # ((\Shift|ShiftRight0~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ShiftRight0~215_combout\,
	datac => \Shift|ShiftRight0~27_combout\,
	datad => \Shift|ShiftRight0~216_combout\,
	combout => \Y_ShiftOrArith[32]~18_combout\);

-- Location: LCCOMB_X58_Y37_N16
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\A[63]~input_o\ & (\ShiftFN[0]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X58_Y37_N10
\Y_ShiftOrArith[32]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~19_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux1~0_combout\) # ((\Y_ShiftOrArith[32]~18_combout\ & !\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~18_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Y_ShiftOrArith[32]~19_combout\);

-- Location: LCCOMB_X58_Y37_N28
\Y_ShiftOrArith[32]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[32]~24_combout\ = (\Y_ShiftOrArith[32]~19_combout\) # ((!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[32]~23_combout\) # (\Y_ShiftOrArith[32]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~23_combout\,
	datab => \Y_ShiftOrArith[32]~20_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_ShiftOrArith[32]~19_combout\,
	combout => \Y_ShiftOrArith[32]~24_combout\);

-- Location: LCCOMB_X58_Y37_N6
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Y_ShiftOrArith[32]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[32]~17_combout\,
	datad => \Y_ShiftOrArith[32]~24_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X58_Y37_N24
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux31~0_combout\) # ((\Logic|Mux31~1_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Logic|Mux31~1_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X57_Y41_N16
\Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\B[33]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[33]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[33]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[33]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[33]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[33]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X57_Y41_N2
\Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Mux30~6_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux30~6_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X56_Y36_N30
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\ShiftFN[0]~input_o\ & \ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X55_Y37_N2
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = ((!\ShiftFN[0]~input_o\ & !\B[5]~input_o\)) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X55_Y37_N28
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\) # (!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X57_Y40_N28
\Shift|ShiftLeft0~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~171_combout\ = (\B[1]~input_o\ & (\A[31]~input_o\)) # (!\B[1]~input_o\ & ((\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[31]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ShiftLeft0~171_combout\);

-- Location: LCCOMB_X57_Y40_N22
\Shift|ShiftLeft0~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~172_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~166_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~166_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~171_combout\,
	combout => \Shift|ShiftLeft0~172_combout\);

-- Location: LCCOMB_X50_Y38_N28
\Shift|ShiftLeft0~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~173_combout\ = (\B[3]~input_o\ & ((\Shift|ShiftLeft0~126_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~172_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~172_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~126_combout\,
	combout => \Shift|ShiftLeft0~173_combout\);

-- Location: LCCOMB_X50_Y38_N14
\Shift|ShiftLeft0~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~174_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~149_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~149_combout\,
	datad => \Shift|ShiftLeft0~173_combout\,
	combout => \Shift|ShiftLeft0~174_combout\);

-- Location: LCCOMB_X52_Y36_N20
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = ((\B[4]~input_o\ & !\B[5]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X54_Y38_N26
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux19~1_combout\ & (((\Shift|ShiftLeft0~90_combout\) # (!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & (\Shift|ShiftLeft0~174_combout\ & ((\Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~174_combout\,
	datab => \Mux19~1_combout\,
	datac => \Shift|ShiftLeft0~90_combout\,
	datad => \Y_ShiftOrArith[0]~1_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X55_Y38_N24
\Add|S[33]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[33]~28_combout\ = \AddnSub~input_o\ $ (\A[33]~input_o\ $ (\Add|C[33]~32_combout\ $ (\B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[33]~input_o\,
	datac => \Add|C[33]~32_combout\,
	datad => \B[33]~input_o\,
	combout => \Add|S[33]~28_combout\);

-- Location: LCCOMB_X54_Y38_N24
\Shift|ShiftLeft0~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~170_combout\ = (!\B[4]~input_o\ & (\Shift|ShiftLeft0~22_combout\ & !\Shift|ShiftLeft0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~22_combout\,
	datad => \Shift|ShiftLeft0~23_combout\,
	combout => \Shift|ShiftLeft0~170_combout\);

-- Location: LCCOMB_X54_Y38_N28
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & ((\Add|S[33]~28_combout\) # ((\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux30~0_combout\ & (((!\Y_ShiftOrArith[0]~1_combout\ & \Shift|ShiftLeft0~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Add|S[33]~28_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Shift|ShiftLeft0~170_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X56_Y35_N24
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~102_combout\))) # (!\Mux19~3_combout\ & (\Mux30~1_combout\)))) # (!\Mux19~2_combout\ & (!\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~3_combout\,
	datac => \Mux30~1_combout\,
	datad => \Shift|ShiftRight0~102_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X56_Y35_N18
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux19~0_combout\ & ((\Mux30~2_combout\ & (\Shift|ShiftRight1~30_combout\)) # (!\Mux30~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux19~0_combout\ & (((\Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~30_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \Mux30~2_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X58_Y39_N16
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~17_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X58_Y39_N2
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux30~4_combout\) # ((\Mux30~7_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~7_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux30~4_combout\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X57_Y41_N12
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\LogicFN[1]~input_o\ & ((\B[34]~input_o\ & ((\A[34]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & !\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[34]~input_o\ $ (\A[34]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X57_Y41_N22
\Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux29~6_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux29~6_combout\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X57_Y40_N16
\Shift|ShiftLeft0~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~175_combout\ = (\B[1]~input_o\ & (\A[32]~input_o\)) # (!\B[1]~input_o\ & ((\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[32]~input_o\,
	datad => \A[34]~input_o\,
	combout => \Shift|ShiftLeft0~175_combout\);

-- Location: LCCOMB_X57_Y40_N18
\Shift|ShiftLeft0~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~176_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~171_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~175_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~175_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~171_combout\,
	combout => \Shift|ShiftLeft0~176_combout\);

-- Location: LCCOMB_X54_Y40_N2
\Shift|ShiftLeft0~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~177_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~131_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~176_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~131_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~176_combout\,
	combout => \Shift|ShiftLeft0~177_combout\);

-- Location: LCCOMB_X54_Y40_N28
\Shift|ShiftLeft0~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~178_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~154_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~177_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~177_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~154_combout\,
	combout => \Shift|ShiftLeft0~178_combout\);

-- Location: LCCOMB_X55_Y40_N0
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux19~1_combout\ & (((!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & ((\Y_ShiftOrArith[0]~1_combout\ & ((\Shift|ShiftLeft0~178_combout\))) # (!\Y_ShiftOrArith[0]~1_combout\ & (\Shift|ShiftLeft0~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~285_combout\,
	datab => \Mux19~1_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Shift|ShiftLeft0~178_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X57_Y41_N28
\Add|S[34]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[34]~29_combout\ = \AddnSub~input_o\ $ (\B[34]~input_o\ $ (\A[34]~input_o\ $ (\Add|C[34]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[34]~input_o\,
	datac => \A[34]~input_o\,
	datad => \Add|C[34]~33_combout\,
	combout => \Add|S[34]~29_combout\);

-- Location: LCCOMB_X57_Y39_N14
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux19~1_combout\ & ((\Mux29~0_combout\ & ((\Add|S[34]~29_combout\))) # (!\Mux29~0_combout\ & (\Shift|ShiftLeft0~96_combout\)))) # (!\Mux19~1_combout\ & (((\Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Shift|ShiftLeft0~96_combout\,
	datac => \Mux29~0_combout\,
	datad => \Add|S[34]~29_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X57_Y39_N16
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux19~3_combout\ & (\Mux19~2_combout\ & ((\Shift|ShiftRight0~112_combout\)))) # (!\Mux19~3_combout\ & (((\Mux29~1_combout\)) # (!\Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux29~1_combout\,
	datad => \Shift|ShiftRight0~112_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X57_Y39_N18
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux19~0_combout\ & ((\Mux29~2_combout\ & ((\Shift|ShiftRight1~63_combout\))) # (!\Mux29~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (\Mux29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux29~2_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~63_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X58_Y37_N18
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[32]~17_combout\,
	datad => \Mux29~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X58_Y37_N20
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux29~4_combout\) # ((\Mux29~7_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux29~7_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux29~4_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X57_Y41_N24
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\A[35]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[35]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[35]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[35]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[35]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X57_Y41_N26
\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\Mux28~6_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux28~6_combout\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X57_Y40_N12
\Shift|ShiftLeft0~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~179_combout\ = (\B[1]~input_o\ & ((\A[33]~input_o\))) # (!\B[1]~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ShiftLeft0~179_combout\);

-- Location: LCCOMB_X57_Y40_N30
\Shift|ShiftLeft0~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~180_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~175_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~175_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~179_combout\,
	combout => \Shift|ShiftLeft0~180_combout\);

-- Location: LCCOMB_X48_Y39_N16
\Shift|ShiftLeft0~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~181_combout\ = (\B[3]~input_o\ & (\Shift|ShiftLeft0~136_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~180_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~136_combout\,
	datad => \Shift|ShiftLeft0~180_combout\,
	combout => \Shift|ShiftLeft0~181_combout\);

-- Location: LCCOMB_X48_Y39_N18
\Shift|ShiftLeft0~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~182_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~161_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~161_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~181_combout\,
	combout => \Shift|ShiftLeft0~182_combout\);

-- Location: LCCOMB_X57_Y35_N30
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & ((\Mux19~1_combout\ & ((\Shift|ShiftLeft0~102_combout\))) # (!\Mux19~1_combout\ & (\Shift|ShiftLeft0~182_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & (((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Shift|ShiftLeft0~182_combout\,
	datac => \Shift|ShiftLeft0~102_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X57_Y41_N14
\Add|S[35]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[35]~30_combout\ = \A[35]~input_o\ $ (\Add|C[35]~34_combout\ $ (\AddnSub~input_o\ $ (\B[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datab => \Add|C[35]~34_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[35]~input_o\,
	combout => \Add|S[35]~30_combout\);

-- Location: LCCOMB_X57_Y35_N0
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (((\Mux28~0_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Mux28~0_combout\ & ((\Add|S[35]~30_combout\))) # (!\Mux28~0_combout\ & (\Shift|ShiftLeft0~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Shift|ShiftLeft0~286_combout\,
	datac => \Mux28~0_combout\,
	datad => \Add|S[35]~30_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X52_Y39_N2
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~123_combout\))) # (!\Mux19~3_combout\ & (\Mux28~1_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~123_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X58_Y39_N12
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux28~2_combout\ & ((\Shift|ShiftRight1~80_combout\) # ((!\Mux19~0_combout\)))) # (!\Mux28~2_combout\ & (((\A[63]~input_o\ & \Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~80_combout\,
	datab => \Mux28~2_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux19~0_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X58_Y39_N22
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~17_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux28~3_combout\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X58_Y39_N8
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux28~4_combout\) # ((\Mux28~7_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux28~4_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X58_Y40_N2
\Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\LogicFN[1]~input_o\ & ((\B[36]~input_o\ & ((\A[36]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[36]~input_o\ & (!\LogicFN[0]~input_o\ & \A[36]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[36]~input_o\ $ (\A[36]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[36]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X58_Y40_N4
\Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~7_combout\ = (\Mux27~6_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux27~6_combout\,
	combout => \Mux27~7_combout\);

-- Location: LCCOMB_X58_Y40_N14
\Add|S[36]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[36]~31_combout\ = \Add|C[36]~35_combout\ $ (\AddnSub~input_o\ $ (\B[36]~input_o\ $ (\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[36]~35_combout\,
	datab => \AddnSub~input_o\,
	datac => \B[36]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Add|S[36]~31_combout\);

-- Location: LCCOMB_X52_Y36_N30
\Shift|ShiftLeft0~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~292_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & \Shift|ShiftLeft0~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~34_combout\,
	combout => \Shift|ShiftLeft0~292_combout\);

-- Location: LCCOMB_X58_Y40_N10
\Shift|ShiftLeft0~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~183_combout\ = (\B[1]~input_o\ & (\A[34]~input_o\)) # (!\B[1]~input_o\ & ((\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[34]~input_o\,
	datad => \A[36]~input_o\,
	combout => \Shift|ShiftLeft0~183_combout\);

-- Location: LCCOMB_X58_Y40_N12
\Shift|ShiftLeft0~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~184_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~179_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~183_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~179_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~183_combout\,
	combout => \Shift|ShiftLeft0~184_combout\);

-- Location: LCCOMB_X52_Y36_N6
\Shift|ShiftLeft0~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~185_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~142_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~184_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~142_combout\,
	combout => \Shift|ShiftLeft0~185_combout\);

-- Location: LCCOMB_X52_Y36_N24
\Shift|ShiftLeft0~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~186_combout\ = (\Shift|ShiftLeft0~185_combout\) # ((\B[2]~input_o\ & \Shift|ShiftLeft0~168_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~168_combout\,
	datad => \Shift|ShiftLeft0~185_combout\,
	combout => \Shift|ShiftLeft0~186_combout\);

-- Location: LCCOMB_X52_Y36_N2
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux19~1_combout\ & (((!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & ((\Y_ShiftOrArith[0]~1_combout\ & ((\Shift|ShiftLeft0~186_combout\))) # (!\Y_ShiftOrArith[0]~1_combout\ & (\Shift|ShiftLeft0~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~292_combout\,
	datab => \Mux19~1_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Shift|ShiftLeft0~186_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X53_Y36_N22
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux19~1_combout\ & ((\Mux27~0_combout\ & ((\Add|S[36]~31_combout\))) # (!\Mux27~0_combout\ & (\Shift|ShiftLeft0~107_combout\)))) # (!\Mux19~1_combout\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~107_combout\,
	datab => \Mux19~1_combout\,
	datac => \Add|S[36]~31_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X53_Y36_N8
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~134_combout\))) # (!\Mux19~3_combout\ & (\Mux27~1_combout\)))) # (!\Mux19~2_combout\ & (!\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~3_combout\,
	datac => \Mux27~1_combout\,
	datad => \Shift|ShiftRight0~134_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X53_Y36_N2
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux19~0_combout\ & ((\Mux27~2_combout\ & ((\Shift|ShiftRight1~82_combout\))) # (!\Mux27~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \Mux27~2_combout\,
	datad => \Shift|ShiftRight1~82_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X59_Y34_N0
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((\Mux27~3_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X59_Y34_N2
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux27~4_combout\) # ((\Mux27~7_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux27~7_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux27~4_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X58_Y40_N30
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\LogicFN[1]~input_o\ & ((\A[37]~input_o\ & ((\B[37]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[37]~input_o\ & (!\LogicFN[0]~input_o\ & \B[37]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[37]~input_o\ $ (\B[37]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[37]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X58_Y40_N0
\Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~7_combout\ = (\Mux26~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux26~6_combout\,
	combout => \Mux26~7_combout\);

-- Location: LCCOMB_X58_Y40_N24
\Shift|ShiftLeft0~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~187_combout\ = (\B[1]~input_o\ & (\A[35]~input_o\)) # (!\B[1]~input_o\ & ((\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[35]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~187_combout\);

-- Location: LCCOMB_X58_Y40_N18
\Shift|ShiftLeft0~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~188_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~183_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~183_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~187_combout\,
	combout => \Shift|ShiftLeft0~188_combout\);

-- Location: LCCOMB_X50_Y38_N16
\Shift|ShiftLeft0~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~189_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~148_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~148_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~188_combout\,
	combout => \Shift|ShiftLeft0~189_combout\);

-- Location: LCCOMB_X50_Y38_N18
\Shift|ShiftLeft0~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~190_combout\ = (\Shift|ShiftLeft0~189_combout\) # ((\Shift|ShiftLeft0~173_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~173_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~189_combout\,
	combout => \Shift|ShiftLeft0~190_combout\);

-- Location: LCCOMB_X50_Y38_N12
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux19~1_combout\ & ((\Shift|ShiftLeft0~111_combout\) # ((!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & (((\Shift|ShiftLeft0~190_combout\ & \Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~111_combout\,
	datab => \Shift|ShiftLeft0~190_combout\,
	datac => \Mux19~1_combout\,
	datad => \Y_ShiftOrArith[0]~1_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X58_Y40_N20
\Add|S[37]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[37]~32_combout\ = \AddnSub~input_o\ $ (\Add|C[37]~36_combout\ $ (\A[37]~input_o\ $ (\B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[37]~36_combout\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Add|S[37]~32_combout\);

-- Location: LCCOMB_X49_Y37_N18
\Shift|ShiftLeft0~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~293_combout\ = (!\B[4]~input_o\ & (!\B[3]~input_o\ & \Shift|ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~37_combout\,
	combout => \Shift|ShiftLeft0~293_combout\);

-- Location: LCCOMB_X50_Y38_N22
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & ((\Add|S[37]~32_combout\) # ((\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux26~0_combout\ & (((\Shift|ShiftLeft0~293_combout\ & !\Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~0_combout\,
	datab => \Add|S[37]~32_combout\,
	datac => \Shift|ShiftLeft0~293_combout\,
	datad => \Y_ShiftOrArith[0]~1_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X54_Y35_N16
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux19~3_combout\ & (((\Mux19~2_combout\ & \Shift|ShiftRight0~139_combout\)))) # (!\Mux19~3_combout\ & ((\Mux26~1_combout\) # ((!\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux19~3_combout\,
	datac => \Mux19~2_combout\,
	datad => \Shift|ShiftRight0~139_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X54_Y35_N18
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux19~0_combout\ & ((\Mux26~2_combout\ & ((\Shift|ShiftRight1~85_combout\))) # (!\Mux26~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \Shift|ShiftRight1~85_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X58_Y39_N18
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((\Mux26~3_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X58_Y39_N4
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux26~4_combout\) # ((\Mux26~7_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~7_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux26~4_combout\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X56_Y40_N20
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[38]~input_o\ & \B[38]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[38]~input_o\ $ (\B[38]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[38]~input_o\) # (\B[38]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[38]~input_o\,
	datad => \B[38]~input_o\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X55_Y41_N20
\Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~7_combout\ = (\Mux25~6_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Mux25~6_combout\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[19]~input_o\,
	combout => \Mux25~7_combout\);

-- Location: LCCOMB_X55_Y40_N2
\Shift|ShiftLeft0~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~191_combout\ = (!\Mux56~3_combout\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~26_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~26_combout\,
	datac => \Shift|ShiftLeft0~39_combout\,
	datad => \Mux56~3_combout\,
	combout => \Shift|ShiftLeft0~191_combout\);

-- Location: LCCOMB_X60_Y38_N8
\Shift|ShiftLeft0~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~192_combout\ = (\B[1]~input_o\ & ((\A[36]~input_o\))) # (!\B[1]~input_o\ & (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \A[36]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~192_combout\);

-- Location: LCCOMB_X60_Y38_N10
\Shift|ShiftLeft0~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~193_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~187_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~192_combout\,
	datac => \Shift|ShiftLeft0~187_combout\,
	combout => \Shift|ShiftLeft0~193_combout\);

-- Location: LCCOMB_X56_Y39_N0
\Shift|ShiftLeft0~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~194_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~153_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~193_combout\,
	datad => \Shift|ShiftLeft0~153_combout\,
	combout => \Shift|ShiftLeft0~194_combout\);

-- Location: LCCOMB_X55_Y40_N20
\Shift|ShiftLeft0~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~195_combout\ = (\Shift|ShiftLeft0~194_combout\) # ((\Shift|ShiftLeft0~177_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~177_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~194_combout\,
	combout => \Shift|ShiftLeft0~195_combout\);

-- Location: LCCOMB_X55_Y40_N30
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux19~1_combout\ & (((!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & ((\Y_ShiftOrArith[0]~1_combout\ & ((\Shift|ShiftLeft0~195_combout\))) # (!\Y_ShiftOrArith[0]~1_combout\ & (\Shift|ShiftLeft0~191_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Shift|ShiftLeft0~191_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Shift|ShiftLeft0~195_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X56_Y40_N18
\Add|S[38]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[38]~33_combout\ = \A[38]~input_o\ $ (\Add|C[38]~37_combout\ $ (\AddnSub~input_o\ $ (\B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[38]~input_o\,
	datab => \Add|C[38]~37_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[38]~input_o\,
	combout => \Add|S[38]~33_combout\);

-- Location: LCCOMB_X55_Y40_N16
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & (((\Add|S[38]~33_combout\)) # (!\Mux19~1_combout\))) # (!\Mux25~0_combout\ & (\Mux19~1_combout\ & (\Shift|ShiftLeft0~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux19~1_combout\,
	datac => \Shift|ShiftLeft0~115_combout\,
	datad => \Add|S[38]~33_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X54_Y36_N28
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & (\Shift|ShiftRight0~152_combout\)) # (!\Mux19~3_combout\ & ((\Mux25~1_combout\))))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Shift|ShiftRight0~152_combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X54_Y36_N22
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux19~0_combout\ & ((\Mux25~2_combout\ & ((\Shift|ShiftRight1~87_combout\))) # (!\Mux25~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~87_combout\,
	datac => \Mux19~0_combout\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X55_Y41_N10
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Mux25~3_combout\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X55_Y41_N12
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux25~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux25~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux25~7_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux25~4_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X63_Y37_N28
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\LogicFN[0]~input_o\ & ((\A[39]~input_o\ & (\LogicFN[1]~input_o\ $ (!\B[39]~input_o\))) # (!\A[39]~input_o\ & (!\LogicFN[1]~input_o\ & \B[39]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[39]~input_o\) # ((\B[39]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[39]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[39]~input_o\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X63_Y37_N22
\Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux24~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux24~6_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X60_Y38_N12
\Shift|ShiftLeft0~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~197_combout\ = (\B[1]~input_o\ & (\A[37]~input_o\)) # (!\B[1]~input_o\ & ((\A[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[39]~input_o\,
	combout => \Shift|ShiftLeft0~197_combout\);

-- Location: LCCOMB_X60_Y38_N30
\Shift|ShiftLeft0~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~198_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~192_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~197_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~192_combout\,
	datad => \Shift|ShiftLeft0~197_combout\,
	combout => \Shift|ShiftLeft0~198_combout\);

-- Location: LCCOMB_X48_Y39_N4
\Shift|ShiftLeft0~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~199_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ShiftLeft0~160_combout\))) # (!\B[3]~input_o\ & (\Shift|ShiftLeft0~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~198_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~160_combout\,
	combout => \Shift|ShiftLeft0~199_combout\);

-- Location: LCCOMB_X48_Y39_N30
\Shift|ShiftLeft0~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~200_combout\ = (\Shift|ShiftLeft0~199_combout\) # ((\B[2]~input_o\ & \Shift|ShiftLeft0~181_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~199_combout\,
	datad => \Shift|ShiftLeft0~181_combout\,
	combout => \Shift|ShiftLeft0~200_combout\);

-- Location: LCCOMB_X54_Y38_N6
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & ((\Mux19~1_combout\ & ((\Shift|ShiftLeft0~119_combout\))) # (!\Mux19~1_combout\ & (\Shift|ShiftLeft0~200_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & (((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~200_combout\,
	datab => \Y_ShiftOrArith[0]~1_combout\,
	datac => \Mux19~1_combout\,
	datad => \Shift|ShiftLeft0~119_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X50_Y35_N28
\Shift|ShiftLeft0~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~196_combout\ = (!\Mux56~3_combout\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~29_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Mux56~3_combout\,
	datac => \Shift|ShiftLeft0~42_combout\,
	datad => \Shift|ShiftLeft0~29_combout\,
	combout => \Shift|ShiftLeft0~196_combout\);

-- Location: LCCOMB_X63_Y37_N16
\Add|S[39]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[39]~34_combout\ = \AddnSub~input_o\ $ (\A[39]~input_o\ $ (\Add|C[39]~38_combout\ $ (\B[39]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[39]~input_o\,
	datac => \Add|C[39]~38_combout\,
	datad => \B[39]~input_o\,
	combout => \Add|S[39]~34_combout\);

-- Location: LCCOMB_X55_Y35_N22
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & ((\Y_ShiftOrArith[0]~1_combout\) # ((\Add|S[39]~34_combout\)))) # (!\Mux24~0_combout\ & (!\Y_ShiftOrArith[0]~1_combout\ & (\Shift|ShiftLeft0~196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \Y_ShiftOrArith[0]~1_combout\,
	datac => \Shift|ShiftLeft0~196_combout\,
	datad => \Add|S[39]~34_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X55_Y35_N24
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & (\Shift|ShiftRight0~157_combout\)) # (!\Mux19~3_combout\ & ((\Mux24~1_combout\))))) # (!\Mux19~2_combout\ & (!\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~3_combout\,
	datac => \Shift|ShiftRight0~157_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X55_Y35_N26
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux19~0_combout\ & ((\Mux24~2_combout\ & ((\Shift|ShiftRight1~89_combout\))) # (!\Mux24~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~89_combout\,
	datac => \Mux19~0_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X59_Y34_N12
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((\Mux24~3_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X59_Y34_N30
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux24~4_combout\) # ((\Mux24~7_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux24~7_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux24~4_combout\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X63_Y37_N8
\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[40]~input_o\ & \B[40]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[40]~input_o\ $ (\B[40]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[40]~input_o\) # (\B[40]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X63_Y37_N18
\Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~7_combout\ = (\Mux23~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \Mux23~6_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux23~7_combout\);

-- Location: LCCOMB_X60_Y38_N24
\Shift|ShiftLeft0~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~202_combout\ = (\B[1]~input_o\ & (\A[38]~input_o\)) # (!\B[1]~input_o\ & ((\A[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[38]~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~202_combout\);

-- Location: LCCOMB_X60_Y38_N2
\Shift|ShiftLeft0~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~203_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~197_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~202_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~202_combout\,
	datad => \Shift|ShiftLeft0~197_combout\,
	combout => \Shift|ShiftLeft0~203_combout\);

-- Location: LCCOMB_X52_Y36_N14
\Shift|ShiftLeft0~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~204_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~184_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~184_combout\,
	datad => \Shift|ShiftLeft0~203_combout\,
	combout => \Shift|ShiftLeft0~204_combout\);

-- Location: LCCOMB_X52_Y36_N4
\Shift|ShiftLeft0~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~201_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~142_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~167_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~142_combout\,
	combout => \Shift|ShiftLeft0~201_combout\);

-- Location: LCCOMB_X52_Y36_N16
\Shift|ShiftLeft0~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~205_combout\ = (\Shift|ShiftLeft0~201_combout\) # ((\Shift|ShiftLeft0~204_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~204_combout\,
	datac => \Shift|ShiftLeft0~201_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~205_combout\);

-- Location: LCCOMB_X56_Y36_N0
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (\Shift|ShiftLeft0~205_combout\ & ((!\Mux19~1_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & (((\Shift|ShiftLeft0~48_combout\) # (\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Shift|ShiftLeft0~205_combout\,
	datac => \Shift|ShiftLeft0~48_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X63_Y37_N2
\Add|S[40]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[40]~35_combout\ = \AddnSub~input_o\ $ (\B[40]~input_o\ $ (\A[40]~input_o\ $ (\Add|C[40]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[40]~input_o\,
	datac => \A[40]~input_o\,
	datad => \Add|C[40]~39_combout\,
	combout => \Add|S[40]~35_combout\);

-- Location: LCCOMB_X56_Y37_N12
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\Add|S[40]~35_combout\) # (!\Mux19~1_combout\)))) # (!\Mux23~0_combout\ & (\Shift|ShiftLeft0~123_combout\ & (\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~123_combout\,
	datab => \Mux23~0_combout\,
	datac => \Mux19~1_combout\,
	datad => \Add|S[40]~35_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X56_Y37_N30
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux19~3_combout\ & (((\Mux19~2_combout\ & \Shift|ShiftRight0~218_combout\)))) # (!\Mux19~3_combout\ & ((\Mux23~1_combout\) # ((!\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux19~3_combout\,
	datac => \Mux19~2_combout\,
	datad => \Shift|ShiftRight0~218_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X56_Y36_N2
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux19~0_combout\ & ((\Mux23~2_combout\ & ((\Shift|ShiftRight1~91_combout\))) # (!\Mux23~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (\Mux23~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux23~2_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~91_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X55_Y41_N6
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \Mux23~3_combout\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X55_Y41_N0
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux23~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux23~7_combout\,
	datad => \Mux23~4_combout\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X60_Y38_N4
\Shift|ShiftLeft0~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~207_combout\ = (\B[1]~input_o\ & (\A[39]~input_o\)) # (!\B[1]~input_o\ & ((\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	combout => \Shift|ShiftLeft0~207_combout\);

-- Location: LCCOMB_X59_Y38_N18
\Shift|ShiftLeft0~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~208_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~202_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~207_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~202_combout\,
	datad => \Shift|ShiftLeft0~207_combout\,
	combout => \Shift|ShiftLeft0~208_combout\);

-- Location: LCCOMB_X55_Y38_N28
\Shift|ShiftLeft0~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~209_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~188_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~208_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~188_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~208_combout\,
	combout => \Shift|ShiftLeft0~209_combout\);

-- Location: LCCOMB_X55_Y38_N10
\Shift|ShiftLeft0~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~206_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~148_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~172_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~148_combout\,
	datac => \Shift|ShiftLeft0~172_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ShiftLeft0~206_combout\);

-- Location: LCCOMB_X55_Y38_N6
\Shift|ShiftLeft0~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~210_combout\ = (\Shift|ShiftLeft0~206_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~209_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~209_combout\,
	datad => \Shift|ShiftLeft0~206_combout\,
	combout => \Shift|ShiftLeft0~210_combout\);

-- Location: LCCOMB_X57_Y35_N26
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & ((\Mux19~1_combout\ & (\Shift|ShiftLeft0~128_combout\)) # (!\Mux19~1_combout\ & ((\Shift|ShiftLeft0~210_combout\))))) # (!\Y_ShiftOrArith[0]~1_combout\ & (((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Shift|ShiftLeft0~128_combout\,
	datac => \Shift|ShiftLeft0~210_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X63_Y37_N4
\Add|S[41]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[41]~36_combout\ = \Add|C[41]~40_combout\ $ (\B[41]~input_o\ $ (\AddnSub~input_o\ $ (\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[41]~40_combout\,
	datab => \B[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[41]~input_o\,
	combout => \Add|S[41]~36_combout\);

-- Location: LCCOMB_X57_Y35_N28
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\Y_ShiftOrArith[0]~1_combout\) # (\Add|S[41]~36_combout\)))) # (!\Mux22~0_combout\ & (\Shift|ShiftLeft0~53_combout\ & (!\Y_ShiftOrArith[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Shift|ShiftLeft0~53_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Add|S[41]~36_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X57_Y35_N14
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~226_combout\))) # (!\Mux19~3_combout\ & (\Mux22~1_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~226_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X57_Y35_N16
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux19~0_combout\ & ((\Mux22~2_combout\ & ((\Shift|ShiftRight1~93_combout\))) # (!\Mux22~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux22~2_combout\,
	datad => \Shift|ShiftRight1~93_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X59_Y34_N24
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~17_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X63_Y37_N12
\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\LogicFN[0]~input_o\ & ((\B[41]~input_o\ & (\LogicFN[1]~input_o\ $ (!\A[41]~input_o\))) # (!\B[41]~input_o\ & (!\LogicFN[1]~input_o\ & \A[41]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[41]~input_o\) # ((\A[41]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[41]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X63_Y37_N6
\Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux22~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux22~6_combout\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X59_Y34_N26
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux22~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux22~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux22~4_combout\,
	datac => \Mux22~7_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X56_Y39_N26
\Shift|ShiftLeft0~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~211_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~153_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~176_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~153_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~176_combout\,
	combout => \Shift|ShiftLeft0~211_combout\);

-- Location: LCCOMB_X59_Y38_N12
\Shift|ShiftLeft0~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~212_combout\ = (\B[1]~input_o\ & ((\A[40]~input_o\))) # (!\B[1]~input_o\ & (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[42]~input_o\,
	datad => \A[40]~input_o\,
	combout => \Shift|ShiftLeft0~212_combout\);

-- Location: LCCOMB_X59_Y38_N22
\Shift|ShiftLeft0~213\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~213_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~207_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~212_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~212_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~207_combout\,
	combout => \Shift|ShiftLeft0~213_combout\);

-- Location: LCCOMB_X56_Y39_N12
\Shift|ShiftLeft0~214\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~214_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~193_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~213_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~193_combout\,
	datab => \Shift|ShiftLeft0~213_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~214_combout\);

-- Location: LCCOMB_X56_Y39_N14
\Shift|ShiftLeft0~215\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~215_combout\ = (\Shift|ShiftLeft0~211_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~214_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~211_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~214_combout\,
	combout => \Shift|ShiftLeft0~215_combout\);

-- Location: LCCOMB_X55_Y40_N26
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (!\Mux19~1_combout\ & ((\Shift|ShiftLeft0~215_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Mux19~1_combout\) # ((\Shift|ShiftLeft0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Mux19~1_combout\,
	datac => \Shift|ShiftLeft0~58_combout\,
	datad => \Shift|ShiftLeft0~215_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X63_Y37_N14
\Add|S[42]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[42]~37_combout\ = \A[42]~input_o\ $ (\AddnSub~input_o\ $ (\B[42]~input_o\ $ (\Add|C[42]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[42]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[42]~input_o\,
	datad => \Add|C[42]~41_combout\,
	combout => \Add|S[42]~37_combout\);

-- Location: LCCOMB_X55_Y40_N12
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux19~1_combout\ & ((\Mux21~0_combout\ & ((\Add|S[42]~37_combout\))) # (!\Mux21~0_combout\ & (\Shift|ShiftLeft0~133_combout\)))) # (!\Mux19~1_combout\ & (((\Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~133_combout\,
	datab => \Mux19~1_combout\,
	datac => \Mux21~0_combout\,
	datad => \Add|S[42]~37_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X57_Y36_N30
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux19~3_combout\ & (\Mux19~2_combout\ & ((\Shift|ShiftRight0~219_combout\)))) # (!\Mux19~3_combout\ & (((\Mux21~1_combout\)) # (!\Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux21~1_combout\,
	datad => \Shift|ShiftRight0~219_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X57_Y36_N8
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\ & (((\Shift|ShiftRight1~95_combout\)) # (!\Mux19~0_combout\))) # (!\Mux21~2_combout\ & (\Mux19~0_combout\ & (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \Mux19~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~95_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X59_Y34_N4
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~17_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X63_Y37_N24
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[42]~input_o\ & \A[42]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[42]~input_o\ $ (\A[42]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[42]~input_o\) # (\A[42]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X63_Y37_N26
\Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~7_combout\ = (\Mux21~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux21~6_combout\,
	combout => \Mux21~7_combout\);

-- Location: LCCOMB_X59_Y34_N14
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux21~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux21~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux21~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux21~7_combout\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X62_Y34_N0
\Add|S[43]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[43]~38_combout\ = \AddnSub~input_o\ $ (\Add|C[43]~42_combout\ $ (\B[43]~input_o\ $ (\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[43]~42_combout\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Add|S[43]~38_combout\);

-- Location: LCCOMB_X48_Y38_N0
\Shift|ShiftLeft0~216\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~216_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~160_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~180_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~160_combout\,
	combout => \Shift|ShiftLeft0~216_combout\);

-- Location: LCCOMB_X59_Y38_N0
\Shift|ShiftLeft0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~217_combout\ = (\B[1]~input_o\ & (\A[41]~input_o\)) # (!\B[1]~input_o\ & ((\A[43]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Shift|ShiftLeft0~217_combout\);

-- Location: LCCOMB_X59_Y38_N26
\Shift|ShiftLeft0~218\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~218_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~212_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~217_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~217_combout\,
	datad => \Shift|ShiftLeft0~212_combout\,
	combout => \Shift|ShiftLeft0~218_combout\);

-- Location: LCCOMB_X48_Y38_N10
\Shift|ShiftLeft0~219\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~219_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~198_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~218_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~218_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~198_combout\,
	combout => \Shift|ShiftLeft0~219_combout\);

-- Location: LCCOMB_X48_Y38_N4
\Shift|ShiftLeft0~220\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~220_combout\ = (\Shift|ShiftLeft0~216_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~219_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~216_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~219_combout\,
	combout => \Shift|ShiftLeft0~220_combout\);

-- Location: LCCOMB_X54_Y38_N16
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux19~1_combout\ & (((\Shift|ShiftLeft0~138_combout\) # (!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & (\Shift|ShiftLeft0~220_combout\ & ((\Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~220_combout\,
	datab => \Shift|ShiftLeft0~138_combout\,
	datac => \Mux19~1_combout\,
	datad => \Y_ShiftOrArith[0]~1_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X53_Y35_N0
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (((\Mux20~0_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Mux20~0_combout\ & (\Add|S[43]~38_combout\)) # (!\Mux20~0_combout\ & ((\Shift|ShiftLeft0~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[43]~38_combout\,
	datab => \Y_ShiftOrArith[0]~1_combout\,
	datac => \Shift|ShiftLeft0~63_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X53_Y35_N10
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~220_combout\))) # (!\Mux19~3_combout\ & (\Mux20~1_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux20~1_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~220_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X53_Y35_N20
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux19~0_combout\ & ((\Mux20~2_combout\ & ((\Shift|ShiftRight1~97_combout\))) # (!\Mux20~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~97_combout\,
	datac => \Mux19~0_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X59_Y34_N8
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((\Mux20~3_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X62_Y34_N4
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[43]~input_o\ & \A[43]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[43]~input_o\) # (\A[43]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[43]~input_o\ $ (\A[43]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[43]~input_o\,
	datad => \A[43]~input_o\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X62_Y34_N22
\Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (\Mux20~6_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux20~6_combout\,
	datad => \B[19]~input_o\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X59_Y34_N10
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux20~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux20~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X62_Y34_N18
\Add|S[44]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[44]~39_combout\ = \AddnSub~input_o\ $ (\Add|C[44]~43_combout\ $ (\A[44]~input_o\ $ (\B[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[44]~43_combout\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Add|S[44]~39_combout\);

-- Location: LCCOMB_X52_Y36_N18
\Shift|ShiftLeft0~221\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~221_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~167_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~184_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~167_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~221_combout\);

-- Location: LCCOMB_X59_Y38_N28
\Shift|ShiftLeft0~222\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~222_combout\ = (\B[1]~input_o\ & ((\A[42]~input_o\))) # (!\B[1]~input_o\ & (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[44]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Shift|ShiftLeft0~222_combout\);

-- Location: LCCOMB_X59_Y38_N6
\Shift|ShiftLeft0~223\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~223_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~217_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~222_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ShiftLeft0~217_combout\,
	datad => \Shift|ShiftLeft0~222_combout\,
	combout => \Shift|ShiftLeft0~223_combout\);

-- Location: LCCOMB_X52_Y36_N28
\Shift|ShiftLeft0~224\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~224_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~203_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~223_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~223_combout\,
	datad => \Shift|ShiftLeft0~203_combout\,
	combout => \Shift|ShiftLeft0~224_combout\);

-- Location: LCCOMB_X52_Y36_N22
\Shift|ShiftLeft0~225\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~225_combout\ = (\Shift|ShiftLeft0~221_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~224_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~221_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~224_combout\,
	combout => \Shift|ShiftLeft0~225_combout\);

-- Location: LCCOMB_X56_Y36_N12
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (((\Shift|ShiftLeft0~225_combout\ & !\Mux19~1_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Shift|ShiftLeft0~67_combout\) # ((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Shift|ShiftLeft0~67_combout\,
	datac => \Shift|ShiftLeft0~225_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X56_Y36_N14
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~1_combout\ & ((\Mux19~4_combout\ & (\Add|S[44]~39_combout\)) # (!\Mux19~4_combout\ & ((\Shift|ShiftLeft0~144_combout\))))) # (!\Mux19~1_combout\ & (((\Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[44]~39_combout\,
	datab => \Mux19~1_combout\,
	datac => \Shift|ShiftLeft0~144_combout\,
	datad => \Mux19~4_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X57_Y36_N26
\Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~184_combout\))) # (!\Mux19~3_combout\ & (\Mux19~5_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~5_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~184_combout\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X58_Y37_N30
\Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~7_combout\ = (\Mux19~6_combout\ & (((\Shift|ShiftRight1~99_combout\)) # (!\Mux19~0_combout\))) # (!\Mux19~6_combout\ & (\Mux19~0_combout\ & (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~6_combout\,
	datab => \Mux19~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~99_combout\,
	combout => \Mux19~7_combout\);

-- Location: LCCOMB_X58_Y37_N8
\Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~8_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((\Mux19~7_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~7_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[32]~17_combout\,
	datad => \ExtWord~input_o\,
	combout => \Mux19~8_combout\);

-- Location: LCCOMB_X62_Y34_N8
\Mux19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~10_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[44]~input_o\ & \B[44]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[44]~input_o\) # (\B[44]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[44]~input_o\ $ (\B[44]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[44]~input_o\,
	datad => \B[44]~input_o\,
	combout => \Mux19~10_combout\);

-- Location: LCCOMB_X62_Y34_N2
\Mux19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~11_combout\ = (\Mux19~10_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux19~10_combout\,
	datad => \B[19]~input_o\,
	combout => \Mux19~11_combout\);

-- Location: LCCOMB_X58_Y37_N2
\Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~9_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux19~8_combout\) # ((\FuncClass[0]~input_o\ & \Mux19~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux19~8_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux19~11_combout\,
	combout => \Mux19~9_combout\);

-- Location: LCCOMB_X57_Y34_N6
\Shift|ShiftLeft0~227\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~227_combout\ = (\B[1]~input_o\ & ((\A[43]~input_o\))) # (!\B[1]~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datac => \A[43]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~227_combout\);

-- Location: LCCOMB_X57_Y34_N24
\Shift|ShiftLeft0~228\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~228_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~222_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~227_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~227_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~222_combout\,
	combout => \Shift|ShiftLeft0~228_combout\);

-- Location: LCCOMB_X55_Y38_N18
\Shift|ShiftLeft0~229\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~229_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~208_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~228_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~228_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~208_combout\,
	combout => \Shift|ShiftLeft0~229_combout\);

-- Location: LCCOMB_X55_Y38_N8
\Shift|ShiftLeft0~226\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~226_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~172_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~188_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~172_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~188_combout\,
	combout => \Shift|ShiftLeft0~226_combout\);

-- Location: LCCOMB_X55_Y38_N4
\Shift|ShiftLeft0~230\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~230_combout\ = (\Shift|ShiftLeft0~226_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~229_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ShiftLeft0~229_combout\,
	datac => \Shift|ShiftLeft0~226_combout\,
	combout => \Shift|ShiftLeft0~230_combout\);

-- Location: LCCOMB_X54_Y38_N10
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux19~1_combout\ & ((\Shift|ShiftLeft0~150_combout\) # ((!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & (((\Y_ShiftOrArith[0]~1_combout\ & \Shift|ShiftLeft0~230_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~150_combout\,
	datab => \Mux19~1_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Shift|ShiftLeft0~230_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X62_Y34_N12
\Add|S[45]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[45]~40_combout\ = \A[45]~input_o\ $ (\AddnSub~input_o\ $ (\B[45]~input_o\ $ (\Add|C[45]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[45]~input_o\,
	datad => \Add|C[45]~44_combout\,
	combout => \Add|S[45]~40_combout\);

-- Location: LCCOMB_X58_Y38_N12
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (\Mux18~0_combout\)) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Mux18~0_combout\ & (\Add|S[45]~40_combout\)) # (!\Mux18~0_combout\ & ((\Shift|ShiftLeft0~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~1_combout\,
	datab => \Mux18~0_combout\,
	datac => \Add|S[45]~40_combout\,
	datad => \Shift|ShiftLeft0~71_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X58_Y38_N30
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & (\Shift|ShiftRight0~194_combout\)) # (!\Mux19~3_combout\ & ((\Mux18~1_combout\))))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Shift|ShiftRight0~194_combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X58_Y38_N0
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux18~2_combout\ & (((\Shift|ShiftRight1~101_combout\)) # (!\Mux19~0_combout\))) # (!\Mux18~2_combout\ & (\Mux19~0_combout\ & (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~2_combout\,
	datab => \Mux19~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~101_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X59_Y34_N20
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~17_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X62_Y34_N20
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[45]~input_o\ & \A[45]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[45]~input_o\) # (\A[45]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[45]~input_o\ $ (\A[45]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[45]~input_o\,
	datad => \A[45]~input_o\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X62_Y34_N6
\Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~7_combout\ = (\Mux18~6_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux18~6_combout\,
	combout => \Mux18~7_combout\);

-- Location: LCCOMB_X59_Y34_N22
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux18~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux18~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux18~7_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X62_Y34_N30
\Add|S[46]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[46]~41_combout\ = \A[46]~input_o\ $ (\AddnSub~input_o\ $ (\B[46]~input_o\ $ (\Add|C[46]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[46]~input_o\,
	datad => \Add|C[46]~45_combout\,
	combout => \Add|S[46]~41_combout\);

-- Location: LCCOMB_X57_Y34_N18
\Shift|ShiftLeft0~232\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~232_combout\ = (\B[1]~input_o\ & (\A[44]~input_o\)) # (!\B[1]~input_o\ & ((\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[44]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Shift|ShiftLeft0~232_combout\);

-- Location: LCCOMB_X57_Y34_N12
\Shift|ShiftLeft0~233\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~233_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~227_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~232_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~232_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~227_combout\,
	combout => \Shift|ShiftLeft0~233_combout\);

-- Location: LCCOMB_X56_Y39_N18
\Shift|ShiftLeft0~234\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~234_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~213_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~233_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~233_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~213_combout\,
	combout => \Shift|ShiftLeft0~234_combout\);

-- Location: LCCOMB_X56_Y39_N24
\Shift|ShiftLeft0~231\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~231_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ShiftLeft0~176_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~193_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~176_combout\,
	combout => \Shift|ShiftLeft0~231_combout\);

-- Location: LCCOMB_X56_Y39_N20
\Shift|ShiftLeft0~235\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~235_combout\ = (\Shift|ShiftLeft0~231_combout\) # ((\Shift|ShiftLeft0~234_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~234_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~231_combout\,
	combout => \Shift|ShiftLeft0~235_combout\);

-- Location: LCCOMB_X55_Y39_N20
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (((\Shift|ShiftLeft0~235_combout\ & !\Mux19~1_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Shift|ShiftLeft0~75_combout\) # ((\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~75_combout\,
	datab => \Y_ShiftOrArith[0]~1_combout\,
	datac => \Shift|ShiftLeft0~235_combout\,
	datad => \Mux19~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X55_Y39_N14
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\Mux19~1_combout\ & ((\Mux17~0_combout\ & (\Add|S[46]~41_combout\)) # (!\Mux17~0_combout\ & ((\Shift|ShiftLeft0~155_combout\))))) # (!\Mux19~1_combout\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[46]~41_combout\,
	datab => \Shift|ShiftLeft0~155_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X55_Y39_N0
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\Mux19~3_combout\ & (((\Mux19~2_combout\ & \Shift|ShiftRight0~198_combout\)))) # (!\Mux19~3_combout\ & ((\Mux17~1_combout\) # ((!\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux19~2_combout\,
	datad => \Shift|ShiftRight0~198_combout\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X55_Y39_N10
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux17~2_combout\ & (((\Shift|ShiftRight1~103_combout\) # (!\Mux19~0_combout\)))) # (!\Mux17~2_combout\ & (\A[63]~input_o\ & (\Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux17~2_combout\,
	datac => \Mux19~0_combout\,
	datad => \Shift|ShiftRight1~103_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X59_Y34_N16
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((!\ExtWord~input_o\ & \Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[32]~17_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X62_Y34_N24
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\A[46]~input_o\ & ((\B[46]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[46]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[46]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[46]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[46]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X62_Y34_N26
\Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux17~6_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux17~6_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X59_Y34_N18
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux17~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux17~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X48_Y38_N6
\Shift|ShiftLeft0~236\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~236_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ShiftLeft0~180_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~198_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~180_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~198_combout\,
	combout => \Shift|ShiftLeft0~236_combout\);

-- Location: LCCOMB_X57_Y34_N30
\Shift|ShiftLeft0~237\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~237_combout\ = (\B[1]~input_o\ & ((\A[45]~input_o\))) # (!\B[1]~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[47]~input_o\,
	datac => \A[45]~input_o\,
	combout => \Shift|ShiftLeft0~237_combout\);

-- Location: LCCOMB_X57_Y34_N16
\Shift|ShiftLeft0~238\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~238_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~232_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~237_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~237_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~232_combout\,
	combout => \Shift|ShiftLeft0~238_combout\);

-- Location: LCCOMB_X48_Y38_N24
\Shift|ShiftLeft0~239\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~239_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~218_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~238_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~238_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~218_combout\,
	combout => \Shift|ShiftLeft0~239_combout\);

-- Location: LCCOMB_X48_Y38_N26
\Shift|ShiftLeft0~240\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~240_combout\ = (\Shift|ShiftLeft0~236_combout\) # ((!\B[3]~input_o\ & \Shift|ShiftLeft0~239_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~236_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~239_combout\,
	combout => \Shift|ShiftLeft0~240_combout\);

-- Location: LCCOMB_X54_Y38_N4
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux19~1_combout\ & (((\Shift|ShiftLeft0~162_combout\) # (!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & (\Shift|ShiftLeft0~240_combout\ & ((\Y_ShiftOrArith[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~240_combout\,
	datab => \Shift|ShiftLeft0~162_combout\,
	datac => \Mux19~1_combout\,
	datad => \Y_ShiftOrArith[0]~1_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X60_Y34_N0
\Add|S[47]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[47]~42_combout\ = \AddnSub~input_o\ $ (\Add|C[47]~46_combout\ $ (\B[47]~input_o\ $ (\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[47]~46_combout\,
	datac => \B[47]~input_o\,
	datad => \A[47]~input_o\,
	combout => \Add|S[47]~42_combout\);

-- Location: LCCOMB_X54_Y38_N30
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Y_ShiftOrArith[0]~1_combout\ & (((\Mux16~0_combout\)))) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Mux16~0_combout\ & ((\Add|S[47]~42_combout\))) # (!\Mux16~0_combout\ & (\Shift|ShiftLeft0~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~79_combout\,
	datab => \Y_ShiftOrArith[0]~1_combout\,
	datac => \Mux16~0_combout\,
	datad => \Add|S[47]~42_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X53_Y35_N22
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux19~3_combout\ & (((\Mux19~2_combout\ & \Shift|ShiftRight0~202_combout\)))) # (!\Mux19~3_combout\ & ((\Mux16~1_combout\) # ((!\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Mux16~1_combout\,
	datac => \Mux19~2_combout\,
	datad => \Shift|ShiftRight0~202_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X53_Y35_N8
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux19~0_combout\ & ((\Mux16~2_combout\ & ((\Shift|ShiftRight1~104_combout\))) # (!\Mux16~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux16~2_combout\,
	datad => \Shift|ShiftRight1~104_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X59_Y34_N28
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[32]~17_combout\) # ((\Mux16~3_combout\ & !\ExtWord~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~3_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[32]~17_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X60_Y34_N4
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\A[47]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[47]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[47]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[47]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[47]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[47]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X60_Y34_N6
\Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Mux16~6_combout\ & ((\LogicFN[0]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[19]~input_o\,
	datac => \Mux16~6_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X59_Y34_N6
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux16~4_combout\) # ((\FuncClass[0]~input_o\ & \Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux16~4_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux16~7_combout\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X60_Y34_N24
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[48]~input_o\ & \B[48]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[48]~input_o\ $ (\B[48]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[48]~input_o\) # (\B[48]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X60_Y34_N26
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\Mux15~7_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux15~7_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X55_Y37_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\FuncClass[0]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X52_Y34_N6
\Shift|ShiftLeft0~241\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~241_combout\ = (\B[1]~input_o\ & (\A[46]~input_o\)) # (!\B[1]~input_o\ & ((\A[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[46]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Shift|ShiftLeft0~241_combout\);

-- Location: LCCOMB_X57_Y34_N2
\Shift|ShiftLeft0~242\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~242_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~237_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~237_combout\,
	datad => \Shift|ShiftLeft0~241_combout\,
	combout => \Shift|ShiftLeft0~242_combout\);

-- Location: LCCOMB_X56_Y34_N14
\Shift|ShiftLeft0~243\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~243_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~223_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~242_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~223_combout\,
	datad => \Shift|ShiftLeft0~242_combout\,
	combout => \Shift|ShiftLeft0~243_combout\);

-- Location: LCCOMB_X52_Y36_N0
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\B[5]~input_o\) # ((!\B[4]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X55_Y36_N26
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux54~1_combout\ & ((\Shift|ShiftLeft0~169_combout\) # ((\Mux12~2_combout\)))) # (!\Mux54~1_combout\ & (((\Shift|ShiftLeft0~243_combout\ & !\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~169_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|ShiftLeft0~243_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X55_Y36_N12
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((\Shift|ShiftLeft0~85_combout\)) # (!\Mux12~2_combout\))) # (!\Mux15~0_combout\ & (\Mux12~2_combout\ & (\Shift|ShiftLeft0~204_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \Mux12~2_combout\,
	datac => \Shift|ShiftLeft0~204_combout\,
	datad => \Shift|ShiftLeft0~85_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X53_Y35_N2
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~204_combout\))) # (!\Mux19~3_combout\ & (\Mux15~1_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux15~1_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~204_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X53_Y35_N28
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux19~0_combout\ & ((\Mux15~2_combout\ & ((\Shift|ShiftRight1~105_combout\))) # (!\Mux15~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~105_combout\,
	datac => \Mux19~0_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X55_Y37_N16
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[0]~input_o\ & (!\ExtWord~input_o\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X60_Y34_N18
\Add|S[48]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[48]~43_combout\ = \A[48]~input_o\ $ (\Add|C[48]~47_combout\ $ (\AddnSub~input_o\ $ (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \Add|C[48]~47_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|S[48]~43_combout\);

-- Location: LCCOMB_X60_Y37_N24
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux12~1_combout\ & (((\Add|S[48]~43_combout\) # (!\Mux3~0_combout\)))) # (!\Mux12~1_combout\ & (\Mux15~3_combout\ & ((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Mux12~1_combout\,
	datac => \Add|S[48]~43_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X60_Y37_N26
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux3~0_combout\ & (((\Mux15~4_combout\)))) # (!\Mux3~0_combout\ & ((\Mux15~4_combout\ & (\Mux15~8_combout\)) # (!\Mux15~4_combout\ & ((\Y_ShiftOrArith[31]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \Y_ShiftOrArith[31]~13_combout\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X63_Y34_N14
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux15~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux15~5_combout\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X60_Y34_N28
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[49]~input_o\ & \B[49]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[49]~input_o\ $ (\B[49]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[49]~input_o\) # (\B[49]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[49]~input_o\,
	datad => \B[49]~input_o\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X60_Y34_N14
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\Mux14~7_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux14~7_combout\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X60_Y34_N20
\Add|S[49]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[49]~44_combout\ = \Add|C[49]~48_combout\ $ (\A[49]~input_o\ $ (\AddnSub~input_o\ $ (\B[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[49]~48_combout\,
	datab => \A[49]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[49]~input_o\,
	combout => \Add|S[49]~44_combout\);

-- Location: LCCOMB_X52_Y34_N0
\Shift|ShiftLeft0~244\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~244_combout\ = (\B[1]~input_o\ & (\A[47]~input_o\)) # (!\B[1]~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[47]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Shift|ShiftLeft0~244_combout\);

-- Location: LCCOMB_X52_Y34_N18
\Shift|ShiftLeft0~245\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~245_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~241_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~241_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~244_combout\,
	combout => \Shift|ShiftLeft0~245_combout\);

-- Location: LCCOMB_X55_Y38_N14
\Shift|ShiftLeft0~246\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~246_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~228_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~245_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~228_combout\,
	datab => \Shift|ShiftLeft0~245_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~246_combout\);

-- Location: LCCOMB_X55_Y38_N0
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux54~1_combout\ & ((\Shift|ShiftLeft0~174_combout\) # ((\Mux12~2_combout\)))) # (!\Mux54~1_combout\ & (((\Shift|ShiftLeft0~246_combout\ & !\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~174_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|ShiftLeft0~246_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X55_Y38_N26
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & ((\Shift|ShiftLeft0~91_combout\) # ((!\Mux12~2_combout\)))) # (!\Mux14~0_combout\ & (((\Mux12~2_combout\ & \Shift|ShiftLeft0~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~91_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux12~2_combout\,
	datad => \Shift|ShiftLeft0~209_combout\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X55_Y35_N12
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~205_combout\))) # (!\Mux19~3_combout\ & (\Mux14~1_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Shift|ShiftRight0~205_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X56_Y35_N4
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & (((\Shift|ShiftRight1~106_combout\) # (!\Mux19~0_combout\)))) # (!\Mux14~2_combout\ & (\A[63]~input_o\ & (\Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \A[63]~input_o\,
	datac => \Mux19~0_combout\,
	datad => \Shift|ShiftRight1~106_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X60_Y37_N12
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux12~1_combout\ & (((!\Mux3~0_combout\)))) # (!\Mux12~1_combout\ & ((\Mux3~0_combout\ & (\Mux14~3_combout\)) # (!\Mux3~0_combout\ & ((\Y_ShiftOrArith[31]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Mux12~1_combout\,
	datac => \Y_ShiftOrArith[31]~13_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X60_Y37_N6
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\ & ((\Mux14~8_combout\) # ((!\Mux12~1_combout\)))) # (!\Mux14~4_combout\ & (((\Add|S[49]~44_combout\ & \Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~8_combout\,
	datab => \Add|S[49]~44_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X56_Y41_N8
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux14~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X60_Y34_N22
\Add|S[50]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[50]~45_combout\ = \A[50]~input_o\ $ (\AddnSub~input_o\ $ (\B[50]~input_o\ $ (\Add|C[50]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[50]~input_o\,
	datad => \Add|C[50]~49_combout\,
	combout => \Add|S[50]~45_combout\);

-- Location: LCCOMB_X52_Y34_N12
\Shift|ShiftLeft0~247\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~247_combout\ = (\B[1]~input_o\ & ((\A[48]~input_o\))) # (!\B[1]~input_o\ & (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[50]~input_o\,
	datad => \A[48]~input_o\,
	combout => \Shift|ShiftLeft0~247_combout\);

-- Location: LCCOMB_X52_Y34_N14
\Shift|ShiftLeft0~248\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~248_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~244_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~247_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~247_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~244_combout\,
	combout => \Shift|ShiftLeft0~248_combout\);

-- Location: LCCOMB_X56_Y39_N6
\Shift|ShiftLeft0~249\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~249_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~233_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~248_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~248_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~233_combout\,
	combout => \Shift|ShiftLeft0~249_combout\);

-- Location: LCCOMB_X56_Y39_N8
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux12~2_combout\ & (((\Mux54~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux54~1_combout\ & (\Shift|ShiftLeft0~178_combout\)) # (!\Mux54~1_combout\ & ((\Shift|ShiftLeft0~249_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Shift|ShiftLeft0~178_combout\,
	datac => \Mux54~1_combout\,
	datad => \Shift|ShiftLeft0~249_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X56_Y39_N2
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux12~2_combout\ & ((\Mux13~0_combout\ & (\Shift|ShiftLeft0~97_combout\)) # (!\Mux13~0_combout\ & ((\Shift|ShiftLeft0~214_combout\))))) # (!\Mux12~2_combout\ & (\Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux13~0_combout\,
	datac => \Shift|ShiftLeft0~97_combout\,
	datad => \Shift|ShiftLeft0~214_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X57_Y39_N4
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~206_combout\))) # (!\Mux19~3_combout\ & (\Mux13~1_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~206_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X57_Y39_N22
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux19~0_combout\ & ((\Mux13~2_combout\ & ((\Shift|ShiftRight1~107_combout\))) # (!\Mux13~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (\Mux13~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux13~2_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~107_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X60_Y37_N8
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux3~0_combout\ & ((\Mux12~1_combout\ & (\Add|S[50]~45_combout\)) # (!\Mux12~1_combout\ & ((\Mux13~3_combout\))))) # (!\Mux3~0_combout\ & (((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[50]~45_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux12~1_combout\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X60_Y34_N16
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (\A[50]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[50]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[50]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[50]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[50]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[50]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[50]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X60_Y34_N2
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\Mux13~7_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux13~7_combout\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X60_Y37_N18
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux3~0_combout\ & (((\Mux13~4_combout\)))) # (!\Mux3~0_combout\ & ((\Mux13~4_combout\ & ((\Mux13~8_combout\))) # (!\Mux13~4_combout\ & (\Y_ShiftOrArith[31]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~13_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux13~4_combout\,
	datad => \Mux13~8_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X56_Y41_N10
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux13~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X59_Y37_N14
\Add|S[51]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[51]~46_combout\ = \Add|C[51]~50_combout\ $ (\AddnSub~input_o\ $ (\A[51]~input_o\ $ (\B[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[51]~50_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Add|S[51]~46_combout\);

-- Location: LCCOMB_X59_Y37_N28
\Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~10_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[51]~input_o\ & \B[51]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[51]~input_o\) # (\B[51]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[51]~input_o\ $ (\B[51]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Mux12~10_combout\);

-- Location: LCCOMB_X59_Y37_N6
\Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~11_combout\ = (\Mux12~10_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux12~10_combout\,
	combout => \Mux12~11_combout\);

-- Location: LCCOMB_X52_Y34_N8
\Shift|ShiftLeft0~250\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~250_combout\ = (\B[1]~input_o\ & ((\A[49]~input_o\))) # (!\B[1]~input_o\ & (\A[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[49]~input_o\,
	combout => \Shift|ShiftLeft0~250_combout\);

-- Location: LCCOMB_X52_Y34_N26
\Shift|ShiftLeft0~251\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~251_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~247_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~250_combout\,
	datad => \Shift|ShiftLeft0~247_combout\,
	combout => \Shift|ShiftLeft0~251_combout\);

-- Location: LCCOMB_X48_Y38_N28
\Shift|ShiftLeft0~252\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~252_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~238_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~251_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~238_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~251_combout\,
	combout => \Shift|ShiftLeft0~252_combout\);

-- Location: LCCOMB_X48_Y38_N14
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux54~1_combout\ & (((\Shift|ShiftLeft0~182_combout\) # (\Mux12~2_combout\)))) # (!\Mux54~1_combout\ & (\Shift|ShiftLeft0~252_combout\ & ((!\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Shift|ShiftLeft0~252_combout\,
	datac => \Shift|ShiftLeft0~182_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X48_Y38_N8
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~2_combout\ & ((\Mux12~3_combout\ & (\Shift|ShiftLeft0~103_combout\)) # (!\Mux12~3_combout\ & ((\Shift|ShiftLeft0~219_combout\))))) # (!\Mux12~2_combout\ & (((\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Shift|ShiftLeft0~103_combout\,
	datac => \Mux12~3_combout\,
	datad => \Shift|ShiftLeft0~219_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X52_Y38_N0
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~207_combout\))) # (!\Mux19~3_combout\ & (\Mux12~4_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~4_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~207_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X52_Y38_N18
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (\Mux19~0_combout\ & ((\Mux12~5_combout\ & ((\Shift|ShiftRight1~108_combout\))) # (!\Mux12~5_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (\Mux12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Mux12~5_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~108_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X60_Y37_N20
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~1_combout\ & (((!\Mux3~0_combout\)))) # (!\Mux12~1_combout\ & ((\Mux3~0_combout\ & (\Mux12~6_combout\)) # (!\Mux3~0_combout\ & ((\Y_ShiftOrArith[31]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~6_combout\,
	datab => \Mux12~1_combout\,
	datac => \Y_ShiftOrArith[31]~13_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X60_Y37_N30
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\Mux12~1_combout\ & ((\Mux12~7_combout\ & ((\Mux12~11_combout\))) # (!\Mux12~7_combout\ & (\Add|S[51]~46_combout\)))) # (!\Mux12~1_combout\ & (((\Mux12~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[51]~46_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux12~11_combout\,
	datad => \Mux12~7_combout\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X56_Y41_N4
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (!\FuncClass[1]~input_o\ & \Mux12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux12~8_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X59_Y37_N24
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[52]~input_o\ & \B[52]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[52]~input_o\) # (\B[52]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[52]~input_o\ $ (\B[52]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[52]~input_o\,
	datad => \B[52]~input_o\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X59_Y37_N26
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\Mux11~7_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X59_Y37_N8
\Add|S[52]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[52]~47_combout\ = \A[52]~input_o\ $ (\Add|C[52]~51_combout\ $ (\AddnSub~input_o\ $ (\B[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \Add|C[52]~51_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[52]~input_o\,
	combout => \Add|S[52]~47_combout\);

-- Location: LCCOMB_X55_Y34_N24
\Shift|ShiftLeft0~253\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~253_combout\ = (\B[1]~input_o\ & (\A[50]~input_o\)) # (!\B[1]~input_o\ & ((\A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[50]~input_o\,
	datac => \A[52]~input_o\,
	combout => \Shift|ShiftLeft0~253_combout\);

-- Location: LCCOMB_X52_Y34_N4
\Shift|ShiftLeft0~254\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~254_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~250_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~253_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~253_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ShiftLeft0~250_combout\,
	combout => \Shift|ShiftLeft0~254_combout\);

-- Location: LCCOMB_X56_Y34_N8
\Shift|ShiftLeft0~255\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~255_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~242_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~254_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~254_combout\,
	datad => \Shift|ShiftLeft0~242_combout\,
	combout => \Shift|ShiftLeft0~255_combout\);

-- Location: LCCOMB_X52_Y36_N10
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux12~2_combout\ & (((\Mux54~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux54~1_combout\ & ((\Shift|ShiftLeft0~186_combout\))) # (!\Mux54~1_combout\ & (\Shift|ShiftLeft0~255_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~255_combout\,
	datab => \Mux12~2_combout\,
	datac => \Mux54~1_combout\,
	datad => \Shift|ShiftLeft0~186_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X52_Y36_N12
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux12~2_combout\ & ((\Mux11~0_combout\ & (\Shift|ShiftLeft0~288_combout\)) # (!\Mux11~0_combout\ & ((\Shift|ShiftLeft0~224_combout\))))) # (!\Mux12~2_combout\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~288_combout\,
	datab => \Mux12~2_combout\,
	datac => \Mux11~0_combout\,
	datad => \Shift|ShiftLeft0~224_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X53_Y36_N28
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux19~3_combout\ & (((\Mux19~2_combout\ & \Shift|ShiftRight0~208_combout\)))) # (!\Mux19~3_combout\ & ((\Mux11~1_combout\) # ((!\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux19~3_combout\,
	datac => \Mux19~2_combout\,
	datad => \Shift|ShiftRight0~208_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X53_Y36_N14
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux19~0_combout\ & ((\Mux11~2_combout\ & ((\Shift|ShiftRight1~109_combout\))) # (!\Mux11~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \Shift|ShiftRight1~109_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X60_Y37_N16
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux12~1_combout\ & ((\Add|S[52]~47_combout\) # ((!\Mux3~0_combout\)))) # (!\Mux12~1_combout\ & (((\Mux11~3_combout\ & \Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[52]~47_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux11~3_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X60_Y37_N2
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux3~0_combout\ & (((\Mux11~4_combout\)))) # (!\Mux3~0_combout\ & ((\Mux11~4_combout\ & (\Mux11~8_combout\)) # (!\Mux11~4_combout\ & ((\Y_ShiftOrArith[31]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~8_combout\,
	datab => \Mux3~0_combout\,
	datac => \Y_ShiftOrArith[31]~13_combout\,
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X56_Y41_N22
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux11~5_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~5_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X59_Y37_N20
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\B[53]~input_o\ & ((\A[53]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[53]~input_o\ & ((\A[53]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) # (!\A[53]~input_o\ & (!\LogicFN[1]~input_o\ & 
-- !\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X59_Y37_N22
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\Mux10~7_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X59_Y37_N2
\Add|S[53]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[53]~48_combout\ = \Add|C[53]~52_combout\ $ (\A[53]~input_o\ $ (\AddnSub~input_o\ $ (\B[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[53]~52_combout\,
	datab => \A[53]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[53]~input_o\,
	combout => \Add|S[53]~48_combout\);

-- Location: LCCOMB_X55_Y34_N18
\Shift|ShiftLeft0~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~256_combout\ = (\B[1]~input_o\ & (\A[51]~input_o\)) # (!\B[1]~input_o\ & ((\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[51]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Shift|ShiftLeft0~256_combout\);

-- Location: LCCOMB_X55_Y34_N20
\Shift|ShiftLeft0~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~257_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~253_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~256_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~253_combout\,
	datab => \Shift|ShiftLeft0~256_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~257_combout\);

-- Location: LCCOMB_X55_Y38_N20
\Shift|ShiftLeft0~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~258_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~245_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~257_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~245_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~257_combout\,
	combout => \Shift|ShiftLeft0~258_combout\);

-- Location: LCCOMB_X55_Y38_N30
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux12~2_combout\ & (\Mux54~1_combout\)) # (!\Mux12~2_combout\ & ((\Mux54~1_combout\ & (\Shift|ShiftLeft0~190_combout\)) # (!\Mux54~1_combout\ & ((\Shift|ShiftLeft0~258_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux54~1_combout\,
	datac => \Shift|ShiftLeft0~190_combout\,
	datad => \Shift|ShiftLeft0~258_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X55_Y38_N16
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux12~2_combout\ & ((\Mux10~0_combout\ & (\Shift|ShiftLeft0~289_combout\)) # (!\Mux10~0_combout\ & ((\Shift|ShiftLeft0~229_combout\))))) # (!\Mux12~2_combout\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Shift|ShiftLeft0~289_combout\,
	datac => \Mux10~0_combout\,
	datad => \Shift|ShiftLeft0~229_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X54_Y35_N12
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & (\Shift|ShiftRight0~209_combout\)) # (!\Mux19~3_combout\ & ((\Mux10~1_combout\))))) # (!\Mux19~2_combout\ & (!\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~3_combout\,
	datac => \Shift|ShiftRight0~209_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X54_Y35_N14
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux19~0_combout\ & ((\Mux10~2_combout\ & ((\Shift|ShiftRight1~110_combout\))) # (!\Mux10~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Shift|ShiftRight1~110_combout\,
	datac => \Mux19~0_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X60_Y37_N28
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux12~1_combout\ & (((!\Mux3~0_combout\)))) # (!\Mux12~1_combout\ & ((\Mux3~0_combout\ & ((\Mux10~3_combout\))) # (!\Mux3~0_combout\ & (\Y_ShiftOrArith[31]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~13_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux10~3_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X60_Y37_N14
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux12~1_combout\ & ((\Mux10~4_combout\ & (\Mux10~8_combout\)) # (!\Mux10~4_combout\ & ((\Add|S[53]~48_combout\))))) # (!\Mux12~1_combout\ & (((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux10~8_combout\,
	datac => \Add|S[53]~48_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X56_Y41_N24
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux10~5_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X62_Y37_N8
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[54]~input_o\ & \B[54]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[54]~input_o\) # (\B[54]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[54]~input_o\ $ (\B[54]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X62_Y37_N26
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\Mux9~7_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \Mux9~7_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X55_Y34_N22
\Shift|ShiftLeft0~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~259_combout\ = (\B[1]~input_o\ & (\A[52]~input_o\)) # (!\B[1]~input_o\ & ((\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~259_combout\);

-- Location: LCCOMB_X55_Y34_N0
\Shift|ShiftLeft0~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~260_combout\ = (\B[0]~input_o\ & ((\Shift|ShiftLeft0~256_combout\))) # (!\B[0]~input_o\ & (\Shift|ShiftLeft0~259_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~259_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~256_combout\,
	combout => \Shift|ShiftLeft0~260_combout\);

-- Location: LCCOMB_X56_Y39_N28
\Shift|ShiftLeft0~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~261_combout\ = (\B[2]~input_o\ & (\Shift|ShiftLeft0~248_combout\)) # (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~260_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~248_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~260_combout\,
	combout => \Shift|ShiftLeft0~261_combout\);

-- Location: LCCOMB_X56_Y39_N30
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux12~2_combout\ & (((\Mux54~1_combout\)))) # (!\Mux12~2_combout\ & ((\Mux54~1_combout\ & ((\Shift|ShiftLeft0~195_combout\))) # (!\Mux54~1_combout\ & (\Shift|ShiftLeft0~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Shift|ShiftLeft0~261_combout\,
	datac => \Mux54~1_combout\,
	datad => \Shift|ShiftLeft0~195_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X56_Y39_N16
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux12~2_combout\ & ((\Mux9~0_combout\ & (\Shift|ShiftLeft0~290_combout\)) # (!\Mux9~0_combout\ & ((\Shift|ShiftLeft0~234_combout\))))) # (!\Mux12~2_combout\ & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Shift|ShiftLeft0~290_combout\,
	datac => \Mux9~0_combout\,
	datad => \Shift|ShiftLeft0~234_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X55_Y39_N28
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux19~3_combout\ & (\Shift|ShiftRight0~210_combout\ & (\Mux19~2_combout\))) # (!\Mux19~3_combout\ & (((\Mux9~1_combout\) # (!\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~3_combout\,
	datab => \Shift|ShiftRight0~210_combout\,
	datac => \Mux19~2_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X58_Y39_N6
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & ((\Shift|ShiftRight1~111_combout\) # ((!\Mux19~0_combout\)))) # (!\Mux9~2_combout\ & (((\A[63]~input_o\ & \Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~2_combout\,
	datab => \Shift|ShiftRight1~111_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux19~0_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X62_Y37_N6
\Add|S[54]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[54]~49_combout\ = \AddnSub~input_o\ $ (\Add|C[54]~53_combout\ $ (\A[54]~input_o\ $ (\B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|C[54]~53_combout\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Add|S[54]~49_combout\);

-- Location: LCCOMB_X60_Y37_N0
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux3~0_combout\ & ((\Mux12~1_combout\ & ((\Add|S[54]~49_combout\))) # (!\Mux12~1_combout\ & (\Mux9~3_combout\)))) # (!\Mux3~0_combout\ & (((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux3~0_combout\,
	datac => \Add|S[54]~49_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X60_Y37_N10
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux9~4_combout\ & ((\Mux9~8_combout\) # ((\Mux3~0_combout\)))) # (!\Mux9~4_combout\ & (((\Y_ShiftOrArith[31]~13_combout\ & !\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~8_combout\,
	datab => \Mux9~4_combout\,
	datac => \Y_ShiftOrArith[31]~13_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X50_Y35_N6
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux9~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \Mux9~5_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X62_Y37_N20
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[55]~input_o\ & \A[55]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[55]~input_o\) # (\A[55]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[55]~input_o\ $ (\A[55]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[55]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X62_Y37_N14
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~7_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X55_Y34_N2
\Shift|ShiftLeft0~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~262_combout\ = (\B[1]~input_o\ & ((\A[53]~input_o\))) # (!\B[1]~input_o\ & (\A[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[55]~input_o\,
	datad => \A[53]~input_o\,
	combout => \Shift|ShiftLeft0~262_combout\);

-- Location: LCCOMB_X55_Y34_N28
\Shift|ShiftLeft0~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~263_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~259_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~262_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~259_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~262_combout\,
	combout => \Shift|ShiftLeft0~263_combout\);

-- Location: LCCOMB_X48_Y38_N2
\Shift|ShiftLeft0~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~264_combout\ = (\B[2]~input_o\ & ((\Shift|ShiftLeft0~251_combout\))) # (!\B[2]~input_o\ & (\Shift|ShiftLeft0~263_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ShiftLeft0~263_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ShiftLeft0~251_combout\,
	combout => \Shift|ShiftLeft0~264_combout\);

-- Location: LCCOMB_X48_Y38_N20
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux54~1_combout\ & (((\Shift|ShiftLeft0~200_combout\) # (\Mux12~2_combout\)))) # (!\Mux54~1_combout\ & (\Shift|ShiftLeft0~264_combout\ & ((!\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~1_combout\,
	datab => \Shift|ShiftLeft0~264_combout\,
	datac => \Shift|ShiftLeft0~200_combout\,
	datad => \Mux12~2_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X48_Y38_N22
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux12~2_combout\ & ((\Mux8~0_combout\ & (\Shift|ShiftLeft0~291_combout\)) # (!\Mux8~0_combout\ & ((\Shift|ShiftLeft0~239_combout\))))) # (!\Mux12~2_combout\ & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => \Mux8~0_combout\,
	datac => \Shift|ShiftLeft0~291_combout\,
	datad => \Shift|ShiftLeft0~239_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X52_Y39_N28
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & (\Shift|ShiftRight0~211_combout\)) # (!\Mux19~3_combout\ & ((\Mux8~1_combout\))))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~211_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X52_Y39_N22
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux19~0_combout\ & ((\Mux8~2_combout\ & (\Shift|ShiftRight1~116_combout\)) # (!\Mux8~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux19~0_combout\ & (((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~116_combout\,
	datab => \Mux19~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux8~2_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X60_Y37_N4
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\Mux12~1_combout\ & (((!\Mux3~0_combout\)))) # (!\Mux12~1_combout\ & ((\Mux3~0_combout\ & ((\Mux8~3_combout\))) # (!\Mux3~0_combout\ & (\Y_ShiftOrArith[31]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~13_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X62_Y37_N24
\Add|S[55]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[55]~50_combout\ = \AddnSub~input_o\ $ (\A[55]~input_o\ $ (\B[55]~input_o\ $ (\Add|C[55]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[55]~input_o\,
	datac => \B[55]~input_o\,
	datad => \Add|C[55]~54_combout\,
	combout => \Add|S[55]~50_combout\);

-- Location: LCCOMB_X60_Y37_N22
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux12~1_combout\ & ((\Mux8~4_combout\ & (\Mux8~8_combout\)) # (!\Mux8~4_combout\ & ((\Add|S[55]~50_combout\))))) # (!\Mux12~1_combout\ & (((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~8_combout\,
	datab => \Mux12~1_combout\,
	datac => \Mux8~4_combout\,
	datad => \Add|S[55]~50_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X56_Y41_N18
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux8~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux8~5_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X56_Y38_N12
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\ExtWord~input_o\) # ((!\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X62_Y37_N10
\Add|S[56]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[56]~51_combout\ = \A[56]~input_o\ $ (\Add|C[56]~55_combout\ $ (\B[56]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \Add|C[56]~55_combout\,
	datac => \B[56]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[56]~51_combout\);

-- Location: LCCOMB_X56_Y37_N0
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~212_combout\))) # (!\Mux19~3_combout\ & (\Add|S[56]~51_combout\)))) # (!\Mux19~2_combout\ & (!\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~3_combout\,
	datac => \Add|S[56]~51_combout\,
	datad => \Shift|ShiftRight0~212_combout\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X56_Y38_N16
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux19~0_combout\ & ((\Mux7~2_combout\ & ((\Shift|ShiftRight1~117_combout\))) # (!\Mux7~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \Shift|ShiftRight1~117_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X56_Y38_N14
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (!\ExtWord~input_o\ & (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X56_Y34_N18
\Shift|ShiftLeft0~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~265_combout\ = (\B[1]~input_o\ & (\A[54]~input_o\)) # (!\B[1]~input_o\ & ((\A[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[54]~input_o\,
	datac => \A[56]~input_o\,
	combout => \Shift|ShiftLeft0~265_combout\);

-- Location: LCCOMB_X56_Y34_N12
\Shift|ShiftLeft0~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~266_combout\ = (\B[0]~input_o\ & (\Shift|ShiftLeft0~262_combout\)) # (!\B[0]~input_o\ & ((\Shift|ShiftLeft0~265_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~262_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~265_combout\,
	combout => \Shift|ShiftLeft0~266_combout\);

-- Location: LCCOMB_X56_Y34_N30
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux56~2_combout\ & (((\Mux56~3_combout\)))) # (!\Mux56~2_combout\ & ((\Mux56~3_combout\ & (\Shift|ShiftLeft0~243_combout\)) # (!\Mux56~3_combout\ & ((\Shift|ShiftLeft0~266_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \Shift|ShiftLeft0~243_combout\,
	datac => \Mux56~3_combout\,
	datad => \Shift|ShiftLeft0~266_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X56_Y34_N24
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux56~2_combout\ & ((\Mux7~0_combout\ & ((\Shift|ShiftLeft0~205_combout\))) # (!\Mux7~0_combout\ & (\Shift|ShiftLeft0~254_combout\)))) # (!\Mux56~2_combout\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \Shift|ShiftLeft0~254_combout\,
	datac => \Mux7~0_combout\,
	datad => \Shift|ShiftLeft0~205_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X56_Y38_N26
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux4~1_combout\ & (((\Mux4~2_combout\)))) # (!\Mux4~1_combout\ & ((\Mux4~2_combout\ & ((\Mux7~1_combout\))) # (!\Mux4~2_combout\ & (\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux7~3_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X56_Y38_N28
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & (((\Shift|ShiftLeft0~124_combout\) # (!\Mux4~1_combout\)))) # (!\Mux7~4_combout\ & (\Y_ShiftOrArith[31]~13_combout\ & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~13_combout\,
	datab => \Shift|ShiftLeft0~124_combout\,
	datac => \Mux7~4_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X62_Y37_N0
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[56]~input_o\ & \A[56]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[56]~input_o\) # (\A[56]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[56]~input_o\ $ (\A[56]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[56]~input_o\,
	datad => \A[56]~input_o\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X62_Y37_N18
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~7_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux7~7_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X62_Y37_N28
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux7~8_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux7~5_combout\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X56_Y34_N10
\Shift|ShiftLeft0~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~267_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[55]~input_o\))) # (!\B[1]~input_o\ & (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|ShiftLeft0~267_combout\);

-- Location: LCCOMB_X56_Y34_N20
\Shift|ShiftLeft0~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~268_combout\ = (\Shift|ShiftLeft0~267_combout\) # ((\B[0]~input_o\ & \Shift|ShiftLeft0~265_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~267_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ShiftLeft0~265_combout\,
	combout => \Shift|ShiftLeft0~268_combout\);

-- Location: LCCOMB_X55_Y38_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux56~3_combout\ & (((\Shift|ShiftLeft0~246_combout\) # (\Mux56~2_combout\)))) # (!\Mux56~3_combout\ & (\Shift|ShiftLeft0~268_combout\ & ((!\Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~268_combout\,
	datab => \Mux56~3_combout\,
	datac => \Shift|ShiftLeft0~246_combout\,
	datad => \Mux56~2_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X55_Y38_N12
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & ((\Shift|ShiftLeft0~210_combout\) # ((!\Mux56~2_combout\)))) # (!\Mux6~0_combout\ & (((\Shift|ShiftLeft0~257_combout\ & \Mux56~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~210_combout\,
	datab => \Mux6~0_combout\,
	datac => \Shift|ShiftLeft0~257_combout\,
	datad => \Mux56~2_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X63_Y34_N0
\Add|S[57]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[57]~52_combout\ = \Add|C[57]~56_combout\ $ (\AddnSub~input_o\ $ (\A[57]~input_o\ $ (\B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[57]~56_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Add|S[57]~52_combout\);

-- Location: LCCOMB_X56_Y35_N6
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux19~3_combout\ & (\Shift|ShiftRight0~213_combout\ & (\Mux19~2_combout\))) # (!\Mux19~3_combout\ & (((\Add|S[57]~52_combout\) # (!\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~213_combout\,
	datab => \Mux19~3_combout\,
	datac => \Mux19~2_combout\,
	datad => \Add|S[57]~52_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X56_Y38_N30
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux19~0_combout\ & ((\Mux6~2_combout\ & ((\Shift|ShiftRight1~118_combout\))) # (!\Mux6~2_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \Mux6~2_combout\,
	datad => \Shift|ShiftRight1~118_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X56_Y38_N24
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux4~2_combout\ & (((\Mux4~1_combout\)))) # (!\Mux4~2_combout\ & ((\Mux4~1_combout\ & (\Y_ShiftOrArith[31]~13_combout\)) # (!\Mux4~1_combout\ & ((\Mux6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~13_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X56_Y38_N2
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux4~2_combout\ & ((\Mux6~4_combout\ & ((\Shift|ShiftLeft0~129_combout\))) # (!\Mux6~4_combout\ & (\Mux6~1_combout\)))) # (!\Mux4~2_combout\ & (((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \Shift|ShiftLeft0~129_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X63_Y34_N20
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\A[57]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[57]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[57]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \B[57]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[57]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[57]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X63_Y34_N6
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X63_Y34_N10
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux6~8_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux6~5_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X56_Y34_N0
\Shift|ShiftLeft0~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~270_combout\ = (\B[0]~input_o\ & (\A[57]~input_o\)) # (!\B[0]~input_o\ & ((\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|ShiftLeft0~270_combout\);

-- Location: LCCOMB_X56_Y34_N22
\Shift|ShiftLeft0~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~269_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[55]~input_o\))) # (!\B[0]~input_o\ & (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|ShiftLeft0~269_combout\);

-- Location: LCCOMB_X56_Y34_N2
\Shift|ShiftLeft0~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~271_combout\ = (\Shift|ShiftLeft0~269_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftLeft0~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftLeft0~270_combout\,
	datac => \Shift|ShiftLeft0~269_combout\,
	combout => \Shift|ShiftLeft0~271_combout\);

-- Location: LCCOMB_X56_Y39_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux56~3_combout\ & (((\Mux56~2_combout\) # (\Shift|ShiftLeft0~249_combout\)))) # (!\Mux56~3_combout\ & (\Shift|ShiftLeft0~271_combout\ & (!\Mux56~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~271_combout\,
	datab => \Mux56~3_combout\,
	datac => \Mux56~2_combout\,
	datad => \Shift|ShiftLeft0~249_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X56_Y38_N4
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux56~2_combout\ & ((\Mux5~0_combout\ & ((\Shift|ShiftLeft0~215_combout\))) # (!\Mux5~0_combout\ & (\Shift|ShiftLeft0~260_combout\)))) # (!\Mux56~2_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \Shift|ShiftLeft0~260_combout\,
	datac => \Shift|ShiftLeft0~215_combout\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X63_Y34_N4
\Add|S[58]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[58]~53_combout\ = \A[58]~input_o\ $ (\AddnSub~input_o\ $ (\Add|C[58]~57_combout\ $ (\B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|C[58]~57_combout\,
	datad => \B[58]~input_o\,
	combout => \Add|S[58]~53_combout\);

-- Location: LCCOMB_X57_Y36_N20
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~221_combout\))) # (!\Mux19~3_combout\ & (\Add|S[58]~53_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[58]~53_combout\,
	datab => \Mux19~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~221_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X57_Y36_N14
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux19~0_combout\ & ((\Mux5~2_combout\ & (\Shift|ShiftRight1~119_combout\)) # (!\Mux5~2_combout\ & ((\A[63]~input_o\))))) # (!\Mux19~0_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~119_combout\,
	datab => \Mux19~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X56_Y38_N22
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux4~1_combout\ & (\Mux4~2_combout\)) # (!\Mux4~1_combout\ & ((\Mux4~2_combout\ & (\Mux5~1_combout\)) # (!\Mux4~2_combout\ & ((\Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X56_Y38_N0
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & (((\Shift|ShiftLeft0~134_combout\) # (!\Mux4~1_combout\)))) # (!\Mux5~4_combout\ & (\Y_ShiftOrArith[31]~13_combout\ & ((\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~13_combout\,
	datab => \Shift|ShiftLeft0~134_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X63_Y34_N24
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\A[58]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[58]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[58]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \B[58]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[58]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[58]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[58]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X63_Y34_N18
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~7_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X63_Y34_N30
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux5~8_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux5~5_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux5~8_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X58_Y34_N28
\Shift|ShiftLeft0~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~273_combout\ = (\B[0]~input_o\ & ((\A[58]~input_o\))) # (!\B[0]~input_o\ & (\A[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|ShiftLeft0~273_combout\);

-- Location: LCCOMB_X58_Y34_N18
\Shift|ShiftLeft0~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~272_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[56]~input_o\)) # (!\B[0]~input_o\ & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[56]~input_o\,
	datac => \A[57]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ShiftLeft0~272_combout\);

-- Location: LCCOMB_X58_Y34_N14
\Shift|ShiftLeft0~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~274_combout\ = (\Shift|ShiftLeft0~272_combout\) # ((!\B[1]~input_o\ & \Shift|ShiftLeft0~273_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ShiftLeft0~273_combout\,
	datad => \Shift|ShiftLeft0~272_combout\,
	combout => \Shift|ShiftLeft0~274_combout\);

-- Location: LCCOMB_X48_Y38_N16
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux56~3_combout\ & (((\Mux56~2_combout\) # (\Shift|ShiftLeft0~252_combout\)))) # (!\Mux56~3_combout\ & (\Shift|ShiftLeft0~274_combout\ & (!\Mux56~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~3_combout\,
	datab => \Shift|ShiftLeft0~274_combout\,
	datac => \Mux56~2_combout\,
	datad => \Shift|ShiftLeft0~252_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X48_Y38_N18
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux56~2_combout\ & ((\Mux4~3_combout\ & (\Shift|ShiftLeft0~220_combout\)) # (!\Mux4~3_combout\ & ((\Shift|ShiftLeft0~263_combout\))))) # (!\Mux56~2_combout\ & (((\Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~220_combout\,
	datab => \Shift|ShiftLeft0~263_combout\,
	datac => \Mux56~2_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X63_Y34_N16
\Add|S[59]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[59]~54_combout\ = \Add|C[59]~58_combout\ $ (\AddnSub~input_o\ $ (\A[59]~input_o\ $ (\B[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|C[59]~58_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Add|S[59]~54_combout\);

-- Location: LCCOMB_X53_Y35_N14
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & ((\Shift|ShiftRight0~222_combout\))) # (!\Mux19~3_combout\ & (\Add|S[59]~54_combout\)))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Add|S[59]~54_combout\,
	datac => \Mux19~3_combout\,
	datad => \Shift|ShiftRight0~222_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X56_Y38_N10
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux19~0_combout\ & ((\Mux4~5_combout\ & ((\Shift|ShiftRight1~112_combout\))) # (!\Mux4~5_combout\ & (\A[63]~input_o\)))) # (!\Mux19~0_combout\ & (((\Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \Mux19~0_combout\,
	datac => \Mux4~5_combout\,
	datad => \Shift|ShiftRight1~112_combout\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X56_Y38_N20
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~2_combout\ & (((\Mux4~1_combout\)))) # (!\Mux4~2_combout\ & ((\Mux4~1_combout\ & ((\Y_ShiftOrArith[31]~13_combout\))) # (!\Mux4~1_combout\ & (\Mux4~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Y_ShiftOrArith[31]~13_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X56_Y38_N6
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~2_combout\ & ((\Mux4~7_combout\ & ((\Shift|ShiftLeft0~139_combout\))) # (!\Mux4~7_combout\ & (\Mux4~4_combout\)))) # (!\Mux4~2_combout\ & (((\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~4_combout\,
	datab => \Shift|ShiftLeft0~139_combout\,
	datac => \Mux4~2_combout\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X63_Y34_N12
\Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~10_combout\ = (\A[59]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[59]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[59]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \B[59]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[59]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Mux4~10_combout\);

-- Location: LCCOMB_X63_Y34_N22
\Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~11_combout\ = (\Mux4~10_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux4~10_combout\,
	combout => \Mux4~11_combout\);

-- Location: LCCOMB_X63_Y34_N2
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux4~11_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux4~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux4~8_combout\,
	datac => \Mux4~11_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X59_Y39_N24
\Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\B[60]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[60]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[60]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \A[60]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[60]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X59_Y39_N18
\Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (\Mux3~11_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux3~11_combout\,
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X58_Y39_N26
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ & \Mux3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux3~12_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X59_Y35_N30
\Shift|ShiftLeft0~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~275_combout\ = (\B[0]~input_o\ & (\A[59]~input_o\)) # (!\B[0]~input_o\ & ((\A[60]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[59]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shift|ShiftLeft0~275_combout\);

-- Location: LCCOMB_X56_Y34_N4
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Shift|ShiftLeft0~27_combout\ & (((\Mux60~2_combout\) # (\Shift|ShiftLeft0~266_combout\)))) # (!\Shift|ShiftLeft0~27_combout\ & (\Shift|ShiftLeft0~275_combout\ & (!\Mux60~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~27_combout\,
	datab => \Shift|ShiftLeft0~275_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|ShiftLeft0~266_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X56_Y34_N6
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux60~2_combout\ & ((\Mux3~3_combout\ & (\Shift|ShiftLeft0~255_combout\)) # (!\Mux3~3_combout\ & ((\Shift|ShiftLeft0~270_combout\))))) # (!\Mux60~2_combout\ & (((\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|ShiftLeft0~255_combout\,
	datac => \Mux3~3_combout\,
	datad => \Shift|ShiftLeft0~270_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X56_Y37_N10
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux19~1_combout\ & (((!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & ((\Y_ShiftOrArith[0]~1_combout\ & (\Mux3~4_combout\)) # (!\Y_ShiftOrArith[0]~1_combout\ & ((\Shift|ShiftLeft0~145_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux3~4_combout\,
	datac => \Shift|ShiftLeft0~145_combout\,
	datad => \Y_ShiftOrArith[0]~1_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X59_Y39_N22
\Add|S[60]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[60]~55_combout\ = \B[60]~input_o\ $ (\A[60]~input_o\ $ (\Add|C[60]~59_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[60]~input_o\,
	datab => \A[60]~input_o\,
	datac => \Add|C[60]~59_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[60]~55_combout\);

-- Location: LCCOMB_X56_Y37_N20
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & (((\Add|S[60]~55_combout\) # (!\Mux19~1_combout\)))) # (!\Mux3~5_combout\ & (\Shift|ShiftLeft0~225_combout\ & (\Mux19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~5_combout\,
	datab => \Shift|ShiftLeft0~225_combout\,
	datac => \Mux19~1_combout\,
	datad => \Add|S[60]~55_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X56_Y37_N22
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & (\Shift|ShiftRight0~223_combout\)) # (!\Mux19~3_combout\ & ((\Mux3~6_combout\))))) # (!\Mux19~2_combout\ & (!\Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~3_combout\,
	datac => \Shift|ShiftRight0~223_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X58_Y39_N28
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Mux19~0_combout\ & ((\Mux3~7_combout\ & (\Shift|ShiftRight1~113_combout\)) # (!\Mux3~7_combout\ & ((\A[63]~input_o\))))) # (!\Mux19~0_combout\ & (((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight1~113_combout\,
	datab => \Mux19~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Mux3~7_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X58_Y39_N30
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (!\FuncClass[0]~input_o\ & (!\ExtWord~input_o\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X58_Y39_N0
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Y_ShiftOrArith[31]~13_combout\ & (!\FuncClass[0]~input_o\ & (\ExtWord~input_o\ & !\FuncClass[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~13_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X58_Y39_N24
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux3~2_combout\) # ((\Mux3~1_combout\) # ((\Mux3~8_combout\ & \Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \Mux3~8_combout\,
	datac => \Mux3~9_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X59_Y39_N30
\Shift|ShiftLeft0~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~276_combout\ = (\B[0]~input_o\ & ((\A[60]~input_o\))) # (!\B[0]~input_o\ & (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[61]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shift|ShiftLeft0~276_combout\);

-- Location: LCCOMB_X55_Y38_N22
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Shift|ShiftLeft0~27_combout\ & (((\Shift|ShiftLeft0~268_combout\) # (\Mux60~2_combout\)))) # (!\Shift|ShiftLeft0~27_combout\ & (\Shift|ShiftLeft0~276_combout\ & ((!\Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~27_combout\,
	datab => \Shift|ShiftLeft0~276_combout\,
	datac => \Shift|ShiftLeft0~268_combout\,
	datad => \Mux60~2_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X54_Y38_N0
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux60~2_combout\ & ((\Mux2~4_combout\ & (\Shift|ShiftLeft0~258_combout\)) # (!\Mux2~4_combout\ & ((\Shift|ShiftLeft0~273_combout\))))) # (!\Mux60~2_combout\ & (\Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Mux2~4_combout\,
	datac => \Shift|ShiftLeft0~258_combout\,
	datad => \Shift|ShiftLeft0~273_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X54_Y38_N18
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux19~1_combout\ & ((\Shift|ShiftLeft0~230_combout\) # ((!\Y_ShiftOrArith[0]~1_combout\)))) # (!\Mux19~1_combout\ & (((\Y_ShiftOrArith[0]~1_combout\ & \Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~230_combout\,
	datab => \Mux19~1_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X59_Y39_N0
\Add|S[61]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[61]~56_combout\ = \A[61]~input_o\ $ (\B[61]~input_o\ $ (\Add|C[61]~60_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[61]~input_o\,
	datac => \Add|C[61]~60_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S[61]~56_combout\);

-- Location: LCCOMB_X54_Y38_N20
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & (((\Y_ShiftOrArith[0]~1_combout\) # (\Add|S[61]~56_combout\)))) # (!\Mux2~6_combout\ & (\Shift|ShiftLeft0~151_combout\ & (!\Y_ShiftOrArith[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~151_combout\,
	datab => \Mux2~6_combout\,
	datac => \Y_ShiftOrArith[0]~1_combout\,
	datad => \Add|S[61]~56_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X58_Y38_N26
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux19~2_combout\ & ((\Mux19~3_combout\ & (\Shift|ShiftRight0~224_combout\)) # (!\Mux19~3_combout\ & ((\Mux2~7_combout\))))) # (!\Mux19~2_combout\ & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Shift|ShiftRight0~224_combout\,
	datac => \Mux19~3_combout\,
	datad => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X58_Y38_N4
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux2~8_combout\ & (((\Shift|ShiftRight1~114_combout\)) # (!\Mux19~0_combout\))) # (!\Mux2~8_combout\ & (\Mux19~0_combout\ & (\A[63]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datab => \Mux19~0_combout\,
	datac => \A[63]~input_o\,
	datad => \Shift|ShiftRight1~114_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X55_Y41_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X59_Y39_N26
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\LogicFN[0]~input_o\ & (((\A[61]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & ((\A[61]~input_o\))) # (!\LogicFN[1]~input_o\ & (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[61]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X59_Y39_N16
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = \LogicFN[0]~input_o\ $ (((!\A[61]~input_o\ & \LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X59_Y39_N4
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~0_combout\ & (\Mux2~2_combout\ $ (((\B[61]~input_o\ & \Mux2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \B[61]~input_o\,
	datac => \Mux2~2_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X58_Y39_N10
\Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Mux3~1_combout\) # ((\Mux2~3_combout\) # ((\Mux2~9_combout\ & \Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux3~9_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X55_Y37_N24
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (!\FuncClass[0]~input_o\ & (!\ExtWord~input_o\ & !\ShiftFN[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X59_Y39_N10
\Add|S[62]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[62]~57_combout\ = \AddnSub~input_o\ $ (\B[62]~input_o\ $ (\A[62]~input_o\ $ (\Add|C[62]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[62]~input_o\,
	datac => \A[62]~input_o\,
	datad => \Add|C[62]~61_combout\,
	combout => \Add|S[62]~57_combout\);

-- Location: LCCOMB_X59_Y35_N8
\Y_LorS[62]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~0_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[61]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Y_LorS[62]~0_combout\);

-- Location: LCCOMB_X59_Y35_N2
\Y_LorS[62]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~1_combout\ = (!\B[2]~input_o\ & ((\Y_LorS[62]~0_combout\) # ((\B[1]~input_o\ & \Shift|ShiftLeft0~275_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Y_LorS[62]~0_combout\,
	datac => \Shift|ShiftLeft0~275_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_LorS[62]~1_combout\);

-- Location: LCCOMB_X56_Y39_N4
\Y_LorS[62]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~2_combout\ = (!\B[3]~input_o\ & ((\Y_LorS[62]~1_combout\) # ((\Shift|ShiftLeft0~271_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~271_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y_LorS[62]~1_combout\,
	combout => \Y_LorS[62]~2_combout\);

-- Location: LCCOMB_X56_Y39_N22
\Y_LorS[62]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~3_combout\ = (!\B[4]~input_o\ & ((\Y_LorS[62]~2_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_LorS[62]~2_combout\,
	datad => \Shift|ShiftLeft0~261_combout\,
	combout => \Y_LorS[62]~3_combout\);

-- Location: LCCOMB_X55_Y37_N10
\Y_LorS[62]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~4_combout\ = (!\B[5]~input_o\ & ((\Y_LorS[62]~3_combout\) # ((\Shift|ShiftLeft0~235_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~235_combout\,
	datab => \B[4]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Y_LorS[62]~3_combout\,
	combout => \Y_LorS[62]~4_combout\);

-- Location: LCCOMB_X55_Y37_N20
\Y_LorS[62]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~5_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_LorS[62]~4_combout\) # ((\B[5]~input_o\ & \Shift|ShiftLeft0~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_LorS[62]~4_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftLeft0~157_combout\,
	combout => \Y_LorS[62]~5_combout\);

-- Location: LCCOMB_X55_Y37_N30
\Y_LorS[62]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~6_combout\ = (\Y_LorS[62]~5_combout\) # ((!\ShiftFN[0]~input_o\ & \Add|S[62]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \Add|S[62]~57_combout\,
	datad => \Y_LorS[62]~5_combout\,
	combout => \Y_LorS[62]~6_combout\);

-- Location: LCCOMB_X55_Y39_N6
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\B[5]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Shift|ShiftRight1~115_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Shift|ShiftRight0~214_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Shift|ShiftRight1~115_combout\,
	datad => \Shift|ShiftRight0~214_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X58_Y37_N12
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\Mux3~0_combout\ & (\ShiftFN[1]~input_o\ & ((\Mux1~1_combout\) # (\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datab => \Mux3~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X59_Y39_N20
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\A[62]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[62]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[62]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \B[62]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[62]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[62]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y39_N14
\Logic|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~1_combout\ = (\Logic|Mux1~0_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Logic|Mux1~0_combout\,
	combout => \Logic|Mux1~1_combout\);

-- Location: LCCOMB_X58_Y37_N22
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\) # ((\FuncClass[0]~input_o\ & ((\Logic|Mux1~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[32]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Y_ShiftOrArith[32]~17_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X55_Y37_N18
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux1~3_combout\) # ((\Mux1~4_combout\ & \Y_LorS[62]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux1~4_combout\,
	datac => \Y_LorS[62]~6_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X48_Y37_N30
\Shift|ShiftRight0~217\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftRight0~217_combout\ = (!\B[5]~input_o\ & (!\Shift|ShiftLeft0~21_combout\ & \A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[5]~input_o\,
	datac => \Shift|ShiftLeft0~21_combout\,
	datad => \A[63]~input_o\,
	combout => \Shift|ShiftRight0~217_combout\);

-- Location: LCCOMB_X48_Y37_N24
\Add|S[63]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[63]~58_combout\ = \AddnSub~input_o\ $ (\A[63]~input_o\ $ (\B[63]~input_o\ $ (\Add|C[63]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[63]~input_o\,
	datad => \Add|C[63]~62_combout\,
	combout => \Add|S[63]~58_combout\);

-- Location: LCCOMB_X48_Y37_N10
\Y_ShiftOrArith[31]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~25_combout\ = (\ShiftFN[1]~input_o\ & ((\Shift|ShiftRight0~217_combout\) # ((\ShiftFN[0]~input_o\)))) # (!\ShiftFN[1]~input_o\ & (((!\ShiftFN[0]~input_o\ & \Add|S[63]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftRight0~217_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|S[63]~58_combout\,
	combout => \Y_ShiftOrArith[31]~25_combout\);

-- Location: LCCOMB_X48_Y39_N24
\Shift|ShiftLeft0~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~278_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ShiftLeft0~117_combout\)) # (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~160_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~117_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~160_combout\,
	combout => \Shift|ShiftLeft0~278_combout\);

-- Location: LCCOMB_X48_Y39_N10
\Shift|ShiftLeft0~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~279_combout\ = (\B[5]~input_o\ & ((\Shift|ShiftLeft0~278_combout\) # ((\B[2]~input_o\ & \Shift|ShiftLeft0~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ShiftLeft0~137_combout\,
	datac => \B[5]~input_o\,
	datad => \Shift|ShiftLeft0~278_combout\,
	combout => \Shift|ShiftLeft0~279_combout\);

-- Location: LCCOMB_X59_Y35_N4
\Shift|ShiftLeft0~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~280_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[62]~input_o\,
	datac => \A[63]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ShiftLeft0~280_combout\);

-- Location: LCCOMB_X59_Y35_N14
\Shift|ShiftLeft0~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~281_combout\ = (!\B[2]~input_o\ & ((\Shift|ShiftLeft0~280_combout\) # ((\B[1]~input_o\ & \Shift|ShiftLeft0~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ShiftLeft0~276_combout\,
	datad => \Shift|ShiftLeft0~280_combout\,
	combout => \Shift|ShiftLeft0~281_combout\);

-- Location: LCCOMB_X48_Y38_N12
\Shift|ShiftLeft0~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~282_combout\ = (!\B[3]~input_o\ & ((\Shift|ShiftLeft0~281_combout\) # ((\Shift|ShiftLeft0~274_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~281_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ShiftLeft0~274_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ShiftLeft0~282_combout\);

-- Location: LCCOMB_X48_Y38_N30
\Shift|ShiftLeft0~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~283_combout\ = (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~282_combout\) # ((\B[3]~input_o\ & \Shift|ShiftLeft0~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~282_combout\,
	datab => \B[5]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ShiftLeft0~264_combout\,
	combout => \Shift|ShiftLeft0~283_combout\);

-- Location: LCCOMB_X48_Y37_N2
\Shift|ShiftLeft0~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~277_combout\ = (\B[4]~input_o\ & ((\B[5]~input_o\ & (\Shift|ShiftLeft0~158_combout\)) # (!\B[5]~input_o\ & ((\Shift|ShiftLeft0~240_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~158_combout\,
	datab => \Shift|ShiftLeft0~240_combout\,
	datac => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Shift|ShiftLeft0~277_combout\);

-- Location: LCCOMB_X48_Y37_N28
\Shift|ShiftLeft0~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ShiftLeft0~284_combout\ = (\Shift|ShiftLeft0~277_combout\) # ((!\B[4]~input_o\ & ((\Shift|ShiftLeft0~279_combout\) # (\Shift|ShiftLeft0~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ShiftLeft0~279_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ShiftLeft0~283_combout\,
	datad => \Shift|ShiftLeft0~277_combout\,
	combout => \Shift|ShiftLeft0~284_combout\);

-- Location: LCCOMB_X48_Y37_N20
\Y_ShiftOrArith[31]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~26_combout\ = (\Y_ShiftOrArith[31]~25_combout\ & ((\A[63]~input_o\) # ((!\ShiftFN[0]~input_o\)))) # (!\Y_ShiftOrArith[31]~25_combout\ & (((\ShiftFN[0]~input_o\ & \Shift|ShiftLeft0~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|ShiftLeft0~284_combout\,
	combout => \Y_ShiftOrArith[31]~26_combout\);

-- Location: LCCOMB_X48_Y37_N14
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\LogicFN[0]~input_o\ & ((\A[63]~input_o\ & (\LogicFN[1]~input_o\ $ (!\B[63]~input_o\))) # (!\A[63]~input_o\ & (!\LogicFN[1]~input_o\ & \B[63]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[63]~input_o\) # ((\B[63]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[63]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[63]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y37_N30
\Logic|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~1_combout\ = (\Logic|Mux0~0_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Logic|Mux0~0_combout\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Logic|Mux0~1_combout\);

-- Location: LCCOMB_X58_Y39_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\FuncClass[0]~input_o\ & (\Logic|Mux0~1_combout\ & !\FuncClass[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[0]~input_o\,
	datac => \Logic|Mux0~1_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X58_Y39_N14
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\) # ((\Mux3~1_combout\) # ((\Y_ShiftOrArith[31]~26_combout\ & \Mux3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~26_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux3~9_combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux0~1_combout\);

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

ww_Y(32) <= \Y[32]~output_o\;

ww_Y(33) <= \Y[33]~output_o\;

ww_Y(34) <= \Y[34]~output_o\;

ww_Y(35) <= \Y[35]~output_o\;

ww_Y(36) <= \Y[36]~output_o\;

ww_Y(37) <= \Y[37]~output_o\;

ww_Y(38) <= \Y[38]~output_o\;

ww_Y(39) <= \Y[39]~output_o\;

ww_Y(40) <= \Y[40]~output_o\;

ww_Y(41) <= \Y[41]~output_o\;

ww_Y(42) <= \Y[42]~output_o\;

ww_Y(43) <= \Y[43]~output_o\;

ww_Y(44) <= \Y[44]~output_o\;

ww_Y(45) <= \Y[45]~output_o\;

ww_Y(46) <= \Y[46]~output_o\;

ww_Y(47) <= \Y[47]~output_o\;

ww_Y(48) <= \Y[48]~output_o\;

ww_Y(49) <= \Y[49]~output_o\;

ww_Y(50) <= \Y[50]~output_o\;

ww_Y(51) <= \Y[51]~output_o\;

ww_Y(52) <= \Y[52]~output_o\;

ww_Y(53) <= \Y[53]~output_o\;

ww_Y(54) <= \Y[54]~output_o\;

ww_Y(55) <= \Y[55]~output_o\;

ww_Y(56) <= \Y[56]~output_o\;

ww_Y(57) <= \Y[57]~output_o\;

ww_Y(58) <= \Y[58]~output_o\;

ww_Y(59) <= \Y[59]~output_o\;

ww_Y(60) <= \Y[60]~output_o\;

ww_Y(61) <= \Y[61]~output_o\;

ww_Y(62) <= \Y[62]~output_o\;

ww_Y(63) <= \Y[63]~output_o\;

ww_Zero <= \Zero~output_o\;

ww_AltB <= \AltB~output_o\;

ww_AltBu <= \AltBu~output_o\;
END structure;


