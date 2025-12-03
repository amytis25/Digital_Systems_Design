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

-- DATE "11/29/2025 20:21:42"

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
	Y : BUFFER std_logic_vector(63 DOWNTO 0);
	Zero : BUFFER std_logic;
	AltB : BUFFER std_logic;
	AltBu : BUFFER std_logic
	);
END EN_ExecUnit;

-- Design Ports Information
-- Y[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[8]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[9]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[10]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[11]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[12]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[13]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[14]	=>  Location: PIN_J26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[15]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[16]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[17]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[18]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[19]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[20]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[21]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[22]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[23]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[24]	=>  Location: PIN_E28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[25]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[26]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[27]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[28]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[29]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[30]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[31]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[32]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[33]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[34]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[35]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[36]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[37]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[38]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[39]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[40]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[41]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[42]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[43]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[44]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[45]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[46]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[47]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[48]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[49]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[50]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[51]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[52]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[53]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[54]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[55]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[56]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[57]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[58]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[59]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[60]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[61]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[62]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[63]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Zero	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltB	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBu	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LogicFN[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AddnSub	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[62]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[62]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[61]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[61]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[60]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[60]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[55]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[55]	=>  Location: PIN_E26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[54]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[54]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[53]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[53]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[52]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[52]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[47]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[47]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[46]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[46]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[44]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[44]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[45]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[45]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[41]	=>  Location: PIN_N26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[41]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[40]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[40]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[42]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[42]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[43]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[43]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[39]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[39]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[38]	=>  Location: PIN_M25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[38]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[37]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[36]	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[36]	=>  Location: PIN_M26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[37]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_H26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_D26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_D28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_C27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[19]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[19]	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[18]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[18]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[17]	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[17]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[16]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[16]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[23]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[23]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[22]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[22]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[21]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[21]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[20]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[20]	=>  Location: PIN_C25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[27]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[27]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[26]	=>  Location: PIN_L24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[26]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[25]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[25]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[24]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[24]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[31]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[31]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[30]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[30]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[29]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[29]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[28]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[28]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[35]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[35]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[34]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[34]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[33]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[33]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[32]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[32]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[51]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[51]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[50]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[50]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[49]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[49]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[48]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[48]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[59]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[59]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[58]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[58]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[57]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[57]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[56]	=>  Location: PIN_J24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[56]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[63]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[63]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FuncClass[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ShiftFN[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ExtWord	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \FuncClass[0]~input_o\ : std_logic;
SIGNAL \A[45]~input_o\ : std_logic;
SIGNAL \A[47]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \Shift|rl2[45]~33_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[46]~input_o\ : std_logic;
SIGNAL \A[44]~input_o\ : std_logic;
SIGNAL \Shift|rl2[44]~34_combout\ : std_logic;
SIGNAL \Shift|rl2[44]~35_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[36]~input_o\ : std_logic;
SIGNAL \A[38]~input_o\ : std_logic;
SIGNAL \Shift|rl2[36]~37_combout\ : std_logic;
SIGNAL \A[39]~input_o\ : std_logic;
SIGNAL \A[37]~input_o\ : std_logic;
SIGNAL \Shift|rl2[37]~36_combout\ : std_logic;
SIGNAL \Shift|rl2[36]~38_combout\ : std_logic;
SIGNAL \Shift|rl4[36]~4_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[40]~input_o\ : std_logic;
SIGNAL \A[42]~input_o\ : std_logic;
SIGNAL \Shift|rl2[40]~40_combout\ : std_logic;
SIGNAL \A[43]~input_o\ : std_logic;
SIGNAL \A[41]~input_o\ : std_logic;
SIGNAL \Shift|rl2[41]~39_combout\ : std_logic;
SIGNAL \Shift|rl2[40]~41_combout\ : std_logic;
SIGNAL \A[32]~input_o\ : std_logic;
SIGNAL \A[34]~input_o\ : std_logic;
SIGNAL \Shift|rl2[32]~43_combout\ : std_logic;
SIGNAL \A[35]~input_o\ : std_logic;
SIGNAL \A[33]~input_o\ : std_logic;
SIGNAL \Shift|rl2[33]~42_combout\ : std_logic;
SIGNAL \Shift|rl2[32]~44_combout\ : std_logic;
SIGNAL \Shift|rl4[32]~5_combout\ : std_logic;
SIGNAL \Shift|rl4[32]~6_combout\ : std_logic;
SIGNAL \A[61]~input_o\ : std_logic;
SIGNAL \A[60]~input_o\ : std_logic;
SIGNAL \Shift|rl2[60]~28_combout\ : std_logic;
SIGNAL \A[63]~input_o\ : std_logic;
SIGNAL \A[62]~input_o\ : std_logic;
SIGNAL \Shift|rl1[62]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[60]~29_combout\ : std_logic;
SIGNAL \A[56]~input_o\ : std_logic;
SIGNAL \A[58]~input_o\ : std_logic;
SIGNAL \Shift|rl2[56]~31_combout\ : std_logic;
SIGNAL \A[57]~input_o\ : std_logic;
SIGNAL \A[59]~input_o\ : std_logic;
SIGNAL \Shift|rl2[57]~30_combout\ : std_logic;
SIGNAL \Shift|rl2[56]~32_combout\ : std_logic;
SIGNAL \Shift|rl3[56]~2_combout\ : std_logic;
SIGNAL \A[52]~input_o\ : std_logic;
SIGNAL \A[54]~input_o\ : std_logic;
SIGNAL \Shift|rl2[52]~23_combout\ : std_logic;
SIGNAL \A[53]~input_o\ : std_logic;
SIGNAL \A[55]~input_o\ : std_logic;
SIGNAL \Shift|rl2[53]~22_combout\ : std_logic;
SIGNAL \Shift|rl2[52]~24_combout\ : std_logic;
SIGNAL \A[48]~input_o\ : std_logic;
SIGNAL \A[50]~input_o\ : std_logic;
SIGNAL \Shift|rl2[48]~26_combout\ : std_logic;
SIGNAL \A[49]~input_o\ : std_logic;
SIGNAL \A[51]~input_o\ : std_logic;
SIGNAL \Shift|rl2[49]~25_combout\ : std_logic;
SIGNAL \Shift|rl2[48]~27_combout\ : std_logic;
SIGNAL \Shift|rl4[48]~2_combout\ : std_logic;
SIGNAL \Shift|rl4[48]~3_combout\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \Shift|rl5[32]~0_combout\ : std_logic;
SIGNAL \ShiftFN[1]~input_o\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \A[20]~input_o\ : std_logic;
SIGNAL \A[22]~input_o\ : std_logic;
SIGNAL \Shift|rl2[20]~17_combout\ : std_logic;
SIGNAL \A[21]~input_o\ : std_logic;
SIGNAL \A[23]~input_o\ : std_logic;
SIGNAL \Shift|rl2[21]~16_combout\ : std_logic;
SIGNAL \Shift|rl2[20]~18_combout\ : std_logic;
SIGNAL \A[19]~input_o\ : std_logic;
SIGNAL \A[17]~input_o\ : std_logic;
SIGNAL \Shift|rl2[17]~19_combout\ : std_logic;
SIGNAL \A[16]~input_o\ : std_logic;
SIGNAL \A[18]~input_o\ : std_logic;
SIGNAL \Shift|rl2[16]~20_combout\ : std_logic;
SIGNAL \Shift|rl2[16]~21_combout\ : std_logic;
SIGNAL \Shift|rl3[16]~1_combout\ : std_logic;
SIGNAL \A[30]~input_o\ : std_logic;
SIGNAL \A[28]~input_o\ : std_logic;
SIGNAL \Shift|rl2[28]~11_combout\ : std_logic;
SIGNAL \A[29]~input_o\ : std_logic;
SIGNAL \A[31]~input_o\ : std_logic;
SIGNAL \Shift|rl2[29]~10_combout\ : std_logic;
SIGNAL \Shift|rl2[28]~12_combout\ : std_logic;
SIGNAL \A[27]~input_o\ : std_logic;
SIGNAL \A[25]~input_o\ : std_logic;
SIGNAL \Shift|rl2[25]~13_combout\ : std_logic;
SIGNAL \A[26]~input_o\ : std_logic;
SIGNAL \A[24]~input_o\ : std_logic;
SIGNAL \Shift|rl2[24]~14_combout\ : std_logic;
SIGNAL \Shift|rl2[24]~15_combout\ : std_logic;
SIGNAL \Shift|rl4[16]~0_combout\ : std_logic;
SIGNAL \Shift|rl4[16]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \Shift|rl1[2]~0_combout\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~3_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \Shift|rl1[4]~1_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \Shift|rl2[4]~2_combout\ : std_logic;
SIGNAL \Shift|rl2[4]~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~4_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \Shift|rl2[12]~5_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \Shift|rl2[13]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[12]~6_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \Shift|rl2[9]~7_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \Shift|rl2[8]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[8]~9_combout\ : std_logic;
SIGNAL \Shift|rl3[8]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~5_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~6_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~7_combout\ : std_logic;
SIGNAL \ShiftFN[0]~input_o\ : std_logic;
SIGNAL \Shift|ra4[62]~0_combout\ : std_logic;
SIGNAL \Shift|Y_LL[0]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~8_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[0]~9_combout\ : std_logic;
SIGNAL \B[63]~input_o\ : std_logic;
SIGNAL \AddnSub~input_o\ : std_logic;
SIGNAL \B[62]~input_o\ : std_logic;
SIGNAL \B[61]~input_o\ : std_logic;
SIGNAL \B[60]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[58]~input_o\ : std_logic;
SIGNAL \B[59]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[57]~input_o\ : std_logic;
SIGNAL \B[56]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[15]~43_combout\ : std_logic;
SIGNAL \Logic|xor_result[59]~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[15]~44_combout\ : std_logic;
SIGNAL \B[50]~input_o\ : std_logic;
SIGNAL \B[48]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[13]~40_combout\ : std_logic;
SIGNAL \B[49]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[13]~41_combout\ : std_logic;
SIGNAL \Add|block_carry_in[13]~42_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[46]~input_o\ : std_logic;
SIGNAL \B[47]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \B[45]~input_o\ : std_logic;
SIGNAL \B[44]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \B[43]~input_o\ : std_logic;
SIGNAL \B[42]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \B[40]~input_o\ : std_logic;
SIGNAL \B[41]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~37_combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~38_combout\ : std_logic;
SIGNAL \B[39]~input_o\ : std_logic;
SIGNAL \B[38]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[37]~input_o\ : std_logic;
SIGNAL \B[36]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[10]~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[10]~10_combout\ : std_logic;
SIGNAL \B[35]~input_o\ : std_logic;
SIGNAL \B[34]~input_o\ : std_logic;
SIGNAL \B[33]~input_o\ : std_logic;
SIGNAL \B[32]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[9]~33_combout\ : std_logic;
SIGNAL \Add|block_carry_in[9]~34_combout\ : std_logic;
SIGNAL \Add|block_carry_in[9]~35_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[31]~input_o\ : std_logic;
SIGNAL \B[30]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[28]~input_o\ : std_logic;
SIGNAL \B[29]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \B[25]~input_o\ : std_logic;
SIGNAL \B[27]~input_o\ : std_logic;
SIGNAL \B[26]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[24]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~29_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[22]~input_o\ : std_logic;
SIGNAL \B[23]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[21]~input_o\ : std_logic;
SIGNAL \B[20]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[19]~input_o\ : std_logic;
SIGNAL \B[18]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \B[16]~input_o\ : std_logic;
SIGNAL \B[17]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~25_combout\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \Logic|xor_result[15]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~20_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~17_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~16_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~18_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~19_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~21_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~22_combout\ : std_logic;
SIGNAL \Add|block_carry_in[2]~23_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~13_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~14_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~15_combout\ : std_logic;
SIGNAL \Add|block_carry_in[3]~55_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[3]~56_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~11_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~12_combout\ : std_logic;
SIGNAL \Add|block_carry_in[4]~24_combout\ : std_logic;
SIGNAL \Add|block_carry_in[5]~26_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~27_combout\ : std_logic;
SIGNAL \Add|block_carry_in[6]~28_combout\ : std_logic;
SIGNAL \Add|block_carry_in[7]~30_combout\ : std_logic;
SIGNAL \Add|block_carry_in[8]~31_combout\ : std_logic;
SIGNAL \Add|block_carry_in[8]~32_combout\ : std_logic;
SIGNAL \Add|block_carry_in[9]~53_combout\ : std_logic;
SIGNAL \Add|block_carry_in[9]~54_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~36_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~6_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~5_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~7_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~8_combout\ : std_logic;
SIGNAL \Add|block_carry_in[12]~39_combout\ : std_logic;
SIGNAL \Add|block_carry_in[13]~51_combout\ : std_logic;
SIGNAL \B[51]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[13]~52_combout\ : std_logic;
SIGNAL \B[52]~input_o\ : std_logic;
SIGNAL \B[53]~input_o\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \B[54]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[14]~2_combout\ : std_logic;
SIGNAL \Add|block_carry_in[14]~3_combout\ : std_logic;
SIGNAL \Add|block_carry_in[14]~4_combout\ : std_logic;
SIGNAL \Add|block_carry_in[14]~49_combout\ : std_logic;
SIGNAL \B[55]~input_o\ : std_logic;
SIGNAL \Add|block_carry_in[14]~50_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|block_carry_in[15]~45_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \AltB~0_combout\ : std_logic;
SIGNAL \FuncClass[1]~input_o\ : std_logic;
SIGNAL \Mux63~0_combout\ : std_logic;
SIGNAL \LogicFN[1]~input_o\ : std_logic;
SIGNAL \LogicFN[0]~input_o\ : std_logic;
SIGNAL \Logic|Mux63~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|Cout~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|Pout~combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|Cout~1_combout\ : std_logic;
SIGNAL \Mux63~1_combout\ : std_logic;
SIGNAL \Shift|rl2[34]~57_combout\ : std_logic;
SIGNAL \Shift|rl2[33]~58_combout\ : std_logic;
SIGNAL \Shift|rl2[42]~55_combout\ : std_logic;
SIGNAL \Shift|rl2[41]~56_combout\ : std_logic;
SIGNAL \Shift|rl4[33]~8_combout\ : std_logic;
SIGNAL \Shift|rl2[46]~51_combout\ : std_logic;
SIGNAL \Shift|rl2[45]~52_combout\ : std_logic;
SIGNAL \Shift|rl2[38]~53_combout\ : std_logic;
SIGNAL \Shift|rl2[37]~54_combout\ : std_logic;
SIGNAL \Shift|rl4[37]~7_combout\ : std_logic;
SIGNAL \Shift|rl4[33]~9_combout\ : std_logic;
SIGNAL \Shift|rl2[61]~64_combout\ : std_logic;
SIGNAL \Y_R[1]~20_combout\ : std_logic;
SIGNAL \Y_R[1]~21_combout\ : std_logic;
SIGNAL \Shift|rl2[58]~63_combout\ : std_logic;
SIGNAL \Y_R[1]~19_combout\ : std_logic;
SIGNAL \Y_R[1]~22_combout\ : std_logic;
SIGNAL \Shift|rl2[50]~61_combout\ : std_logic;
SIGNAL \Shift|rl2[49]~62_combout\ : std_logic;
SIGNAL \Shift|rl2[54]~59_combout\ : std_logic;
SIGNAL \Shift|rl2[53]~60_combout\ : std_logic;
SIGNAL \Y_R[1]~18_combout\ : std_logic;
SIGNAL \Y_R[1]~23_combout\ : std_logic;
SIGNAL \Shift|rl2[30]~65_combout\ : std_logic;
SIGNAL \Shift|rl2[29]~66_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~67_combout\ : std_logic;
SIGNAL \Shift|rl2[25]~68_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~10_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~71_combout\ : std_logic;
SIGNAL \Shift|rl2[17]~72_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~69_combout\ : std_logic;
SIGNAL \Shift|rl2[21]~70_combout\ : std_logic;
SIGNAL \Shift|rl3[17]~4_combout\ : std_logic;
SIGNAL \Shift|rl4[17]~11_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~17_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~10_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~11_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~45_combout\ : std_logic;
SIGNAL \Shift|rl1[5]~4_combout\ : std_logic;
SIGNAL \Shift|rl2[5]~46_combout\ : std_logic;
SIGNAL \Shift|rl1[3]~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~12_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~13_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~14_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~49_combout\ : std_logic;
SIGNAL \Shift|rl2[9]~50_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~47_combout\ : std_logic;
SIGNAL \Shift|rl2[13]~48_combout\ : std_logic;
SIGNAL \Shift|rl3[9]~3_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~15_combout\ : std_logic;
SIGNAL \Shift|ll1[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll4[1]~0_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~28_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~16_combout\ : std_logic;
SIGNAL \Mux62~0_combout\ : std_logic;
SIGNAL \Mux62~1_combout\ : std_logic;
SIGNAL \Mux62~2_combout\ : std_logic;
SIGNAL \Mux60~7_combout\ : std_logic;
SIGNAL \Mux60~6_combout\ : std_logic;
SIGNAL \Mux60~5_combout\ : std_logic;
SIGNAL \Mux60~2_combout\ : std_logic;
SIGNAL \Shift|rl2[31]~80_combout\ : std_logic;
SIGNAL \Shift|rl2[30]~81_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~82_combout\ : std_logic;
SIGNAL \Shift|rl2[26]~83_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~12_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~84_combout\ : std_logic;
SIGNAL \Shift|rl2[22]~85_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~86_combout\ : std_logic;
SIGNAL \Shift|rl2[18]~87_combout\ : std_logic;
SIGNAL \Shift|rl3[18]~6_combout\ : std_logic;
SIGNAL \Shift|rl4[18]~13_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[2]~1_combout\ : std_logic;
SIGNAL \Shift|ll5[2]~35_combout\ : std_logic;
SIGNAL \Mux60~3_combout\ : std_logic;
SIGNAL \Mux60~4_combout\ : std_logic;
SIGNAL \Shift|rl2[55]~96_combout\ : std_logic;
SIGNAL \Shift|rl2[54]~97_combout\ : std_logic;
SIGNAL \Shift|rl2[51]~98_combout\ : std_logic;
SIGNAL \Shift|rl2[50]~99_combout\ : std_logic;
SIGNAL \Y_R[1]~24_combout\ : std_logic;
SIGNAL \Shift|rl2[47]~88_combout\ : std_logic;
SIGNAL \Shift|rl2[46]~89_combout\ : std_logic;
SIGNAL \Shift|rl2[39]~90_combout\ : std_logic;
SIGNAL \Shift|rl2[38]~91_combout\ : std_logic;
SIGNAL \Shift|rl4[38]~14_combout\ : std_logic;
SIGNAL \Shift|rl2[35]~94_combout\ : std_logic;
SIGNAL \Shift|rl2[34]~95_combout\ : std_logic;
SIGNAL \Shift|rl2[43]~92_combout\ : std_logic;
SIGNAL \Shift|rl2[42]~93_combout\ : std_logic;
SIGNAL \Shift|rl4[34]~15_combout\ : std_logic;
SIGNAL \Shift|rl4[34]~16_combout\ : std_logic;
SIGNAL \Shift|rl2[58]~100_combout\ : std_logic;
SIGNAL \Shift|rl2[58]~101_combout\ : std_logic;
SIGNAL \Y_R[1]~25_combout\ : std_logic;
SIGNAL \Y_R[1]~26_combout\ : std_logic;
SIGNAL \Y_R[1]~27_combout\ : std_logic;
SIGNAL \Y_R[1]~28_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~74_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~73_combout\ : std_logic;
SIGNAL \Shift|rl2[6]~75_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~78_combout\ : std_logic;
SIGNAL \Shift|rl2[10]~79_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~76_combout\ : std_logic;
SIGNAL \Shift|rl2[14]~77_combout\ : std_logic;
SIGNAL \Shift|rl3[10]~5_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux61~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|P[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Shift|rl1[61]~5_combout\ : std_logic;
SIGNAL \Shift|rl2[59]~115_combout\ : std_logic;
SIGNAL \Shift|rl2[59]~116_combout\ : std_logic;
SIGNAL \Y_R[1]~30_combout\ : std_logic;
SIGNAL \Y_R[1]~31_combout\ : std_logic;
SIGNAL \Shift|rl2[55]~113_combout\ : std_logic;
SIGNAL \Shift|rl2[51]~114_combout\ : std_logic;
SIGNAL \Y_R[1]~29_combout\ : std_logic;
SIGNAL \Shift|rl2[35]~112_combout\ : std_logic;
SIGNAL \Shift|rl2[43]~111_combout\ : std_logic;
SIGNAL \Shift|rl4[35]~20_combout\ : std_logic;
SIGNAL \Shift|rl2[39]~110_combout\ : std_logic;
SIGNAL \Shift|rl2[47]~109_combout\ : std_logic;
SIGNAL \Shift|rl4[39]~19_combout\ : std_logic;
SIGNAL \Shift|rl4[35]~21_combout\ : std_logic;
SIGNAL \Y_R[1]~32_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[3]~3_combout\ : std_logic;
SIGNAL \Shift|ll5[3]~36_combout\ : std_logic;
SIGNAL \Mux60~10_combout\ : std_logic;
SIGNAL \Shift|rl2[27]~106_combout\ : std_logic;
SIGNAL \Shift|rl2[31]~105_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~17_combout\ : std_logic;
SIGNAL \Shift|rl2[23]~107_combout\ : std_logic;
SIGNAL \Shift|rl2[19]~108_combout\ : std_logic;
SIGNAL \Shift|rl3[19]~8_combout\ : std_logic;
SIGNAL \Shift|rl4[19]~18_combout\ : std_logic;
SIGNAL \Shift|rl2[11]~104_combout\ : std_logic;
SIGNAL \Shift|rl2[15]~103_combout\ : std_logic;
SIGNAL \Shift|rl3[11]~7_combout\ : std_logic;
SIGNAL \Shift|rl2[7]~102_combout\ : std_logic;
SIGNAL \Mux60~8_combout\ : std_logic;
SIGNAL \Mux60~9_combout\ : std_logic;
SIGNAL \Mux60~11_combout\ : std_logic;
SIGNAL \Mux60~12_combout\ : std_logic;
SIGNAL \Mux60~13_combout\ : std_logic;
SIGNAL \Mux60~14_combout\ : std_logic;
SIGNAL \Y_R[1]~33_combout\ : std_logic;
SIGNAL \Shift|rl4[40]~24_combout\ : std_logic;
SIGNAL \Shift|rl4[36]~25_combout\ : std_logic;
SIGNAL \Y_R[1]~34_combout\ : std_logic;
SIGNAL \Y_R[1]~35_combout\ : std_logic;
SIGNAL \Y_R[1]~36_combout\ : std_logic;
SIGNAL \Shift|ll2[0]~7_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~5_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~4_combout\ : std_logic;
SIGNAL \Shift|ll2[4]~6_combout\ : std_logic;
SIGNAL \Shift|ll3[4]~0_combout\ : std_logic;
SIGNAL \Shift|ll5[4]~37_combout\ : std_logic;
SIGNAL \Mux58~3_combout\ : std_logic;
SIGNAL \Mux58~2_combout\ : std_logic;
SIGNAL \Mux59~2_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Shift|rl3[12]~9_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Shift|rl3[20]~10_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~22_combout\ : std_logic;
SIGNAL \Shift|rl4[20]~23_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \Mux59~3_combout\ : std_logic;
SIGNAL \Mux59~4_combout\ : std_logic;
SIGNAL \Mux59~5_combout\ : std_logic;
SIGNAL \Mux59~6_combout\ : std_logic;
SIGNAL \Add|block_carry_in[1]~46_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~8_combout\ : std_logic;
SIGNAL \Shift|ll2[5]~9_combout\ : std_logic;
SIGNAL \Shift|ll3[5]~1_combout\ : std_logic;
SIGNAL \Shift|ll5[5]~38_combout\ : std_logic;
SIGNAL \Mux58~6_combout\ : std_logic;
SIGNAL \Shift|rl3[13]~11_combout\ : std_logic;
SIGNAL \Mux58~4_combout\ : std_logic;
SIGNAL \Shift|rl3[21]~12_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~26_combout\ : std_logic;
SIGNAL \Shift|rl4[21]~27_combout\ : std_logic;
SIGNAL \Mux58~5_combout\ : std_logic;
SIGNAL \Shift|rl4[41]~28_combout\ : std_logic;
SIGNAL \Shift|rl4[37]~29_combout\ : std_logic;
SIGNAL \Shift|ra3[61]~0_combout\ : std_logic;
SIGNAL \Shift|rl2[61]~118_combout\ : std_logic;
SIGNAL \Y_R[1]~38_combout\ : std_logic;
SIGNAL \Shift|rl2[57]~117_combout\ : std_logic;
SIGNAL \Y_R[1]~37_combout\ : std_logic;
SIGNAL \Y_R[1]~39_combout\ : std_logic;
SIGNAL \Y_R[1]~40_combout\ : std_logic;
SIGNAL \Mux58~7_combout\ : std_logic;
SIGNAL \Mux58~8_combout\ : std_logic;
SIGNAL \Mux58~9_combout\ : std_logic;
SIGNAL \Mux58~10_combout\ : std_logic;
SIGNAL \Shift|rl4[42]~32_combout\ : std_logic;
SIGNAL \Shift|rl4[38]~33_combout\ : std_logic;
SIGNAL \Shift|ll3[0]~2_combout\ : std_logic;
SIGNAL \Y_R[1]~43_combout\ : std_logic;
SIGNAL \Y_R[1]~41_combout\ : std_logic;
SIGNAL \Y_R[1]~42_combout\ : std_logic;
SIGNAL \Y_R[1]~44_combout\ : std_logic;
SIGNAL \Y_R[1]~45_combout\ : std_logic;
SIGNAL \Shift|rl3[14]~13_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Shift|rl3[22]~14_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~30_combout\ : std_logic;
SIGNAL \Shift|rl4[22]~31_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~10_combout\ : std_logic;
SIGNAL \Shift|ll2[6]~11_combout\ : std_logic;
SIGNAL \Shift|ll5[6]~8_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \Mux57~4_combout\ : std_logic;
SIGNAL \Mux57~5_combout\ : std_logic;
SIGNAL \Mux57~6_combout\ : std_logic;
SIGNAL \Logic|xor_result[7]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~12_combout\ : std_logic;
SIGNAL \Shift|ll2[7]~13_combout\ : std_logic;
SIGNAL \Shift|ll5[7]~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Shift|rl3[15]~15_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Shift|rl3[23]~16_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~34_combout\ : std_logic;
SIGNAL \Shift|rl4[23]~35_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Y_R[1]~46_combout\ : std_logic;
SIGNAL \Y_R[1]~47_combout\ : std_logic;
SIGNAL \Y_R[1]~48_combout\ : std_logic;
SIGNAL \Shift|rl4[43]~36_combout\ : std_logic;
SIGNAL \Shift|rl4[39]~37_combout\ : std_logic;
SIGNAL \Y_R[1]~49_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \Mux56~4_combout\ : std_logic;
SIGNAL \Mux56~5_combout\ : std_logic;
SIGNAL \Mux56~6_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~14_combout\ : std_logic;
SIGNAL \Shift|ll2[8]~15_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~1_combout\ : std_logic;
SIGNAL \Shift|ll4[8]~2_combout\ : std_logic;
SIGNAL \Mux55~4_combout\ : std_logic;
SIGNAL \Mux52~0_combout\ : std_logic;
SIGNAL \Shift|rl4[44]~41_combout\ : std_logic;
SIGNAL \Shift|rl4[40]~42_combout\ : std_logic;
SIGNAL \Y_R[1]~50_combout\ : std_logic;
SIGNAL \Y_R[1]~51_combout\ : std_logic;
SIGNAL \Shift|rl4[28]~39_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~38_combout\ : std_logic;
SIGNAL \Shift|rl4[24]~40_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \Mux60~15_combout\ : std_logic;
SIGNAL \Mux55~5_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~16_combout\ : std_logic;
SIGNAL \Shift|ll2[9]~17_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~3_combout\ : std_logic;
SIGNAL \Shift|ll4[9]~4_combout\ : std_logic;
SIGNAL \Mux54~8_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux54~6_combout\ : std_logic;
SIGNAL \Shift|rl4[25]~43_combout\ : std_logic;
SIGNAL \Shift|rl4[29]~44_combout\ : std_logic;
SIGNAL \Shift|rl4[25]~45_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Y_R[1]~53_combout\ : std_logic;
SIGNAL \Shift|ra3[57]~1_combout\ : std_logic;
SIGNAL \Y_R[1]~52_combout\ : std_logic;
SIGNAL \Y_R[1]~54_combout\ : std_logic;
SIGNAL \Shift|rl4[45]~46_combout\ : std_logic;
SIGNAL \Shift|rl4[41]~47_combout\ : std_logic;
SIGNAL \Y_R[1]~55_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \Mux54~5_combout\ : std_logic;
SIGNAL \Mux54~7_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~18_combout\ : std_logic;
SIGNAL \Shift|ll2[10]~19_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~5_combout\ : std_logic;
SIGNAL \Shift|ll4[10]~6_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \Y_R[1]~57_combout\ : std_logic;
SIGNAL \Shift|ra3[58]~2_combout\ : std_logic;
SIGNAL \Y_R[1]~56_combout\ : std_logic;
SIGNAL \Y_R[1]~58_combout\ : std_logic;
SIGNAL \Shift|rl4[46]~51_combout\ : std_logic;
SIGNAL \Shift|rl4[42]~52_combout\ : std_logic;
SIGNAL \Y_R[1]~59_combout\ : std_logic;
SIGNAL \Shift|rl4[30]~49_combout\ : std_logic;
SIGNAL \Shift|rl4[26]~48_combout\ : std_logic;
SIGNAL \Shift|rl4[26]~50_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux53~5_combout\ : std_logic;
SIGNAL \Logic|xor_result[11]~3_combout\ : std_logic;
SIGNAL \Shift|rl4[31]~54_combout\ : std_logic;
SIGNAL \Shift|rl4[27]~53_combout\ : std_logic;
SIGNAL \Shift|rl4[27]~55_combout\ : std_logic;
SIGNAL \Mux52~1_combout\ : std_logic;
SIGNAL \Y_R[1]~60_combout\ : std_logic;
SIGNAL \Y_R[1]~61_combout\ : std_logic;
SIGNAL \Shift|rl4[47]~56_combout\ : std_logic;
SIGNAL \Shift|rl4[43]~57_combout\ : std_logic;
SIGNAL \Y_R[1]~62_combout\ : std_logic;
SIGNAL \Mux52~2_combout\ : std_logic;
SIGNAL \Mux52~3_combout\ : std_logic;
SIGNAL \Mux52~4_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~20_combout\ : std_logic;
SIGNAL \Shift|ll2[11]~21_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[11]~8_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux52~5_combout\ : std_logic;
SIGNAL \Mux52~6_combout\ : std_logic;
SIGNAL \Mux52~7_combout\ : std_logic;
SIGNAL \Mux48~0_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~22_combout\ : std_logic;
SIGNAL \Shift|ll2[12]~23_combout\ : std_logic;
SIGNAL \Shift|ll4[12]~9_combout\ : std_logic;
SIGNAL \Shift|ll5[12]~10_combout\ : std_logic;
SIGNAL \Mux48~1_combout\ : std_logic;
SIGNAL \Shift|rl4[28]~58_combout\ : std_logic;
SIGNAL \Shift|rl4[44]~59_combout\ : std_logic;
SIGNAL \Shift|rl4[44]~60_combout\ : std_logic;
SIGNAL \Y_R[1]~63_combout\ : std_logic;
SIGNAL \Y_R[1]~64_combout\ : std_logic;
SIGNAL \Mux51~0_combout\ : std_logic;
SIGNAL \Mux51~1_combout\ : std_logic;
SIGNAL \Mux51~5_combout\ : std_logic;
SIGNAL \Mux51~6_combout\ : std_logic;
SIGNAL \Mux51~2_combout\ : std_logic;
SIGNAL \Mux51~3_combout\ : std_logic;
SIGNAL \Mux51~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~24_combout\ : std_logic;
SIGNAL \Shift|ll2[13]~25_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~10_combout\ : std_logic;
SIGNAL \Shift|ll5[13]~11_combout\ : std_logic;
SIGNAL \Shift|rl4[29]~61_combout\ : std_logic;
SIGNAL \Mux50~0_combout\ : std_logic;
SIGNAL \Shift|rl4[45]~62_combout\ : std_logic;
SIGNAL \Shift|rl4[45]~63_combout\ : std_logic;
SIGNAL \Y_R[1]~65_combout\ : std_logic;
SIGNAL \Y_R[1]~66_combout\ : std_logic;
SIGNAL \Y_R[1]~67_combout\ : std_logic;
SIGNAL \Mux50~1_combout\ : std_logic;
SIGNAL \Mux50~5_combout\ : std_logic;
SIGNAL \Mux50~6_combout\ : std_logic;
SIGNAL \Mux50~2_combout\ : std_logic;
SIGNAL \Mux50~3_combout\ : std_logic;
SIGNAL \Mux50~4_combout\ : std_logic;
SIGNAL \Shift|rl4[30]~64_combout\ : std_logic;
SIGNAL \Shift|ra4[62]~1_combout\ : std_logic;
SIGNAL \Y_R[1]~68_combout\ : std_logic;
SIGNAL \Shift|rl4[46]~65_combout\ : std_logic;
SIGNAL \Shift|rl4[46]~66_combout\ : std_logic;
SIGNAL \Y_R[1]~69_combout\ : std_logic;
SIGNAL \Mux49~0_combout\ : std_logic;
SIGNAL \Mux49~1_combout\ : std_logic;
SIGNAL \Mux49~5_combout\ : std_logic;
SIGNAL \Mux49~6_combout\ : std_logic;
SIGNAL \Mux49~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ll3[6]~3_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~26_combout\ : std_logic;
SIGNAL \Shift|ll2[14]~27_combout\ : std_logic;
SIGNAL \Shift|ll4[14]~11_combout\ : std_logic;
SIGNAL \Shift|ll5[14]~12_combout\ : std_logic;
SIGNAL \Mux49~3_combout\ : std_logic;
SIGNAL \Mux49~4_combout\ : std_logic;
SIGNAL \Shift|ll3[7]~4_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~28_combout\ : std_logic;
SIGNAL \Shift|ll2[15]~29_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~12_combout\ : std_logic;
SIGNAL \Shift|ll5[15]~13_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|rl4[47]~68_combout\ : std_logic;
SIGNAL \Shift|rl4[47]~69_combout\ : std_logic;
SIGNAL \Y_R[1]~70_combout\ : std_logic;
SIGNAL \Y_R[1]~71_combout\ : std_logic;
SIGNAL \Shift|rl4[31]~67_combout\ : std_logic;
SIGNAL \Mux48~2_combout\ : std_logic;
SIGNAL \Mux48~3_combout\ : std_logic;
SIGNAL \Mux48~4_combout\ : std_logic;
SIGNAL \Mux48~5_combout\ : std_logic;
SIGNAL \Mux48~6_combout\ : std_logic;
SIGNAL \Mux48~7_combout\ : std_logic;
SIGNAL \Mux48~8_combout\ : std_logic;
SIGNAL \Mux47~4_combout\ : std_logic;
SIGNAL \Mux47~5_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~30_combout\ : std_logic;
SIGNAL \Shift|ll2[16]~31_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~14_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~13_combout\ : std_logic;
SIGNAL \Shift|ll4[16]~15_combout\ : std_logic;
SIGNAL \Shift|ll5[16]~14_combout\ : std_logic;
SIGNAL \Y_R[1]~80_combout\ : std_logic;
SIGNAL \Mux47~0_combout\ : std_logic;
SIGNAL \Mux47~1_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[1]~18_combout\ : std_logic;
SIGNAL \Mux47~2_combout\ : std_logic;
SIGNAL \Mux47~3_combout\ : std_logic;
SIGNAL \Y_R[1]~72_combout\ : std_logic;
SIGNAL \Y_R[1]~73_combout\ : std_logic;
SIGNAL \Shift|ll4[17]~16_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~32_combout\ : std_logic;
SIGNAL \Shift|ll2[17]~33_combout\ : std_logic;
SIGNAL \Shift|ll4[17]~17_combout\ : std_logic;
SIGNAL \Shift|ll4[17]~18_combout\ : std_logic;
SIGNAL \Shift|ll5[17]~15_combout\ : std_logic;
SIGNAL \Mux46~0_combout\ : std_logic;
SIGNAL \Mux46~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux46~2_combout\ : std_logic;
SIGNAL \Mux46~4_combout\ : std_logic;
SIGNAL \Mux46~5_combout\ : std_logic;
SIGNAL \Mux46~3_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Mux45~5_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~34_combout\ : std_logic;
SIGNAL \Shift|ll2[18]~35_combout\ : std_logic;
SIGNAL \Shift|ll4[18]~20_combout\ : std_logic;
SIGNAL \Shift|ll4[18]~19_combout\ : std_logic;
SIGNAL \Shift|ll4[18]~21_combout\ : std_logic;
SIGNAL \Shift|ll5[18]~16_combout\ : std_logic;
SIGNAL \Y_R[1]~74_combout\ : std_logic;
SIGNAL \Y_R[1]~75_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux44~4_combout\ : std_logic;
SIGNAL \Mux44~5_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~36_combout\ : std_logic;
SIGNAL \Shift|ll2[19]~37_combout\ : std_logic;
SIGNAL \Shift|ll4[19]~23_combout\ : std_logic;
SIGNAL \Shift|ll4[19]~22_combout\ : std_logic;
SIGNAL \Shift|ll4[19]~24_combout\ : std_logic;
SIGNAL \Shift|ll5[19]~17_combout\ : std_logic;
SIGNAL \Y_R[1]~76_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Mux44~1_combout\ : std_logic;
SIGNAL \Add|S[19]~17_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|S[19]~16_combout\ : std_logic;
SIGNAL \Add|S[19]~18_combout\ : std_logic;
SIGNAL \Mux44~2_combout\ : std_logic;
SIGNAL \Mux44~3_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~38_combout\ : std_logic;
SIGNAL \Shift|ll2[20]~39_combout\ : std_logic;
SIGNAL \Shift|ll4[20]~25_combout\ : std_logic;
SIGNAL \Shift|ll4[20]~26_combout\ : std_logic;
SIGNAL \Shift|ll5[20]~18_combout\ : std_logic;
SIGNAL \Y_R[1]~77_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Mux43~2_combout\ : std_logic;
SIGNAL \Mux43~4_combout\ : std_logic;
SIGNAL \Mux43~5_combout\ : std_logic;
SIGNAL \Mux43~3_combout\ : std_logic;
SIGNAL \Y_R[1]~81_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~40_combout\ : std_logic;
SIGNAL \Shift|ll2[21]~41_combout\ : std_logic;
SIGNAL \Shift|ll4[21]~27_combout\ : std_logic;
SIGNAL \Shift|ll4[21]~28_combout\ : std_logic;
SIGNAL \Shift|ll5[21]~19_combout\ : std_logic;
SIGNAL \Mux42~0_combout\ : std_logic;
SIGNAL \Mux42~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux42~2_combout\ : std_logic;
SIGNAL \Mux42~4_combout\ : std_logic;
SIGNAL \Mux42~5_combout\ : std_logic;
SIGNAL \Mux42~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Y_R[1]~82_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~42_combout\ : std_logic;
SIGNAL \Shift|ll2[22]~43_combout\ : std_logic;
SIGNAL \Shift|ll4[22]~29_combout\ : std_logic;
SIGNAL \Shift|ll4[22]~30_combout\ : std_logic;
SIGNAL \Shift|ll5[22]~20_combout\ : std_logic;
SIGNAL \Mux41~0_combout\ : std_logic;
SIGNAL \Mux41~1_combout\ : std_logic;
SIGNAL \Mux41~2_combout\ : std_logic;
SIGNAL \Mux41~4_combout\ : std_logic;
SIGNAL \Mux41~5_combout\ : std_logic;
SIGNAL \Mux41~3_combout\ : std_logic;
SIGNAL \Mux40~4_combout\ : std_logic;
SIGNAL \Mux40~5_combout\ : std_logic;
SIGNAL \Y_R[1]~83_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~44_combout\ : std_logic;
SIGNAL \Shift|ll2[23]~45_combout\ : std_logic;
SIGNAL \Shift|ll4[23]~31_combout\ : std_logic;
SIGNAL \Shift|ll4[23]~32_combout\ : std_logic;
SIGNAL \Shift|ll5[23]~21_combout\ : std_logic;
SIGNAL \Mux40~0_combout\ : std_logic;
SIGNAL \Mux40~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|S[23]~19_combout\ : std_logic;
SIGNAL \Add|S[23]~20_combout\ : std_logic;
SIGNAL \Add|S[23]~21_combout\ : std_logic;
SIGNAL \Mux40~2_combout\ : std_logic;
SIGNAL \Mux40~3_combout\ : std_logic;
SIGNAL \Mux39~4_combout\ : std_logic;
SIGNAL \Mux39~5_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~46_combout\ : std_logic;
SIGNAL \Shift|ll2[24]~47_combout\ : std_logic;
SIGNAL \Shift|ll4[24]~33_combout\ : std_logic;
SIGNAL \Shift|ll4[24]~34_combout\ : std_logic;
SIGNAL \Shift|ll5[24]~22_combout\ : std_logic;
SIGNAL \Y_R[1]~78_combout\ : std_logic;
SIGNAL \Mux39~0_combout\ : std_logic;
SIGNAL \Mux39~1_combout\ : std_logic;
SIGNAL \Mux39~2_combout\ : std_logic;
SIGNAL \Mux39~3_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~48_combout\ : std_logic;
SIGNAL \Shift|ll2[25]~49_combout\ : std_logic;
SIGNAL \Shift|ll4[25]~35_combout\ : std_logic;
SIGNAL \Shift|ll4[25]~36_combout\ : std_logic;
SIGNAL \Shift|ll5[25]~23_combout\ : std_logic;
SIGNAL \Y_R[1]~84_combout\ : std_logic;
SIGNAL \Mux38~0_combout\ : std_logic;
SIGNAL \Mux38~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux38~2_combout\ : std_logic;
SIGNAL \Mux38~4_combout\ : std_logic;
SIGNAL \Mux38~5_combout\ : std_logic;
SIGNAL \Mux38~3_combout\ : std_logic;
SIGNAL \Mux37~4_combout\ : std_logic;
SIGNAL \Mux37~5_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~50_combout\ : std_logic;
SIGNAL \Shift|ll2[26]~51_combout\ : std_logic;
SIGNAL \Shift|ll4[26]~37_combout\ : std_logic;
SIGNAL \Shift|ll4[26]~38_combout\ : std_logic;
SIGNAL \Shift|ll5[26]~24_combout\ : std_logic;
SIGNAL \Y_R[1]~85_combout\ : std_logic;
SIGNAL \Mux37~0_combout\ : std_logic;
SIGNAL \Mux37~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux37~2_combout\ : std_logic;
SIGNAL \Mux37~3_combout\ : std_logic;
SIGNAL \Mux36~4_combout\ : std_logic;
SIGNAL \Mux36~5_combout\ : std_logic;
SIGNAL \Add|S[27]~23_combout\ : std_logic;
SIGNAL \Add|S[27]~22_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|S[27]~24_combout\ : std_logic;
SIGNAL \Shift|ll2[28]~52_combout\ : std_logic;
SIGNAL \Shift|ll2[27]~53_combout\ : std_logic;
SIGNAL \Shift|ll4[27]~39_combout\ : std_logic;
SIGNAL \Shift|ll4[27]~40_combout\ : std_logic;
SIGNAL \Shift|ll5[27]~25_combout\ : std_logic;
SIGNAL \Y_R[1]~86_combout\ : std_logic;
SIGNAL \Mux36~0_combout\ : std_logic;
SIGNAL \Mux36~1_combout\ : std_logic;
SIGNAL \Mux36~2_combout\ : std_logic;
SIGNAL \Mux36~3_combout\ : std_logic;
SIGNAL \Mux35~4_combout\ : std_logic;
SIGNAL \Mux35~5_combout\ : std_logic;
SIGNAL \Y_R[1]~79_combout\ : std_logic;
SIGNAL \Shift|ll4[12]~43_combout\ : std_logic;
SIGNAL \Shift|ll2[29]~54_combout\ : std_logic;
SIGNAL \Shift|ll2[28]~55_combout\ : std_logic;
SIGNAL \Shift|ll4[28]~41_combout\ : std_logic;
SIGNAL \Shift|ll4[28]~42_combout\ : std_logic;
SIGNAL \Shift|ll5[28]~26_combout\ : std_logic;
SIGNAL \Mux35~0_combout\ : std_logic;
SIGNAL \Mux35~1_combout\ : std_logic;
SIGNAL \Mux35~2_combout\ : std_logic;
SIGNAL \Mux35~3_combout\ : std_logic;
SIGNAL \Mux34~4_combout\ : std_logic;
SIGNAL \Mux34~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[30]~56_combout\ : std_logic;
SIGNAL \Shift|ll2[29]~57_combout\ : std_logic;
SIGNAL \Shift|ll4[29]~45_combout\ : std_logic;
SIGNAL \Shift|ll4[29]~46_combout\ : std_logic;
SIGNAL \Shift|ll4[13]~44_combout\ : std_logic;
SIGNAL \Shift|ll5[29]~27_combout\ : std_logic;
SIGNAL \Y_R[1]~87_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Mux34~1_combout\ : std_logic;
SIGNAL \Mux34~2_combout\ : std_logic;
SIGNAL \Mux34~3_combout\ : std_logic;
SIGNAL \Mux33~4_combout\ : std_logic;
SIGNAL \Mux33~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[31]~58_combout\ : std_logic;
SIGNAL \Shift|ll2[30]~59_combout\ : std_logic;
SIGNAL \Shift|ll4[30]~47_combout\ : std_logic;
SIGNAL \Shift|ll4[30]~48_combout\ : std_logic;
SIGNAL \Shift|ll5[30]~28_combout\ : std_logic;
SIGNAL \Shift|ll5[30]~29_combout\ : std_logic;
SIGNAL \Y_R[1]~88_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux33~2_combout\ : std_logic;
SIGNAL \Mux33~3_combout\ : std_logic;
SIGNAL \Shift|ll2[32]~60_combout\ : std_logic;
SIGNAL \Shift|ll2[31]~61_combout\ : std_logic;
SIGNAL \Shift|ll4[31]~50_combout\ : std_logic;
SIGNAL \Shift|ll4[31]~51_combout\ : std_logic;
SIGNAL \Shift|ll4[15]~49_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~23_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~24_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~20_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~19_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~21_combout\ : std_logic;
SIGNAL \Logic|xor_result[31]~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~22_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~25_combout\ : std_logic;
SIGNAL \Logic|Mux32~0_combout\ : std_logic;
SIGNAL \Logic|Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \ExtWord~input_o\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Shift|ll2[33]~62_combout\ : std_logic;
SIGNAL \Shift|ll2[32]~63_combout\ : std_logic;
SIGNAL \Shift|ll4[32]~52_combout\ : std_logic;
SIGNAL \Shift|ll4[32]~53_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Shift|ll5[0]~30_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Shift|ll5[1]~31_combout\ : std_logic;
SIGNAL \Shift|ll2[34]~64_combout\ : std_logic;
SIGNAL \Shift|ll2[33]~65_combout\ : std_logic;
SIGNAL \Shift|ll4[33]~54_combout\ : std_logic;
SIGNAL \Shift|ll4[33]~55_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Shift|ll2[35]~66_combout\ : std_logic;
SIGNAL \Shift|ll2[34]~67_combout\ : std_logic;
SIGNAL \Shift|ll4[34]~56_combout\ : std_logic;
SIGNAL \Shift|ll4[34]~57_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[36]~68_combout\ : std_logic;
SIGNAL \Shift|ll2[35]~69_combout\ : std_logic;
SIGNAL \Shift|ll4[35]~58_combout\ : std_logic;
SIGNAL \Shift|ll4[35]~59_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Shift|ll2[37]~70_combout\ : std_logic;
SIGNAL \Shift|ll2[36]~71_combout\ : std_logic;
SIGNAL \Shift|ll4[36]~60_combout\ : std_logic;
SIGNAL \Shift|ll4[36]~61_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Shift|ll2[38]~72_combout\ : std_logic;
SIGNAL \Shift|ll2[37]~73_combout\ : std_logic;
SIGNAL \Shift|ll4[37]~62_combout\ : std_logic;
SIGNAL \Shift|ll4[37]~63_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Shift|ll2[39]~74_combout\ : std_logic;
SIGNAL \Shift|ll2[38]~75_combout\ : std_logic;
SIGNAL \Shift|ll4[38]~64_combout\ : std_logic;
SIGNAL \Shift|ll4[38]~65_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[40]~76_combout\ : std_logic;
SIGNAL \Shift|ll2[39]~77_combout\ : std_logic;
SIGNAL \Shift|ll4[39]~66_combout\ : std_logic;
SIGNAL \Shift|ll4[39]~67_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux23~5_combout\ : std_logic;
SIGNAL \Mux23~6_combout\ : std_logic;
SIGNAL \Shift|ll2[41]~78_combout\ : std_logic;
SIGNAL \Shift|ll2[40]~79_combout\ : std_logic;
SIGNAL \Shift|ll3[40]~5_combout\ : std_logic;
SIGNAL \Shift|ll4[40]~68_combout\ : std_logic;
SIGNAL \Shift|ll4[40]~69_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[10]~47_combout\ : std_logic;
SIGNAL \Shift|ll5[8]~32_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[42]~80_combout\ : std_logic;
SIGNAL \Shift|ll2[41]~81_combout\ : std_logic;
SIGNAL \Shift|ll3[41]~6_combout\ : std_logic;
SIGNAL \Shift|ll4[41]~70_combout\ : std_logic;
SIGNAL \Shift|ll4[41]~71_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~6_combout\ : std_logic;
SIGNAL \Mux22~7_combout\ : std_logic;
SIGNAL \Mux22~5_combout\ : std_logic;
SIGNAL \Mux21~5_combout\ : std_logic;
SIGNAL \Mux21~6_combout\ : std_logic;
SIGNAL \Shift|ll4[42]~72_combout\ : std_logic;
SIGNAL \Shift|ll2[43]~82_combout\ : std_logic;
SIGNAL \Shift|ll2[42]~83_combout\ : std_logic;
SIGNAL \Shift|ll3[42]~7_combout\ : std_logic;
SIGNAL \Shift|ll4[42]~73_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ll5[10]~33_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Shift|ll2[44]~84_combout\ : std_logic;
SIGNAL \Shift|ll2[43]~85_combout\ : std_logic;
SIGNAL \Shift|ll3[43]~8_combout\ : std_logic;
SIGNAL \Shift|ll4[43]~74_combout\ : std_logic;
SIGNAL \Shift|ll4[43]~75_combout\ : std_logic;
SIGNAL \Shift|ll5[11]~34_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~6_combout\ : std_logic;
SIGNAL \Shift|ll2[45]~86_combout\ : std_logic;
SIGNAL \Shift|ll2[44]~87_combout\ : std_logic;
SIGNAL \Shift|ll3[44]~9_combout\ : std_logic;
SIGNAL \Shift|ll4[44]~76_combout\ : std_logic;
SIGNAL \Shift|ll4[44]~77_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Shift|ll2[46]~88_combout\ : std_logic;
SIGNAL \Shift|ll2[45]~89_combout\ : std_logic;
SIGNAL \Shift|ll3[45]~10_combout\ : std_logic;
SIGNAL \Shift|ll4[45]~78_combout\ : std_logic;
SIGNAL \Shift|ll4[45]~79_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Add|block_carry_in[11]~48_combout\ : std_logic;
SIGNAL \Add|S[45]~25_combout\ : std_logic;
SIGNAL \Add|S[45]~26_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll4[46]~80_combout\ : std_logic;
SIGNAL \Shift|ll2[47]~90_combout\ : std_logic;
SIGNAL \Shift|ll2[46]~91_combout\ : std_logic;
SIGNAL \Shift|ll3[46]~11_combout\ : std_logic;
SIGNAL \Shift|ll4[46]~81_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Shift|ll4[47]~82_combout\ : std_logic;
SIGNAL \Shift|ll2[48]~92_combout\ : std_logic;
SIGNAL \Shift|ll2[47]~93_combout\ : std_logic;
SIGNAL \Shift|ll3[47]~12_combout\ : std_logic;
SIGNAL \Shift|ll4[47]~83_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Shift|ll2[49]~94_combout\ : std_logic;
SIGNAL \Shift|ll2[48]~95_combout\ : std_logic;
SIGNAL \Shift|ll3[48]~13_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux14~8_combout\ : std_logic;
SIGNAL \Mux14~9_combout\ : std_logic;
SIGNAL \Shift|ll2[50]~96_combout\ : std_logic;
SIGNAL \Shift|ll2[49]~97_combout\ : std_logic;
SIGNAL \Shift|ll3[49]~14_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|C[1]~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux13~8_combout\ : std_logic;
SIGNAL \Mux13~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[51]~98_combout\ : std_logic;
SIGNAL \Shift|ll2[50]~99_combout\ : std_logic;
SIGNAL \Shift|ll3[50]~15_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|C[3]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|C[3]~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Shift|ll2[52]~100_combout\ : std_logic;
SIGNAL \Shift|ll2[51]~101_combout\ : std_logic;
SIGNAL \Shift|ll3[51]~16_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~8_combout\ : std_logic;
SIGNAL \Mux12~9_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Mux11~8_combout\ : std_logic;
SIGNAL \Mux11~9_combout\ : std_logic;
SIGNAL \Shift|ll2[53]~102_combout\ : std_logic;
SIGNAL \Shift|ll2[52]~103_combout\ : std_logic;
SIGNAL \Shift|ll3[52]~17_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux10~8_combout\ : std_logic;
SIGNAL \Mux10~9_combout\ : std_logic;
SIGNAL \Shift|ll2[54]~104_combout\ : std_logic;
SIGNAL \Shift|ll2[53]~105_combout\ : std_logic;
SIGNAL \Shift|ll3[53]~18_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|C[1]~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux9~8_combout\ : std_logic;
SIGNAL \Mux9~9_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ : std_logic;
SIGNAL \Shift|ll2[55]~106_combout\ : std_logic;
SIGNAL \Shift|ll2[54]~107_combout\ : std_logic;
SIGNAL \Shift|ll3[54]~19_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Shift|ll2[56]~108_combout\ : std_logic;
SIGNAL \Shift|ll2[55]~109_combout\ : std_logic;
SIGNAL \Shift|ll3[55]~20_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|C[3]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|C[3]~6_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Mux7~12_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Shift|ll2[57]~110_combout\ : std_logic;
SIGNAL \Shift|ll2[56]~111_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Shift|ll2[57]~112_combout\ : std_logic;
SIGNAL \Shift|ll2[57]~113_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\ : std_logic;
SIGNAL \Shift|ll1[58]~1_combout\ : std_logic;
SIGNAL \Shift|ll2[58]~114_combout\ : std_logic;
SIGNAL \Shift|ll2[58]~115_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Add|S[59]~27_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ : std_logic;
SIGNAL \Add|S[59]~28_combout\ : std_logic;
SIGNAL \Add|S[59]~29_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Shift|ll1[59]~2_combout\ : std_logic;
SIGNAL \Shift|ll2[59]~116_combout\ : std_logic;
SIGNAL \Shift|ll2[59]~117_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Shift|ll1[60]~3_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C[1]~1_combout\ : std_logic;
SIGNAL \Shift|ll1[61]~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Logic|Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Y_LorS[62]~1_combout\ : std_logic;
SIGNAL \Y_LorS[62]~2_combout\ : std_logic;
SIGNAL \Y_LorS[62]~0_combout\ : std_logic;
SIGNAL \Y_LorS[62]~3_combout\ : std_logic;
SIGNAL \Y_LorS[62]~4_combout\ : std_logic;
SIGNAL \Y_LorS[62]~5_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~3_combout\ : std_logic;
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~1_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~2_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~3_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~4_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~5_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~6_combout\ : std_logic;
SIGNAL \Shift|Y_LL[63]~7_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~26_combout\ : std_logic;
SIGNAL \Y_ShiftOrArith[31]~27_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Logic|Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add|G\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Logic|xor_result\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|GEN_BLOCKS:15:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|P\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|GEN_BLOCKS:4:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|S\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|GEN_BLOCKS:5:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|GEN_BLOCKS:6:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|GEN_BLOCKS:7:LACG_INST|C\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \Add|S_internal\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Add|ALT_INV_Cout~1_combout\ : std_logic;
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
\Add|ALT_INV_Cout~1_combout\ <= NOT \Add|Cout~1_combout\;
\ALT_INV_AltB~0_combout\ <= NOT \AltB~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y73_N9
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

-- Location: IOOBUF_X23_Y73_N16
\Y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux62~2_combout\,
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux61~7_combout\,
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
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

-- Location: IOOBUF_X96_Y73_N23
\Y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux59~6_combout\,
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\Y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux58~10_combout\,
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\Y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux57~6_combout\,
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\Y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux56~6_combout\,
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\Y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux55~5_combout\,
	devoe => ww_devoe,
	o => \Y[8]~output_o\);

-- Location: IOOBUF_X100_Y73_N23
\Y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux54~7_combout\,
	devoe => ww_devoe,
	o => \Y[9]~output_o\);

-- Location: IOOBUF_X111_Y73_N2
\Y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux53~5_combout\,
	devoe => ww_devoe,
	o => \Y[10]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\Y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux52~7_combout\,
	devoe => ww_devoe,
	o => \Y[11]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X16_Y73_N16
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

-- Location: IOOBUF_X115_Y51_N9
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

-- Location: IOOBUF_X67_Y0_N2
\Y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux48~8_combout\,
	devoe => ww_devoe,
	o => \Y[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\Y[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux47~3_combout\,
	devoe => ww_devoe,
	o => \Y[16]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\Y[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux46~3_combout\,
	devoe => ww_devoe,
	o => \Y[17]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Y[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux45~3_combout\,
	devoe => ww_devoe,
	o => \Y[18]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Y[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux44~3_combout\,
	devoe => ww_devoe,
	o => \Y[19]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\Y[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux43~3_combout\,
	devoe => ww_devoe,
	o => \Y[20]~output_o\);

-- Location: IOOBUF_X89_Y73_N23
\Y[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux42~3_combout\,
	devoe => ww_devoe,
	o => \Y[21]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\Y[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux41~3_combout\,
	devoe => ww_devoe,
	o => \Y[22]~output_o\);

-- Location: IOOBUF_X115_Y62_N16
\Y[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux40~3_combout\,
	devoe => ww_devoe,
	o => \Y[23]~output_o\);

-- Location: IOOBUF_X115_Y57_N23
\Y[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux39~3_combout\,
	devoe => ww_devoe,
	o => \Y[24]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\Y[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux38~3_combout\,
	devoe => ww_devoe,
	o => \Y[25]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\Y[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux37~3_combout\,
	devoe => ww_devoe,
	o => \Y[26]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\Y[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux36~3_combout\,
	devoe => ww_devoe,
	o => \Y[27]~output_o\);

-- Location: IOOBUF_X115_Y49_N2
\Y[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux35~3_combout\,
	devoe => ww_devoe,
	o => \Y[28]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\Y[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux34~3_combout\,
	devoe => ww_devoe,
	o => \Y[29]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\Y[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux33~3_combout\,
	devoe => ww_devoe,
	o => \Y[30]~output_o\);

-- Location: IOOBUF_X13_Y73_N2
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

-- Location: IOOBUF_X38_Y73_N2
\Y[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~4_combout\,
	devoe => ww_devoe,
	o => \Y[32]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\Y[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	devoe => ww_devoe,
	o => \Y[33]~output_o\);

-- Location: IOOBUF_X0_Y53_N9
\Y[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \Y[34]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\Y[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~4_combout\,
	devoe => ww_devoe,
	o => \Y[35]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\Y[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \Y[36]~output_o\);

-- Location: IOOBUF_X18_Y73_N16
\Y[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \Y[37]~output_o\);

-- Location: IOOBUF_X7_Y73_N16
\Y[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \Y[38]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\Y[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \Y[39]~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\Y[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~4_combout\,
	devoe => ww_devoe,
	o => \Y[40]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X72_Y73_N23
\Y[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \Y[42]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\Y[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \Y[43]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Y[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \Y[44]~output_o\);

-- Location: IOOBUF_X0_Y53_N2
\Y[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \Y[45]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\Y[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~7_combout\,
	devoe => ww_devoe,
	o => \Y[46]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\Y[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \Y[47]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Y[48]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~7_combout\,
	devoe => ww_devoe,
	o => \Y[48]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
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

-- Location: IOOBUF_X56_Y0_N23
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

-- Location: IOOBUF_X56_Y0_N2
\Y[51]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~6_combout\,
	devoe => ww_devoe,
	o => \Y[51]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X16_Y73_N9
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

-- Location: IOOBUF_X5_Y73_N2
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

-- Location: IOOBUF_X13_Y73_N9
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

-- Location: IOOBUF_X23_Y73_N23
\Y[56]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~10_combout\,
	devoe => ww_devoe,
	o => \Y[56]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X29_Y73_N9
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

-- Location: IOOBUF_X94_Y73_N9
\Y[59]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~8_combout\,
	devoe => ww_devoe,
	o => \Y[59]~output_o\);

-- Location: IOOBUF_X85_Y73_N9
\Y[60]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~6_combout\,
	devoe => ww_devoe,
	o => \Y[60]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Y[61]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~6_combout\,
	devoe => ww_devoe,
	o => \Y[61]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\Y[62]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~6_combout\,
	devoe => ww_devoe,
	o => \Y[62]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\Y[63]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \Y[63]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X52_Y73_N9
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

-- Location: IOOBUF_X31_Y73_N9
\AltBu~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add|ALT_INV_Cout~1_combout\,
	devoe => ww_devoe,
	o => \AltBu~output_o\);

-- Location: IOIBUF_X52_Y73_N22
\FuncClass[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(0),
	o => \FuncClass[0]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\A[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(45),
	o => \A[45]~input_o\);

-- Location: IOIBUF_X115_Y52_N8
\A[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(47),
	o => \A[47]~input_o\);

-- Location: IOIBUF_X115_Y55_N22
\B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X63_Y54_N20
\Shift|rl2[45]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[45]~33_combout\ = (\B[1]~input_o\ & ((\A[47]~input_o\))) # (!\B[1]~input_o\ & (\A[45]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[45]~33_combout\);

-- Location: IOIBUF_X74_Y73_N15
\B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X115_Y47_N15
\A[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(46),
	o => \A[46]~input_o\);

-- Location: IOIBUF_X115_Y52_N1
\A[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(44),
	o => \A[44]~input_o\);

-- Location: LCCOMB_X65_Y48_N0
\Shift|rl2[44]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[44]~34_combout\ = (\B[1]~input_o\ & (\A[46]~input_o\)) # (!\B[1]~input_o\ & ((\A[44]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[46]~input_o\,
	datac => \A[44]~input_o\,
	combout => \Shift|rl2[44]~34_combout\);

-- Location: LCCOMB_X65_Y48_N26
\Shift|rl2[44]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[44]~35_combout\ = (\B[0]~input_o\ & (\Shift|rl2[45]~33_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[44]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[45]~33_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[44]~34_combout\,
	combout => \Shift|rl2[44]~35_combout\);

-- Location: IOIBUF_X56_Y73_N22
\B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X115_Y45_N15
\A[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(36),
	o => \A[36]~input_o\);

-- Location: IOIBUF_X115_Y47_N22
\A[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(38),
	o => \A[38]~input_o\);

-- Location: LCCOMB_X69_Y47_N26
\Shift|rl2[36]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[36]~37_combout\ = (\B[1]~input_o\ & ((\A[38]~input_o\))) # (!\B[1]~input_o\ & (\A[36]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[38]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[36]~37_combout\);

-- Location: IOIBUF_X115_Y42_N15
\A[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(39),
	o => \A[39]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\A[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(37),
	o => \A[37]~input_o\);

-- Location: LCCOMB_X69_Y47_N16
\Shift|rl2[37]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[37]~36_combout\ = (\B[1]~input_o\ & (\A[39]~input_o\)) # (!\B[1]~input_o\ & ((\A[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \A[37]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[37]~36_combout\);

-- Location: LCCOMB_X69_Y47_N28
\Shift|rl2[36]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[36]~38_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[37]~36_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[36]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[36]~37_combout\,
	datad => \Shift|rl2[37]~36_combout\,
	combout => \Shift|rl2[36]~38_combout\);

-- Location: LCCOMB_X61_Y51_N26
\Shift|rl4[36]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[36]~4_combout\ = (\B[3]~input_o\ & (\Shift|rl2[44]~35_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[36]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[44]~35_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[36]~38_combout\,
	combout => \Shift|rl4[36]~4_combout\);

-- Location: IOIBUF_X81_Y73_N15
\B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X85_Y73_N15
\A[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(40),
	o => \A[40]~input_o\);

-- Location: IOIBUF_X74_Y0_N8
\A[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(42),
	o => \A[42]~input_o\);

-- Location: LCCOMB_X66_Y49_N10
\Shift|rl2[40]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[40]~40_combout\ = (\B[1]~input_o\ & ((\A[42]~input_o\))) # (!\B[1]~input_o\ & (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Shift|rl2[40]~40_combout\);

-- Location: IOIBUF_X100_Y73_N15
\A[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(43),
	o => \A[43]~input_o\);

-- Location: IOIBUF_X115_Y44_N1
\A[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(41),
	o => \A[41]~input_o\);

-- Location: LCCOMB_X66_Y49_N24
\Shift|rl2[41]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[41]~39_combout\ = (\B[1]~input_o\ & (\A[43]~input_o\)) # (!\B[1]~input_o\ & ((\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	combout => \Shift|rl2[41]~39_combout\);

-- Location: LCCOMB_X66_Y49_N20
\Shift|rl2[40]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[40]~41_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[41]~39_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[40]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[40]~40_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[41]~39_combout\,
	combout => \Shift|rl2[40]~41_combout\);

-- Location: IOIBUF_X38_Y73_N8
\A[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(32),
	o => \A[32]~input_o\);

-- Location: IOIBUF_X0_Y45_N22
\A[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(34),
	o => \A[34]~input_o\);

-- Location: LCCOMB_X65_Y47_N2
\Shift|rl2[32]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[32]~43_combout\ = (\B[1]~input_o\ & ((\A[34]~input_o\))) # (!\B[1]~input_o\ & (\A[32]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[32]~43_combout\);

-- Location: IOIBUF_X0_Y46_N15
\A[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(35),
	o => \A[35]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\A[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(33),
	o => \A[33]~input_o\);

-- Location: LCCOMB_X65_Y47_N0
\Shift|rl2[33]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[33]~42_combout\ = (\B[1]~input_o\ & (\A[35]~input_o\)) # (!\B[1]~input_o\ & ((\A[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|rl2[33]~42_combout\);

-- Location: LCCOMB_X65_Y47_N28
\Shift|rl2[32]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[32]~44_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[33]~42_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[32]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[32]~43_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[33]~42_combout\,
	combout => \Shift|rl2[32]~44_combout\);

-- Location: LCCOMB_X66_Y47_N0
\Shift|rl4[32]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[32]~5_combout\ = (\B[3]~input_o\ & (\Shift|rl2[40]~41_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[32]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|rl2[40]~41_combout\,
	datad => \Shift|rl2[32]~44_combout\,
	combout => \Shift|rl4[32]~5_combout\);

-- Location: LCCOMB_X61_Y51_N28
\Shift|rl4[32]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[32]~6_combout\ = (\B[2]~input_o\ & (\Shift|rl4[36]~4_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[32]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[36]~4_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[32]~5_combout\,
	combout => \Shift|rl4[32]~6_combout\);

-- Location: IOIBUF_X58_Y73_N22
\A[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(61),
	o => \A[61]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\A[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(60),
	o => \A[60]~input_o\);

-- Location: LCCOMB_X61_Y54_N8
\Shift|rl2[60]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[60]~28_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[61]~input_o\)) # (!\B[0]~input_o\ & ((\A[60]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \A[60]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[60]~28_combout\);

-- Location: IOIBUF_X52_Y73_N15
\A[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(63),
	o => \A[63]~input_o\);

-- Location: IOIBUF_X58_Y73_N8
\A[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(62),
	o => \A[62]~input_o\);

-- Location: LCCOMB_X63_Y53_N0
\Shift|rl1[62]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[62]~2_combout\ = (\B[0]~input_o\ & (\A[63]~input_o\)) # (!\B[0]~input_o\ & ((\A[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[63]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Shift|rl1[62]~2_combout\);

-- Location: LCCOMB_X63_Y52_N16
\Shift|rl2[60]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[60]~29_combout\ = (\Shift|rl2[60]~28_combout\) # ((\B[1]~input_o\ & \Shift|rl1[62]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \Shift|rl2[60]~28_combout\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Shift|rl2[60]~29_combout\);

-- Location: IOIBUF_X115_Y63_N8
\A[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(56),
	o => \A[56]~input_o\);

-- Location: IOIBUF_X52_Y73_N1
\A[58]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(58),
	o => \A[58]~input_o\);

-- Location: LCCOMB_X61_Y51_N10
\Shift|rl2[56]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[56]~31_combout\ = (\B[1]~input_o\ & ((\A[58]~input_o\))) # (!\B[1]~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Shift|rl2[56]~31_combout\);

-- Location: IOIBUF_X49_Y73_N22
\A[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(57),
	o => \A[57]~input_o\);

-- Location: IOIBUF_X33_Y73_N8
\A[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(59),
	o => \A[59]~input_o\);

-- Location: LCCOMB_X61_Y54_N2
\Shift|rl2[57]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[57]~30_combout\ = (\B[1]~input_o\ & ((\A[59]~input_o\))) # (!\B[1]~input_o\ & (\A[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[57]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Shift|rl2[57]~30_combout\);

-- Location: LCCOMB_X61_Y51_N20
\Shift|rl2[56]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[56]~32_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[57]~30_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[56]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[56]~31_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[57]~30_combout\,
	combout => \Shift|rl2[56]~32_combout\);

-- Location: LCCOMB_X61_Y51_N22
\Shift|rl3[56]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[56]~2_combout\ = (\B[2]~input_o\ & (\Shift|rl2[60]~29_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[56]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[60]~29_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[56]~32_combout\,
	combout => \Shift|rl3[56]~2_combout\);

-- Location: IOIBUF_X65_Y0_N8
\A[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(52),
	o => \A[52]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\A[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(54),
	o => \A[54]~input_o\);

-- Location: LCCOMB_X66_Y51_N10
\Shift|rl2[52]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[52]~23_combout\ = (\B[1]~input_o\ & ((\A[54]~input_o\))) # (!\B[1]~input_o\ & (\A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[52]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shift|rl2[52]~23_combout\);

-- Location: IOIBUF_X60_Y0_N8
\A[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(53),
	o => \A[53]~input_o\);

-- Location: IOIBUF_X115_Y59_N22
\A[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(55),
	o => \A[55]~input_o\);

-- Location: LCCOMB_X66_Y51_N24
\Shift|rl2[53]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[53]~22_combout\ = (\B[1]~input_o\ & ((\A[55]~input_o\))) # (!\B[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|rl2[53]~22_combout\);

-- Location: LCCOMB_X66_Y51_N4
\Shift|rl2[52]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[52]~24_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[53]~22_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[52]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[52]~23_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[53]~22_combout\,
	combout => \Shift|rl2[52]~24_combout\);

-- Location: IOIBUF_X0_Y51_N15
\A[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(48),
	o => \A[48]~input_o\);

-- Location: IOIBUF_X0_Y52_N22
\A[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(50),
	o => \A[50]~input_o\);

-- Location: LCCOMB_X60_Y51_N26
\Shift|rl2[48]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[48]~26_combout\ = (\B[1]~input_o\ & ((\A[50]~input_o\))) # (!\B[1]~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[50]~input_o\,
	combout => \Shift|rl2[48]~26_combout\);

-- Location: IOIBUF_X27_Y73_N22
\A[49]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(49),
	o => \A[49]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\A[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(51),
	o => \A[51]~input_o\);

-- Location: LCCOMB_X60_Y51_N24
\Shift|rl2[49]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[49]~25_combout\ = (\B[1]~input_o\ & ((\A[51]~input_o\))) # (!\B[1]~input_o\ & (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|rl2[49]~25_combout\);

-- Location: LCCOMB_X60_Y51_N12
\Shift|rl2[48]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[48]~27_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[49]~25_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[48]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|rl2[48]~26_combout\,
	datad => \Shift|rl2[49]~25_combout\,
	combout => \Shift|rl2[48]~27_combout\);

-- Location: LCCOMB_X61_Y51_N16
\Shift|rl4[48]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[48]~2_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[52]~24_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[48]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[52]~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[48]~27_combout\,
	combout => \Shift|rl4[48]~2_combout\);

-- Location: LCCOMB_X61_Y51_N8
\Shift|rl4[48]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[48]~3_combout\ = (\Shift|rl4[48]~2_combout\) # ((\Shift|rl3[56]~2_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[56]~2_combout\,
	datab => \Shift|rl4[48]~2_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|rl4[48]~3_combout\);

-- Location: IOIBUF_X81_Y73_N22
\B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LCCOMB_X65_Y50_N2
\Shift|rl5[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl5[32]~0_combout\ = (\B[4]~input_o\ & ((\Shift|rl4[48]~3_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[32]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[32]~6_combout\,
	datac => \Shift|rl4[48]~3_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|rl5[32]~0_combout\);

-- Location: IOIBUF_X49_Y73_N15
\ShiftFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(1),
	o => \ShiftFN[1]~input_o\);

-- Location: IOIBUF_X56_Y73_N1
\B[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: IOIBUF_X115_Y41_N1
\A[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(20),
	o => \A[20]~input_o\);

-- Location: IOIBUF_X115_Y62_N8
\A[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(22),
	o => \A[22]~input_o\);

-- Location: LCCOMB_X72_Y52_N10
\Shift|rl2[20]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~17_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|rl2[20]~17_combout\);

-- Location: IOIBUF_X87_Y73_N1
\A[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(21),
	o => \A[21]~input_o\);

-- Location: IOIBUF_X115_Y48_N8
\A[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(23),
	o => \A[23]~input_o\);

-- Location: LCCOMB_X72_Y52_N16
\Shift|rl2[21]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~16_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Shift|rl2[21]~16_combout\);

-- Location: LCCOMB_X72_Y52_N4
\Shift|rl2[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[20]~18_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[21]~16_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[20]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[20]~17_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[21]~16_combout\,
	combout => \Shift|rl2[20]~18_combout\);

-- Location: IOIBUF_X115_Y46_N8
\A[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(19),
	o => \A[19]~input_o\);

-- Location: IOIBUF_X115_Y51_N1
\A[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(17),
	o => \A[17]~input_o\);

-- Location: LCCOMB_X73_Y52_N24
\Shift|rl2[17]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~19_combout\ = (\B[1]~input_o\ & (\A[19]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Shift|rl2[17]~19_combout\);

-- Location: IOIBUF_X115_Y64_N1
\A[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(16),
	o => \A[16]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\A[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(18),
	o => \A[18]~input_o\);

-- Location: LCCOMB_X73_Y52_N18
\Shift|rl2[16]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~20_combout\ = (\B[1]~input_o\ & ((\A[18]~input_o\))) # (!\B[1]~input_o\ & (\A[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Shift|rl2[16]~20_combout\);

-- Location: LCCOMB_X73_Y52_N4
\Shift|rl2[16]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[16]~21_combout\ = (\B[0]~input_o\ & (\Shift|rl2[17]~19_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[16]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[17]~19_combout\,
	datad => \Shift|rl2[16]~20_combout\,
	combout => \Shift|rl2[16]~21_combout\);

-- Location: LCCOMB_X66_Y47_N12
\Shift|rl3[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[16]~1_combout\ = (\B[2]~input_o\ & (\Shift|rl2[20]~18_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[16]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[20]~18_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[16]~21_combout\,
	combout => \Shift|rl3[16]~1_combout\);

-- Location: IOIBUF_X115_Y49_N8
\A[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(30),
	o => \A[30]~input_o\);

-- Location: IOIBUF_X89_Y73_N15
\A[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(28),
	o => \A[28]~input_o\);

-- Location: LCCOMB_X68_Y49_N16
\Shift|rl2[28]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~11_combout\ = (\B[1]~input_o\ & (\A[30]~input_o\)) # (!\B[1]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[28]~11_combout\);

-- Location: IOIBUF_X0_Y48_N1
\A[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(29),
	o => \A[29]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\A[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(31),
	o => \A[31]~input_o\);

-- Location: LCCOMB_X67_Y48_N8
\Shift|rl2[29]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[29]~10_combout\ = (\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\A[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[29]~10_combout\);

-- Location: LCCOMB_X63_Y49_N8
\Shift|rl2[28]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[28]~12_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[29]~10_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[28]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[28]~11_combout\,
	datac => \Shift|rl2[29]~10_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[28]~12_combout\);

-- Location: IOIBUF_X115_Y55_N15
\A[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(27),
	o => \A[27]~input_o\);

-- Location: IOIBUF_X38_Y73_N15
\A[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(25),
	o => \A[25]~input_o\);

-- Location: LCCOMB_X68_Y49_N26
\Shift|rl2[25]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~13_combout\ = (\B[1]~input_o\ & (\A[27]~input_o\)) # (!\B[1]~input_o\ & ((\A[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Shift|rl2[25]~13_combout\);

-- Location: IOIBUF_X115_Y48_N1
\A[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(26),
	o => \A[26]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\A[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(24),
	o => \A[24]~input_o\);

-- Location: LCCOMB_X67_Y48_N2
\Shift|rl2[24]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~14_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datac => \A[24]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[24]~14_combout\);

-- Location: LCCOMB_X67_Y48_N4
\Shift|rl2[24]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[24]~15_combout\ = (\B[0]~input_o\ & (\Shift|rl2[25]~13_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[24]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[25]~13_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[24]~14_combout\,
	combout => \Shift|rl2[24]~15_combout\);

-- Location: LCCOMB_X66_Y47_N10
\Shift|rl4[16]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[16]~0_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[28]~12_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[24]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[28]~12_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[24]~15_combout\,
	combout => \Shift|rl4[16]~0_combout\);

-- Location: LCCOMB_X66_Y47_N14
\Shift|rl4[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[16]~1_combout\ = (\Shift|rl4[16]~0_combout\) # ((\Shift|rl3[16]~1_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[16]~1_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl4[16]~0_combout\,
	combout => \Shift|rl4[16]~1_combout\);

-- Location: IOIBUF_X56_Y73_N15
\A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X83_Y73_N22
\A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X69_Y53_N26
\Shift|rl1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[2]~0_combout\ = (\B[0]~input_o\ & (\A[3]~input_o\)) # (!\B[0]~input_o\ & ((\A[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[3]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|rl1[2]~0_combout\);

-- Location: IOIBUF_X81_Y73_N1
\A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X56_Y73_N8
\A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LCCOMB_X69_Y53_N0
\Y_ShiftOrArith[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[1]~input_o\))) # (!\B[0]~input_o\ & (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Y_ShiftOrArith[0]~2_combout\);

-- Location: LCCOMB_X67_Y53_N8
\Y_ShiftOrArith[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~3_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[0]~2_combout\) # ((\B[1]~input_o\ & \Shift|rl1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl1[2]~0_combout\,
	datad => \Y_ShiftOrArith[0]~2_combout\,
	combout => \Y_ShiftOrArith[0]~3_combout\);

-- Location: IOIBUF_X69_Y73_N22
\A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X83_Y73_N15
\A[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LCCOMB_X67_Y53_N10
\Shift|rl1[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[4]~1_combout\ = (\B[0]~input_o\ & ((\A[5]~input_o\))) # (!\B[0]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|rl1[4]~1_combout\);

-- Location: IOIBUF_X91_Y73_N15
\A[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X115_Y50_N8
\A[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LCCOMB_X70_Y53_N0
\Shift|rl2[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~2_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[7]~input_o\))) # (!\B[0]~input_o\ & (\A[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[6]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[4]~2_combout\);

-- Location: LCCOMB_X67_Y53_N12
\Shift|rl2[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[4]~3_combout\ = (\Shift|rl2[4]~2_combout\) # ((\Shift|rl1[4]~1_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[4]~1_combout\,
	datab => \Shift|rl2[4]~2_combout\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[4]~3_combout\);

-- Location: LCCOMB_X67_Y53_N14
\Y_ShiftOrArith[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~4_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[0]~3_combout\) # ((\B[2]~input_o\ & \Shift|rl2[4]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Y_ShiftOrArith[0]~3_combout\,
	datad => \Shift|rl2[4]~3_combout\,
	combout => \Y_ShiftOrArith[0]~4_combout\);

-- Location: IOIBUF_X81_Y73_N8
\A[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X79_Y73_N1
\A[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: LCCOMB_X69_Y52_N18
\Shift|rl2[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~5_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[12]~5_combout\);

-- Location: IOIBUF_X85_Y73_N22
\A[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X115_Y58_N22
\A[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: LCCOMB_X69_Y52_N24
\Shift|rl2[13]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~4_combout\ = (\B[1]~input_o\ & ((\A[15]~input_o\))) # (!\B[1]~input_o\ & (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[13]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|rl2[13]~4_combout\);

-- Location: LCCOMB_X69_Y52_N4
\Shift|rl2[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[12]~6_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[13]~4_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[12]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[12]~5_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[13]~4_combout\,
	combout => \Shift|rl2[12]~6_combout\);

-- Location: IOIBUF_X79_Y0_N15
\A[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: IOIBUF_X85_Y73_N1
\A[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: LCCOMB_X69_Y52_N30
\Shift|rl2[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~7_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|rl2[9]~7_combout\);

-- Location: IOIBUF_X87_Y73_N22
\A[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X115_Y62_N22
\A[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: LCCOMB_X68_Y58_N4
\Shift|rl2[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~8_combout\ = (\B[1]~input_o\ & ((\A[10]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[8]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Shift|rl2[8]~8_combout\);

-- Location: LCCOMB_X69_Y51_N24
\Shift|rl2[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[8]~9_combout\ = (\B[0]~input_o\ & (\Shift|rl2[9]~7_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[9]~7_combout\,
	datad => \Shift|rl2[8]~8_combout\,
	combout => \Shift|rl2[8]~9_combout\);

-- Location: LCCOMB_X69_Y51_N2
\Shift|rl3[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[8]~0_combout\ = (\B[2]~input_o\ & (\Shift|rl2[12]~6_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[8]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~6_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|rl2[8]~9_combout\,
	combout => \Shift|rl3[8]~0_combout\);

-- Location: LCCOMB_X66_Y47_N16
\Y_ShiftOrArith[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~5_combout\ = (!\B[4]~input_o\ & ((\Y_ShiftOrArith[0]~4_combout\) # ((\B[3]~input_o\ & \Shift|rl3[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_ShiftOrArith[0]~4_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[8]~0_combout\,
	combout => \Y_ShiftOrArith[0]~5_combout\);

-- Location: LCCOMB_X65_Y50_N24
\Y_ShiftOrArith[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~6_combout\ = (!\B[5]~input_o\ & ((\Y_ShiftOrArith[0]~5_combout\) # ((\B[4]~input_o\ & \Shift|rl4[16]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|rl4[16]~1_combout\,
	datac => \B[5]~input_o\,
	datad => \Y_ShiftOrArith[0]~5_combout\,
	combout => \Y_ShiftOrArith[0]~6_combout\);

-- Location: LCCOMB_X65_Y50_N12
\Y_ShiftOrArith[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~7_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[0]~6_combout\) # ((\Shift|rl5[32]~0_combout\ & \B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl5[32]~0_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Y_ShiftOrArith[0]~6_combout\,
	combout => \Y_ShiftOrArith[0]~7_combout\);

-- Location: IOIBUF_X67_Y73_N22
\ShiftFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ShiftFN(0),
	o => \ShiftFN[0]~input_o\);

-- Location: LCCOMB_X67_Y53_N0
\Shift|ra4[62]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[62]~0_combout\ = (!\B[0]~input_o\ & (!\B[2]~input_o\ & (!\B[1]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ra4[62]~0_combout\);

-- Location: LCCOMB_X62_Y54_N20
\Shift|Y_LL[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[0]~0_combout\ = (\B[5]~input_o\) # ((\B[4]~input_o\) # (!\Shift|ra4[62]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \Shift|ra4[62]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|Y_LL[0]~0_combout\);

-- Location: LCCOMB_X65_Y50_N14
\Y_ShiftOrArith[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~8_combout\ = (\ShiftFN[0]~input_o\ & (((\A[0]~input_o\ & !\Shift|Y_LL[0]~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (\B[0]~input_o\ $ ((\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Shift|Y_LL[0]~0_combout\,
	combout => \Y_ShiftOrArith[0]~8_combout\);

-- Location: LCCOMB_X65_Y50_N8
\Y_ShiftOrArith[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[0]~9_combout\ = (\Y_ShiftOrArith[0]~7_combout\) # ((!\ShiftFN[1]~input_o\ & \Y_ShiftOrArith[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[0]~7_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_ShiftOrArith[0]~8_combout\,
	combout => \Y_ShiftOrArith[0]~9_combout\);

-- Location: IOIBUF_X20_Y73_N22
\B[63]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(63),
	o => \B[63]~input_o\);

-- Location: IOIBUF_X72_Y73_N1
\AddnSub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AddnSub,
	o => \AddnSub~input_o\);

-- Location: IOIBUF_X33_Y73_N1
\B[62]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(62),
	o => \B[62]~input_o\);

-- Location: LCCOMB_X59_Y58_N28
\Add|P[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(62) = \AddnSub~input_o\ $ (\A[62]~input_o\ $ (\B[62]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	combout => \Add|P\(62));

-- Location: IOIBUF_X20_Y73_N15
\B[61]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(61),
	o => \B[61]~input_o\);

-- Location: LCCOMB_X59_Y58_N22
\Add|P[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(61) = \AddnSub~input_o\ $ (\B[61]~input_o\ $ (\A[61]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Add|P\(61));

-- Location: IOIBUF_X20_Y73_N8
\B[60]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(60),
	o => \B[60]~input_o\);

-- Location: LCCOMB_X59_Y58_N4
\Add|P[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(60) = \A[60]~input_o\ $ (\B[60]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(60));

-- Location: LCCOMB_X59_Y58_N14
\Add|GEN_BLOCKS:15:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ = (\Add|P\(62) & (\Add|P\(61) & \Add|P\(60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|P\(62),
	datac => \Add|P\(61),
	datad => \Add|P\(60),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|Pout~0_combout\);

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

-- Location: LCCOMB_X60_Y57_N24
\Add|G[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(58) = (\A[58]~input_o\ & (\AddnSub~input_o\ $ (\B[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[58]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Add|G\(58));

-- Location: IOIBUF_X52_Y0_N1
\B[59]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(59),
	o => \B[59]~input_o\);

-- Location: LCCOMB_X60_Y57_N10
\Add|GEN_BLOCKS:14:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\ = (\A[59]~input_o\ & ((\Add|G\(58)) # (\AddnSub~input_o\ $ (\B[59]~input_o\)))) # (!\A[59]~input_o\ & (\Add|G\(58) & (\AddnSub~input_o\ $ (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \Add|G\(58),
	datac => \AddnSub~input_o\,
	datad => \B[59]~input_o\,
	combout => \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X61_Y57_N0
\Add|P[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(58) = \B[58]~input_o\ $ (\AddnSub~input_o\ $ (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[58]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[58]~input_o\,
	combout => \Add|P\(58));

-- Location: IOIBUF_X23_Y73_N1
\B[57]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(57),
	o => \B[57]~input_o\);

-- Location: LCCOMB_X61_Y57_N20
\Add|P[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(57) = \A[57]~input_o\ $ (\AddnSub~input_o\ $ (\B[57]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[57]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Add|P\(57));

-- Location: IOIBUF_X60_Y73_N15
\B[56]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(56),
	o => \B[56]~input_o\);

-- Location: LCCOMB_X61_Y57_N22
\Add|G[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(56) = (\A[56]~input_o\ & (\AddnSub~input_o\ $ (\B[56]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[56]~input_o\,
	datad => \B[56]~input_o\,
	combout => \Add|G\(56));

-- Location: LCCOMB_X61_Y57_N2
\Add|G[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(57) = (\A[57]~input_o\ & (\AddnSub~input_o\ $ (\B[57]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[57]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Add|G\(57));

-- Location: LCCOMB_X61_Y57_N24
\Add|block_carry_in[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[15]~43_combout\ = (\Add|P\(58) & ((\Add|G\(57)) # ((\Add|P\(57) & \Add|G\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(58),
	datab => \Add|P\(57),
	datac => \Add|G\(56),
	datad => \Add|G\(57),
	combout => \Add|block_carry_in[15]~43_combout\);

-- Location: LCCOMB_X60_Y57_N12
\Logic|xor_result[59]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[59]~1_combout\ = \A[59]~input_o\ $ (\B[59]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Logic|xor_result[59]~1_combout\);

-- Location: LCCOMB_X60_Y57_N14
\Add|block_carry_in[15]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[15]~44_combout\ = (\Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\) # ((\Add|block_carry_in[15]~43_combout\ & (\AddnSub~input_o\ $ (\Logic|xor_result[59]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:14:LACG_INST|g_int~0_combout\,
	datab => \Add|block_carry_in[15]~43_combout\,
	datac => \AddnSub~input_o\,
	datad => \Logic|xor_result[59]~1_combout\,
	combout => \Add|block_carry_in[15]~44_combout\);

-- Location: IOIBUF_X25_Y73_N15
\B[50]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(50),
	o => \B[50]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\B[48]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(48),
	o => \B[48]~input_o\);

-- Location: LCCOMB_X60_Y52_N12
\Add|block_carry_in[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~40_combout\ = (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|block_carry_in[13]~40_combout\);

-- Location: LCCOMB_X60_Y52_N0
\Add|P[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(50) = \AddnSub~input_o\ $ (\B[50]~input_o\ $ (\A[50]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[50]~input_o\,
	datad => \A[50]~input_o\,
	combout => \Add|P\(50));

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

-- Location: LCCOMB_X63_Y50_N0
\Add|P[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(49) = \B[49]~input_o\ $ (\AddnSub~input_o\ $ (\A[49]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[49]~input_o\,
	combout => \Add|P\(49));

-- Location: LCCOMB_X60_Y52_N18
\Add|G[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(49) = (\A[49]~input_o\ & (\AddnSub~input_o\ $ (\B[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	combout => \Add|G\(49));

-- Location: LCCOMB_X60_Y52_N6
\Add|block_carry_in[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~41_combout\ = (\Add|P\(50) & ((\Add|G\(49)) # ((\Add|block_carry_in[13]~40_combout\ & \Add|P\(49)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~40_combout\,
	datab => \Add|P\(50),
	datac => \Add|P\(49),
	datad => \Add|G\(49),
	combout => \Add|block_carry_in[13]~41_combout\);

-- Location: LCCOMB_X60_Y52_N16
\Add|block_carry_in[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~42_combout\ = (\Add|block_carry_in[13]~41_combout\) # ((\A[50]~input_o\ & (\AddnSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \Add|block_carry_in[13]~41_combout\,
	combout => \Add|block_carry_in[13]~42_combout\);

-- Location: LCCOMB_X60_Y52_N26
\Add|GEN_BLOCKS:12:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ = (\Add|P\(49) & (\AddnSub~input_o\ $ (\A[48]~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[48]~input_o\,
	datac => \Add|P\(49),
	datad => \B[48]~input_o\,
	combout => \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X54_Y0_N8
\B[46]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(46),
	o => \B[46]~input_o\);

-- Location: LCCOMB_X63_Y54_N0
\Add|P[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(46) = \AddnSub~input_o\ $ (\B[46]~input_o\ $ (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Add|P\(46));

-- Location: IOIBUF_X115_Y54_N15
\B[47]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(47),
	o => \B[47]~input_o\);

-- Location: LCCOMB_X63_Y54_N18
\Add|GEN_BLOCKS:11:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ = (\Add|P\(46) & (\A[47]~input_o\ $ (\AddnSub~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \Add|P\(46),
	datac => \AddnSub~input_o\,
	datad => \B[47]~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X60_Y73_N1
\B[45]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(45),
	o => \B[45]~input_o\);

-- Location: IOIBUF_X0_Y55_N8
\B[44]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(44),
	o => \B[44]~input_o\);

-- Location: LCCOMB_X65_Y54_N24
\Add|P[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(44) = \B[44]~input_o\ $ (\AddnSub~input_o\ $ (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[44]~input_o\,
	combout => \Add|P\(44));

-- Location: LCCOMB_X65_Y54_N2
\Add|GEN_BLOCKS:11:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ = (\Add|P\(44) & (\B[45]~input_o\ $ (\AddnSub~input_o\ $ (\A[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \Add|P\(44),
	datac => \AddnSub~input_o\,
	datad => \A[45]~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X65_Y54_N22
\Add|GEN_BLOCKS:11:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:11:LACG_INST|Pout~1_combout\ & \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:11:LACG_INST|Pout~1_combout\,
	datad => \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|Pout~combout\);

-- Location: IOIBUF_X115_Y45_N22
\B[43]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(43),
	o => \B[43]~input_o\);

-- Location: IOIBUF_X102_Y73_N8
\B[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(42),
	o => \B[42]~input_o\);

-- Location: LCCOMB_X68_Y54_N18
\Add|P[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(42) = \AddnSub~input_o\ $ (\B[42]~input_o\ $ (\A[42]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Add|P\(42));

-- Location: LCCOMB_X68_Y54_N28
\Add|GEN_BLOCKS:10:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ = (\Add|P\(42) & (\AddnSub~input_o\ $ (\A[43]~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	datad => \Add|P\(42),
	combout => \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X102_Y73_N1
\B[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(40),
	o => \B[40]~input_o\);

-- Location: IOIBUF_X83_Y0_N22
\B[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(41),
	o => \B[41]~input_o\);

-- Location: LCCOMB_X68_Y54_N16
\Add|P[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(41) = \B[41]~input_o\ $ (\AddnSub~input_o\ $ (\A[41]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \A[41]~input_o\,
	combout => \Add|P\(41));

-- Location: LCCOMB_X67_Y54_N0
\Add|GEN_BLOCKS:10:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ = (\Add|P\(41) & (\B[40]~input_o\ $ (\AddnSub~input_o\ $ (\A[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[40]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[40]~input_o\,
	datad => \Add|P\(41),
	combout => \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X68_Y54_N22
\Add|G[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(42) = (\A[42]~input_o\ & (\AddnSub~input_o\ $ (\B[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Add|G\(42));

-- Location: LCCOMB_X68_Y54_N24
\Add|GEN_BLOCKS:10:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|g_int~0_combout\ = (\A[43]~input_o\ & ((\Add|G\(42)) # (\AddnSub~input_o\ $ (\B[43]~input_o\)))) # (!\A[43]~input_o\ & (\Add|G\(42) & (\AddnSub~input_o\ $ (\B[43]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	datad => \Add|G\(42),
	combout => \Add|GEN_BLOCKS:10:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X67_Y54_N10
\Add|G[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(40) = (\A[40]~input_o\ & (\AddnSub~input_o\ $ (\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Add|G\(40));

-- Location: LCCOMB_X67_Y54_N4
\Add|block_carry_in[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~37_combout\ = (\Add|G\(40) & ((\A[41]~input_o\) # (\B[41]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(40) & (\A[41]~input_o\ & (\B[41]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(40),
	datab => \B[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[41]~input_o\,
	combout => \Add|block_carry_in[11]~37_combout\);

-- Location: LCCOMB_X65_Y54_N20
\Add|block_carry_in[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~38_combout\ = (\Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & (!\Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ & ((\Add|GEN_BLOCKS:10:LACG_INST|g_int~0_combout\) # (\Add|block_carry_in[11]~37_combout\)))) # 
-- (!\Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & (((\Add|GEN_BLOCKS:10:LACG_INST|g_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\,
	datab => \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	datac => \Add|GEN_BLOCKS:10:LACG_INST|g_int~0_combout\,
	datad => \Add|block_carry_in[11]~37_combout\,
	combout => \Add|block_carry_in[11]~38_combout\);

-- Location: IOIBUF_X9_Y73_N8
\B[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(39),
	o => \B[39]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\B[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(38),
	o => \B[38]~input_o\);

-- Location: LCCOMB_X62_Y54_N2
\Add|P[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(38) = \AddnSub~input_o\ $ (\B[38]~input_o\ $ (\A[38]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[38]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Add|P\(38));

-- Location: LCCOMB_X66_Y54_N6
\Add|GEN_BLOCKS:9:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ = (\Add|P\(38) & (\B[39]~input_o\ $ (\AddnSub~input_o\ $ (\A[39]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[39]~input_o\,
	datab => \Add|P\(38),
	datac => \AddnSub~input_o\,
	datad => \A[39]~input_o\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X62_Y54_N0
\Add|G[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(38) = (\A[38]~input_o\ & (\AddnSub~input_o\ $ (\B[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[38]~input_o\,
	datac => \A[38]~input_o\,
	combout => \Add|G\(38));

-- Location: LCCOMB_X66_Y54_N0
\Add|GEN_BLOCKS:9:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\ = (\Add|G\(38) & ((\A[39]~input_o\) # (\B[39]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(38) & (\A[39]~input_o\ & (\B[39]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(38),
	datab => \B[39]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[39]~input_o\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\);

-- Location: IOIBUF_X115_Y56_N22
\B[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(37),
	o => \B[37]~input_o\);

-- Location: IOIBUF_X115_Y46_N1
\B[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(36),
	o => \B[36]~input_o\);

-- Location: LCCOMB_X66_Y54_N26
\Add|G[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(36) = (\A[36]~input_o\ & (\B[36]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(36));

-- Location: LCCOMB_X66_Y54_N12
\Add|block_carry_in[10]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[10]~9_combout\ = (\Add|G\(36) & ((\A[37]~input_o\) # (\B[37]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(36) & (\A[37]~input_o\ & (\B[37]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|G\(36),
	datad => \A[37]~input_o\,
	combout => \Add|block_carry_in[10]~9_combout\);

-- Location: LCCOMB_X66_Y54_N24
\Add|P[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(37) = \A[37]~input_o\ $ (\AddnSub~input_o\ $ (\B[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[37]~input_o\,
	combout => \Add|P\(37));

-- Location: LCCOMB_X66_Y54_N10
\Add|GEN_BLOCKS:9:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ = (\Add|P\(37) & (\AddnSub~input_o\ $ (\A[36]~input_o\ $ (\B[36]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \Add|P\(37),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X66_Y54_N4
\Add|block_carry_in[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[10]~10_combout\ = (\Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & (!\Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\ & ((\Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\) # (\Add|block_carry_in[10]~9_combout\)))) # 
-- (!\Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & (\Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:9:LACG_INST|g_int~0_combout\,
	datac => \Add|block_carry_in[10]~9_combout\,
	datad => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[10]~10_combout\);

-- Location: IOIBUF_X65_Y0_N15
\B[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(35),
	o => \B[35]~input_o\);

-- Location: IOIBUF_X27_Y73_N8
\B[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(34),
	o => \B[34]~input_o\);

-- Location: IOIBUF_X0_Y50_N22
\B[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(33),
	o => \B[33]~input_o\);

-- Location: LCCOMB_X61_Y50_N10
\Add|P[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(33) = \B[33]~input_o\ $ (\A[33]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datac => \A[33]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(33));

-- Location: LCCOMB_X61_Y50_N28
\Add|G[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(33) = (\A[33]~input_o\ & (\B[33]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datac => \A[33]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(33));

-- Location: LCCOMB_X61_Y50_N8
\Add|P[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(34) = \A[34]~input_o\ $ (\B[34]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[34]~input_o\,
	datac => \B[34]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(34));

-- Location: IOIBUF_X54_Y0_N15
\B[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(32),
	o => \B[32]~input_o\);

-- Location: LCCOMB_X61_Y50_N6
\Add|block_carry_in[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~33_combout\ = (\A[32]~input_o\ & (\B[32]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|block_carry_in[9]~33_combout\);

-- Location: LCCOMB_X61_Y50_N16
\Add|block_carry_in[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~34_combout\ = (\Add|P\(34) & ((\Add|G\(33)) # ((\Add|P\(33) & \Add|block_carry_in[9]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(33),
	datab => \Add|G\(33),
	datac => \Add|P\(34),
	datad => \Add|block_carry_in[9]~33_combout\,
	combout => \Add|block_carry_in[9]~34_combout\);

-- Location: LCCOMB_X61_Y50_N26
\Add|block_carry_in[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~35_combout\ = (\Add|block_carry_in[9]~34_combout\) # ((\A[34]~input_o\ & (\B[34]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[34]~input_o\,
	datad => \Add|block_carry_in[9]~34_combout\,
	combout => \Add|block_carry_in[9]~35_combout\);

-- Location: LCCOMB_X61_Y50_N4
\Add|GEN_BLOCKS:8:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ = (\Add|P\(33) & (\A[32]~input_o\ $ (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	datad => \Add|P\(33),
	combout => \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X23_Y73_N8
\B[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(31),
	o => \B[31]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\B[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(30),
	o => \B[30]~input_o\);

-- Location: LCCOMB_X62_Y49_N18
\Add|G[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(30) = (\A[30]~input_o\ & (\AddnSub~input_o\ $ (\B[30]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \Add|G\(30));

-- Location: LCCOMB_X62_Y49_N4
\Add|GEN_BLOCKS:7:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\ = (\A[31]~input_o\ & ((\Add|G\(30)) # (\B[31]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[31]~input_o\ & (\Add|G\(30) & (\B[31]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[31]~input_o\,
	datab => \B[31]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(30),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\);

-- Location: IOIBUF_X18_Y73_N22
\B[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(28),
	o => \B[28]~input_o\);

-- Location: LCCOMB_X61_Y49_N10
\Add|P[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(28) = \AddnSub~input_o\ $ (\B[28]~input_o\ $ (\A[28]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Add|P\(28));

-- Location: IOIBUF_X60_Y0_N22
\B[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(29),
	o => \B[29]~input_o\);

-- Location: LCCOMB_X61_Y49_N28
\Add|P[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(29) = \A[29]~input_o\ $ (\B[29]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(29));

-- Location: LCCOMB_X62_Y49_N22
\Add|P[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(30) = \A[30]~input_o\ $ (\AddnSub~input_o\ $ (\B[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[30]~input_o\,
	combout => \Add|P\(30));

-- Location: LCCOMB_X61_Y49_N24
\Add|GEN_BLOCKS:7:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ = (\Add|P\(30) & (\AddnSub~input_o\ $ (\A[31]~input_o\ $ (\B[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[31]~input_o\,
	datac => \B[31]~input_o\,
	datad => \Add|P\(30),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X61_Y49_N20
\Add|GEN_BLOCKS:7:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ = (\Add|P\(28) & (\Add|P\(29) & \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(28),
	datab => \Add|P\(29),
	datad => \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\);

-- Location: IOIBUF_X115_Y56_N15
\B[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(25),
	o => \B[25]~input_o\);

-- Location: LCCOMB_X63_Y56_N2
\Add|P[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(25) = \AddnSub~input_o\ $ (\A[25]~input_o\ $ (\B[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add|P\(25));

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

-- Location: IOIBUF_X115_Y44_N8
\B[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(26),
	o => \B[26]~input_o\);

-- Location: LCCOMB_X63_Y56_N12
\Add|P[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(26) = \AddnSub~input_o\ $ (\B[26]~input_o\ $ (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Add|P\(26));

-- Location: LCCOMB_X63_Y56_N22
\Add|GEN_BLOCKS:6:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ = (\Add|P\(26) & (\A[27]~input_o\ $ (\B[27]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(26),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X83_Y73_N1
\B[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(24),
	o => \B[24]~input_o\);

-- Location: LCCOMB_X68_Y57_N2
\Add|P[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(24) = \A[24]~input_o\ $ (\B[24]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(24));

-- Location: LCCOMB_X63_Y56_N6
\Add|GEN_BLOCKS:6:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ = (\Add|P\(25) & (\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & \Add|P\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|P\(25),
	datac => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datad => \Add|P\(24),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X68_Y57_N16
\Add|G[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(24) = (\A[24]~input_o\ & (\B[24]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(24));

-- Location: LCCOMB_X63_Y56_N16
\Add|G[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(25) = (\A[25]~input_o\ & (\AddnSub~input_o\ $ (\B[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add|G\(25));

-- Location: LCCOMB_X63_Y56_N28
\Add|block_carry_in[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~29_combout\ = (\Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\ & ((\Add|G\(25)) # ((\Add|P\(25) & \Add|G\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(25),
	datac => \Add|G\(24),
	datad => \Add|G\(25),
	combout => \Add|block_carry_in[7]~29_combout\);

-- Location: LCCOMB_X63_Y56_N8
\Add|G[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(26) = (\A[26]~input_o\ & (\AddnSub~input_o\ $ (\B[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Add|G\(26));

-- Location: LCCOMB_X63_Y56_N18
\Add|GEN_BLOCKS:6:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\ = (\A[27]~input_o\ & ((\Add|G\(26)) # (\AddnSub~input_o\ $ (\B[27]~input_o\)))) # (!\A[27]~input_o\ & (\Add|G\(26) & (\AddnSub~input_o\ $ (\B[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|G\(26),
	datad => \B[27]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\);

-- Location: IOIBUF_X96_Y73_N15
\B[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(22),
	o => \B[22]~input_o\);

-- Location: LCCOMB_X66_Y57_N12
\Add|P[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(22) = \AddnSub~input_o\ $ (\B[22]~input_o\ $ (\A[22]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Add|P\(22));

-- Location: IOIBUF_X74_Y0_N1
\B[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(23),
	o => \B[23]~input_o\);

-- Location: LCCOMB_X66_Y57_N14
\Add|GEN_BLOCKS:5:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ = (\Add|P\(22) & (\B[23]~input_o\ $ (\AddnSub~input_o\ $ (\A[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(22),
	datab => \B[23]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[23]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X74_Y73_N22
\B[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(21),
	o => \B[21]~input_o\);

-- Location: LCCOMB_X67_Y57_N2
\Add|P[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(21) = \AddnSub~input_o\ $ (\A[21]~input_o\ $ (\B[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|P\(21));

-- Location: IOIBUF_X105_Y73_N8
\B[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(20),
	o => \B[20]~input_o\);

-- Location: LCCOMB_X67_Y57_N16
\Add|P[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(20) = \AddnSub~input_o\ $ (\B[20]~input_o\ $ (\A[20]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Add|P\(20));

-- Location: LCCOMB_X67_Y57_N10
\Add|GEN_BLOCKS:5:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & (\Add|P\(21) & \Add|P\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(21),
	datad => \Add|P\(20),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X66_Y57_N16
\Add|G[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(22) = (\A[22]~input_o\ & (\AddnSub~input_o\ $ (\B[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[22]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Add|G\(22));

-- Location: LCCOMB_X66_Y57_N2
\Add|GEN_BLOCKS:5:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\ = (\Add|G\(22) & ((\A[23]~input_o\) # (\AddnSub~input_o\ $ (\B[23]~input_o\)))) # (!\Add|G\(22) & (\A[23]~input_o\ & (\AddnSub~input_o\ $ (\B[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[23]~input_o\,
	datac => \Add|G\(22),
	datad => \A[23]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\);

-- Location: IOIBUF_X58_Y73_N15
\B[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(19),
	o => \B[19]~input_o\);

-- Location: IOIBUF_X67_Y0_N8
\B[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(18),
	o => \B[18]~input_o\);

-- Location: LCCOMB_X67_Y56_N16
\Add|G[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(18) = (\A[18]~input_o\ & (\B[18]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[18]~input_o\,
	combout => \Add|G\(18));

-- Location: LCCOMB_X67_Y56_N18
\Add|GEN_BLOCKS:4:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\ = (\A[19]~input_o\ & ((\Add|G\(18)) # (\B[19]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[19]~input_o\ & (\Add|G\(18) & (\B[19]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[19]~input_o\,
	datad => \Add|G\(18),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\);

-- Location: IOIBUF_X87_Y73_N8
\B[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(16),
	o => \B[16]~input_o\);

-- Location: LCCOMB_X65_Y57_N6
\Add|P[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(16) = \A[16]~input_o\ $ (\B[16]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(16));

-- Location: IOIBUF_X35_Y73_N22
\B[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(17),
	o => \B[17]~input_o\);

-- Location: LCCOMB_X65_Y57_N16
\Add|P[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(17) = \B[17]~input_o\ $ (\AddnSub~input_o\ $ (\A[17]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[17]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[17]~input_o\,
	combout => \Add|P\(17));

-- Location: LCCOMB_X67_Y56_N12
\Add|P[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(18) = \B[18]~input_o\ $ (\AddnSub~input_o\ $ (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[18]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[18]~input_o\,
	combout => \Add|P\(18));

-- Location: LCCOMB_X67_Y56_N22
\Add|GEN_BLOCKS:4:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ = (\Add|P\(18) & (\B[19]~input_o\ $ (\A[19]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|P\(18),
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X65_Y57_N0
\Add|GEN_BLOCKS:4:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ = (\Add|P\(16) & (\Add|P\(17) & \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(16),
	datab => \Add|P\(17),
	datac => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X61_Y53_N0
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

-- Location: LCCOMB_X65_Y57_N10
\Add|G[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(16) = (\A[16]~input_o\ & (\B[16]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \B[16]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|G\(16));

-- Location: LCCOMB_X65_Y57_N4
\Add|block_carry_in[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~25_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\ & ((\Add|G\(17)) # ((\Add|P\(17) & \Add|G\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(17),
	datab => \Add|P\(17),
	datac => \Add|GEN_BLOCKS:4:LACG_INST|Pout~0_combout\,
	datad => \Add|G\(16),
	combout => \Add|block_carry_in[5]~25_combout\);

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

-- Location: IOIBUF_X105_Y73_N1
\B[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: LCCOMB_X68_Y55_N6
\Logic|xor_result[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[15]~0_combout\ = \A[15]~input_o\ $ (\B[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Logic|xor_result[15]~0_combout\);

-- Location: LCCOMB_X72_Y58_N12
\Add|GEN_BLOCKS:3:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ = (\AddnSub~input_o\ & (!\Logic|xor_result[15]~0_combout\ & (\B[14]~input_o\ $ (!\A[14]~input_o\)))) # (!\AddnSub~input_o\ & (\Logic|xor_result[15]~0_combout\ & (\B[14]~input_o\ $ (\A[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[14]~input_o\,
	datad => \Logic|xor_result[15]~0_combout\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X85_Y0_N22
\B[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: LCCOMB_X72_Y58_N6
\Add|P[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(13) = \AddnSub~input_o\ $ (\B[13]~input_o\ $ (\A[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|P\(13));

-- Location: IOIBUF_X94_Y73_N1
\B[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: LCCOMB_X72_Y58_N24
\Add|GEN_BLOCKS:3:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ = (\Add|P\(13) & (\AddnSub~input_o\ $ (\A[12]~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(13),
	datab => \AddnSub~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\);

-- Location: IOIBUF_X115_Y61_N15
\B[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: LCCOMB_X65_Y55_N8
\Add|P[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(6) = \A[6]~input_o\ $ (\AddnSub~input_o\ $ (\B[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|P\(6));

-- Location: IOIBUF_X67_Y73_N1
\B[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: LCCOMB_X66_Y55_N0
\Add|GEN_BLOCKS:1:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ = (\Add|P\(6) & (\A[7]~input_o\ $ (\B[7]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(6),
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X66_Y59_N8
\Add|P[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(4) = \AddnSub~input_o\ $ (\A[4]~input_o\ $ (\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Add|P\(4));

-- Location: LCCOMB_X66_Y55_N24
\Add|GEN_BLOCKS:1:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ = (\Add|P\(4) & (\A[5]~input_o\ $ (\B[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \B[5]~input_o\,
	datac => \Add|P\(4),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X66_Y55_N26
\Add|GEN_BLOCKS:1:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\ & \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|GEN_BLOCKS:1:LACG_INST|Pout~1_combout\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X66_Y56_N24
\Add|P[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(1) = \B[1]~input_o\ $ (\A[1]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|P\(1));

-- Location: LCCOMB_X66_Y56_N2
\Add|GEN_BLOCKS:0:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ = (\Add|P\(1) & (\AddnSub~input_o\ $ (\B[0]~input_o\ $ (\A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|P\(1),
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X66_Y56_N12
\Add|P[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(2) = \AddnSub~input_o\ $ (\B[2]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Add|P\(2));

-- Location: LCCOMB_X66_Y56_N14
\Add|GEN_BLOCKS:0:LACG_INST|Pout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ = (\Add|P\(2) & (\AddnSub~input_o\ $ (\B[3]~input_o\ $ (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Add|P\(2),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\);

-- Location: LCCOMB_X66_Y55_N12
\Add|block_carry_in[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~20_combout\ = (\AddnSub~input_o\ & (\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[1]~20_combout\);

-- Location: LCCOMB_X66_Y59_N18
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

-- Location: LCCOMB_X66_Y55_N18
\Add|block_carry_in[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~17_combout\ = (\A[5]~input_o\ & ((\Add|G\(4)) # (\AddnSub~input_o\ $ (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\Add|G\(4) & (\AddnSub~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \Add|G\(4),
	combout => \Add|block_carry_in[2]~17_combout\);

-- Location: LCCOMB_X65_Y55_N26
\Add|block_carry_in[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~16_combout\ = (\A[6]~input_o\ & (\AddnSub~input_o\ $ (\B[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[6]~input_o\,
	combout => \Add|block_carry_in[2]~16_combout\);

-- Location: LCCOMB_X66_Y55_N28
\Add|block_carry_in[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~18_combout\ = (\Add|P\(6) & (!\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[2]~17_combout\) # (\Add|block_carry_in[2]~16_combout\)))) # (!\Add|P\(6) & (((\Add|block_carry_in[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(6),
	datab => \Add|block_carry_in[2]~17_combout\,
	datac => \Add|block_carry_in[2]~16_combout\,
	datad => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[2]~18_combout\);

-- Location: LCCOMB_X66_Y55_N22
\Add|block_carry_in[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~19_combout\ = (\A[7]~input_o\ & ((\Add|block_carry_in[2]~18_combout\) # (\AddnSub~input_o\ $ (\B[7]~input_o\)))) # (!\A[7]~input_o\ & (\Add|block_carry_in[2]~18_combout\ & (\AddnSub~input_o\ $ (\B[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[7]~input_o\,
	datac => \B[7]~input_o\,
	datad => \Add|block_carry_in[2]~18_combout\,
	combout => \Add|block_carry_in[2]~19_combout\);

-- Location: LCCOMB_X66_Y56_N0
\Add|G[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(2) = (\A[2]~input_o\ & (\AddnSub~input_o\ $ (\B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Add|G\(2));

-- Location: LCCOMB_X66_Y56_N10
\Add|GEN_BLOCKS:0:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\ = (\A[3]~input_o\ & ((\Add|G\(2)) # (\AddnSub~input_o\ $ (\B[3]~input_o\)))) # (!\A[3]~input_o\ & (\Add|G\(2) & (\AddnSub~input_o\ $ (\B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	datad => \Add|G\(2),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X62_Y49_N16
\Add|G[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(0) = (\A[0]~input_o\ & (\AddnSub~input_o\ $ (\B[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Add|G\(0));

-- Location: LCCOMB_X66_Y56_N4
\Add|block_carry_in[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~21_combout\ = (\A[1]~input_o\ & ((\Add|G\(0)) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|G\(0) & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[1]~input_o\,
	datac => \Add|G\(0),
	datad => \B[1]~input_o\,
	combout => \Add|block_carry_in[1]~21_combout\);

-- Location: LCCOMB_X66_Y56_N30
\Add|block_carry_in[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~22_combout\ = (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\ & ((\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\) # (\Add|block_carry_in[1]~21_combout\)))) # 
-- (!\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & (\Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:0:LACG_INST|g_int~0_combout\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datac => \Add|block_carry_in[1]~21_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[1]~22_combout\);

-- Location: LCCOMB_X66_Y55_N14
\Add|block_carry_in[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[2]~23_combout\ = (\Add|block_carry_in[2]~19_combout\) # ((\Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[1]~20_combout\) # (\Add|block_carry_in[1]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|Pout~combout\,
	datab => \Add|block_carry_in[1]~20_combout\,
	datac => \Add|block_carry_in[2]~19_combout\,
	datad => \Add|block_carry_in[1]~22_combout\,
	combout => \Add|block_carry_in[2]~23_combout\);

-- Location: IOIBUF_X115_Y60_N15
\B[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: LCCOMB_X68_Y58_N24
\Add|P[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(10) = \AddnSub~input_o\ $ (\B[10]~input_o\ $ (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Add|P\(10));

-- Location: IOIBUF_X69_Y73_N15
\B[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: LCCOMB_X67_Y58_N24
\Add|P[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(9) = \AddnSub~input_o\ $ (\A[9]~input_o\ $ (\B[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|P\(9));

-- Location: IOIBUF_X11_Y73_N22
\B[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: LCCOMB_X67_Y58_N10
\Add|GEN_BLOCKS:2:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ = (\Add|P\(9) & (\AddnSub~input_o\ $ (\B[8]~input_o\ $ (\A[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|P\(9),
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X68_Y58_N18
\Add|block_carry_in[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~13_combout\ = (\A[10]~input_o\ & (\AddnSub~input_o\ $ (\B[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Add|block_carry_in[3]~13_combout\);

-- Location: LCCOMB_X67_Y58_N20
\Add|G[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(8) = (\A[8]~input_o\ & (\AddnSub~input_o\ $ (\B[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Add|G\(8));

-- Location: LCCOMB_X67_Y58_N22
\Add|block_carry_in[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~14_combout\ = (\Add|G\(8) & ((\A[9]~input_o\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\Add|G\(8) & (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(8),
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|block_carry_in[3]~14_combout\);

-- Location: LCCOMB_X67_Y58_N16
\Add|block_carry_in[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~15_combout\ = (\Add|P\(10) & (!\Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[3]~13_combout\) # (\Add|block_carry_in[3]~14_combout\)))) # (!\Add|P\(10) & (((\Add|block_carry_in[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[3]~13_combout\,
	datac => \Add|block_carry_in[3]~14_combout\,
	datad => \Add|P\(10),
	combout => \Add|block_carry_in[3]~15_combout\);

-- Location: LCCOMB_X67_Y58_N6
\Add|block_carry_in[3]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~55_combout\ = (\Add|block_carry_in[3]~15_combout\) # ((\Add|block_carry_in[2]~23_combout\ & (\Add|P\(10) & \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[2]~23_combout\,
	datab => \Add|P\(10),
	datac => \Add|block_carry_in[3]~15_combout\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[3]~55_combout\);

-- Location: IOIBUF_X115_Y59_N15
\B[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: LCCOMB_X68_Y56_N14
\Add|block_carry_in[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[3]~56_combout\ = (\Add|block_carry_in[3]~55_combout\ & ((\A[11]~input_o\) # (\AddnSub~input_o\ $ (\B[11]~input_o\)))) # (!\Add|block_carry_in[3]~55_combout\ & (\A[11]~input_o\ & (\AddnSub~input_o\ $ (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~55_combout\,
	datab => \A[11]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[11]~input_o\,
	combout => \Add|block_carry_in[3]~56_combout\);

-- Location: LCCOMB_X72_Y58_N8
\Add|G[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(12) = (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add|G\(12));

-- Location: LCCOMB_X72_Y58_N2
\Add|block_carry_in[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~11_combout\ = (\Add|G\(12) & ((\A[13]~input_o\) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(12) & (\A[13]~input_o\ & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|G\(12),
	datad => \A[13]~input_o\,
	combout => \Add|block_carry_in[4]~11_combout\);

-- Location: LCCOMB_X68_Y55_N18
\Add|G[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(14) = (\A[14]~input_o\ & (\B[14]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \A[14]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(14));

-- Location: LCCOMB_X68_Y55_N4
\Add|GEN_BLOCKS:3:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\ = (\Add|G\(14) & ((\A[15]~input_o\) # (\AddnSub~input_o\ $ (\B[15]~input_o\)))) # (!\Add|G\(14) & (\A[15]~input_o\ & (\AddnSub~input_o\ $ (\B[15]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(14),
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X72_Y58_N10
\Add|block_carry_in[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~12_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (!\Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & ((\Add|block_carry_in[4]~11_combout\) # (\Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\)))) # 
-- (!\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (((\Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[4]~11_combout\,
	datac => \Add|GEN_BLOCKS:3:LACG_INST|g_int~0_combout\,
	datad => \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[4]~12_combout\);

-- Location: LCCOMB_X72_Y58_N28
\Add|block_carry_in[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[4]~24_combout\ = (\Add|block_carry_in[4]~12_combout\) # ((\Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\ & (\Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\ & \Add|block_carry_in[3]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|Pout~0_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\,
	datac => \Add|block_carry_in[3]~56_combout\,
	datad => \Add|block_carry_in[4]~12_combout\,
	combout => \Add|block_carry_in[4]~24_combout\);

-- Location: LCCOMB_X65_Y57_N2
\Add|block_carry_in[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[5]~26_combout\ = (\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[4]~24_combout\)))) # (!\Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\ & ((\Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\) # 
-- ((\Add|block_carry_in[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:4:LACG_INST|g_int~0_combout\,
	datab => \Add|GEN_BLOCKS:4:LACG_INST|Pout~combout\,
	datac => \Add|block_carry_in[5]~25_combout\,
	datad => \Add|block_carry_in[4]~24_combout\,
	combout => \Add|block_carry_in[5]~26_combout\);

-- Location: LCCOMB_X67_Y57_N8
\Add|G[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(21) = (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[21]~input_o\,
	datad => \B[21]~input_o\,
	combout => \Add|G\(21));

-- Location: LCCOMB_X67_Y57_N28
\Add|G[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(20) = (\A[20]~input_o\ & (\AddnSub~input_o\ $ (\B[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[20]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Add|G\(20));

-- Location: LCCOMB_X67_Y57_N6
\Add|block_carry_in[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~27_combout\ = (\Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\ & ((\Add|G\(21)) # ((\Add|P\(21) & \Add|G\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(21),
	datac => \Add|G\(21),
	datad => \Add|G\(20),
	combout => \Add|block_carry_in[6]~27_combout\);

-- Location: LCCOMB_X67_Y57_N20
\Add|block_carry_in[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[6]~28_combout\ = (\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[5]~26_combout\)))) # (!\Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\ & ((\Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\) # 
-- ((\Add|block_carry_in[6]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|Pout~combout\,
	datab => \Add|GEN_BLOCKS:5:LACG_INST|g_int~0_combout\,
	datac => \Add|block_carry_in[5]~26_combout\,
	datad => \Add|block_carry_in[6]~27_combout\,
	combout => \Add|block_carry_in[6]~28_combout\);

-- Location: LCCOMB_X63_Y56_N0
\Add|block_carry_in[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[7]~30_combout\ = (\Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[6]~28_combout\)))) # (!\Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[7]~29_combout\) # 
-- ((\Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:6:LACG_INST|Pout~combout\,
	datab => \Add|block_carry_in[7]~29_combout\,
	datac => \Add|GEN_BLOCKS:6:LACG_INST|g_int~0_combout\,
	datad => \Add|block_carry_in[6]~28_combout\,
	combout => \Add|block_carry_in[7]~30_combout\);

-- Location: LCCOMB_X61_Y49_N26
\Add|G[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(29) = (\A[29]~input_o\ & (\B[29]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datac => \B[29]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(29));

-- Location: LCCOMB_X61_Y49_N14
\Add|G[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(28) = (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datad => \A[28]~input_o\,
	combout => \Add|G\(28));

-- Location: LCCOMB_X61_Y49_N0
\Add|block_carry_in[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[8]~31_combout\ = (\Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\ & ((\Add|G\(29)) # ((\Add|P\(29) & \Add|G\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(29),
	datab => \Add|P\(29),
	datac => \Add|G\(28),
	datad => \Add|GEN_BLOCKS:7:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[8]~31_combout\);

-- Location: LCCOMB_X61_Y49_N6
\Add|block_carry_in[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[8]~32_combout\ = (\Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[7]~30_combout\)))) # (!\Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\ & ((\Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\) # 
-- ((\Add|block_carry_in[8]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:7:LACG_INST|g_int~0_combout\,
	datab => \Add|GEN_BLOCKS:7:LACG_INST|Pout~combout\,
	datac => \Add|block_carry_in[7]~30_combout\,
	datad => \Add|block_carry_in[8]~31_combout\,
	combout => \Add|block_carry_in[8]~32_combout\);

-- Location: LCCOMB_X61_Y50_N14
\Add|block_carry_in[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~53_combout\ = (\Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & ((\Add|P\(34) & ((\Add|block_carry_in[8]~32_combout\))) # (!\Add|P\(34) & (\Add|block_carry_in[9]~35_combout\)))) # (!\Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & 
-- (\Add|block_carry_in[9]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[9]~35_combout\,
	datab => \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(34),
	datad => \Add|block_carry_in[8]~32_combout\,
	combout => \Add|block_carry_in[9]~53_combout\);

-- Location: LCCOMB_X66_Y50_N14
\Add|block_carry_in[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[9]~54_combout\ = (\A[35]~input_o\ & ((\Add|block_carry_in[9]~53_combout\) # (\B[35]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[35]~input_o\ & (\Add|block_carry_in[9]~53_combout\ & (\B[35]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|block_carry_in[9]~53_combout\,
	combout => \Add|block_carry_in[9]~54_combout\);

-- Location: LCCOMB_X65_Y54_N8
\Add|GEN_BLOCKS:10:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\,
	datac => \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X66_Y54_N22
\Add|GEN_BLOCKS:9:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\ = (\Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datad => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X65_Y54_N26
\Add|block_carry_in[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~36_combout\ = (\Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[10]~10_combout\) # ((\Add|block_carry_in[9]~54_combout\ & \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[10]~10_combout\,
	datab => \Add|block_carry_in[9]~54_combout\,
	datac => \Add|GEN_BLOCKS:10:LACG_INST|Pout~combout\,
	datad => \Add|GEN_BLOCKS:9:LACG_INST|Pout~combout\,
	combout => \Add|block_carry_in[11]~36_combout\);

-- Location: LCCOMB_X65_Y54_N4
\Add|G[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(44) = (\A[44]~input_o\ & (\B[44]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[44]~input_o\,
	combout => \Add|G\(44));

-- Location: LCCOMB_X63_Y54_N12
\Add|block_carry_in[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~6_combout\ = (\A[45]~input_o\ & ((\Add|G\(44)) # (\AddnSub~input_o\ $ (\B[45]~input_o\)))) # (!\A[45]~input_o\ & (\Add|G\(44) & (\AddnSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \Add|G\(44),
	datac => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \Add|block_carry_in[12]~6_combout\);

-- Location: LCCOMB_X63_Y54_N10
\Add|block_carry_in[12]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~5_combout\ = (\A[46]~input_o\ & (\AddnSub~input_o\ $ (\B[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Add|block_carry_in[12]~5_combout\);

-- Location: LCCOMB_X63_Y54_N14
\Add|block_carry_in[12]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~7_combout\ = (\Add|P\(46) & (!\Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[12]~6_combout\) # (\Add|block_carry_in[12]~5_combout\)))) # (!\Add|P\(46) & (((\Add|block_carry_in[12]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[12]~6_combout\,
	datab => \Add|P\(46),
	datac => \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[12]~5_combout\,
	combout => \Add|block_carry_in[12]~7_combout\);

-- Location: LCCOMB_X63_Y54_N8
\Add|block_carry_in[12]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~8_combout\ = (\A[47]~input_o\ & ((\Add|block_carry_in[12]~7_combout\) # (\AddnSub~input_o\ $ (\B[47]~input_o\)))) # (!\A[47]~input_o\ & (\Add|block_carry_in[12]~7_combout\ & (\AddnSub~input_o\ $ (\B[47]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|block_carry_in[12]~7_combout\,
	datad => \B[47]~input_o\,
	combout => \Add|block_carry_in[12]~8_combout\);

-- Location: LCCOMB_X65_Y54_N6
\Add|block_carry_in[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[12]~39_combout\ = (\Add|block_carry_in[12]~8_combout\) # ((\Add|GEN_BLOCKS:11:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[11]~38_combout\) # (\Add|block_carry_in[11]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:11:LACG_INST|Pout~combout\,
	datab => \Add|block_carry_in[11]~38_combout\,
	datac => \Add|block_carry_in[11]~36_combout\,
	datad => \Add|block_carry_in[12]~8_combout\,
	combout => \Add|block_carry_in[12]~39_combout\);

-- Location: LCCOMB_X60_Y52_N14
\Add|block_carry_in[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~51_combout\ = (\Add|P\(50) & ((\Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[12]~39_combout\))) # (!\Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[13]~42_combout\)))) # (!\Add|P\(50) & 
-- (\Add|block_carry_in[13]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~42_combout\,
	datab => \Add|P\(50),
	datac => \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[12]~39_combout\,
	combout => \Add|block_carry_in[13]~51_combout\);

-- Location: IOIBUF_X0_Y47_N15
\B[51]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(51),
	o => \B[51]~input_o\);

-- Location: LCCOMB_X60_Y51_N30
\Add|block_carry_in[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[13]~52_combout\ = (\A[51]~input_o\ & ((\Add|block_carry_in[13]~51_combout\) # (\AddnSub~input_o\ $ (\B[51]~input_o\)))) # (!\A[51]~input_o\ & (\Add|block_carry_in[13]~51_combout\ & (\AddnSub~input_o\ $ (\B[51]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[51]~input_o\,
	datac => \Add|block_carry_in[13]~51_combout\,
	datad => \B[51]~input_o\,
	combout => \Add|block_carry_in[13]~52_combout\);

-- Location: IOIBUF_X65_Y73_N15
\B[52]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(52),
	o => \B[52]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\B[53]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(53),
	o => \B[53]~input_o\);

-- Location: LCCOMB_X62_Y56_N8
\Add|P[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(53) = \A[53]~input_o\ $ (\B[53]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[53]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|P\(53));

-- Location: LCCOMB_X62_Y56_N26
\Add|GEN_BLOCKS:13:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ = (\Add|P\(53) & (\B[52]~input_o\ $ (\AddnSub~input_o\ $ (\A[52]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[52]~input_o\,
	datab => \Add|P\(53),
	datac => \AddnSub~input_o\,
	datad => \A[52]~input_o\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\);

-- Location: IOIBUF_X89_Y73_N8
\B[54]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(54),
	o => \B[54]~input_o\);

-- Location: LCCOMB_X65_Y56_N8
\Add|P[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(54) = \AddnSub~input_o\ $ (\A[54]~input_o\ $ (\B[54]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Add|P\(54));

-- Location: LCCOMB_X65_Y56_N26
\Add|block_carry_in[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~2_combout\ = (\A[54]~input_o\ & (\AddnSub~input_o\ $ (\B[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Add|block_carry_in[14]~2_combout\);

-- Location: LCCOMB_X65_Y56_N20
\Add|G[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(52) = (\A[52]~input_o\ & (\B[52]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[52]~input_o\,
	combout => \Add|G\(52));

-- Location: LCCOMB_X65_Y56_N14
\Add|block_carry_in[14]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~3_combout\ = (\A[53]~input_o\ & ((\Add|G\(52)) # (\B[53]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[53]~input_o\ & (\Add|G\(52) & (\B[53]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(52),
	combout => \Add|block_carry_in[14]~3_combout\);

-- Location: LCCOMB_X65_Y56_N24
\Add|block_carry_in[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~4_combout\ = (\Add|P\(54) & (!\Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[14]~2_combout\) # (\Add|block_carry_in[14]~3_combout\)))) # (!\Add|P\(54) & (\Add|block_carry_in[14]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[14]~2_combout\,
	datab => \Add|block_carry_in[14]~3_combout\,
	datac => \Add|P\(54),
	datad => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\,
	combout => \Add|block_carry_in[14]~4_combout\);

-- Location: LCCOMB_X65_Y56_N22
\Add|block_carry_in[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~49_combout\ = (\Add|block_carry_in[14]~4_combout\) # ((\Add|block_carry_in[13]~52_combout\ & (\Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\ & \Add|P\(54))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~52_combout\,
	datab => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(54),
	datad => \Add|block_carry_in[14]~4_combout\,
	combout => \Add|block_carry_in[14]~49_combout\);

-- Location: IOIBUF_X40_Y73_N1
\B[55]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(55),
	o => \B[55]~input_o\);

-- Location: LCCOMB_X60_Y58_N4
\Add|block_carry_in[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[14]~50_combout\ = (\Add|block_carry_in[14]~49_combout\ & ((\A[55]~input_o\) # (\AddnSub~input_o\ $ (\B[55]~input_o\)))) # (!\Add|block_carry_in[14]~49_combout\ & (\A[55]~input_o\ & (\AddnSub~input_o\ $ (\B[55]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[14]~49_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Add|block_carry_in[14]~50_combout\);

-- Location: LCCOMB_X61_Y57_N18
\Add|GEN_BLOCKS:14:LACG_INST|Pout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ = (\Add|P\(57) & (\B[56]~input_o\ $ (\AddnSub~input_o\ $ (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[56]~input_o\,
	datad => \Add|P\(57),
	combout => \Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\);

-- Location: LCCOMB_X61_Y57_N28
\Add|GEN_BLOCKS:14:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\ = (\Add|P\(58) & (\Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & (\Logic|xor_result[59]~1_combout\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[59]~1_combout\,
	datab => \Add|P\(58),
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\,
	combout => \Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X61_Y57_N6
\Add|block_carry_in[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[15]~45_combout\ = (\Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[14]~50_combout\))) # (!\Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\ & (\Add|block_carry_in[15]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[15]~44_combout\,
	datab => \Add|block_carry_in[14]~50_combout\,
	datad => \Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\,
	combout => \Add|block_carry_in[15]~45_combout\);

-- Location: LCCOMB_X59_Y58_N16
\Add|G[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(61) = (\A[61]~input_o\ & (\AddnSub~input_o\ $ (\B[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Add|G\(61));

-- Location: LCCOMB_X59_Y58_N10
\Add|GEN_BLOCKS:15:LACG_INST|g_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\ = (\A[62]~input_o\ & ((\Add|G\(61)) # (\AddnSub~input_o\ $ (\B[62]~input_o\)))) # (!\A[62]~input_o\ & (\Add|G\(61) & (\AddnSub~input_o\ $ (\B[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[62]~input_o\,
	datac => \B[62]~input_o\,
	datad => \Add|G\(61),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\);

-- Location: LCCOMB_X59_Y58_N0
\Add|G[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(60) = (\A[60]~input_o\ & (\B[60]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datac => \B[60]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(60));

-- Location: LCCOMB_X59_Y58_N26
\Add|GEN_BLOCKS:15:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\ = (\Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\) # ((\Add|P\(62) & (\Add|P\(61) & \Add|G\(60))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:15:LACG_INST|g_int~0_combout\,
	datab => \Add|P\(62),
	datac => \Add|P\(61),
	datad => \Add|G\(60),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X60_Y58_N8
\Add|GEN_BLOCKS:15:LACG_INST|C[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C\(3) = (\Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\) # ((\Add|GEN_BLOCKS:15:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[15]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:15:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[15]~45_combout\,
	datac => \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C\(3));

-- Location: LCCOMB_X60_Y58_N26
\AltB~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \AltB~0_combout\ = (\A[63]~input_o\ & (\Add|GEN_BLOCKS:15:LACG_INST|C\(3) & (\B[63]~input_o\ $ (!\AddnSub~input_o\)))) # (!\A[63]~input_o\ & ((\Add|GEN_BLOCKS:15:LACG_INST|C\(3)) # (\B[63]~input_o\ $ (!\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[63]~input_o\,
	datab => \A[63]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:15:LACG_INST|C\(3),
	combout => \AltB~0_combout\);

-- Location: IOIBUF_X45_Y73_N1
\FuncClass[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FuncClass(1),
	o => \FuncClass[1]~input_o\);

-- Location: LCCOMB_X60_Y58_N12
\Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~0_combout\ = (\FuncClass[0]~input_o\ & (((\FuncClass[1]~input_o\)))) # (!\FuncClass[0]~input_o\ & ((\FuncClass[1]~input_o\ & ((!\AltB~0_combout\))) # (!\FuncClass[1]~input_o\ & (\Y_ShiftOrArith[0]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Y_ShiftOrArith[0]~9_combout\,
	datac => \AltB~0_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux63~0_combout\);

-- Location: IOIBUF_X54_Y73_N8
\LogicFN[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(1),
	o => \LogicFN[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\LogicFN[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LogicFN(0),
	o => \LogicFN[0]~input_o\);

-- Location: LCCOMB_X68_Y55_N0
\Logic|Mux63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux63~0_combout\ = (\B[0]~input_o\ & (\LogicFN[1]~input_o\ $ (((\LogicFN[0]~input_o\ & !\A[0]~input_o\))))) # (!\B[0]~input_o\ & (\A[0]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Logic|Mux63~0_combout\);

-- Location: LCCOMB_X59_Y58_N24
\Add|GEN_BLOCKS:15:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|g_int~2_combout\ = (\A[60]~input_o\ & (\Add|P\(61) & (\B[60]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[60]~input_o\,
	datac => \Add|P\(61),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X60_Y58_N18
\Add|P[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(63) = \B[63]~input_o\ $ (\AddnSub~input_o\ $ (\A[63]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[63]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[63]~input_o\,
	combout => \Add|P\(63));

-- Location: LCCOMB_X59_Y58_N2
\Add|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~0_combout\ = (\Add|P\(62) & (\Add|P\(63) & ((\Add|GEN_BLOCKS:15:LACG_INST|g_int~2_combout\) # (\Add|G\(61)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:15:LACG_INST|g_int~2_combout\,
	datab => \Add|P\(62),
	datac => \Add|G\(61),
	datad => \Add|P\(63),
	combout => \Add|Cout~0_combout\);

-- Location: LCCOMB_X59_Y58_N20
\Add|GEN_BLOCKS:15:LACG_INST|Pout\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|Pout~combout\ = (\Add|P\(60) & (\Add|P\(62) & (\Add|P\(61) & \Add|P\(63))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(60),
	datab => \Add|P\(62),
	datac => \Add|P\(61),
	datad => \Add|P\(63),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|Pout~combout\);

-- Location: LCCOMB_X60_Y58_N6
\Add|G[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(62) = (\A[62]~input_o\ & (\AddnSub~input_o\ $ (\B[62]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[62]~input_o\,
	combout => \Add|G\(62));

-- Location: LCCOMB_X60_Y58_N16
\Add|GEN_BLOCKS:15:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\ = (\Add|G\(62) & ((\A[63]~input_o\) # (\B[63]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(62) & (\A[63]~input_o\ & (\B[63]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(62),
	datab => \B[63]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[63]~input_o\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X60_Y58_N20
\Add|Cout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|Cout~1_combout\ = (\Add|GEN_BLOCKS:15:LACG_INST|Pout~combout\ & (((\Add|block_carry_in[15]~45_combout\)))) # (!\Add|GEN_BLOCKS:15:LACG_INST|Pout~combout\ & ((\Add|Cout~0_combout\) # ((\Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|Cout~0_combout\,
	datab => \Add|GEN_BLOCKS:15:LACG_INST|Pout~combout\,
	datac => \Add|block_carry_in[15]~45_combout\,
	datad => \Add|GEN_BLOCKS:15:LACG_INST|g_int~1_combout\,
	combout => \Add|Cout~1_combout\);

-- Location: LCCOMB_X60_Y58_N14
\Mux63~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux63~1_combout\ = (\Mux63~0_combout\ & (((!\Add|Cout~1_combout\) # (!\FuncClass[0]~input_o\)))) # (!\Mux63~0_combout\ & (\Logic|Mux63~0_combout\ & (\FuncClass[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux63~0_combout\,
	datab => \Logic|Mux63~0_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Add|Cout~1_combout\,
	combout => \Mux63~1_combout\);

-- Location: LCCOMB_X65_Y47_N30
\Shift|rl2[34]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[34]~57_combout\ = (\B[1]~input_o\ & ((\A[36]~input_o\))) # (!\B[1]~input_o\ & (\A[34]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[34]~input_o\,
	datac => \A[36]~input_o\,
	combout => \Shift|rl2[34]~57_combout\);

-- Location: LCCOMB_X65_Y47_N24
\Shift|rl2[33]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[33]~58_combout\ = (\B[0]~input_o\ & (\Shift|rl2[34]~57_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[33]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[34]~57_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[33]~42_combout\,
	combout => \Shift|rl2[33]~58_combout\);

-- Location: LCCOMB_X66_Y49_N6
\Shift|rl2[42]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[42]~55_combout\ = (\B[1]~input_o\ & (\A[44]~input_o\)) # (!\B[1]~input_o\ & ((\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[44]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[42]~55_combout\);

-- Location: LCCOMB_X66_Y49_N16
\Shift|rl2[41]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[41]~56_combout\ = (\B[0]~input_o\ & (\Shift|rl2[42]~55_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[41]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[42]~55_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[41]~39_combout\,
	combout => \Shift|rl2[41]~56_combout\);

-- Location: LCCOMB_X65_Y49_N18
\Shift|rl4[33]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[33]~8_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[41]~56_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[33]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[33]~58_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[41]~56_combout\,
	combout => \Shift|rl4[33]~8_combout\);

-- Location: LCCOMB_X65_Y48_N12
\Shift|rl2[46]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[46]~51_combout\ = (\B[1]~input_o\ & (\A[48]~input_o\)) # (!\B[1]~input_o\ & ((\A[46]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \A[46]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[46]~51_combout\);

-- Location: LCCOMB_X65_Y48_N14
\Shift|rl2[45]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[45]~52_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[46]~51_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[45]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[45]~33_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[46]~51_combout\,
	combout => \Shift|rl2[45]~52_combout\);

-- Location: LCCOMB_X69_Y47_N22
\Shift|rl2[38]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[38]~53_combout\ = (\B[1]~input_o\ & (\A[40]~input_o\)) # (!\B[1]~input_o\ & ((\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[38]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[38]~53_combout\);

-- Location: LCCOMB_X69_Y47_N0
\Shift|rl2[37]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[37]~54_combout\ = (\B[0]~input_o\ & (\Shift|rl2[38]~53_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[37]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[38]~53_combout\,
	datad => \Shift|rl2[37]~36_combout\,
	combout => \Shift|rl2[37]~54_combout\);

-- Location: LCCOMB_X65_Y49_N16
\Shift|rl4[37]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[37]~7_combout\ = (\B[3]~input_o\ & (\Shift|rl2[45]~52_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[37]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[45]~52_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[37]~54_combout\,
	combout => \Shift|rl4[37]~7_combout\);

-- Location: LCCOMB_X65_Y49_N4
\Shift|rl4[33]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[33]~9_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[37]~7_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[33]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[33]~8_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[37]~7_combout\,
	combout => \Shift|rl4[33]~9_combout\);

-- Location: LCCOMB_X60_Y54_N10
\Shift|rl2[61]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[61]~64_combout\ = (\B[1]~input_o\ & \A[63]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Shift|rl2[61]~64_combout\);

-- Location: LCCOMB_X60_Y54_N24
\Y_R[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~20_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Y_R[1]~20_combout\);

-- Location: LCCOMB_X60_Y54_N12
\Y_R[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~21_combout\ = (\Y_R[1]~20_combout\) # ((\Shift|rl2[61]~64_combout\ & ((\ShiftFN[0]~input_o\) # (!\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[61]~64_combout\,
	datab => \B[0]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_R[1]~20_combout\,
	combout => \Y_R[1]~21_combout\);

-- Location: LCCOMB_X61_Y54_N28
\Shift|rl2[58]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[58]~63_combout\ = (\B[1]~input_o\ & (\A[60]~input_o\)) # (!\B[1]~input_o\ & ((\A[58]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \A[58]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[58]~63_combout\);

-- Location: LCCOMB_X61_Y54_N22
\Y_R[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~19_combout\ = (!\B[2]~input_o\ & ((\B[0]~input_o\ & (\Shift|rl2[58]~63_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[57]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[58]~63_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[57]~30_combout\,
	combout => \Y_R[1]~19_combout\);

-- Location: LCCOMB_X60_Y54_N14
\Y_R[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~22_combout\ = (\B[3]~input_o\ & ((\Y_R[1]~19_combout\) # ((\Y_R[1]~21_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~21_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~19_combout\,
	combout => \Y_R[1]~22_combout\);

-- Location: LCCOMB_X60_Y51_N22
\Shift|rl2[50]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[50]~61_combout\ = (\B[1]~input_o\ & (\A[52]~input_o\)) # (!\B[1]~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[50]~input_o\,
	combout => \Shift|rl2[50]~61_combout\);

-- Location: LCCOMB_X60_Y51_N8
\Shift|rl2[49]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[49]~62_combout\ = (\B[0]~input_o\ & (\Shift|rl2[50]~61_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[49]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[50]~61_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[49]~25_combout\,
	combout => \Shift|rl2[49]~62_combout\);

-- Location: LCCOMB_X66_Y51_N22
\Shift|rl2[54]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[54]~59_combout\ = (\B[1]~input_o\ & (\A[56]~input_o\)) # (!\B[1]~input_o\ & ((\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shift|rl2[54]~59_combout\);

-- Location: LCCOMB_X66_Y51_N16
\Shift|rl2[53]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[53]~60_combout\ = (\B[0]~input_o\ & (\Shift|rl2[54]~59_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[53]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[54]~59_combout\,
	datad => \Shift|rl2[53]~22_combout\,
	combout => \Shift|rl2[53]~60_combout\);

-- Location: LCCOMB_X65_Y49_N14
\Y_R[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~18_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[53]~60_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[49]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[49]~62_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[53]~60_combout\,
	combout => \Y_R[1]~18_combout\);

-- Location: LCCOMB_X65_Y52_N0
\Y_R[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~23_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~22_combout\) # (\Y_R[1]~18_combout\)))) # (!\B[4]~input_o\ & (\Shift|rl4[33]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|rl4[33]~9_combout\,
	datac => \Y_R[1]~22_combout\,
	datad => \Y_R[1]~18_combout\,
	combout => \Y_R[1]~23_combout\);

-- Location: LCCOMB_X62_Y49_N8
\Shift|rl2[30]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[30]~65_combout\ = (\B[1]~input_o\ & ((\A[32]~input_o\))) # (!\B[1]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Shift|rl2[30]~65_combout\);

-- Location: LCCOMB_X63_Y49_N18
\Shift|rl2[29]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[29]~66_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[30]~65_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[29]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[29]~10_combout\,
	datad => \Shift|rl2[30]~65_combout\,
	combout => \Shift|rl2[29]~66_combout\);

-- Location: LCCOMB_X68_Y49_N12
\Shift|rl2[26]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~67_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[26]~67_combout\);

-- Location: LCCOMB_X68_Y49_N6
\Shift|rl2[25]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[25]~68_combout\ = (\B[0]~input_o\ & (\Shift|rl2[26]~67_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[25]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[26]~67_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[25]~13_combout\,
	combout => \Shift|rl2[25]~68_combout\);

-- Location: LCCOMB_X67_Y49_N26
\Shift|rl4[17]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~10_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[29]~66_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[25]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[29]~66_combout\,
	datac => \Shift|rl2[25]~68_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl4[17]~10_combout\);

-- Location: LCCOMB_X72_Y52_N6
\Shift|rl2[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~71_combout\ = (\B[1]~input_o\ & ((\A[20]~input_o\))) # (!\B[1]~input_o\ & (\A[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A[20]~input_o\,
	combout => \Shift|rl2[18]~71_combout\);

-- Location: LCCOMB_X72_Y52_N0
\Shift|rl2[17]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[17]~72_combout\ = (\B[0]~input_o\ & (\Shift|rl2[18]~71_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[17]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[18]~71_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[17]~19_combout\,
	combout => \Shift|rl2[17]~72_combout\);

-- Location: LCCOMB_X67_Y48_N14
\Shift|rl2[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~69_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|rl2[22]~69_combout\);

-- Location: LCCOMB_X67_Y48_N0
\Shift|rl2[21]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[21]~70_combout\ = (\B[0]~input_o\ & (\Shift|rl2[22]~69_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[21]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[22]~69_combout\,
	datad => \Shift|rl2[21]~16_combout\,
	combout => \Shift|rl2[21]~70_combout\);

-- Location: LCCOMB_X67_Y49_N20
\Shift|rl3[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[17]~4_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[21]~70_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[17]~72_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|rl2[17]~72_combout\,
	datad => \Shift|rl2[21]~70_combout\,
	combout => \Shift|rl3[17]~4_combout\);

-- Location: LCCOMB_X67_Y49_N30
\Shift|rl4[17]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[17]~11_combout\ = (\Shift|rl4[17]~10_combout\) # ((\Shift|rl3[17]~4_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[17]~10_combout\,
	datab => \Shift|rl3[17]~4_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|rl4[17]~11_combout\);

-- Location: LCCOMB_X60_Y53_N4
\Y_ShiftOrArith[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~17_combout\ = (\B[5]~input_o\ & (\Y_R[1]~23_combout\)) # (!\B[5]~input_o\ & (((\Shift|rl4[17]~11_combout\ & \B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Y_R[1]~23_combout\,
	datac => \Shift|rl4[17]~11_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_ShiftOrArith[1]~17_combout\);

-- Location: LCCOMB_X66_Y56_N8
\Add|GEN_BLOCKS:0:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ = (\B[0]~input_o\ & ((\A[0]~input_o\))) # (!\B[0]~input_o\ & (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X66_Y56_N26
\Y_ShiftOrArith[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~10_combout\ = (!\ShiftFN[1]~input_o\ & (!\ShiftFN[0]~input_o\ & (\Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ $ (\Add|P\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|P\(1),
	combout => \Y_ShiftOrArith[1]~10_combout\);

-- Location: LCCOMB_X68_Y53_N8
\Y_ShiftOrArith[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~11_combout\ = (!\B[4]~input_o\ & !\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Y_ShiftOrArith[1]~11_combout\);

-- Location: LCCOMB_X70_Y53_N26
\Shift|rl2[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~45_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[8]~input_o\)) # (!\B[0]~input_o\ & ((\A[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[0]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[5]~45_combout\);

-- Location: LCCOMB_X70_Y53_N4
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

-- Location: LCCOMB_X70_Y53_N14
\Shift|rl2[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[5]~46_combout\ = (\Shift|rl2[5]~45_combout\) # ((!\B[1]~input_o\ & \Shift|rl1[5]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shift|rl2[5]~45_combout\,
	datad => \Shift|rl1[5]~4_combout\,
	combout => \Shift|rl2[5]~46_combout\);

-- Location: LCCOMB_X67_Y53_N2
\Shift|rl1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[3]~3_combout\ = (\B[0]~input_o\ & ((\A[4]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[4]~input_o\,
	combout => \Shift|rl1[3]~3_combout\);

-- Location: LCCOMB_X69_Y53_N6
\Y_ShiftOrArith[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~12_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Y_ShiftOrArith[1]~12_combout\);

-- Location: LCCOMB_X69_Y53_N24
\Y_ShiftOrArith[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~13_combout\ = (!\B[2]~input_o\ & ((\Y_ShiftOrArith[1]~12_combout\) # ((\B[1]~input_o\ & \Shift|rl1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|rl1[3]~3_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_ShiftOrArith[1]~12_combout\,
	combout => \Y_ShiftOrArith[1]~13_combout\);

-- Location: LCCOMB_X69_Y53_N2
\Y_ShiftOrArith[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~14_combout\ = (!\B[3]~input_o\ & ((\Y_ShiftOrArith[1]~13_combout\) # ((\B[2]~input_o\ & \Shift|rl2[5]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[5]~46_combout\,
	datad => \Y_ShiftOrArith[1]~13_combout\,
	combout => \Y_ShiftOrArith[1]~14_combout\);

-- Location: LCCOMB_X69_Y52_N10
\Shift|rl2[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~49_combout\ = (\B[1]~input_o\ & ((\A[12]~input_o\))) # (!\B[1]~input_o\ & (\A[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[10]~49_combout\);

-- Location: LCCOMB_X69_Y52_N28
\Shift|rl2[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[9]~50_combout\ = (\B[0]~input_o\ & (\Shift|rl2[10]~49_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[10]~49_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[9]~7_combout\,
	combout => \Shift|rl2[9]~50_combout\);

-- Location: LCCOMB_X73_Y52_N14
\Shift|rl2[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~47_combout\ = (\B[1]~input_o\ & ((\A[16]~input_o\))) # (!\B[1]~input_o\ & (\A[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	combout => \Shift|rl2[14]~47_combout\);

-- Location: LCCOMB_X69_Y52_N0
\Shift|rl2[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[13]~48_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[14]~47_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[13]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[13]~4_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[14]~47_combout\,
	combout => \Shift|rl2[13]~48_combout\);

-- Location: LCCOMB_X67_Y49_N8
\Shift|rl3[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[9]~3_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[13]~48_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[9]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[9]~50_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[13]~48_combout\,
	combout => \Shift|rl3[9]~3_combout\);

-- Location: LCCOMB_X60_Y53_N8
\Y_ShiftOrArith[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~15_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[1]~14_combout\) # ((\B[3]~input_o\ & \Shift|rl3[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Y_ShiftOrArith[1]~14_combout\,
	datad => \Shift|rl3[9]~3_combout\,
	combout => \Y_ShiftOrArith[1]~15_combout\);

-- Location: LCCOMB_X69_Y53_N28
\Shift|ll1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[1]~0_combout\ = (\B[0]~input_o\ & (\A[0]~input_o\)) # (!\B[0]~input_o\ & ((\A[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[0]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ll1[1]~0_combout\);

-- Location: LCCOMB_X63_Y53_N10
\Shift|ll4[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[1]~0_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\) # (\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[1]~0_combout\);

-- Location: LCCOMB_X60_Y53_N18
\Y_ShiftOrArith[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~28_combout\ = (\Shift|ll1[1]~0_combout\ & (\ShiftFN[0]~input_o\ & (!\Shift|ll4[1]~0_combout\ & !\ShiftFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[1]~0_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ll4[1]~0_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Y_ShiftOrArith[1]~28_combout\);

-- Location: LCCOMB_X60_Y53_N26
\Y_ShiftOrArith[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~16_combout\ = (\Y_ShiftOrArith[1]~10_combout\) # ((\Y_ShiftOrArith[1]~11_combout\ & ((\Y_ShiftOrArith[1]~15_combout\) # (\Y_ShiftOrArith[1]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~10_combout\,
	datab => \Y_ShiftOrArith[1]~11_combout\,
	datac => \Y_ShiftOrArith[1]~15_combout\,
	datad => \Y_ShiftOrArith[1]~28_combout\,
	combout => \Y_ShiftOrArith[1]~16_combout\);

-- Location: LCCOMB_X60_Y53_N30
\Mux62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~0_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~16_combout\) # ((\ShiftFN[1]~input_o\ & \Y_ShiftOrArith[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_ShiftOrArith[1]~17_combout\,
	datac => \Y_ShiftOrArith[1]~16_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux62~0_combout\);

-- Location: LCCOMB_X60_Y53_N16
\Mux62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~1_combout\ = (\A[1]~input_o\ & (\LogicFN[1]~input_o\ $ (((!\B[1]~input_o\ & \LogicFN[0]~input_o\))))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\LogicFN[1]~input_o\ $ (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux62~1_combout\);

-- Location: LCCOMB_X60_Y53_N2
\Mux62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux62~2_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux62~0_combout\) # ((\FuncClass[0]~input_o\ & \Mux62~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux62~0_combout\,
	datad => \Mux62~1_combout\,
	combout => \Mux62~2_combout\);

-- Location: LCCOMB_X63_Y54_N30
\Mux60~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~7_combout\ = (\LogicFN[1]~input_o\ & \FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	combout => \Mux60~7_combout\);

-- Location: LCCOMB_X67_Y55_N30
\Mux60~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~6_combout\ = (\FuncClass[0]~input_o\ & ((\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux60~6_combout\);

-- Location: LCCOMB_X67_Y55_N28
\Mux60~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~5_combout\ = ((\LogicFN[0]~input_o\ & !\LogicFN[1]~input_o\)) # (!\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux60~5_combout\);

-- Location: LCCOMB_X67_Y55_N8
\Logic|xor_result[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(2) = \B[2]~input_o\ $ (\A[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[2]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Logic|xor_result\(2));

-- Location: LCCOMB_X65_Y55_N4
\Mux60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~2_combout\ = (\B[5]~input_o\) # (!\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux60~2_combout\);

-- Location: LCCOMB_X62_Y49_N10
\Shift|rl2[31]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[31]~80_combout\ = (\B[1]~input_o\ & (\A[33]~input_o\)) # (!\B[1]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[31]~input_o\,
	combout => \Shift|rl2[31]~80_combout\);

-- Location: LCCOMB_X62_Y49_N28
\Shift|rl2[30]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[30]~81_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[31]~80_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[30]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[30]~65_combout\,
	datad => \Shift|rl2[31]~80_combout\,
	combout => \Shift|rl2[30]~81_combout\);

-- Location: LCCOMB_X63_Y49_N12
\Shift|rl2[27]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~82_combout\ = (\B[1]~input_o\ & ((\A[29]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datac => \A[29]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[27]~82_combout\);

-- Location: LCCOMB_X68_Y49_N0
\Shift|rl2[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[26]~83_combout\ = (\B[0]~input_o\ & (\Shift|rl2[27]~82_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[26]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[27]~82_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[26]~67_combout\,
	combout => \Shift|rl2[26]~83_combout\);

-- Location: LCCOMB_X67_Y51_N8
\Shift|rl4[18]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~12_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[30]~81_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[26]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[30]~81_combout\,
	datab => \Shift|rl2[26]~83_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl4[18]~12_combout\);

-- Location: LCCOMB_X67_Y48_N10
\Shift|rl2[23]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~84_combout\ = (\B[1]~input_o\ & ((\A[25]~input_o\))) # (!\B[1]~input_o\ & (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[23]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[25]~input_o\,
	combout => \Shift|rl2[23]~84_combout\);

-- Location: LCCOMB_X67_Y48_N20
\Shift|rl2[22]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[22]~85_combout\ = (\B[0]~input_o\ & (\Shift|rl2[23]~84_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[22]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[23]~84_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[22]~69_combout\,
	combout => \Shift|rl2[22]~85_combout\);

-- Location: LCCOMB_X72_Y52_N18
\Shift|rl2[19]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~86_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[19]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|rl2[19]~86_combout\);

-- Location: LCCOMB_X72_Y52_N20
\Shift|rl2[18]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[18]~87_combout\ = (\B[0]~input_o\ & (\Shift|rl2[19]~86_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[18]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[19]~86_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[18]~71_combout\,
	combout => \Shift|rl2[18]~87_combout\);

-- Location: LCCOMB_X67_Y51_N2
\Shift|rl3[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[18]~6_combout\ = (\B[2]~input_o\ & (\Shift|rl2[22]~85_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[18]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[22]~85_combout\,
	datac => \Shift|rl2[18]~87_combout\,
	combout => \Shift|rl3[18]~6_combout\);

-- Location: LCCOMB_X66_Y53_N0
\Shift|rl4[18]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[18]~13_combout\ = (\Shift|rl4[18]~12_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[18]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl4[18]~12_combout\,
	datad => \Shift|rl3[18]~6_combout\,
	combout => \Shift|rl4[18]~13_combout\);

-- Location: LCCOMB_X69_Y53_N12
\Shift|ll2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~0_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[0]~input_o\))) # (!\B[1]~input_o\ & (\A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[2]~input_o\,
	datab => \A[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[2]~0_combout\);

-- Location: LCCOMB_X69_Y53_N30
\Shift|ll2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[2]~1_combout\ = (\Shift|ll2[2]~0_combout\) # ((\A[1]~input_o\ & (\B[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shift|ll2[2]~0_combout\,
	combout => \Shift|ll2[2]~1_combout\);

-- Location: LCCOMB_X66_Y53_N6
\Shift|ll5[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[2]~35_combout\ = (!\B[2]~input_o\ & (\Shift|ll2[2]~1_combout\ & (!\B[4]~input_o\ & !\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[2]~1_combout\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll5[2]~35_combout\);

-- Location: LCCOMB_X65_Y50_N26
\Mux60~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~3_combout\ = \ShiftFN[1]~input_o\ $ (\B[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	combout => \Mux60~3_combout\);

-- Location: LCCOMB_X65_Y50_N20
\Mux60~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~4_combout\ = (\ShiftFN[1]~input_o\ & ((\B[5]~input_o\) # (\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux60~4_combout\);

-- Location: LCCOMB_X66_Y51_N18
\Shift|rl2[55]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[55]~96_combout\ = (\B[1]~input_o\ & (\A[57]~input_o\)) # (!\B[1]~input_o\ & ((\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|rl2[55]~96_combout\);

-- Location: LCCOMB_X66_Y51_N20
\Shift|rl2[54]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[54]~97_combout\ = (\B[0]~input_o\ & (\Shift|rl2[55]~96_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[54]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[55]~96_combout\,
	datac => \Shift|rl2[54]~59_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[54]~97_combout\);

-- Location: LCCOMB_X60_Y51_N2
\Shift|rl2[51]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[51]~98_combout\ = (\B[1]~input_o\ & (\A[53]~input_o\)) # (!\B[1]~input_o\ & ((\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|rl2[51]~98_combout\);

-- Location: LCCOMB_X60_Y51_N4
\Shift|rl2[50]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[50]~99_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[51]~98_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[50]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[50]~61_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[51]~98_combout\,
	combout => \Shift|rl2[50]~99_combout\);

-- Location: LCCOMB_X66_Y53_N18
\Y_R[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~24_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[54]~97_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[50]~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[54]~97_combout\,
	datac => \Shift|rl2[50]~99_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~24_combout\);

-- Location: LCCOMB_X65_Y48_N8
\Shift|rl2[47]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[47]~88_combout\ = (\B[1]~input_o\ & ((\A[49]~input_o\))) # (!\B[1]~input_o\ & (\A[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[49]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|rl2[47]~88_combout\);

-- Location: LCCOMB_X65_Y48_N2
\Shift|rl2[46]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[46]~89_combout\ = (\B[0]~input_o\ & (\Shift|rl2[47]~88_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[46]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[47]~88_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[46]~51_combout\,
	combout => \Shift|rl2[46]~89_combout\);

-- Location: LCCOMB_X69_Y47_N18
\Shift|rl2[39]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[39]~90_combout\ = (\B[1]~input_o\ & ((\A[41]~input_o\))) # (!\B[1]~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \A[41]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[39]~90_combout\);

-- Location: LCCOMB_X69_Y47_N20
\Shift|rl2[38]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[38]~91_combout\ = (\B[0]~input_o\ & (\Shift|rl2[39]~90_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[38]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[39]~90_combout\,
	datac => \Shift|rl2[38]~53_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[38]~91_combout\);

-- Location: LCCOMB_X67_Y49_N2
\Shift|rl4[38]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[38]~14_combout\ = (\B[3]~input_o\ & (\Shift|rl2[46]~89_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[38]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[46]~89_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[38]~91_combout\,
	combout => \Shift|rl4[38]~14_combout\);

-- Location: LCCOMB_X65_Y47_N26
\Shift|rl2[35]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[35]~94_combout\ = (\B[1]~input_o\ & (\A[37]~input_o\)) # (!\B[1]~input_o\ & ((\A[35]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[35]~input_o\,
	combout => \Shift|rl2[35]~94_combout\);

-- Location: LCCOMB_X65_Y47_N20
\Shift|rl2[34]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[34]~95_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[35]~94_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[34]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[34]~57_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[35]~94_combout\,
	combout => \Shift|rl2[34]~95_combout\);

-- Location: LCCOMB_X66_Y49_N2
\Shift|rl2[43]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[43]~92_combout\ = (\B[1]~input_o\ & ((\A[45]~input_o\))) # (!\B[1]~input_o\ & (\A[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \A[45]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[43]~92_combout\);

-- Location: LCCOMB_X66_Y49_N12
\Shift|rl2[42]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[42]~93_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[43]~92_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[42]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[42]~55_combout\,
	datab => \Shift|rl2[43]~92_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[42]~93_combout\);

-- Location: LCCOMB_X67_Y51_N28
\Shift|rl4[34]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[34]~15_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[42]~93_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[34]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[34]~95_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[42]~93_combout\,
	combout => \Shift|rl4[34]~15_combout\);

-- Location: LCCOMB_X67_Y55_N18
\Shift|rl4[34]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[34]~16_combout\ = (\B[2]~input_o\ & (\Shift|rl4[38]~14_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[34]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl4[38]~14_combout\,
	datac => \Shift|rl4[34]~15_combout\,
	combout => \Shift|rl4[34]~16_combout\);

-- Location: LCCOMB_X61_Y54_N24
\Shift|rl2[58]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[58]~100_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[61]~input_o\)) # (!\B[1]~input_o\ & ((\A[59]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[61]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Shift|rl2[58]~100_combout\);

-- Location: LCCOMB_X61_Y54_N18
\Shift|rl2[58]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[58]~101_combout\ = (\Shift|rl2[58]~100_combout\) # ((\Shift|rl2[58]~63_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[58]~63_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[58]~100_combout\,
	combout => \Shift|rl2[58]~101_combout\);

-- Location: LCCOMB_X63_Y53_N20
\Y_R[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~25_combout\ = (\B[0]~input_o\ & (\A[63]~input_o\)) # (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[63]~input_o\)) # (!\B[1]~input_o\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Y_R[1]~25_combout\);

-- Location: LCCOMB_X63_Y53_N22
\Y_R[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~26_combout\ = (\ShiftFN[0]~input_o\ & (\Y_R[1]~25_combout\)) # (!\ShiftFN[0]~input_o\ & (((!\B[1]~input_o\ & \Shift|rl1[62]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~25_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Y_R[1]~26_combout\);

-- Location: LCCOMB_X63_Y53_N24
\Y_R[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~27_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Y_R[1]~26_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[58]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[58]~101_combout\,
	datac => \Y_R[1]~26_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~27_combout\);

-- Location: LCCOMB_X66_Y53_N20
\Y_R[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~28_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~24_combout\) # ((\Y_R[1]~27_combout\)))) # (!\B[4]~input_o\ & (((\Shift|rl4[34]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~24_combout\,
	datac => \Shift|rl4[34]~16_combout\,
	datad => \Y_R[1]~27_combout\,
	combout => \Y_R[1]~28_combout\);

-- Location: LCCOMB_X66_Y53_N30
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~28_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[2]~35_combout\,
	datab => \Mux60~3_combout\,
	datac => \Mux60~4_combout\,
	datad => \Y_R[1]~28_combout\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X67_Y53_N28
\Mux60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\B[3]~input_o\) # ((\B[1]~input_o\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X65_Y49_N0
\Mux60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (\B[3]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	combout => \Mux60~1_combout\);

-- Location: LCCOMB_X70_Y53_N2
\Shift|rl2[7]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~74_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|rl2[7]~74_combout\);

-- Location: LCCOMB_X70_Y53_N24
\Shift|rl2[6]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~73_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[6]~input_o\,
	combout => \Shift|rl2[6]~73_combout\);

-- Location: LCCOMB_X70_Y53_N12
\Shift|rl2[6]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[6]~75_combout\ = (\Shift|rl2[6]~73_combout\) # ((\B[0]~input_o\ & \Shift|rl2[7]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[7]~74_combout\,
	datad => \Shift|rl2[6]~73_combout\,
	combout => \Shift|rl2[6]~75_combout\);

-- Location: LCCOMB_X67_Y53_N6
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (!\Mux60~0_combout\ & ((\Mux60~1_combout\ & ((\Shift|rl2[6]~75_combout\))) # (!\Mux60~1_combout\ & (\Shift|rl1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[2]~0_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|rl2[6]~75_combout\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X69_Y52_N6
\Shift|rl2[11]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~78_combout\ = (\B[1]~input_o\ & ((\A[13]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|rl2[11]~78_combout\);

-- Location: LCCOMB_X69_Y52_N8
\Shift|rl2[10]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[10]~79_combout\ = (\B[0]~input_o\ & (\Shift|rl2[11]~78_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[10]~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[11]~78_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[10]~49_combout\,
	combout => \Shift|rl2[10]~79_combout\);

-- Location: LCCOMB_X73_Y52_N0
\Shift|rl2[15]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~76_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Shift|rl2[15]~76_combout\);

-- Location: LCCOMB_X73_Y52_N2
\Shift|rl2[14]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[14]~77_combout\ = (\B[0]~input_o\ & (\Shift|rl2[15]~76_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[14]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|rl2[15]~76_combout\,
	datad => \Shift|rl2[14]~47_combout\,
	combout => \Shift|rl2[14]~77_combout\);

-- Location: LCCOMB_X67_Y49_N0
\Shift|rl3[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[10]~5_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[14]~77_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[10]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[10]~79_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[14]~77_combout\,
	combout => \Shift|rl3[10]~5_combout\);

-- Location: LCCOMB_X67_Y53_N24
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (\Mux61~0_combout\ & (((\Shift|rl3[10]~5_combout\)) # (!\Mux60~0_combout\))) # (!\Mux61~0_combout\ & (\Mux60~0_combout\ & ((\Shift|rl1[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \Mux60~0_combout\,
	datac => \Shift|rl3[10]~5_combout\,
	datad => \Shift|rl1[4]~1_combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X66_Y53_N24
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (\Mux60~2_combout\ & (((\Mux61~2_combout\)))) # (!\Mux60~2_combout\ & ((\Mux61~2_combout\ & (\Shift|rl4[18]~13_combout\)) # (!\Mux61~2_combout\ & ((\Mux61~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|rl4[18]~13_combout\,
	datac => \Mux61~2_combout\,
	datad => \Mux61~1_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X67_Y55_N0
\Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (\Mux60~6_combout\ & (\Mux60~5_combout\ & (\Logic|xor_result\(2)))) # (!\Mux60~6_combout\ & (((\Mux61~3_combout\)) # (!\Mux60~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~6_combout\,
	datab => \Mux60~5_combout\,
	datac => \Logic|xor_result\(2),
	datad => \Mux61~3_combout\,
	combout => \Mux61~4_combout\);

-- Location: LCCOMB_X66_Y59_N12
\Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = (\B[2]~input_o\ & ((\Mux61~4_combout\) # ((\A[2]~input_o\ & \Mux60~7_combout\)))) # (!\B[2]~input_o\ & (\Mux61~4_combout\ & ((\A[2]~input_o\) # (!\Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \Mux60~7_combout\,
	datad => \Mux61~4_combout\,
	combout => \Mux61~5_combout\);

-- Location: LCCOMB_X60_Y58_N0
\Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux61~6_combout\);

-- Location: LCCOMB_X66_Y56_N20
\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\ = (\A[1]~input_o\ & ((\Add|G\(0)) # (\AddnSub~input_o\ $ (\B[1]~input_o\)))) # (!\A[1]~input_o\ & (\Add|G\(0) & (\AddnSub~input_o\ $ (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[1]~input_o\,
	datac => \Add|G\(0),
	datad => \B[1]~input_o\,
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X66_Y56_N22
\Add|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(2) = \Add|P\(2) $ (((\Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\) # ((\AddnSub~input_o\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|g_int[1]~1_combout\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datad => \Add|P\(2),
	combout => \Add|S\(2));

-- Location: LCCOMB_X66_Y59_N14
\Mux61~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux61~6_combout\ & ((\Add|S\(2)))) # (!\Mux61~6_combout\ & (\Mux61~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~5_combout\,
	datab => \Mux61~6_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Add|S\(2),
	combout => \Mux61~7_combout\);

-- Location: LCCOMB_X66_Y56_N28
\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\ = (\Add|P\(2) & (\Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\ & \Add|P\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(2),
	datac => \Add|GEN_BLOCKS:0:LACG_INST|C[1]~0_combout\,
	datad => \Add|P\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X67_Y53_N26
\Add|P[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P[3]~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \A[3]~input_o\,
	combout => \Add|P[3]~0_combout\);

-- Location: LCCOMB_X66_Y56_N16
\Add|G[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(1) = (\A[1]~input_o\ & (\B[1]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[1]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(1));

-- Location: LCCOMB_X66_Y56_N18
\Add|GEN_BLOCKS:0:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\ = (\A[2]~input_o\ & ((\Add|G\(1)) # (\AddnSub~input_o\ $ (\B[2]~input_o\)))) # (!\A[2]~input_o\ & (\Add|G\(1) & (\AddnSub~input_o\ $ (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[2]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Add|G\(1),
	combout => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X66_Y56_N6
\Add|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(3) = \AddnSub~input_o\ $ (\Add|P[3]~0_combout\ $ (((\Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\) # (\Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|C[3]~1_combout\,
	datac => \Add|P[3]~0_combout\,
	datad => \Add|GEN_BLOCKS:0:LACG_INST|g_int~2_combout\,
	combout => \Add|S\(3));

-- Location: LCCOMB_X60_Y54_N8
\Shift|rl1[61]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl1[61]~5_combout\ = (\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \A[62]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shift|rl1[61]~5_combout\);

-- Location: LCCOMB_X61_Y54_N12
\Shift|rl2[59]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[59]~115_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[60]~input_o\))) # (!\B[0]~input_o\ & (\A[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Shift|rl2[59]~115_combout\);

-- Location: LCCOMB_X61_Y54_N6
\Shift|rl2[59]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[59]~116_combout\ = (\Shift|rl2[59]~115_combout\) # ((\Shift|rl1[61]~5_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[61]~5_combout\,
	datab => \B[1]~input_o\,
	datad => \Shift|rl2[59]~115_combout\,
	combout => \Shift|rl2[59]~116_combout\);

-- Location: LCCOMB_X62_Y50_N12
\Y_R[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~30_combout\ = (\A[63]~input_o\ & ((\ShiftFN[0]~input_o\) # ((!\B[0]~input_o\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y_R[1]~30_combout\);

-- Location: LCCOMB_X61_Y51_N0
\Y_R[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~31_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Y_R[1]~30_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[59]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[59]~116_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Y_R[1]~30_combout\,
	combout => \Y_R[1]~31_combout\);

-- Location: LCCOMB_X61_Y51_N30
\Shift|rl2[55]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[55]~113_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[56]~31_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[55]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[55]~96_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[56]~31_combout\,
	combout => \Shift|rl2[55]~113_combout\);

-- Location: LCCOMB_X62_Y50_N24
\Shift|rl2[51]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[51]~114_combout\ = (\B[0]~input_o\ & (\Shift|rl2[52]~23_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[51]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[52]~23_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[51]~98_combout\,
	combout => \Shift|rl2[51]~114_combout\);

-- Location: LCCOMB_X62_Y50_N2
\Y_R[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~29_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[55]~113_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[51]~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[55]~113_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[51]~114_combout\,
	combout => \Y_R[1]~29_combout\);

-- Location: LCCOMB_X69_Y47_N14
\Shift|rl2[35]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[35]~112_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[36]~37_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[35]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[35]~94_combout\,
	datac => \Shift|rl2[36]~37_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[35]~112_combout\);

-- Location: LCCOMB_X65_Y48_N22
\Shift|rl2[43]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[43]~111_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[44]~34_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[43]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[43]~92_combout\,
	datab => \Shift|rl2[44]~34_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[43]~111_combout\);

-- Location: LCCOMB_X68_Y52_N22
\Shift|rl4[35]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[35]~20_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[43]~111_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[35]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl2[35]~112_combout\,
	datad => \Shift|rl2[43]~111_combout\,
	combout => \Shift|rl4[35]~20_combout\);

-- Location: LCCOMB_X66_Y49_N22
\Shift|rl2[39]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[39]~110_combout\ = (\B[0]~input_o\ & (\Shift|rl2[40]~40_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[39]~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[40]~40_combout\,
	datab => \Shift|rl2[39]~90_combout\,
	datac => \B[0]~input_o\,
	combout => \Shift|rl2[39]~110_combout\);

-- Location: LCCOMB_X65_Y48_N4
\Shift|rl2[47]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[47]~109_combout\ = (\B[0]~input_o\ & (\Shift|rl2[48]~26_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[47]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[48]~26_combout\,
	datab => \Shift|rl2[47]~88_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[47]~109_combout\);

-- Location: LCCOMB_X65_Y51_N0
\Shift|rl4[39]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[39]~19_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[47]~109_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[39]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[39]~110_combout\,
	datab => \Shift|rl2[47]~109_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|rl4[39]~19_combout\);

-- Location: LCCOMB_X66_Y52_N8
\Shift|rl4[35]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[35]~21_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[39]~19_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[35]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[35]~20_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[39]~19_combout\,
	combout => \Shift|rl4[35]~21_combout\);

-- Location: LCCOMB_X66_Y52_N10
\Y_R[1]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~32_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~31_combout\) # ((\Y_R[1]~29_combout\)))) # (!\B[4]~input_o\ & (((\Shift|rl4[35]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~31_combout\,
	datab => \Y_R[1]~29_combout\,
	datac => \Shift|rl4[35]~21_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~32_combout\);

-- Location: LCCOMB_X69_Y53_N16
\Shift|ll2[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~2_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[2]~input_o\))) # (!\B[0]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ll2[3]~2_combout\);

-- Location: LCCOMB_X69_Y53_N18
\Shift|ll2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[3]~3_combout\ = (\Shift|ll2[3]~2_combout\) # ((\Shift|ll1[1]~0_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll1[1]~0_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|ll2[3]~2_combout\,
	combout => \Shift|ll2[3]~3_combout\);

-- Location: LCCOMB_X66_Y52_N6
\Shift|ll5[3]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[3]~36_combout\ = (\Shift|ll2[3]~3_combout\ & (!\B[3]~input_o\ & (!\B[2]~input_o\ & !\B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[3]~3_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ll5[3]~36_combout\);

-- Location: LCCOMB_X66_Y52_N4
\Mux60~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~10_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Y_R[1]~32_combout\)) # (!\Mux60~4_combout\ & ((\Shift|ll5[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Y_R[1]~32_combout\,
	datac => \Mux60~4_combout\,
	datad => \Shift|ll5[3]~36_combout\,
	combout => \Mux60~10_combout\);

-- Location: LCCOMB_X63_Y49_N14
\Shift|rl2[27]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[27]~106_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[28]~11_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[27]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[27]~82_combout\,
	datab => \Shift|rl2[28]~11_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[27]~106_combout\);

-- Location: LCCOMB_X62_Y49_N30
\Shift|rl2[31]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[31]~105_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[32]~43_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[31]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[31]~80_combout\,
	datac => \Shift|rl2[32]~43_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|rl2[31]~105_combout\);

-- Location: LCCOMB_X68_Y52_N18
\Shift|rl4[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~17_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[31]~105_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[27]~106_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[27]~106_combout\,
	datab => \Shift|rl2[31]~105_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[19]~17_combout\);

-- Location: LCCOMB_X67_Y48_N22
\Shift|rl2[23]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[23]~107_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[24]~14_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[23]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[23]~84_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[24]~14_combout\,
	combout => \Shift|rl2[23]~107_combout\);

-- Location: LCCOMB_X72_Y52_N8
\Shift|rl2[19]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[19]~108_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[20]~17_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[19]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[19]~86_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[20]~17_combout\,
	combout => \Shift|rl2[19]~108_combout\);

-- Location: LCCOMB_X68_Y52_N28
\Shift|rl3[19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[19]~8_combout\ = (\B[2]~input_o\ & (\Shift|rl2[23]~107_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[19]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[23]~107_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[19]~108_combout\,
	combout => \Shift|rl3[19]~8_combout\);

-- Location: LCCOMB_X67_Y52_N24
\Shift|rl4[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[19]~18_combout\ = (\Shift|rl4[19]~17_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[19]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[19]~17_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl3[19]~8_combout\,
	combout => \Shift|rl4[19]~18_combout\);

-- Location: LCCOMB_X69_Y52_N2
\Shift|rl2[11]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[11]~104_combout\ = (\B[0]~input_o\ & (\Shift|rl2[12]~5_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[11]~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[12]~5_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[11]~78_combout\,
	combout => \Shift|rl2[11]~104_combout\);

-- Location: LCCOMB_X72_Y52_N14
\Shift|rl2[15]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[15]~103_combout\ = (\B[0]~input_o\ & ((\Shift|rl2[16]~20_combout\))) # (!\B[0]~input_o\ & (\Shift|rl2[15]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[15]~76_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[16]~20_combout\,
	combout => \Shift|rl2[15]~103_combout\);

-- Location: LCCOMB_X68_Y52_N8
\Shift|rl3[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[11]~7_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[15]~103_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[11]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[11]~104_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[15]~103_combout\,
	combout => \Shift|rl3[11]~7_combout\);

-- Location: LCCOMB_X69_Y51_N4
\Shift|rl2[7]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[7]~102_combout\ = (\B[0]~input_o\ & (\Shift|rl2[8]~8_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[7]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[8]~8_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|rl2[7]~74_combout\,
	combout => \Shift|rl2[7]~102_combout\);

-- Location: LCCOMB_X67_Y53_N20
\Mux60~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~8_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (!\Mux60~0_combout\ & ((\Mux60~1_combout\ & (\Shift|rl2[7]~102_combout\)) # (!\Mux60~1_combout\ & ((\Shift|rl1[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[7]~102_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|rl1[3]~3_combout\,
	combout => \Mux60~8_combout\);

-- Location: LCCOMB_X67_Y53_N30
\Mux60~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~9_combout\ = (\Mux60~0_combout\ & ((\Mux60~8_combout\ & ((\Shift|rl3[11]~7_combout\))) # (!\Mux60~8_combout\ & (\Shift|rl1[5]~4_combout\)))) # (!\Mux60~0_combout\ & (((\Mux60~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl1[5]~4_combout\,
	datab => \Mux60~0_combout\,
	datac => \Shift|rl3[11]~7_combout\,
	datad => \Mux60~8_combout\,
	combout => \Mux60~9_combout\);

-- Location: LCCOMB_X67_Y55_N10
\Mux60~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~11_combout\ = (\Mux60~10_combout\ & ((\Shift|rl4[19]~18_combout\) # ((\Mux60~2_combout\)))) # (!\Mux60~10_combout\ & (((!\Mux60~2_combout\ & \Mux60~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~10_combout\,
	datab => \Shift|rl4[19]~18_combout\,
	datac => \Mux60~2_combout\,
	datad => \Mux60~9_combout\,
	combout => \Mux60~11_combout\);

-- Location: LCCOMB_X67_Y55_N20
\Mux60~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~12_combout\ = (\Mux60~6_combout\ & (\Mux60~5_combout\ & (\Add|P[3]~0_combout\))) # (!\Mux60~6_combout\ & (((\Mux60~11_combout\)) # (!\Mux60~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~6_combout\,
	datab => \Mux60~5_combout\,
	datac => \Add|P[3]~0_combout\,
	datad => \Mux60~11_combout\,
	combout => \Mux60~12_combout\);

-- Location: LCCOMB_X66_Y59_N16
\Mux60~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~13_combout\ = (\Mux60~7_combout\ & ((\A[3]~input_o\ & ((\B[3]~input_o\) # (\Mux60~12_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \Mux60~12_combout\)))) # (!\Mux60~7_combout\ & (((\Mux60~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~7_combout\,
	datab => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Mux60~12_combout\,
	combout => \Mux60~13_combout\);

-- Location: LCCOMB_X66_Y59_N2
\Mux60~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~14_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux61~6_combout\ & (\Add|S\(3))) # (!\Mux61~6_combout\ & ((\Mux60~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux61~6_combout\,
	datac => \Add|S\(3),
	datad => \Mux60~13_combout\,
	combout => \Mux60~14_combout\);

-- Location: LCCOMB_X66_Y59_N28
\Logic|xor_result[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(4) = \A[4]~input_o\ $ (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[4]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Logic|xor_result\(4));

-- Location: LCCOMB_X61_Y51_N14
\Y_R[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~33_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[56]~32_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[52]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[52]~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[56]~32_combout\,
	combout => \Y_R[1]~33_combout\);

-- Location: LCCOMB_X61_Y51_N18
\Shift|rl4[40]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[40]~24_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[48]~27_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[40]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[40]~41_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[48]~27_combout\,
	combout => \Shift|rl4[40]~24_combout\);

-- Location: LCCOMB_X61_Y51_N4
\Shift|rl4[36]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[36]~25_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[40]~24_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[36]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[36]~4_combout\,
	datab => \Shift|rl4[40]~24_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|rl4[36]~25_combout\);

-- Location: LCCOMB_X62_Y54_N8
\Y_R[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~34_combout\ = (\A[63]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[63]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_R[1]~34_combout\);

-- Location: LCCOMB_X65_Y51_N10
\Y_R[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~35_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Y_R[1]~34_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[60]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[60]~29_combout\,
	datab => \Y_R[1]~34_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~35_combout\);

-- Location: LCCOMB_X65_Y51_N28
\Y_R[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~36_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~33_combout\) # ((\Y_R[1]~35_combout\)))) # (!\B[4]~input_o\ & (((\Shift|rl4[36]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~33_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|rl4[36]~25_combout\,
	datad => \Y_R[1]~35_combout\,
	combout => \Y_R[1]~36_combout\);

-- Location: LCCOMB_X69_Y52_N20
\Shift|ll2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[0]~7_combout\ = (\B[0]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[0]~7_combout\);

-- Location: LCCOMB_X69_Y53_N22
\Shift|ll2[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~5_combout\ = (\B[1]~input_o\ & ((\A[2]~input_o\))) # (!\B[1]~input_o\ & (\A[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[2]~input_o\,
	combout => \Shift|ll2[4]~5_combout\);

-- Location: LCCOMB_X69_Y53_N20
\Shift|ll2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~4_combout\ = (\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[1]~input_o\))) # (!\B[1]~input_o\ & (\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \Shift|ll2[4]~4_combout\);

-- Location: LCCOMB_X69_Y53_N8
\Shift|ll2[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[4]~6_combout\ = (\Shift|ll2[4]~4_combout\) # ((\Shift|ll2[4]~5_combout\ & !\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[4]~5_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[4]~4_combout\,
	combout => \Shift|ll2[4]~6_combout\);

-- Location: LCCOMB_X69_Y48_N8
\Shift|ll3[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[4]~0_combout\ = (\B[2]~input_o\ & (!\Shift|ll2[0]~7_combout\ & (\A[0]~input_o\))) # (!\B[2]~input_o\ & (((\Shift|ll2[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[0]~7_combout\,
	datab => \A[0]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[4]~6_combout\,
	combout => \Shift|ll3[4]~0_combout\);

-- Location: LCCOMB_X69_Y48_N30
\Shift|ll5[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[4]~37_combout\ = (!\B[4]~input_o\ & (\Shift|ll3[4]~0_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll3[4]~0_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll5[4]~37_combout\);

-- Location: LCCOMB_X65_Y55_N16
\Mux58~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~3_combout\ = (\ShiftFN[1]~input_o\ & (\B[5]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux58~3_combout\);

-- Location: LCCOMB_X65_Y55_N6
\Mux58~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~2_combout\ = (!\ShiftFN[1]~input_o\ & ((!\ShiftFN[0]~input_o\) # (!\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \B[5]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux58~2_combout\);

-- Location: LCCOMB_X66_Y55_N16
\Add|S[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(4) = \Add|P\(4) $ (((\Add|block_carry_in[1]~20_combout\) # (\Add|block_carry_in[1]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[1]~20_combout\,
	datac => \Add|P\(4),
	datad => \Add|block_carry_in[1]~22_combout\,
	combout => \Add|S\(4));

-- Location: LCCOMB_X65_Y51_N30
\Mux59~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~2_combout\ = (\Mux58~3_combout\ & (((\Add|S\(4)) # (!\Mux58~2_combout\)))) # (!\Mux58~3_combout\ & (\Shift|ll5[4]~37_combout\ & (\Mux58~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[4]~37_combout\,
	datab => \Mux58~3_combout\,
	datac => \Mux58~2_combout\,
	datad => \Add|S\(4),
	combout => \Mux59~2_combout\);

-- Location: LCCOMB_X60_Y50_N16
\Mux58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\B[4]~input_o\) # ((\B[2]~input_o\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X62_Y54_N14
\Mux58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (\B[3]~input_o\) # (\B[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Mux58~1_combout\);

-- Location: LCCOMB_X69_Y51_N30
\Shift|rl3[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[12]~9_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[16]~21_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[12]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[12]~6_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|rl2[16]~21_combout\,
	combout => \Shift|rl3[12]~9_combout\);

-- Location: LCCOMB_X69_Y51_N8
\Mux59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\Mux58~1_combout\ & (((\Shift|rl3[12]~9_combout\) # (\Mux58~0_combout\)))) # (!\Mux58~1_combout\ & (\Shift|rl2[4]~3_combout\ & ((!\Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[4]~3_combout\,
	datab => \Mux58~1_combout\,
	datac => \Shift|rl3[12]~9_combout\,
	datad => \Mux58~0_combout\,
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X66_Y47_N4
\Shift|rl3[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[20]~10_combout\ = (\B[2]~input_o\ & (\Shift|rl2[24]~15_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[20]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[24]~15_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[20]~18_combout\,
	combout => \Shift|rl3[20]~10_combout\);

-- Location: LCCOMB_X66_Y47_N26
\Shift|rl4[20]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~22_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[32]~44_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[28]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[28]~12_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[32]~44_combout\,
	combout => \Shift|rl4[20]~22_combout\);

-- Location: LCCOMB_X69_Y51_N26
\Shift|rl4[20]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[20]~23_combout\ = (\Shift|rl4[20]~22_combout\) # ((\Shift|rl3[20]~10_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[20]~10_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl4[20]~22_combout\,
	combout => \Shift|rl4[20]~23_combout\);

-- Location: LCCOMB_X69_Y51_N20
\Mux59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (\Mux58~0_combout\ & ((\Mux59~0_combout\ & (\Shift|rl4[20]~23_combout\)) # (!\Mux59~0_combout\ & ((\Shift|rl2[8]~9_combout\))))) # (!\Mux58~0_combout\ & (\Mux59~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Mux59~0_combout\,
	datac => \Shift|rl4[20]~23_combout\,
	datad => \Shift|rl2[8]~9_combout\,
	combout => \Mux59~1_combout\);

-- Location: LCCOMB_X65_Y51_N8
\Mux59~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux59~2_combout\ & (\Y_R[1]~36_combout\)) # (!\Mux59~2_combout\ & ((\Mux59~1_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux59~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_R[1]~36_combout\,
	datac => \Mux59~2_combout\,
	datad => \Mux59~1_combout\,
	combout => \Mux59~3_combout\);

-- Location: LCCOMB_X67_Y55_N6
\Mux59~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~4_combout\ = (\Mux60~6_combout\ & (\Logic|xor_result\(4) & ((\Mux60~5_combout\)))) # (!\Mux60~6_combout\ & (((\Mux59~3_combout\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~6_combout\,
	datab => \Logic|xor_result\(4),
	datac => \Mux59~3_combout\,
	datad => \Mux60~5_combout\,
	combout => \Mux59~4_combout\);

-- Location: LCCOMB_X66_Y59_N6
\Mux59~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~5_combout\ = (\Mux59~4_combout\ & ((\A[4]~input_o\) # ((\B[4]~input_o\) # (!\Mux60~7_combout\)))) # (!\Mux59~4_combout\ & (\A[4]~input_o\ & (\Mux60~7_combout\ & \B[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux59~4_combout\,
	datab => \A[4]~input_o\,
	datac => \Mux60~7_combout\,
	datad => \B[4]~input_o\,
	combout => \Mux59~5_combout\);

-- Location: LCCOMB_X66_Y59_N24
\Mux59~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux59~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux59~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux59~5_combout\,
	combout => \Mux59~6_combout\);

-- Location: LCCOMB_X65_Y55_N2
\Logic|xor_result[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(5) = \B[5]~input_o\ $ (\A[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Logic|xor_result\(5));

-- Location: LCCOMB_X66_Y55_N2
\Add|block_carry_in[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[1]~46_combout\ = (\Add|block_carry_in[1]~22_combout\) # ((\AddnSub~input_o\ & (\Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\ & \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|GEN_BLOCKS:0:LACG_INST|Pout~1_combout\,
	datac => \Add|GEN_BLOCKS:0:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[1]~22_combout\,
	combout => \Add|block_carry_in[1]~46_combout\);

-- Location: LCCOMB_X66_Y59_N26
\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ = (\A[4]~input_o\ & ((\Add|block_carry_in[1]~46_combout\) # (\AddnSub~input_o\ $ (\B[4]~input_o\)))) # (!\A[4]~input_o\ & (\Add|block_carry_in[1]~46_combout\ & (\AddnSub~input_o\ $ (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[4]~input_o\,
	datac => \A[4]~input_o\,
	datad => \Add|block_carry_in[1]~46_combout\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X66_Y59_N20
\Add|S[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(5) = \A[5]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\ $ (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|C[1]~0_combout\,
	datad => \B[5]~input_o\,
	combout => \Add|S\(5));

-- Location: LCCOMB_X69_Y53_N10
\Shift|ll2[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~8_combout\ = (\B[1]~input_o\ & (\A[3]~input_o\)) # (!\B[1]~input_o\ & ((\A[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Shift|ll2[5]~8_combout\);

-- Location: LCCOMB_X69_Y53_N4
\Shift|ll2[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[5]~9_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[4]~5_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[5]~8_combout\,
	datac => \Shift|ll2[4]~5_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[5]~9_combout\);

-- Location: LCCOMB_X67_Y52_N18
\Shift|ll3[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[5]~1_combout\ = (\B[2]~input_o\ & (!\B[1]~input_o\ & (\Shift|ll1[1]~0_combout\))) # (!\B[2]~input_o\ & (((\Shift|ll2[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \Shift|ll2[5]~9_combout\,
	combout => \Shift|ll3[5]~1_combout\);

-- Location: LCCOMB_X65_Y53_N2
\Shift|ll5[5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[5]~38_combout\ = (!\B[3]~input_o\ & (!\B[4]~input_o\ & \Shift|ll3[5]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll3[5]~1_combout\,
	combout => \Shift|ll5[5]~38_combout\);

-- Location: LCCOMB_X65_Y53_N30
\Mux58~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~6_combout\ = (\Mux58~2_combout\ & ((\Mux58~3_combout\ & (\Add|S\(5))) # (!\Mux58~3_combout\ & ((\Shift|ll5[5]~38_combout\))))) # (!\Mux58~2_combout\ & (((\Mux58~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~2_combout\,
	datab => \Add|S\(5),
	datac => \Mux58~3_combout\,
	datad => \Shift|ll5[5]~38_combout\,
	combout => \Mux58~6_combout\);

-- Location: LCCOMB_X67_Y49_N12
\Shift|rl3[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[13]~11_combout\ = (\B[2]~input_o\ & (\Shift|rl2[17]~72_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[13]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|rl2[17]~72_combout\,
	datad => \Shift|rl2[13]~48_combout\,
	combout => \Shift|rl3[13]~11_combout\);

-- Location: LCCOMB_X69_Y51_N22
\Mux58~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~4_combout\ = (\Mux58~0_combout\ & (((\Mux58~1_combout\)))) # (!\Mux58~0_combout\ & ((\Mux58~1_combout\ & (\Shift|rl3[13]~11_combout\)) # (!\Mux58~1_combout\ & ((\Shift|rl2[5]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Shift|rl3[13]~11_combout\,
	datac => \Mux58~1_combout\,
	datad => \Shift|rl2[5]~46_combout\,
	combout => \Mux58~4_combout\);

-- Location: LCCOMB_X67_Y49_N24
\Shift|rl3[21]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[21]~12_combout\ = (\B[2]~input_o\ & (\Shift|rl2[25]~68_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[21]~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|rl2[25]~68_combout\,
	datad => \Shift|rl2[21]~70_combout\,
	combout => \Shift|rl3[21]~12_combout\);

-- Location: LCCOMB_X67_Y49_N6
\Shift|rl4[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~26_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[33]~58_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[29]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[29]~66_combout\,
	datac => \Shift|rl2[33]~58_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl4[21]~26_combout\);

-- Location: LCCOMB_X67_Y49_N18
\Shift|rl4[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[21]~27_combout\ = (\Shift|rl4[21]~26_combout\) # ((\Shift|rl3[21]~12_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl3[21]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl4[21]~26_combout\,
	combout => \Shift|rl4[21]~27_combout\);

-- Location: LCCOMB_X65_Y53_N8
\Mux58~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~5_combout\ = (\Mux58~4_combout\ & ((\Shift|rl4[21]~27_combout\) # ((!\Mux58~0_combout\)))) # (!\Mux58~4_combout\ & (((\Shift|rl2[9]~50_combout\ & \Mux58~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~4_combout\,
	datab => \Shift|rl4[21]~27_combout\,
	datac => \Shift|rl2[9]~50_combout\,
	datad => \Mux58~0_combout\,
	combout => \Mux58~5_combout\);

-- Location: LCCOMB_X65_Y49_N28
\Shift|rl4[41]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[41]~28_combout\ = (\B[3]~input_o\ & (\Shift|rl2[49]~62_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[41]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[49]~62_combout\,
	datad => \Shift|rl2[41]~56_combout\,
	combout => \Shift|rl4[41]~28_combout\);

-- Location: LCCOMB_X65_Y49_N22
\Shift|rl4[37]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[37]~29_combout\ = (\B[2]~input_o\ & (\Shift|rl4[41]~28_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[37]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[41]~28_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[37]~7_combout\,
	combout => \Shift|rl4[37]~29_combout\);

-- Location: LCCOMB_X60_Y54_N18
\Shift|ra3[61]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[61]~0_combout\ = (\B[2]~input_o\ & (((\A[63]~input_o\)))) # (!\B[2]~input_o\ & ((\B[1]~input_o\ & ((\A[63]~input_o\))) # (!\B[1]~input_o\ & (\Shift|rl1[61]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[1]~input_o\,
	datac => \Shift|rl1[61]~5_combout\,
	datad => \A[63]~input_o\,
	combout => \Shift|ra3[61]~0_combout\);

-- Location: LCCOMB_X60_Y54_N6
\Shift|rl2[61]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[61]~118_combout\ = (\Y_R[1]~20_combout\) # ((\A[63]~input_o\ & (!\B[0]~input_o\ & \B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Y_R[1]~20_combout\,
	combout => \Shift|rl2[61]~118_combout\);

-- Location: LCCOMB_X60_Y54_N28
\Y_R[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~38_combout\ = (\ShiftFN[0]~input_o\ & (((\Shift|ra3[61]~0_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\B[2]~input_o\ & ((\Shift|rl2[61]~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ra3[61]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|rl2[61]~118_combout\,
	combout => \Y_R[1]~38_combout\);

-- Location: LCCOMB_X61_Y54_N16
\Shift|rl2[57]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl2[57]~117_combout\ = (\B[0]~input_o\ & (\Shift|rl2[58]~63_combout\)) # (!\B[0]~input_o\ & ((\Shift|rl2[57]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[58]~63_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|rl2[57]~30_combout\,
	combout => \Shift|rl2[57]~117_combout\);

-- Location: LCCOMB_X65_Y49_N2
\Y_R[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~37_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[57]~117_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[53]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[57]~117_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[53]~60_combout\,
	combout => \Y_R[1]~37_combout\);

-- Location: LCCOMB_X65_Y53_N10
\Y_R[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~39_combout\ = (\Y_R[1]~37_combout\) # ((\Y_R[1]~38_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~38_combout\,
	datab => \Y_R[1]~37_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_R[1]~39_combout\);

-- Location: LCCOMB_X65_Y53_N28
\Y_R[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~40_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~39_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[37]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[37]~29_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~39_combout\,
	combout => \Y_R[1]~40_combout\);

-- Location: LCCOMB_X65_Y53_N24
\Mux58~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~7_combout\ = (\Mux58~6_combout\ & (((\Y_R[1]~40_combout\)) # (!\ShiftFN[1]~input_o\))) # (!\Mux58~6_combout\ & (\ShiftFN[1]~input_o\ & (\Mux58~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~6_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux58~5_combout\,
	datad => \Y_R[1]~40_combout\,
	combout => \Mux58~7_combout\);

-- Location: LCCOMB_X67_Y55_N24
\Mux58~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~8_combout\ = (\Mux60~6_combout\ & (\Logic|xor_result\(5) & ((\Mux60~5_combout\)))) # (!\Mux60~6_combout\ & (((\Mux58~7_combout\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~6_combout\,
	datab => \Logic|xor_result\(5),
	datac => \Mux58~7_combout\,
	datad => \Mux60~5_combout\,
	combout => \Mux58~8_combout\);

-- Location: LCCOMB_X66_Y59_N22
\Mux58~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~9_combout\ = (\A[5]~input_o\ & ((\Mux58~8_combout\) # ((\Mux60~7_combout\ & \B[5]~input_o\)))) # (!\A[5]~input_o\ & (\Mux58~8_combout\ & ((\B[5]~input_o\) # (!\Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datab => \Mux58~8_combout\,
	datac => \Mux60~7_combout\,
	datad => \B[5]~input_o\,
	combout => \Mux58~9_combout\);

-- Location: LCCOMB_X66_Y59_N0
\Mux58~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux58~10_combout\ = (\Mux58~9_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~9_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux58~10_combout\);

-- Location: LCCOMB_X67_Y51_N14
\Shift|rl4[42]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[42]~32_combout\ = (\B[3]~input_o\ & (\Shift|rl2[50]~99_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[42]~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[50]~99_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[42]~93_combout\,
	combout => \Shift|rl4[42]~32_combout\);

-- Location: LCCOMB_X67_Y49_N28
\Shift|rl4[38]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[38]~33_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[42]~32_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[38]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[38]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[42]~32_combout\,
	combout => \Shift|rl4[38]~33_combout\);

-- Location: LCCOMB_X67_Y53_N16
\Shift|ll3[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[0]~2_combout\ = (\B[1]~input_o\) # ((\B[2]~input_o\) # (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	combout => \Shift|ll3[0]~2_combout\);

-- Location: LCCOMB_X63_Y53_N6
\Y_R[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~43_combout\ = (\ShiftFN[0]~input_o\ & ((\Shift|ll3[0]~2_combout\ & (\A[63]~input_o\)) # (!\Shift|ll3[0]~2_combout\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[0]~2_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \A[63]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Y_R[1]~43_combout\);

-- Location: LCCOMB_X63_Y53_N18
\Y_R[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~41_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|rl2[58]~101_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[54]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[58]~101_combout\,
	datac => \Shift|rl2[54]~97_combout\,
	datad => \B[2]~input_o\,
	combout => \Y_R[1]~41_combout\);

-- Location: LCCOMB_X63_Y53_N12
\Y_R[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~42_combout\ = (!\B[2]~input_o\ & (!\ShiftFN[0]~input_o\ & (!\B[1]~input_o\ & \Shift|rl1[62]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Y_R[1]~42_combout\);

-- Location: LCCOMB_X63_Y53_N8
\Y_R[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~44_combout\ = (\Y_R[1]~41_combout\) # ((\B[3]~input_o\ & ((\Y_R[1]~43_combout\) # (\Y_R[1]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~43_combout\,
	datab => \Y_R[1]~41_combout\,
	datac => \Y_R[1]~42_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_R[1]~44_combout\);

-- Location: LCCOMB_X65_Y52_N18
\Y_R[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~45_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~44_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[38]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[38]~33_combout\,
	datac => \Y_R[1]~44_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~45_combout\);

-- Location: LCCOMB_X67_Y51_N6
\Shift|rl3[14]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[14]~13_combout\ = (\B[2]~input_o\ & (\Shift|rl2[18]~87_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[14]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|rl2[18]~87_combout\,
	datad => \Shift|rl2[14]~77_combout\,
	combout => \Shift|rl3[14]~13_combout\);

-- Location: LCCOMB_X67_Y47_N0
\Mux57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\Mux58~0_combout\ & (((\Mux58~1_combout\)))) # (!\Mux58~0_combout\ & ((\Mux58~1_combout\ & ((\Shift|rl3[14]~13_combout\))) # (!\Mux58~1_combout\ & (\Shift|rl2[6]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Shift|rl2[6]~75_combout\,
	datac => \Mux58~1_combout\,
	datad => \Shift|rl3[14]~13_combout\,
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X67_Y51_N10
\Shift|rl3[22]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[22]~14_combout\ = (\B[2]~input_o\ & ((\Shift|rl2[26]~83_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[22]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[22]~85_combout\,
	datad => \Shift|rl2[26]~83_combout\,
	combout => \Shift|rl3[22]~14_combout\);

-- Location: LCCOMB_X67_Y51_N24
\Shift|rl4[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~30_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[34]~95_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[30]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[30]~81_combout\,
	datab => \Shift|rl2[34]~95_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|rl4[22]~30_combout\);

-- Location: LCCOMB_X67_Y51_N12
\Shift|rl4[22]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[22]~31_combout\ = (\Shift|rl4[22]~30_combout\) # ((\Shift|rl3[22]~14_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[22]~14_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl4[22]~30_combout\,
	combout => \Shift|rl4[22]~31_combout\);

-- Location: LCCOMB_X66_Y48_N24
\Mux57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (\Mux57~0_combout\ & ((\Shift|rl4[22]~31_combout\) # ((!\Mux58~0_combout\)))) # (!\Mux57~0_combout\ & (((\Mux58~0_combout\ & \Shift|rl2[10]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \Shift|rl4[22]~31_combout\,
	datac => \Mux58~0_combout\,
	datad => \Shift|rl2[10]~79_combout\,
	combout => \Mux57~1_combout\);

-- Location: LCCOMB_X70_Y53_N22
\Shift|ll2[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~10_combout\ = (\B[1]~input_o\ & (\A[4]~input_o\)) # (!\B[1]~input_o\ & ((\A[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[4]~input_o\,
	datab => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[6]~10_combout\);

-- Location: LCCOMB_X69_Y53_N14
\Shift|ll2[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[6]~11_combout\ = (\B[0]~input_o\ & (\Shift|ll2[5]~8_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[6]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[5]~8_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[6]~10_combout\,
	combout => \Shift|ll2[6]~11_combout\);

-- Location: LCCOMB_X70_Y52_N16
\Shift|ll5[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[6]~8_combout\ = (!\Mux58~1_combout\ & ((\B[2]~input_o\ & ((\Shift|ll2[2]~1_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~1_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[6]~11_combout\,
	datad => \Shift|ll2[2]~1_combout\,
	combout => \Shift|ll5[6]~8_combout\);

-- Location: LCCOMB_X66_Y55_N4
\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\ = (\A[5]~input_o\ & ((\Add|G\(4)) # (\AddnSub~input_o\ $ (\B[5]~input_o\)))) # (!\A[5]~input_o\ & (\Add|G\(4) & (\AddnSub~input_o\ $ (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \Add|G\(4),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X66_Y55_N30
\Add|S[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(6) = \Add|P\(6) $ (((\Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[1]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(6),
	datab => \Add|GEN_BLOCKS:1:LACG_INST|Pout~0_combout\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|block_carry_in[1]~46_combout\,
	combout => \Add|S\(6));

-- Location: LCCOMB_X65_Y55_N14
\Mux57~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (\Mux58~3_combout\ & (((\Add|S\(6)) # (!\Mux58~2_combout\)))) # (!\Mux58~3_combout\ & (\Shift|ll5[6]~8_combout\ & (\Mux58~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[6]~8_combout\,
	datab => \Mux58~3_combout\,
	datac => \Mux58~2_combout\,
	datad => \Add|S\(6),
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X67_Y55_N26
\Mux57~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux57~2_combout\ & (\Y_R[1]~45_combout\)) # (!\Mux57~2_combout\ & ((\Mux57~1_combout\))))) # (!\ShiftFN[1]~input_o\ & (((\Mux57~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~45_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux57~1_combout\,
	datad => \Mux57~2_combout\,
	combout => \Mux57~3_combout\);

-- Location: LCCOMB_X65_Y55_N20
\Logic|xor_result[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(6) = \A[6]~input_o\ $ (\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[6]~input_o\,
	datad => \B[6]~input_o\,
	combout => \Logic|xor_result\(6));

-- Location: LCCOMB_X67_Y55_N12
\Mux57~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~4_combout\ = (\Mux60~6_combout\ & (\Mux60~5_combout\ & ((\Logic|xor_result\(6))))) # (!\Mux60~6_combout\ & (((\Mux57~3_combout\)) # (!\Mux60~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~6_combout\,
	datab => \Mux60~5_combout\,
	datac => \Mux57~3_combout\,
	datad => \Logic|xor_result\(6),
	combout => \Mux57~4_combout\);

-- Location: LCCOMB_X66_Y59_N10
\Mux57~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~5_combout\ = (\B[6]~input_o\ & ((\Mux57~4_combout\) # ((\A[6]~input_o\ & \Mux60~7_combout\)))) # (!\B[6]~input_o\ & (\Mux57~4_combout\ & ((\A[6]~input_o\) # (!\Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \A[6]~input_o\,
	datac => \Mux60~7_combout\,
	datad => \Mux57~4_combout\,
	combout => \Mux57~5_combout\);

-- Location: LCCOMB_X66_Y59_N4
\Mux57~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux57~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux57~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux57~5_combout\,
	combout => \Mux57~6_combout\);

-- Location: LCCOMB_X66_Y55_N8
\Logic|xor_result[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[7]~2_combout\ = \B[7]~input_o\ $ (\A[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[7]~input_o\,
	datad => \A[7]~input_o\,
	combout => \Logic|xor_result[7]~2_combout\);

-- Location: LCCOMB_X70_Y53_N16
\Shift|ll2[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~12_combout\ = (\B[1]~input_o\ & (\A[5]~input_o\)) # (!\B[1]~input_o\ & ((\A[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[5]~input_o\,
	datac => \A[7]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[7]~12_combout\);

-- Location: LCCOMB_X70_Y53_N10
\Shift|ll2[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[7]~13_combout\ = (\B[0]~input_o\ & (\Shift|ll2[6]~10_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[7]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[6]~10_combout\,
	datad => \Shift|ll2[7]~12_combout\,
	combout => \Shift|ll2[7]~13_combout\);

-- Location: LCCOMB_X70_Y52_N26
\Shift|ll5[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[7]~9_combout\ = (!\Mux58~1_combout\ & ((\B[2]~input_o\ & (\Shift|ll2[3]~3_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[7]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[3]~3_combout\,
	datac => \Mux58~1_combout\,
	datad => \Shift|ll2[7]~13_combout\,
	combout => \Shift|ll5[7]~9_combout\);

-- Location: LCCOMB_X65_Y55_N0
\Add|G[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(5) = (\A[5]~input_o\ & (\AddnSub~input_o\ $ (\B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[5]~input_o\,
	datad => \A[5]~input_o\,
	combout => \Add|G\(5));

-- Location: LCCOMB_X65_Y55_N10
\Add|GEN_BLOCKS:1:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\ = (\Add|G\(5) & ((\A[6]~input_o\) # (\B[6]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(5) & (\A[6]~input_o\ & (\B[6]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \Add|G\(5),
	datac => \AddnSub~input_o\,
	datad => \A[6]~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X66_Y55_N10
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ = (\Add|P\(6) & (\B[5]~input_o\ $ (\A[5]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(6),
	datab => \B[5]~input_o\,
	datac => \A[5]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X66_Y55_N20
\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\ & ((\Add|G\(4)) # ((\Add|block_carry_in[1]~46_combout\ & \Add|P\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~1_combout\,
	datab => \Add|block_carry_in[1]~46_combout\,
	datac => \Add|P\(4),
	datad => \Add|G\(4),
	combout => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X65_Y55_N28
\Add|S[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(7) = \AddnSub~input_o\ $ (\Logic|xor_result[7]~2_combout\ $ (((\Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\) # (\Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:1:LACG_INST|g_int~1_combout\,
	datab => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:1:LACG_INST|C[3]~2_combout\,
	datad => \Logic|xor_result[7]~2_combout\,
	combout => \Add|S\(7));

-- Location: LCCOMB_X65_Y55_N30
\Mux56~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\Mux58~2_combout\ & ((\Mux58~3_combout\ & ((\Add|S\(7)))) # (!\Mux58~3_combout\ & (\Shift|ll5[7]~9_combout\)))) # (!\Mux58~2_combout\ & (\Mux58~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~2_combout\,
	datab => \Mux58~3_combout\,
	datac => \Shift|ll5[7]~9_combout\,
	datad => \Add|S\(7),
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X68_Y52_N24
\Shift|rl3[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[15]~15_combout\ = (\B[2]~input_o\ & (\Shift|rl2[19]~108_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[15]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[19]~108_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[15]~103_combout\,
	combout => \Shift|rl3[15]~15_combout\);

-- Location: LCCOMB_X69_Y51_N0
\Mux56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\Mux58~0_combout\ & (\Mux58~1_combout\)) # (!\Mux58~0_combout\ & ((\Mux58~1_combout\ & ((\Shift|rl3[15]~15_combout\))) # (!\Mux58~1_combout\ & (\Shift|rl2[7]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Mux58~1_combout\,
	datac => \Shift|rl2[7]~102_combout\,
	datad => \Shift|rl3[15]~15_combout\,
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X68_Y52_N4
\Shift|rl3[23]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl3[23]~16_combout\ = (\B[2]~input_o\ & (\Shift|rl2[27]~106_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl2[23]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|rl2[27]~106_combout\,
	datad => \Shift|rl2[23]~107_combout\,
	combout => \Shift|rl3[23]~16_combout\);

-- Location: LCCOMB_X68_Y52_N10
\Shift|rl4[23]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~34_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[35]~112_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[31]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[31]~105_combout\,
	datac => \Shift|rl2[35]~112_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[23]~34_combout\);

-- Location: LCCOMB_X68_Y52_N30
\Shift|rl4[23]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[23]~35_combout\ = (\Shift|rl4[23]~34_combout\) # ((!\B[3]~input_o\ & \Shift|rl3[23]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl3[23]~16_combout\,
	datad => \Shift|rl4[23]~34_combout\,
	combout => \Shift|rl4[23]~35_combout\);

-- Location: LCCOMB_X69_Y51_N10
\Mux56~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\Mux58~0_combout\ & ((\Mux56~0_combout\ & ((\Shift|rl4[23]~35_combout\))) # (!\Mux56~0_combout\ & (\Shift|rl2[11]~104_combout\)))) # (!\Mux58~0_combout\ & (\Mux56~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Mux56~0_combout\,
	datac => \Shift|rl2[11]~104_combout\,
	datad => \Shift|rl4[23]~35_combout\,
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X62_Y50_N14
\Y_R[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~46_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|rl2[59]~116_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[55]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[55]~113_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[59]~116_combout\,
	combout => \Y_R[1]~46_combout\);

-- Location: LCCOMB_X62_Y50_N16
\Y_R[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~47_combout\ = (\ShiftFN[0]~input_o\) # ((!\B[2]~input_o\ & (!\B[0]~input_o\ & !\B[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[2]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y_R[1]~47_combout\);

-- Location: LCCOMB_X62_Y50_N26
\Y_R[1]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~48_combout\ = (\Y_R[1]~46_combout\) # ((\B[3]~input_o\ & (\A[63]~input_o\ & \Y_R[1]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Y_R[1]~46_combout\,
	datac => \A[63]~input_o\,
	datad => \Y_R[1]~47_combout\,
	combout => \Y_R[1]~48_combout\);

-- Location: LCCOMB_X62_Y50_N28
\Shift|rl4[43]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[43]~36_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[51]~114_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[43]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[43]~111_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[51]~114_combout\,
	combout => \Shift|rl4[43]~36_combout\);

-- Location: LCCOMB_X62_Y50_N22
\Shift|rl4[39]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[39]~37_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[43]~36_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[39]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|rl4[39]~19_combout\,
	datad => \Shift|rl4[43]~36_combout\,
	combout => \Shift|rl4[39]~37_combout\);

-- Location: LCCOMB_X62_Y50_N0
\Y_R[1]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~49_combout\ = (\B[4]~input_o\ & (\Y_R[1]~48_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[39]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~48_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|rl4[39]~37_combout\,
	combout => \Y_R[1]~49_combout\);

-- Location: LCCOMB_X65_Y55_N24
\Mux56~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux56~2_combout\ & (((\Y_R[1]~49_combout\) # (!\ShiftFN[1]~input_o\)))) # (!\Mux56~2_combout\ & (\Mux56~1_combout\ & ((\ShiftFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux56~2_combout\,
	datab => \Mux56~1_combout\,
	datac => \Y_R[1]~49_combout\,
	datad => \ShiftFN[1]~input_o\,
	combout => \Mux56~3_combout\);

-- Location: LCCOMB_X67_Y55_N22
\Mux56~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~4_combout\ = (\Mux60~6_combout\ & (\Logic|xor_result[7]~2_combout\ & ((\Mux60~5_combout\)))) # (!\Mux60~6_combout\ & (((\Mux56~3_combout\) # (!\Mux60~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[7]~2_combout\,
	datab => \Mux56~3_combout\,
	datac => \Mux60~6_combout\,
	datad => \Mux60~5_combout\,
	combout => \Mux56~4_combout\);

-- Location: LCCOMB_X66_Y55_N6
\Mux56~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~5_combout\ = (\B[7]~input_o\ & ((\Mux56~4_combout\) # ((\A[7]~input_o\ & \Mux60~7_combout\)))) # (!\B[7]~input_o\ & (\Mux56~4_combout\ & ((\A[7]~input_o\) # (!\Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \A[7]~input_o\,
	datac => \Mux60~7_combout\,
	datad => \Mux56~4_combout\,
	combout => \Mux56~5_combout\);

-- Location: LCCOMB_X68_Y51_N8
\Mux56~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux56~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux56~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux56~5_combout\,
	combout => \Mux56~6_combout\);

-- Location: LCCOMB_X67_Y58_N30
\Add|S[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(8) = \A[8]~input_o\ $ (\AddnSub~input_o\ $ (\B[8]~input_o\ $ (\Add|block_carry_in[2]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	datad => \Add|block_carry_in[2]~23_combout\,
	combout => \Add|S\(8));

-- Location: LCCOMB_X70_Y53_N20
\Shift|ll2[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~14_combout\ = (\B[1]~input_o\ & ((\A[6]~input_o\))) # (!\B[1]~input_o\ & (\A[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \A[6]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[8]~14_combout\);

-- Location: LCCOMB_X70_Y53_N30
\Shift|ll2[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[8]~15_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[7]~12_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[8]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[8]~14_combout\,
	datad => \Shift|ll2[7]~12_combout\,
	combout => \Shift|ll2[8]~15_combout\);

-- Location: LCCOMB_X69_Y48_N18
\Shift|ll4[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~1_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[4]~6_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[8]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[4]~6_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[8]~15_combout\,
	combout => \Shift|ll4[8]~1_combout\);

-- Location: LCCOMB_X67_Y53_N18
\Shift|ll4[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[8]~2_combout\ = (\Shift|ll4[8]~1_combout\) # ((!\Shift|ll3[0]~2_combout\ & (\B[3]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[0]~2_combout\,
	datab => \B[3]~input_o\,
	datac => \A[0]~input_o\,
	datad => \Shift|ll4[8]~1_combout\,
	combout => \Shift|ll4[8]~2_combout\);

-- Location: LCCOMB_X68_Y53_N26
\Mux55~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~4_combout\ = (\ShiftFN[0]~input_o\ & (\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|ll4[8]~2_combout\)))) # (!\ShiftFN[0]~input_o\ & (((\Add|S\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Add|S\(8),
	datad => \Shift|ll4[8]~2_combout\,
	combout => \Mux55~4_combout\);

-- Location: LCCOMB_X65_Y52_N20
\Mux52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~0_combout\ = (\B[5]~input_o\) # ((!\B[4]~input_o\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \B[4]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Mux52~0_combout\);

-- Location: LCCOMB_X61_Y51_N24
\Shift|rl4[44]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[44]~41_combout\ = (\B[3]~input_o\ & (\Shift|rl2[52]~24_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[44]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datac => \Shift|rl2[52]~24_combout\,
	datad => \Shift|rl2[44]~35_combout\,
	combout => \Shift|rl4[44]~41_combout\);

-- Location: LCCOMB_X61_Y51_N2
\Shift|rl4[40]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[40]~42_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[44]~41_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[40]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[40]~24_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[44]~41_combout\,
	combout => \Shift|rl4[40]~42_combout\);

-- Location: LCCOMB_X62_Y54_N18
\Y_R[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~50_combout\ = (\B[4]~input_o\ & ((\B[3]~input_o\ & (\Y_R[1]~34_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl3[56]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~34_combout\,
	datad => \Shift|rl3[56]~2_combout\,
	combout => \Y_R[1]~50_combout\);

-- Location: LCCOMB_X66_Y47_N22
\Y_R[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~51_combout\ = (\Y_R[1]~50_combout\) # ((\Shift|rl4[40]~42_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[40]~42_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~50_combout\,
	combout => \Y_R[1]~51_combout\);

-- Location: LCCOMB_X66_Y47_N24
\Shift|rl4[28]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[28]~39_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[36]~38_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[28]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[28]~12_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[36]~38_combout\,
	combout => \Shift|rl4[28]~39_combout\);

-- Location: LCCOMB_X66_Y47_N6
\Shift|rl4[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~38_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[32]~44_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[24]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[32]~44_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[24]~15_combout\,
	combout => \Shift|rl4[24]~38_combout\);

-- Location: LCCOMB_X66_Y47_N18
\Shift|rl4[24]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[24]~40_combout\ = (\Shift|rl4[24]~38_combout\) # ((\Shift|rl4[28]~39_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[28]~39_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[24]~38_combout\,
	combout => \Shift|rl4[24]~40_combout\);

-- Location: LCCOMB_X66_Y47_N28
\Mux55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\Mux52~0_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux52~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl3[8]~0_combout\)) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl4[24]~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[8]~0_combout\,
	datab => \Mux52~0_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|rl4[24]~40_combout\,
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X66_Y47_N8
\Mux55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\Mux52~0_combout\ & ((\Mux55~0_combout\ & ((\Y_R[1]~51_combout\))) # (!\Mux55~0_combout\ & (\Shift|rl3[16]~1_combout\)))) # (!\Mux52~0_combout\ & (((\Mux55~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[16]~1_combout\,
	datab => \Mux52~0_combout\,
	datac => \Y_R[1]~51_combout\,
	datad => \Mux55~0_combout\,
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X67_Y58_N26
\Logic|xor_result[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(8) = \B[8]~input_o\ $ (\A[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[8]~input_o\,
	datad => \A[8]~input_o\,
	combout => \Logic|xor_result\(8));

-- Location: LCCOMB_X67_Y55_N16
\Mux55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (\Mux60~5_combout\ & ((\Mux60~6_combout\ & ((\Logic|xor_result\(8)))) # (!\Mux60~6_combout\ & (\Mux55~1_combout\)))) # (!\Mux60~5_combout\ & (((!\Mux60~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~1_combout\,
	datab => \Mux60~5_combout\,
	datac => \Mux60~6_combout\,
	datad => \Logic|xor_result\(8),
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X67_Y58_N4
\Mux55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\A[8]~input_o\ & ((\Mux55~2_combout\) # ((\Mux60~7_combout\ & \B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Mux55~2_combout\ & ((\B[8]~input_o\) # (!\Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \Mux60~7_combout\,
	datac => \B[8]~input_o\,
	datad => \Mux55~2_combout\,
	combout => \Mux55~3_combout\);

-- Location: LCCOMB_X68_Y53_N4
\Mux60~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux60~15_combout\ = (\FuncClass[0]~input_o\) # (\ShiftFN[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	combout => \Mux60~15_combout\);

-- Location: LCCOMB_X68_Y56_N8
\Mux55~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux55~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux60~15_combout\ & ((\Mux55~3_combout\))) # (!\Mux60~15_combout\ & (\Mux55~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~4_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux55~3_combout\,
	datad => \Mux60~15_combout\,
	combout => \Mux55~5_combout\);

-- Location: LCCOMB_X70_Y53_N8
\Shift|ll2[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~16_combout\ = (\B[1]~input_o\ & (\A[7]~input_o\)) # (!\B[1]~input_o\ & ((\A[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[7]~input_o\,
	datac => \A[9]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[9]~16_combout\);

-- Location: LCCOMB_X70_Y53_N18
\Shift|ll2[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[9]~17_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[8]~14_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[9]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[9]~16_combout\,
	datad => \Shift|ll2[8]~14_combout\,
	combout => \Shift|ll2[9]~17_combout\);

-- Location: LCCOMB_X67_Y52_N20
\Shift|ll4[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~3_combout\ = (\B[3]~input_o\ & (!\B[1]~input_o\ & (\Shift|ll1[1]~0_combout\))) # (!\B[3]~input_o\ & (((\Shift|ll2[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \Shift|ll1[1]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[9]~17_combout\,
	combout => \Shift|ll4[9]~3_combout\);

-- Location: LCCOMB_X67_Y52_N22
\Shift|ll4[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[9]~4_combout\ = (\B[2]~input_o\ & (((!\B[3]~input_o\ & \Shift|ll2[5]~9_combout\)))) # (!\B[2]~input_o\ & (\Shift|ll4[9]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[9]~3_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[5]~9_combout\,
	combout => \Shift|ll4[9]~4_combout\);

-- Location: LCCOMB_X67_Y54_N28
\Mux54~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~8_combout\ = (!\B[5]~input_o\ & (\ShiftFN[0]~input_o\ & (!\B[4]~input_o\ & \Shift|ll4[9]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[9]~4_combout\,
	combout => \Mux54~8_combout\);

-- Location: LCCOMB_X67_Y58_N18
\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ = (\A[8]~input_o\ & ((\Add|block_carry_in[2]~23_combout\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Add|block_carry_in[2]~23_combout\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	datad => \Add|block_carry_in[2]~23_combout\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X67_Y58_N12
\Mux54~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~6_combout\ = (\Mux54~8_combout\) # ((!\ShiftFN[0]~input_o\ & (\Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\ $ (\Add|P\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~8_combout\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|C[1]~0_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Add|P\(9),
	combout => \Mux54~6_combout\);

-- Location: LCCOMB_X67_Y58_N0
\Logic|xor_result[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(9) = \A[9]~input_o\ $ (\B[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Logic|xor_result\(9));

-- Location: LCCOMB_X65_Y49_N8
\Shift|rl4[25]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[25]~43_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[33]~58_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[25]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[33]~58_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[25]~68_combout\,
	combout => \Shift|rl4[25]~43_combout\);

-- Location: LCCOMB_X65_Y49_N10
\Shift|rl4[29]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[29]~44_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[37]~54_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[29]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[29]~66_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[37]~54_combout\,
	combout => \Shift|rl4[29]~44_combout\);

-- Location: LCCOMB_X65_Y49_N20
\Shift|rl4[25]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[25]~45_combout\ = (\Shift|rl4[25]~43_combout\) # ((\B[2]~input_o\ & \Shift|rl4[29]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[25]~43_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[29]~44_combout\,
	combout => \Shift|rl4[25]~45_combout\);

-- Location: LCCOMB_X62_Y51_N16
\Mux54~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\Mux52~0_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux52~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl3[9]~3_combout\)) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl4[25]~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[9]~3_combout\,
	datab => \Mux52~0_combout\,
	datac => \Shift|rl4[25]~45_combout\,
	datad => \Y_ShiftOrArith[1]~11_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X60_Y54_N26
\Y_R[1]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~53_combout\ = (\Y_R[1]~19_combout\) # ((\B[2]~input_o\ & \Shift|rl2[61]~118_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Y_R[1]~19_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[61]~118_combout\,
	combout => \Y_R[1]~53_combout\);

-- Location: LCCOMB_X60_Y54_N30
\Shift|ra3[57]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[57]~1_combout\ = (\Y_R[1]~19_combout\) # ((\B[2]~input_o\ & ((\Shift|rl2[61]~64_combout\) # (\Y_R[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[61]~64_combout\,
	datab => \Y_R[1]~20_combout\,
	datac => \B[2]~input_o\,
	datad => \Y_R[1]~19_combout\,
	combout => \Shift|ra3[57]~1_combout\);

-- Location: LCCOMB_X60_Y54_N16
\Y_R[1]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~52_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\ & ((\A[63]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ra3[57]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ra3[57]~1_combout\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Y_R[1]~52_combout\);

-- Location: LCCOMB_X60_Y54_N4
\Y_R[1]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~54_combout\ = (\Y_R[1]~52_combout\) # ((\Y_R[1]~53_combout\ & (!\B[3]~input_o\ & !\ShiftFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~53_combout\,
	datab => \B[3]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Y_R[1]~52_combout\,
	combout => \Y_R[1]~54_combout\);

-- Location: LCCOMB_X65_Y49_N6
\Shift|rl4[45]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[45]~46_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[53]~60_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[45]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[45]~52_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[53]~60_combout\,
	combout => \Shift|rl4[45]~46_combout\);

-- Location: LCCOMB_X65_Y49_N24
\Shift|rl4[41]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[41]~47_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[45]~46_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[41]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[41]~28_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[45]~46_combout\,
	combout => \Shift|rl4[41]~47_combout\);

-- Location: LCCOMB_X62_Y51_N2
\Y_R[1]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~55_combout\ = (\B[4]~input_o\ & (\Y_R[1]~54_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[41]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~54_combout\,
	datab => \Shift|rl4[41]~47_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~55_combout\);

-- Location: LCCOMB_X62_Y51_N28
\Mux54~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\Mux54~2_combout\ & (((\Y_R[1]~55_combout\)) # (!\Mux52~0_combout\))) # (!\Mux54~2_combout\ & (\Mux52~0_combout\ & (\Shift|rl3[17]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~2_combout\,
	datab => \Mux52~0_combout\,
	datac => \Shift|rl3[17]~4_combout\,
	datad => \Y_R[1]~55_combout\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X67_Y55_N2
\Mux54~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (\Mux60~6_combout\ & (\Mux60~5_combout\ & (\Logic|xor_result\(9)))) # (!\Mux60~6_combout\ & (((\Mux54~3_combout\)) # (!\Mux60~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~6_combout\,
	datab => \Mux60~5_combout\,
	datac => \Logic|xor_result\(9),
	datad => \Mux54~3_combout\,
	combout => \Mux54~4_combout\);

-- Location: LCCOMB_X68_Y58_N6
\Mux54~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~5_combout\ = (\B[9]~input_o\ & ((\Mux54~4_combout\) # ((\A[9]~input_o\ & \Mux60~7_combout\)))) # (!\B[9]~input_o\ & (\Mux54~4_combout\ & ((\A[9]~input_o\) # (!\Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \A[9]~input_o\,
	datac => \Mux54~4_combout\,
	datad => \Mux60~7_combout\,
	combout => \Mux54~5_combout\);

-- Location: LCCOMB_X68_Y58_N0
\Mux54~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux54~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux60~15_combout\ & ((\Mux54~5_combout\))) # (!\Mux60~15_combout\ & (\Mux54~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux54~6_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux60~15_combout\,
	datad => \Mux54~5_combout\,
	combout => \Mux54~7_combout\);

-- Location: LCCOMB_X67_Y58_N14
\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\ = (\Add|G\(8) & ((\A[9]~input_o\) # (\AddnSub~input_o\ $ (\B[9]~input_o\)))) # (!\Add|G\(8) & (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(8),
	datac => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X67_Y58_N8
\Add|S[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(10) = \Add|P\(10) $ (((\Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\) # ((\Add|block_carry_in[2]~23_combout\ & \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[2]~23_combout\,
	datab => \Add|P\(10),
	datac => \Add|GEN_BLOCKS:2:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|GEN_BLOCKS:2:LACG_INST|Pout~0_combout\,
	combout => \Add|S\(10));

-- Location: LCCOMB_X70_Y53_N28
\Shift|ll2[10]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~18_combout\ = (\B[1]~input_o\ & (\A[8]~input_o\)) # (!\B[1]~input_o\ & ((\A[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datac => \A[10]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[10]~18_combout\);

-- Location: LCCOMB_X70_Y53_N6
\Shift|ll2[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[10]~19_combout\ = (\B[0]~input_o\ & (\Shift|ll2[9]~16_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[10]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[9]~16_combout\,
	datad => \Shift|ll2[10]~18_combout\,
	combout => \Shift|ll2[10]~19_combout\);

-- Location: LCCOMB_X70_Y52_N20
\Shift|ll4[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~5_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[2]~1_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[10]~19_combout\,
	datad => \Shift|ll2[2]~1_combout\,
	combout => \Shift|ll4[10]~5_combout\);

-- Location: LCCOMB_X70_Y52_N30
\Shift|ll4[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[10]~6_combout\ = (\Shift|ll4[10]~5_combout\) # ((\Shift|ll2[6]~11_combout\ & (!\B[3]~input_o\ & \B[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~11_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[10]~5_combout\,
	combout => \Shift|ll4[10]~6_combout\);

-- Location: LCCOMB_X68_Y56_N2
\Mux53~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\ShiftFN[0]~input_o\ & (((\Y_ShiftOrArith[1]~11_combout\ & \Shift|ll4[10]~6_combout\)))) # (!\ShiftFN[0]~input_o\ & (\Add|S\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(10),
	datab => \Y_ShiftOrArith[1]~11_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|ll4[10]~6_combout\,
	combout => \Mux53~4_combout\);

-- Location: LCCOMB_X63_Y53_N14
\Y_R[1]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~57_combout\ = (\B[2]~input_o\ & (((!\B[1]~input_o\ & \Shift|rl1[62]~2_combout\)))) # (!\B[2]~input_o\ & (\Shift|rl2[58]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[58]~101_combout\,
	datac => \B[1]~input_o\,
	datad => \Shift|rl1[62]~2_combout\,
	combout => \Y_R[1]~57_combout\);

-- Location: LCCOMB_X63_Y53_N26
\Shift|ra3[58]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra3[58]~2_combout\ = (\B[2]~input_o\ & ((\Y_R[1]~25_combout\))) # (!\B[2]~input_o\ & (\Shift|rl2[58]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[58]~101_combout\,
	datad => \Y_R[1]~25_combout\,
	combout => \Shift|ra3[58]~2_combout\);

-- Location: LCCOMB_X63_Y53_N28
\Y_R[1]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~56_combout\ = (\ShiftFN[0]~input_o\ & ((\B[3]~input_o\ & ((\A[63]~input_o\))) # (!\B[3]~input_o\ & (\Shift|ra3[58]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ra3[58]~2_combout\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~56_combout\);

-- Location: LCCOMB_X63_Y53_N16
\Y_R[1]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~58_combout\ = (\Y_R[1]~56_combout\) # ((!\B[3]~input_o\ & (!\ShiftFN[0]~input_o\ & \Y_R[1]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Y_R[1]~57_combout\,
	datad => \Y_R[1]~56_combout\,
	combout => \Y_R[1]~58_combout\);

-- Location: LCCOMB_X67_Y49_N14
\Shift|rl4[46]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[46]~51_combout\ = (\B[3]~input_o\ & (\Shift|rl2[54]~97_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[46]~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[54]~97_combout\,
	datab => \Shift|rl2[46]~89_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|rl4[46]~51_combout\);

-- Location: LCCOMB_X67_Y49_N16
\Shift|rl4[42]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[42]~52_combout\ = (\B[2]~input_o\ & (\Shift|rl4[46]~51_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[42]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[46]~51_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[42]~32_combout\,
	combout => \Shift|rl4[42]~52_combout\);

-- Location: LCCOMB_X62_Y51_N14
\Y_R[1]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~59_combout\ = (\B[4]~input_o\ & (\Y_R[1]~58_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[42]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~58_combout\,
	datab => \B[4]~input_o\,
	datad => \Shift|rl4[42]~52_combout\,
	combout => \Y_R[1]~59_combout\);

-- Location: LCCOMB_X67_Y51_N18
\Shift|rl4[30]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[30]~49_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[38]~91_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[30]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[30]~81_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|rl2[38]~91_combout\,
	combout => \Shift|rl4[30]~49_combout\);

-- Location: LCCOMB_X67_Y51_N0
\Shift|rl4[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[26]~48_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[34]~95_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[26]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[34]~95_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[26]~83_combout\,
	combout => \Shift|rl4[26]~48_combout\);

-- Location: LCCOMB_X67_Y51_N4
\Shift|rl4[26]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[26]~50_combout\ = (\Shift|rl4[26]~48_combout\) # ((\B[2]~input_o\ & \Shift|rl4[30]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl4[30]~49_combout\,
	datad => \Shift|rl4[26]~48_combout\,
	combout => \Shift|rl4[26]~50_combout\);

-- Location: LCCOMB_X67_Y51_N30
\Mux53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((!\Mux52~0_combout\ & \Shift|rl3[10]~5_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl4[26]~50_combout\) # ((\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|rl4[26]~50_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|rl3[10]~5_combout\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X67_Y51_N16
\Mux53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Mux52~0_combout\ & ((\Mux53~0_combout\ & (\Y_R[1]~59_combout\)) # (!\Mux53~0_combout\ & ((\Shift|rl3[18]~6_combout\))))) # (!\Mux52~0_combout\ & (((\Mux53~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Y_R[1]~59_combout\,
	datac => \Mux53~0_combout\,
	datad => \Shift|rl3[18]~6_combout\,
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X68_Y58_N26
\Logic|xor_result[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result\(10) = \B[10]~input_o\ $ (\A[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Logic|xor_result\(10));

-- Location: LCCOMB_X67_Y55_N4
\Mux53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\Mux60~5_combout\ & ((\Mux60~6_combout\ & ((\Logic|xor_result\(10)))) # (!\Mux60~6_combout\ & (\Mux53~1_combout\)))) # (!\Mux60~5_combout\ & (((!\Mux60~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~1_combout\,
	datab => \Mux60~5_combout\,
	datac => \Mux60~6_combout\,
	datad => \Logic|xor_result\(10),
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X68_Y58_N12
\Mux53~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\B[10]~input_o\ & ((\Mux53~2_combout\) # ((\Mux60~7_combout\ & \A[10]~input_o\)))) # (!\B[10]~input_o\ & (\Mux53~2_combout\ & ((\A[10]~input_o\) # (!\Mux60~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[10]~input_o\,
	datab => \Mux60~7_combout\,
	datac => \Mux53~2_combout\,
	datad => \A[10]~input_o\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X68_Y58_N22
\Mux53~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux53~5_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux60~15_combout\ & ((\Mux53~3_combout\))) # (!\Mux60~15_combout\ & (\Mux53~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux53~4_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux60~15_combout\,
	datad => \Mux53~3_combout\,
	combout => \Mux53~5_combout\);

-- Location: LCCOMB_X68_Y56_N20
\Logic|xor_result[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[11]~3_combout\ = \B[11]~input_o\ $ (\A[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[11]~input_o\,
	datad => \A[11]~input_o\,
	combout => \Logic|xor_result[11]~3_combout\);

-- Location: LCCOMB_X68_Y52_N26
\Shift|rl4[31]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[31]~54_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[39]~110_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[31]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[31]~105_combout\,
	datad => \Shift|rl2[39]~110_combout\,
	combout => \Shift|rl4[31]~54_combout\);

-- Location: LCCOMB_X68_Y52_N16
\Shift|rl4[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[27]~53_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[35]~112_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[27]~106_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl2[35]~112_combout\,
	datac => \Shift|rl2[27]~106_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|rl4[27]~53_combout\);

-- Location: LCCOMB_X68_Y52_N20
\Shift|rl4[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[27]~55_combout\ = (\Shift|rl4[27]~53_combout\) # ((\Shift|rl4[31]~54_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[31]~54_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[27]~53_combout\,
	combout => \Shift|rl4[27]~55_combout\);

-- Location: LCCOMB_X68_Y52_N14
\Mux52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~1_combout\ = (\Mux52~0_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux52~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl3[11]~7_combout\)) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl4[27]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl3[11]~7_combout\,
	datab => \Shift|rl4[27]~55_combout\,
	datac => \Mux52~0_combout\,
	datad => \Y_ShiftOrArith[1]~11_combout\,
	combout => \Mux52~1_combout\);

-- Location: LCCOMB_X62_Y50_N18
\Y_R[1]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~60_combout\ = (\A[63]~input_o\ & ((\ShiftFN[0]~input_o\) # ((!\B[3]~input_o\ & !\Shift|ll2[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|ll2[0]~7_combout\,
	combout => \Y_R[1]~60_combout\);

-- Location: LCCOMB_X62_Y50_N20
\Y_R[1]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~61_combout\ = (\B[2]~input_o\ & (((\Y_R[1]~60_combout\)))) # (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Y_R[1]~60_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[59]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[59]~116_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Y_R[1]~60_combout\,
	combout => \Y_R[1]~61_combout\);

-- Location: LCCOMB_X62_Y50_N6
\Shift|rl4[47]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[47]~56_combout\ = (\B[3]~input_o\ & ((\Shift|rl2[55]~113_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[47]~109_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl2[47]~109_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[55]~113_combout\,
	combout => \Shift|rl4[47]~56_combout\);

-- Location: LCCOMB_X62_Y50_N8
\Shift|rl4[43]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[43]~57_combout\ = (\B[2]~input_o\ & (\Shift|rl4[47]~56_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[43]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[47]~56_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|rl4[43]~36_combout\,
	combout => \Shift|rl4[43]~57_combout\);

-- Location: LCCOMB_X63_Y49_N16
\Y_R[1]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~62_combout\ = (\B[4]~input_o\ & (\Y_R[1]~61_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[43]~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~61_combout\,
	datad => \Shift|rl4[43]~57_combout\,
	combout => \Y_R[1]~62_combout\);

-- Location: LCCOMB_X68_Y52_N0
\Mux52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~2_combout\ = (\Mux52~0_combout\ & ((\Mux52~1_combout\ & (\Y_R[1]~62_combout\)) # (!\Mux52~1_combout\ & ((\Shift|rl3[19]~8_combout\))))) # (!\Mux52~0_combout\ & (\Mux52~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Mux52~1_combout\,
	datac => \Y_R[1]~62_combout\,
	datad => \Shift|rl3[19]~8_combout\,
	combout => \Mux52~2_combout\);

-- Location: LCCOMB_X67_Y55_N14
\Mux52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~3_combout\ = (\Mux60~6_combout\ & (\Mux60~5_combout\ & (\Logic|xor_result[11]~3_combout\))) # (!\Mux60~6_combout\ & (((\Mux52~2_combout\)) # (!\Mux60~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~6_combout\,
	datab => \Mux60~5_combout\,
	datac => \Logic|xor_result[11]~3_combout\,
	datad => \Mux52~2_combout\,
	combout => \Mux52~3_combout\);

-- Location: LCCOMB_X68_Y56_N30
\Mux52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~4_combout\ = (\Mux52~3_combout\ & ((\B[11]~input_o\) # ((\A[11]~input_o\) # (!\Mux60~7_combout\)))) # (!\Mux52~3_combout\ & (\B[11]~input_o\ & (\Mux60~7_combout\ & \A[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~3_combout\,
	datab => \B[11]~input_o\,
	datac => \Mux60~7_combout\,
	datad => \A[11]~input_o\,
	combout => \Mux52~4_combout\);

-- Location: LCCOMB_X69_Y52_N14
\Shift|ll2[12]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~20_combout\ = (\B[1]~input_o\ & ((\A[9]~input_o\))) # (!\B[1]~input_o\ & (\A[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[9]~input_o\,
	combout => \Shift|ll2[12]~20_combout\);

-- Location: LCCOMB_X70_Y52_N24
\Shift|ll2[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[11]~21_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[10]~18_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[12]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[12]~20_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[10]~18_combout\,
	combout => \Shift|ll2[11]~21_combout\);

-- Location: LCCOMB_X70_Y52_N10
\Shift|ll4[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~7_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[3]~3_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[11]~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[3]~3_combout\,
	datad => \Shift|ll2[11]~21_combout\,
	combout => \Shift|ll4[11]~7_combout\);

-- Location: LCCOMB_X70_Y52_N4
\Shift|ll4[11]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[11]~8_combout\ = (\Shift|ll4[11]~7_combout\) # ((!\B[3]~input_o\ & (\B[2]~input_o\ & \Shift|ll2[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[11]~7_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[7]~13_combout\,
	combout => \Shift|ll4[11]~8_combout\);

-- Location: LCCOMB_X67_Y58_N2
\Add|GEN_BLOCKS:2:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\ = (\A[8]~input_o\ & ((\Add|block_carry_in[2]~23_combout\) # (\AddnSub~input_o\ $ (\B[8]~input_o\)))) # (!\A[8]~input_o\ & (\Add|block_carry_in[2]~23_combout\ & (\AddnSub~input_o\ $ (\B[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[8]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[8]~input_o\,
	datad => \Add|block_carry_in[2]~23_combout\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X68_Y58_N16
\Add|G[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(9) = (\A[9]~input_o\ & (\AddnSub~input_o\ $ (\B[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[9]~input_o\,
	datad => \B[9]~input_o\,
	combout => \Add|G\(9));

-- Location: LCCOMB_X68_Y58_N10
\Add|GEN_BLOCKS:2:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\ = (\Add|G\(9) & ((\A[10]~input_o\) # (\AddnSub~input_o\ $ (\B[10]~input_o\)))) # (!\Add|G\(9) & (\A[10]~input_o\ & (\AddnSub~input_o\ $ (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(9),
	datac => \B[10]~input_o\,
	datad => \A[10]~input_o\,
	combout => \Add|GEN_BLOCKS:2:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X67_Y58_N28
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

-- Location: LCCOMB_X68_Y56_N24
\Mux52~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~5_combout\ = (!\ShiftFN[0]~input_o\ & (\Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\ $ (\AddnSub~input_o\ $ (\Logic|xor_result[11]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Add|GEN_BLOCKS:2:LACG_INST|C[3]~2_combout\,
	datac => \AddnSub~input_o\,
	datad => \Logic|xor_result[11]~3_combout\,
	combout => \Mux52~5_combout\);

-- Location: LCCOMB_X68_Y56_N10
\Mux52~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~6_combout\ = (\Mux52~5_combout\) # ((\ShiftFN[0]~input_o\ & (\Y_ShiftOrArith[1]~11_combout\ & \Shift|ll4[11]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_ShiftOrArith[1]~11_combout\,
	datac => \Shift|ll4[11]~8_combout\,
	datad => \Mux52~5_combout\,
	combout => \Mux52~6_combout\);

-- Location: LCCOMB_X68_Y56_N28
\Mux52~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux52~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux60~15_combout\ & (\Mux52~4_combout\)) # (!\Mux60~15_combout\ & ((\Mux52~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~15_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux52~4_combout\,
	datad => \Mux52~6_combout\,
	combout => \Mux52~7_combout\);

-- Location: LCCOMB_X68_Y53_N6
\Mux48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~0_combout\ = (!\FuncClass[0]~input_o\ & (!\ShiftFN[1]~input_o\ & ((!\B[5]~input_o\) # (!\ShiftFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux48~0_combout\);

-- Location: LCCOMB_X72_Y58_N30
\Add|S[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(12) = \Add|block_carry_in[3]~56_combout\ $ (\AddnSub~input_o\ $ (\A[12]~input_o\ $ (\B[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~56_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add|S\(12));

-- Location: LCCOMB_X69_Y52_N16
\Shift|ll2[13]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~22_combout\ = (\B[1]~input_o\ & (\A[10]~input_o\)) # (!\B[1]~input_o\ & ((\A[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[10]~input_o\,
	datab => \A[12]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[13]~22_combout\);

-- Location: LCCOMB_X69_Y52_N26
\Shift|ll2[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[12]~23_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[12]~20_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[13]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \Shift|ll2[13]~22_combout\,
	datac => \Shift|ll2[12]~20_combout\,
	combout => \Shift|ll2[12]~23_combout\);

-- Location: LCCOMB_X69_Y48_N12
\Shift|ll4[12]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[12]~9_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[8]~15_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[12]~23_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[8]~15_combout\,
	combout => \Shift|ll4[12]~9_combout\);

-- Location: LCCOMB_X69_Y48_N14
\Shift|ll5[12]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[12]~10_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[12]~9_combout\) # ((\Shift|ll3[4]~0_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll3[4]~0_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[12]~9_combout\,
	combout => \Shift|ll5[12]~10_combout\);

-- Location: LCCOMB_X68_Y53_N2
\Mux48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~1_combout\ = (\FuncClass[0]~input_o\) # ((!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux48~1_combout\);

-- Location: LCCOMB_X66_Y47_N2
\Shift|rl4[28]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[28]~58_combout\ = (\B[2]~input_o\ & (\Shift|rl4[32]~5_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[28]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[32]~5_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[28]~39_combout\,
	combout => \Shift|rl4[28]~58_combout\);

-- Location: LCCOMB_X61_Y51_N12
\Shift|rl4[44]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[44]~59_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl2[56]~32_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[48]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[48]~27_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[56]~32_combout\,
	combout => \Shift|rl4[44]~59_combout\);

-- Location: LCCOMB_X61_Y51_N6
\Shift|rl4[44]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[44]~60_combout\ = (\Shift|rl4[44]~59_combout\) # ((!\B[2]~input_o\ & \Shift|rl4[44]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[44]~59_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[44]~41_combout\,
	combout => \Shift|rl4[44]~60_combout\);

-- Location: LCCOMB_X65_Y51_N2
\Y_R[1]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~63_combout\ = (\B[4]~input_o\ & ((\Mux60~1_combout\ & ((\Y_R[1]~34_combout\))) # (!\Mux60~1_combout\ & (\Shift|rl2[60]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[60]~29_combout\,
	datab => \Y_R[1]~34_combout\,
	datac => \Mux60~1_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~63_combout\);

-- Location: LCCOMB_X65_Y51_N20
\Y_R[1]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~64_combout\ = (\Y_R[1]~63_combout\) # ((\Shift|rl4[44]~60_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[44]~60_combout\,
	datab => \Y_R[1]~63_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~64_combout\);

-- Location: LCCOMB_X69_Y51_N12
\Mux51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~0_combout\ = (\Mux52~0_combout\ & (((\Shift|rl3[20]~10_combout\)) # (!\Y_ShiftOrArith[1]~11_combout\))) # (!\Mux52~0_combout\ & (\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl3[12]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Y_ShiftOrArith[1]~11_combout\,
	datac => \Shift|rl3[12]~9_combout\,
	datad => \Shift|rl3[20]~10_combout\,
	combout => \Mux51~0_combout\);

-- Location: LCCOMB_X68_Y53_N24
\Mux51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~1_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux51~0_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux51~0_combout\ & ((\Y_R[1]~64_combout\))) # (!\Mux51~0_combout\ & (\Shift|rl4[28]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[28]~58_combout\,
	datab => \Y_ShiftOrArith[1]~11_combout\,
	datac => \Y_R[1]~64_combout\,
	datad => \Mux51~0_combout\,
	combout => \Mux51~1_combout\);

-- Location: LCCOMB_X68_Y57_N20
\Mux51~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[12]~input_o\ & \B[12]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[12]~input_o\ $ (\B[12]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[12]~input_o\) # (\B[12]~input_o\)) # 
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
	combout => \Mux51~5_combout\);

-- Location: LCCOMB_X68_Y57_N14
\Mux51~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~6_combout\ = (\Mux51~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \Mux51~5_combout\,
	combout => \Mux51~6_combout\);

-- Location: LCCOMB_X68_Y53_N12
\Mux51~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~2_combout\ = (\Mux48~1_combout\ & (((\Mux51~6_combout\) # (!\Mux60~15_combout\)))) # (!\Mux48~1_combout\ & (\Mux51~1_combout\ & (\Mux60~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~1_combout\,
	datab => \Mux51~1_combout\,
	datac => \Mux60~15_combout\,
	datad => \Mux51~6_combout\,
	combout => \Mux51~2_combout\);

-- Location: LCCOMB_X68_Y53_N30
\Mux51~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~3_combout\ = (\Mux48~0_combout\ & ((\Mux51~2_combout\ & (\Add|S\(12))) # (!\Mux51~2_combout\ & ((\Shift|ll5[12]~10_combout\))))) # (!\Mux48~0_combout\ & (((\Mux51~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Add|S\(12),
	datac => \Shift|ll5[12]~10_combout\,
	datad => \Mux51~2_combout\,
	combout => \Mux51~3_combout\);

-- Location: LCCOMB_X68_Y53_N0
\Mux51~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux51~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux51~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datac => \Mux51~3_combout\,
	combout => \Mux51~4_combout\);

-- Location: LCCOMB_X72_Y58_N0
\Add|GEN_BLOCKS:3:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[3]~56_combout\ & ((\A[12]~input_o\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\Add|block_carry_in[3]~56_combout\ & (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~56_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X68_Y56_N4
\Add|S[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(13) = \B[13]~input_o\ $ (\Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\ $ (\AddnSub~input_o\ $ (\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|C[1]~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|S\(13));

-- Location: LCCOMB_X69_Y52_N12
\Shift|ll2[14]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~24_combout\ = (\B[1]~input_o\ & (\A[11]~input_o\)) # (!\B[1]~input_o\ & ((\A[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[11]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Shift|ll2[14]~24_combout\);

-- Location: LCCOMB_X69_Y52_N22
\Shift|ll2[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[13]~25_combout\ = (\B[0]~input_o\ & (\Shift|ll2[13]~22_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[14]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[13]~22_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[14]~24_combout\,
	combout => \Shift|ll2[13]~25_combout\);

-- Location: LCCOMB_X67_Y52_N8
\Shift|ll4[13]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~10_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[9]~17_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[13]~25_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[9]~17_combout\,
	combout => \Shift|ll4[13]~10_combout\);

-- Location: LCCOMB_X63_Y52_N2
\Shift|ll5[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[13]~11_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[13]~10_combout\) # ((\B[3]~input_o\ & \Shift|ll3[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll3[5]~1_combout\,
	datac => \Shift|ll4[13]~10_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ll5[13]~11_combout\);

-- Location: LCCOMB_X65_Y49_N26
\Shift|rl4[29]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[29]~61_combout\ = (\B[2]~input_o\ & (\Shift|rl4[33]~8_combout\)) # (!\B[2]~input_o\ & ((\Shift|rl4[29]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|rl4[33]~8_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[29]~44_combout\,
	combout => \Shift|rl4[29]~61_combout\);

-- Location: LCCOMB_X67_Y49_N10
\Mux50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~0_combout\ = (\Mux52~0_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux52~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl3[13]~11_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl4[29]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[29]~61_combout\,
	datab => \Mux52~0_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|rl3[13]~11_combout\,
	combout => \Mux50~0_combout\);

-- Location: LCCOMB_X65_Y49_N12
\Shift|rl4[45]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[45]~62_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl2[57]~117_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[49]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[49]~62_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[57]~117_combout\,
	combout => \Shift|rl4[45]~62_combout\);

-- Location: LCCOMB_X65_Y49_N30
\Shift|rl4[45]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[45]~63_combout\ = (\Shift|rl4[45]~62_combout\) # ((\Shift|rl4[45]~46_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[45]~46_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl4[45]~62_combout\,
	combout => \Shift|rl4[45]~63_combout\);

-- Location: LCCOMB_X60_Y54_N22
\Y_R[1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~65_combout\ = (\ShiftFN[0]~input_o\ & ((\Shift|ll4[1]~0_combout\ & (\A[63]~input_o\)) # (!\Shift|ll4[1]~0_combout\ & ((\Shift|rl1[61]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Shift|rl1[61]~5_combout\,
	datad => \Shift|ll4[1]~0_combout\,
	combout => \Y_R[1]~65_combout\);

-- Location: LCCOMB_X60_Y54_N0
\Y_R[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~66_combout\ = (\Y_R[1]~65_combout\) # ((!\Mux60~1_combout\ & (!\ShiftFN[0]~input_o\ & \Shift|rl2[61]~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~65_combout\,
	datab => \Mux60~1_combout\,
	datac => \ShiftFN[0]~input_o\,
	datad => \Shift|rl2[61]~118_combout\,
	combout => \Y_R[1]~66_combout\);

-- Location: LCCOMB_X63_Y49_N2
\Y_R[1]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~67_combout\ = (\B[4]~input_o\ & ((\Y_R[1]~66_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[45]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|rl4[45]~63_combout\,
	datad => \Y_R[1]~66_combout\,
	combout => \Y_R[1]~67_combout\);

-- Location: LCCOMB_X67_Y49_N4
\Mux50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~1_combout\ = (\Mux50~0_combout\ & (((\Y_R[1]~67_combout\)) # (!\Mux52~0_combout\))) # (!\Mux50~0_combout\ & (\Mux52~0_combout\ & ((\Shift|rl3[21]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux50~0_combout\,
	datab => \Mux52~0_combout\,
	datac => \Y_R[1]~67_combout\,
	datad => \Shift|rl3[21]~12_combout\,
	combout => \Mux50~1_combout\);

-- Location: LCCOMB_X68_Y56_N26
\Mux50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[13]~input_o\ & \A[13]~input_o\)) # (!\LogicFN[1]~input_o\ & (\B[13]~input_o\ $ (\A[13]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\B[13]~input_o\) # (\A[13]~input_o\)) # 
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
	combout => \Mux50~5_combout\);

-- Location: LCCOMB_X68_Y56_N12
\Mux50~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~6_combout\ = (\Mux50~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux50~5_combout\,
	datad => \B[1]~input_o\,
	combout => \Mux50~6_combout\);

-- Location: LCCOMB_X68_Y56_N6
\Mux50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~2_combout\ = (\Mux60~15_combout\ & ((\Mux48~1_combout\ & ((\Mux50~6_combout\))) # (!\Mux48~1_combout\ & (\Mux50~1_combout\)))) # (!\Mux60~15_combout\ & (((\Mux48~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~15_combout\,
	datab => \Mux50~1_combout\,
	datac => \Mux48~1_combout\,
	datad => \Mux50~6_combout\,
	combout => \Mux50~2_combout\);

-- Location: LCCOMB_X68_Y56_N16
\Mux50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~3_combout\ = (\Mux48~0_combout\ & ((\Mux50~2_combout\ & (\Add|S\(13))) # (!\Mux50~2_combout\ & ((\Shift|ll5[13]~11_combout\))))) # (!\Mux48~0_combout\ & (((\Mux50~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Add|S\(13),
	datac => \Shift|ll5[13]~11_combout\,
	datad => \Mux50~2_combout\,
	combout => \Mux50~3_combout\);

-- Location: LCCOMB_X68_Y56_N18
\Mux50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux50~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux50~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datad => \Mux50~3_combout\,
	combout => \Mux50~4_combout\);

-- Location: LCCOMB_X67_Y51_N26
\Shift|rl4[30]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[30]~64_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[34]~15_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[30]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl4[30]~49_combout\,
	datad => \Shift|rl4[34]~15_combout\,
	combout => \Shift|rl4[30]~64_combout\);

-- Location: LCCOMB_X63_Y53_N2
\Shift|ra4[62]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ra4[62]~1_combout\ = (\B[3]~input_o\ & (\A[63]~input_o\)) # (!\B[3]~input_o\ & ((\Shift|ll3[0]~2_combout\ & (\A[63]~input_o\)) # (!\Shift|ll3[0]~2_combout\ & ((\A[62]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Shift|ll3[0]~2_combout\,
	datad => \A[62]~input_o\,
	combout => \Shift|ra4[62]~1_combout\);

-- Location: LCCOMB_X63_Y53_N4
\Y_R[1]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~68_combout\ = (\ShiftFN[0]~input_o\ & (((\Shift|ra4[62]~1_combout\)))) # (!\ShiftFN[0]~input_o\ & (!\Shift|ll4[1]~0_combout\ & ((\Shift|rl1[62]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[1]~0_combout\,
	datab => \Shift|ra4[62]~1_combout\,
	datac => \Shift|rl1[62]~2_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_R[1]~68_combout\);

-- Location: LCCOMB_X67_Y47_N2
\Shift|rl4[46]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[46]~65_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|rl2[58]~101_combout\))) # (!\B[3]~input_o\ & (\Shift|rl2[50]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|rl2[50]~99_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|rl2[58]~101_combout\,
	combout => \Shift|rl4[46]~65_combout\);

-- Location: LCCOMB_X67_Y49_N22
\Shift|rl4[46]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[46]~66_combout\ = (\Shift|rl4[46]~65_combout\) # ((!\B[2]~input_o\ & \Shift|rl4[46]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|rl4[46]~65_combout\,
	datac => \Shift|rl4[46]~51_combout\,
	combout => \Shift|rl4[46]~66_combout\);

-- Location: LCCOMB_X63_Y49_N20
\Y_R[1]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~69_combout\ = (\B[4]~input_o\ & (\Y_R[1]~68_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl4[46]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~68_combout\,
	datab => \Shift|rl4[46]~66_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~69_combout\);

-- Location: LCCOMB_X67_Y51_N20
\Mux49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~0_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & ((\Mux52~0_combout\ & (\Shift|rl3[22]~14_combout\)) # (!\Mux52~0_combout\ & ((\Shift|rl3[14]~13_combout\))))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|rl3[22]~14_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|rl3[14]~13_combout\,
	combout => \Mux49~0_combout\);

-- Location: LCCOMB_X67_Y51_N22
\Mux49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~1_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (((\Mux49~0_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux49~0_combout\ & ((\Y_R[1]~69_combout\))) # (!\Mux49~0_combout\ & (\Shift|rl4[30]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[30]~64_combout\,
	datab => \Y_R[1]~69_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Mux49~0_combout\,
	combout => \Mux49~1_combout\);

-- Location: LCCOMB_X68_Y55_N26
\Mux49~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[14]~input_o\ & \B[14]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[14]~input_o\ $ (\B[14]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[14]~input_o\) # (\B[14]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Mux49~5_combout\);

-- Location: LCCOMB_X68_Y55_N20
\Mux49~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~6_combout\ = (\Mux49~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux49~5_combout\,
	datad => \B[2]~input_o\,
	combout => \Mux49~6_combout\);

-- Location: LCCOMB_X68_Y53_N18
\Mux49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~2_combout\ = (\Mux48~1_combout\ & (((\Mux49~6_combout\) # (!\Mux60~15_combout\)))) # (!\Mux48~1_combout\ & (\Mux49~1_combout\ & (\Mux60~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~1_combout\,
	datab => \Mux49~1_combout\,
	datac => \Mux60~15_combout\,
	datad => \Mux49~6_combout\,
	combout => \Mux49~2_combout\);

-- Location: LCCOMB_X72_Y58_N18
\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(12) & ((\A[13]~input_o\) # (\B[13]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(12) & (\A[13]~input_o\ & (\B[13]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|G\(12),
	datad => \A[13]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X72_Y58_N4
\Add|P[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(14) = \AddnSub~input_o\ $ (\A[14]~input_o\ $ (\B[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[14]~input_o\,
	datad => \B[14]~input_o\,
	combout => \Add|P\(14));

-- Location: LCCOMB_X72_Y58_N14
\Add|S[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(14) = \Add|P\(14) $ (((\Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[3]~56_combout\ & \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~56_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|g_int[1]~1_combout\,
	datac => \Add|P\(14),
	datad => \Add|GEN_BLOCKS:3:LACG_INST|Pout~1_combout\,
	combout => \Add|S\(14));

-- Location: LCCOMB_X70_Y52_N12
\Shift|ll3[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[6]~3_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[2]~1_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[6]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[6]~11_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[2]~1_combout\,
	combout => \Shift|ll3[6]~3_combout\);

-- Location: LCCOMB_X70_Y52_N6
\Shift|ll2[15]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~26_combout\ = (\B[1]~input_o\ & (\A[12]~input_o\)) # (!\B[1]~input_o\ & ((\A[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[12]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[14]~input_o\,
	combout => \Shift|ll2[15]~26_combout\);

-- Location: LCCOMB_X70_Y52_N0
\Shift|ll2[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[14]~27_combout\ = (\B[0]~input_o\ & (\Shift|ll2[14]~24_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[15]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[14]~24_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[15]~26_combout\,
	combout => \Shift|ll2[14]~27_combout\);

-- Location: LCCOMB_X70_Y52_N18
\Shift|ll4[14]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[14]~11_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[10]~19_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[14]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[10]~19_combout\,
	datad => \Shift|ll2[14]~27_combout\,
	combout => \Shift|ll4[14]~11_combout\);

-- Location: LCCOMB_X65_Y52_N14
\Shift|ll5[14]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[14]~12_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[14]~11_combout\) # ((\Shift|ll3[6]~3_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[6]~3_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[14]~11_combout\,
	combout => \Shift|ll5[14]~12_combout\);

-- Location: LCCOMB_X68_Y53_N20
\Mux49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~3_combout\ = (\Mux48~0_combout\ & ((\Mux49~2_combout\ & (\Add|S\(14))) # (!\Mux49~2_combout\ & ((\Shift|ll5[14]~12_combout\))))) # (!\Mux48~0_combout\ & (\Mux49~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Mux49~2_combout\,
	datac => \Add|S\(14),
	datad => \Shift|ll5[14]~12_combout\,
	combout => \Mux49~3_combout\);

-- Location: LCCOMB_X68_Y51_N2
\Mux49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux49~4_combout\ = (!\FuncClass[1]~input_o\ & \Mux49~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux49~3_combout\,
	combout => \Mux49~4_combout\);

-- Location: LCCOMB_X70_Y52_N2
\Shift|ll3[7]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[7]~4_combout\ = (\B[2]~input_o\ & (\Shift|ll2[3]~3_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[7]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[3]~3_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[7]~13_combout\,
	combout => \Shift|ll3[7]~4_combout\);

-- Location: LCCOMB_X70_Y52_N14
\Shift|ll2[16]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~28_combout\ = (\B[1]~input_o\ & (\A[13]~input_o\)) # (!\B[1]~input_o\ & ((\A[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[13]~input_o\,
	datad => \A[15]~input_o\,
	combout => \Shift|ll2[16]~28_combout\);

-- Location: LCCOMB_X70_Y52_N8
\Shift|ll2[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[15]~29_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[15]~26_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[16]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[16]~28_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[15]~26_combout\,
	combout => \Shift|ll2[15]~29_combout\);

-- Location: LCCOMB_X69_Y50_N16
\Shift|ll4[15]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~12_combout\ = (!\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[11]~21_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[15]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[11]~21_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[15]~29_combout\,
	combout => \Shift|ll4[15]~12_combout\);

-- Location: LCCOMB_X68_Y53_N14
\Shift|ll5[15]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[15]~13_combout\ = (!\B[4]~input_o\ & ((\Shift|ll4[15]~12_combout\) # ((\B[3]~input_o\ & \Shift|ll3[7]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll3[7]~4_combout\,
	datad => \Shift|ll4[15]~12_combout\,
	combout => \Shift|ll5[15]~13_combout\);

-- Location: LCCOMB_X72_Y58_N16
\Add|G[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(13) = (\A[13]~input_o\ & (\AddnSub~input_o\ $ (\B[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \B[13]~input_o\,
	datad => \A[13]~input_o\,
	combout => \Add|G\(13));

-- Location: LCCOMB_X72_Y58_N26
\Add|GEN_BLOCKS:3:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\ = (\A[14]~input_o\ & ((\Add|G\(13)) # (\B[14]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[14]~input_o\ & (\Add|G\(13) & (\B[14]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[14]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[14]~input_o\,
	datad => \Add|G\(13),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X72_Y58_N20
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ = (\Add|block_carry_in[3]~56_combout\ & ((\A[12]~input_o\) # (\AddnSub~input_o\ $ (\B[12]~input_o\)))) # (!\Add|block_carry_in[3]~56_combout\ & (\A[12]~input_o\ & (\AddnSub~input_o\ $ (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[3]~56_combout\,
	datab => \AddnSub~input_o\,
	datac => \A[12]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X72_Y58_N22
\Add|GEN_BLOCKS:3:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\) # ((\Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\ & (\Add|P\(14) & \Add|P\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:3:LACG_INST|g_int~2_combout\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~1_combout\,
	datac => \Add|P\(14),
	datad => \Add|P\(13),
	combout => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X68_Y55_N12
\Add|S[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(15) = \AddnSub~input_o\ $ (\Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\ $ (\A[15]~input_o\ $ (\B[15]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|GEN_BLOCKS:3:LACG_INST|C[3]~2_combout\,
	datac => \A[15]~input_o\,
	datad => \B[15]~input_o\,
	combout => \Add|S\(15));

-- Location: LCCOMB_X62_Y50_N10
\Shift|rl4[47]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[47]~68_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|rl2[59]~116_combout\)) # (!\B[3]~input_o\ & ((\Shift|rl2[51]~114_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[59]~116_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|rl2[51]~114_combout\,
	combout => \Shift|rl4[47]~68_combout\);

-- Location: LCCOMB_X62_Y50_N4
\Shift|rl4[47]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[47]~69_combout\ = (\Shift|rl4[47]~68_combout\) # ((!\B[2]~input_o\ & \Shift|rl4[47]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[47]~68_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|rl4[47]~56_combout\,
	combout => \Shift|rl4[47]~69_combout\);

-- Location: LCCOMB_X62_Y54_N12
\Y_R[1]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~70_combout\ = (\A[63]~input_o\ & (\B[4]~input_o\ & ((\ShiftFN[0]~input_o\) # (\Shift|ra4[62]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ra4[62]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~70_combout\);

-- Location: LCCOMB_X62_Y54_N6
\Y_R[1]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~71_combout\ = (\Y_R[1]~70_combout\) # ((\Shift|rl4[47]~69_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[47]~69_combout\,
	datab => \B[4]~input_o\,
	datad => \Y_R[1]~70_combout\,
	combout => \Y_R[1]~71_combout\);

-- Location: LCCOMB_X68_Y52_N2
\Shift|rl4[31]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|rl4[31]~67_combout\ = (\B[2]~input_o\ & ((\Shift|rl4[35]~20_combout\))) # (!\B[2]~input_o\ & (\Shift|rl4[31]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datac => \Shift|rl4[31]~54_combout\,
	datad => \Shift|rl4[35]~20_combout\,
	combout => \Shift|rl4[31]~67_combout\);

-- Location: LCCOMB_X68_Y52_N12
\Mux48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~2_combout\ = (\Mux52~0_combout\ & (!\Y_ShiftOrArith[1]~11_combout\)) # (!\Mux52~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|rl3[15]~15_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Shift|rl4[31]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Y_ShiftOrArith[1]~11_combout\,
	datac => \Shift|rl4[31]~67_combout\,
	datad => \Shift|rl3[15]~15_combout\,
	combout => \Mux48~2_combout\);

-- Location: LCCOMB_X68_Y52_N6
\Mux48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~3_combout\ = (\Mux52~0_combout\ & ((\Mux48~2_combout\ & (\Y_R[1]~71_combout\)) # (!\Mux48~2_combout\ & ((\Shift|rl3[23]~16_combout\))))) # (!\Mux52~0_combout\ & (((\Mux48~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Y_R[1]~71_combout\,
	datac => \Shift|rl3[23]~16_combout\,
	datad => \Mux48~2_combout\,
	combout => \Mux48~3_combout\);

-- Location: LCCOMB_X68_Y55_N8
\Mux48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~4_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\) # ((\Logic|xor_result[15]~0_combout\)))) # (!\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & (\B[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Logic|xor_result[15]~0_combout\,
	combout => \Mux48~4_combout\);

-- Location: LCCOMB_X68_Y55_N10
\Mux48~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~5_combout\ = (\LogicFN[1]~input_o\ & ((\A[15]~input_o\ & ((\B[15]~input_o\) # (!\Mux48~4_combout\))) # (!\A[15]~input_o\ & (!\Mux48~4_combout\ & \B[15]~input_o\)))) # (!\LogicFN[1]~input_o\ & (((\Mux48~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[15]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux48~4_combout\,
	datad => \B[15]~input_o\,
	combout => \Mux48~5_combout\);

-- Location: LCCOMB_X68_Y53_N16
\Mux48~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~6_combout\ = (\Mux48~1_combout\ & (((\Mux48~5_combout\) # (!\Mux60~15_combout\)))) # (!\Mux48~1_combout\ & (\Mux48~3_combout\ & (\Mux60~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~1_combout\,
	datab => \Mux48~3_combout\,
	datac => \Mux60~15_combout\,
	datad => \Mux48~5_combout\,
	combout => \Mux48~6_combout\);

-- Location: LCCOMB_X68_Y53_N10
\Mux48~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~7_combout\ = (\Mux48~0_combout\ & ((\Mux48~6_combout\ & ((\Add|S\(15)))) # (!\Mux48~6_combout\ & (\Shift|ll5[15]~13_combout\)))) # (!\Mux48~0_combout\ & (((\Mux48~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux48~0_combout\,
	datab => \Shift|ll5[15]~13_combout\,
	datac => \Add|S\(15),
	datad => \Mux48~6_combout\,
	combout => \Mux48~7_combout\);

-- Location: LCCOMB_X68_Y53_N28
\Mux48~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux48~8_combout\ = (!\FuncClass[1]~input_o\ & \Mux48~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux48~7_combout\,
	combout => \Mux48~8_combout\);

-- Location: LCCOMB_X65_Y57_N20
\Mux47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~4_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[16]~input_o\ & \B[16]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[16]~input_o\ $ (\B[16]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[16]~input_o\) # (\B[16]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[16]~input_o\,
	datad => \B[16]~input_o\,
	combout => \Mux47~4_combout\);

-- Location: LCCOMB_X65_Y57_N22
\Mux47~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~5_combout\ = (\Mux47~4_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Mux47~4_combout\,
	combout => \Mux47~5_combout\);

-- Location: LCCOMB_X73_Y52_N28
\Shift|ll2[17]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~30_combout\ = (\B[1]~input_o\ & (\A[14]~input_o\)) # (!\B[1]~input_o\ & ((\A[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[14]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[16]~input_o\,
	combout => \Shift|ll2[17]~30_combout\);

-- Location: LCCOMB_X70_Y52_N28
\Shift|ll2[16]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[16]~31_combout\ = (\B[0]~input_o\ & (\Shift|ll2[16]~28_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[17]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[16]~28_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[17]~30_combout\,
	combout => \Shift|ll2[16]~31_combout\);

-- Location: LCCOMB_X69_Y48_N10
\Shift|ll4[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~14_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[8]~15_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[16]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[16]~31_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[8]~15_combout\,
	combout => \Shift|ll4[16]~14_combout\);

-- Location: LCCOMB_X69_Y48_N24
\Shift|ll4[16]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~13_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[4]~6_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[12]~23_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[4]~6_combout\,
	combout => \Shift|ll4[16]~13_combout\);

-- Location: LCCOMB_X69_Y48_N20
\Shift|ll4[16]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[16]~15_combout\ = (\Shift|ll4[16]~13_combout\) # ((\Shift|ll4[16]~14_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[16]~14_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[16]~13_combout\,
	combout => \Shift|ll4[16]~15_combout\);

-- Location: LCCOMB_X65_Y50_N22
\Shift|ll5[16]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[16]~14_combout\ = (\B[4]~input_o\ & (\A[0]~input_o\ & ((\Shift|ra4[62]~0_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ll4[16]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \A[0]~input_o\,
	datac => \Shift|ll4[16]~15_combout\,
	datad => \Shift|ra4[62]~0_combout\,
	combout => \Shift|ll5[16]~14_combout\);

-- Location: LCCOMB_X65_Y50_N30
\Y_R[1]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~80_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\)))) # (!\B[4]~input_o\ & (\Shift|rl4[48]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[48]~3_combout\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~80_combout\);

-- Location: LCCOMB_X65_Y50_N16
\Mux47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~0_combout\ = (\Mux60~4_combout\ & (((\Y_R[1]~80_combout\) # (\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[16]~14_combout\ & ((!\Mux60~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[16]~14_combout\,
	datab => \Mux60~4_combout\,
	datac => \Y_R[1]~80_combout\,
	datad => \Mux60~3_combout\,
	combout => \Mux47~0_combout\);

-- Location: LCCOMB_X65_Y50_N18
\Mux47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~1_combout\ = (\Mux60~2_combout\ & (\Mux47~0_combout\)) # (!\Mux60~2_combout\ & ((\Mux47~0_combout\ & ((\Shift|rl4[32]~6_combout\))) # (!\Mux47~0_combout\ & (\Shift|rl4[16]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Mux47~0_combout\,
	datac => \Shift|rl4[16]~1_combout\,
	datad => \Shift|rl4[32]~6_combout\,
	combout => \Mux47~1_combout\);

-- Location: LCCOMB_X60_Y58_N10
\Y_ShiftOrArith[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[1]~18_combout\ = (!\ShiftFN[1]~input_o\ & !\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[1]~18_combout\);

-- Location: LCCOMB_X65_Y57_N12
\Mux47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & ((\Add|block_carry_in[4]~24_combout\ $ (\Add|P\(16))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux47~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~1_combout\,
	datab => \Add|block_carry_in[4]~24_combout\,
	datac => \Y_ShiftOrArith[1]~18_combout\,
	datad => \Add|P\(16),
	combout => \Mux47~2_combout\);

-- Location: LCCOMB_X68_Y57_N28
\Mux47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux47~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux47~5_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux47~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux47~5_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux47~2_combout\,
	combout => \Mux47~3_combout\);

-- Location: LCCOMB_X60_Y54_N2
\Y_R[1]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~72_combout\ = (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Shift|ra3[57]~1_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Y_R[1]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ra3[57]~1_combout\,
	datad => \Y_R[1]~53_combout\,
	combout => \Y_R[1]~72_combout\);

-- Location: LCCOMB_X63_Y50_N28
\Y_R[1]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~73_combout\ = (\B[4]~input_o\ & (\Y_R[1]~34_combout\)) # (!\B[4]~input_o\ & (((\Y_R[1]~18_combout\) # (\Y_R[1]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Y_R[1]~18_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~72_combout\,
	combout => \Y_R[1]~73_combout\);

-- Location: LCCOMB_X67_Y52_N10
\Shift|ll4[17]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[17]~16_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[5]~9_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[13]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[13]~25_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[5]~9_combout\,
	combout => \Shift|ll4[17]~16_combout\);

-- Location: LCCOMB_X73_Y52_N30
\Shift|ll2[18]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~32_combout\ = (\B[1]~input_o\ & (\A[15]~input_o\)) # (!\B[1]~input_o\ & ((\A[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[15]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Shift|ll2[18]~32_combout\);

-- Location: LCCOMB_X70_Y52_N22
\Shift|ll2[17]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[17]~33_combout\ = (\B[0]~input_o\ & (\Shift|ll2[17]~30_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[18]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[17]~30_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[18]~32_combout\,
	combout => \Shift|ll2[17]~33_combout\);

-- Location: LCCOMB_X67_Y52_N12
\Shift|ll4[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[17]~17_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[9]~17_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[17]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[17]~33_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[9]~17_combout\,
	combout => \Shift|ll4[17]~17_combout\);

-- Location: LCCOMB_X67_Y52_N14
\Shift|ll4[17]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[17]~18_combout\ = (\Shift|ll4[17]~16_combout\) # ((!\B[2]~input_o\ & \Shift|ll4[17]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[17]~16_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[17]~17_combout\,
	combout => \Shift|ll4[17]~18_combout\);

-- Location: LCCOMB_X63_Y50_N10
\Shift|ll5[17]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[17]~15_combout\ = (\B[4]~input_o\ & (!\Shift|ll4[1]~0_combout\ & (\Shift|ll1[1]~0_combout\))) # (!\B[4]~input_o\ & (((\Shift|ll4[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[1]~0_combout\,
	datab => \Shift|ll1[1]~0_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[17]~18_combout\,
	combout => \Shift|ll5[17]~15_combout\);

-- Location: LCCOMB_X63_Y50_N22
\Mux46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~0_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Y_R[1]~73_combout\)) # (!\Mux60~4_combout\ & ((\Shift|ll5[17]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Y_R[1]~73_combout\,
	datac => \Mux60~4_combout\,
	datad => \Shift|ll5[17]~15_combout\,
	combout => \Mux46~0_combout\);

-- Location: LCCOMB_X62_Y56_N20
\Mux46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~1_combout\ = (\Mux60~2_combout\ & (((\Mux46~0_combout\)))) # (!\Mux60~2_combout\ & ((\Mux46~0_combout\ & (\Shift|rl4[33]~9_combout\)) # (!\Mux46~0_combout\ & ((\Shift|rl4[17]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Shift|rl4[33]~9_combout\,
	datac => \Mux46~0_combout\,
	datad => \Shift|rl4[17]~11_combout\,
	combout => \Mux46~1_combout\);

-- Location: LCCOMB_X65_Y57_N14
\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ = (\A[16]~input_o\ & ((\Add|block_carry_in[4]~24_combout\) # (\AddnSub~input_o\ $ (\B[16]~input_o\)))) # (!\A[16]~input_o\ & (\Add|block_carry_in[4]~24_combout\ & (\AddnSub~input_o\ $ (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[16]~input_o\,
	datab => \Add|block_carry_in[4]~24_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[16]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X65_Y57_N24
\Mux46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & ((\Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\ $ (\Add|P\(17))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux46~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Mux46~1_combout\,
	datac => \Add|GEN_BLOCKS:4:LACG_INST|C[1]~0_combout\,
	datad => \Add|P\(17),
	combout => \Mux46~2_combout\);

-- Location: LCCOMB_X61_Y53_N12
\Mux46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~4_combout\ = (\LogicFN[1]~input_o\ & ((\A[17]~input_o\ & ((\B[17]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[17]~input_o\ & (!\LogicFN[0]~input_o\ & \B[17]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[17]~input_o\ $ (\B[17]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[17]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[17]~input_o\,
	combout => \Mux46~4_combout\);

-- Location: LCCOMB_X61_Y53_N6
\Mux46~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~5_combout\ = (\Mux46~4_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[5]~input_o\,
	datad => \Mux46~4_combout\,
	combout => \Mux46~5_combout\);

-- Location: LCCOMB_X61_Y53_N2
\Mux46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux46~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux46~5_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux46~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux46~2_combout\,
	datad => \Mux46~5_combout\,
	combout => \Mux46~3_combout\);

-- Location: LCCOMB_X67_Y56_N2
\Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (\LogicFN[1]~input_o\ & ((\B[18]~input_o\ & ((\A[18]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[18]~input_o\ & (!\LogicFN[0]~input_o\ & \A[18]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[18]~input_o\ $ (\A[18]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[18]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X67_Y56_N4
\Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~5_combout\ = (\Mux45~4_combout\ & ((\B[6]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[6]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux45~4_combout\,
	combout => \Mux45~5_combout\);

-- Location: LCCOMB_X73_Y52_N8
\Shift|ll2[19]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~34_combout\ = (\B[1]~input_o\ & (\A[16]~input_o\)) # (!\B[1]~input_o\ & ((\A[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[16]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[18]~input_o\,
	combout => \Shift|ll2[19]~34_combout\);

-- Location: LCCOMB_X73_Y52_N10
\Shift|ll2[18]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[18]~35_combout\ = (\B[0]~input_o\ & (\Shift|ll2[18]~32_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[19]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[18]~32_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[19]~34_combout\,
	combout => \Shift|ll2[18]~35_combout\);

-- Location: LCCOMB_X69_Y49_N16
\Shift|ll4[18]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[18]~20_combout\ = (\B[3]~input_o\ & (\Shift|ll2[10]~19_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[18]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[10]~19_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[18]~35_combout\,
	combout => \Shift|ll4[18]~20_combout\);

-- Location: LCCOMB_X66_Y53_N10
\Shift|ll4[18]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[18]~19_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[6]~11_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[14]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[6]~11_combout\,
	datac => \Shift|ll2[14]~27_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[18]~19_combout\);

-- Location: LCCOMB_X66_Y53_N12
\Shift|ll4[18]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[18]~21_combout\ = (\Shift|ll4[18]~19_combout\) # ((!\B[2]~input_o\ & \Shift|ll4[18]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll4[18]~20_combout\,
	datad => \Shift|ll4[18]~19_combout\,
	combout => \Shift|ll4[18]~21_combout\);

-- Location: LCCOMB_X66_Y53_N14
\Shift|ll5[18]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[18]~16_combout\ = (\B[4]~input_o\ & (\Shift|ll2[2]~1_combout\ & (!\Mux60~1_combout\))) # (!\B[4]~input_o\ & (((\Shift|ll4[18]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll2[2]~1_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ll4[18]~21_combout\,
	combout => \Shift|ll5[18]~16_combout\);

-- Location: LCCOMB_X63_Y53_N30
\Y_R[1]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~74_combout\ = (\B[3]~input_o\ & ((\ShiftFN[0]~input_o\ & (\Shift|ra3[58]~2_combout\)) # (!\ShiftFN[0]~input_o\ & ((\Y_R[1]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ra3[58]~2_combout\,
	datad => \Y_R[1]~57_combout\,
	combout => \Y_R[1]~74_combout\);

-- Location: LCCOMB_X66_Y53_N16
\Y_R[1]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~75_combout\ = (\B[4]~input_o\ & (\Y_R[1]~34_combout\)) # (!\B[4]~input_o\ & (((\Y_R[1]~74_combout\) # (\Y_R[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Y_R[1]~34_combout\,
	datac => \Y_R[1]~74_combout\,
	datad => \Y_R[1]~24_combout\,
	combout => \Y_R[1]~75_combout\);

-- Location: LCCOMB_X66_Y53_N26
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (\Mux60~4_combout\ & ((\Mux60~3_combout\) # ((\Y_R[1]~75_combout\)))) # (!\Mux60~4_combout\ & (!\Mux60~3_combout\ & (\Shift|ll5[18]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Mux60~3_combout\,
	datac => \Shift|ll5[18]~16_combout\,
	datad => \Y_R[1]~75_combout\,
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X66_Y53_N4
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (\Mux60~2_combout\ & (((\Mux45~0_combout\)))) # (!\Mux60~2_combout\ & ((\Mux45~0_combout\ & (\Shift|rl4[34]~16_combout\)) # (!\Mux45~0_combout\ & ((\Shift|rl4[18]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[34]~16_combout\,
	datab => \Mux60~2_combout\,
	datac => \Mux45~0_combout\,
	datad => \Shift|rl4[18]~13_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X65_Y57_N26
\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(16) & ((\A[17]~input_o\) # (\AddnSub~input_o\ $ (\B[17]~input_o\)))) # (!\Add|G\(16) & (\A[17]~input_o\ & (\AddnSub~input_o\ $ (\B[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(16),
	datab => \A[17]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[17]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X65_Y57_N28
\Add|GEN_BLOCKS:4:LACG_INST|C[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|C\(2) = (\Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\) # ((\Add|P\(16) & (\Add|P\(17) & \Add|block_carry_in[4]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(16),
	datab => \Add|P\(17),
	datac => \Add|GEN_BLOCKS:4:LACG_INST|g_int[1]~1_combout\,
	datad => \Add|block_carry_in[4]~24_combout\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|C\(2));

-- Location: LCCOMB_X67_Y56_N0
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & ((\Add|GEN_BLOCKS:4:LACG_INST|C\(2) $ (\Add|P\(18))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux45~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux45~1_combout\,
	datab => \Y_ShiftOrArith[1]~18_combout\,
	datac => \Add|GEN_BLOCKS:4:LACG_INST|C\(2),
	datad => \Add|P\(18),
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X67_Y56_N26
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux45~5_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux45~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux45~5_combout\,
	datad => \Mux45~2_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X67_Y56_N6
\Mux44~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~4_combout\ = (\B[19]~input_o\ & ((\A[19]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[19]~input_o\ & ((\A[19]~input_o\ & ((!\LogicFN[0]~input_o\) # (!\LogicFN[1]~input_o\))) # (!\A[19]~input_o\ & (!\LogicFN[1]~input_o\ & 
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
	combout => \Mux44~4_combout\);

-- Location: LCCOMB_X67_Y56_N8
\Mux44~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~5_combout\ = (\Mux44~4_combout\ & ((\B[7]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[7]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux44~4_combout\,
	combout => \Mux44~5_combout\);

-- Location: LCCOMB_X73_Y52_N20
\Shift|ll2[20]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~36_combout\ = (\B[1]~input_o\ & ((\A[17]~input_o\))) # (!\B[1]~input_o\ & (\A[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[19]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[17]~input_o\,
	combout => \Shift|ll2[20]~36_combout\);

-- Location: LCCOMB_X73_Y52_N22
\Shift|ll2[19]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[19]~37_combout\ = (\B[0]~input_o\ & (\Shift|ll2[19]~34_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[20]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[19]~34_combout\,
	datad => \Shift|ll2[20]~36_combout\,
	combout => \Shift|ll2[19]~37_combout\);

-- Location: LCCOMB_X69_Y50_N28
\Shift|ll4[19]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[19]~23_combout\ = (\B[3]~input_o\ & (\Shift|ll2[11]~21_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[19]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[11]~21_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[19]~37_combout\,
	combout => \Shift|ll4[19]~23_combout\);

-- Location: LCCOMB_X69_Y50_N18
\Shift|ll4[19]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[19]~22_combout\ = (\B[2]~input_o\ & ((\B[3]~input_o\ & (\Shift|ll2[7]~13_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[15]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[7]~13_combout\,
	datad => \Shift|ll2[15]~29_combout\,
	combout => \Shift|ll4[19]~22_combout\);

-- Location: LCCOMB_X66_Y50_N0
\Shift|ll4[19]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[19]~24_combout\ = (\Shift|ll4[19]~22_combout\) # ((\Shift|ll4[19]~23_combout\ & !\B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[19]~23_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[19]~22_combout\,
	combout => \Shift|ll4[19]~24_combout\);

-- Location: LCCOMB_X66_Y52_N30
\Shift|ll5[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[19]~17_combout\ = (\B[4]~input_o\ & (!\Mux60~1_combout\ & ((\Shift|ll2[3]~3_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ll4[19]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~1_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[19]~24_combout\,
	datad => \Shift|ll2[3]~3_combout\,
	combout => \Shift|ll5[19]~17_combout\);

-- Location: LCCOMB_X66_Y52_N16
\Y_R[1]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~76_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~34_combout\)))) # (!\B[4]~input_o\ & ((\Y_R[1]~31_combout\) # ((\Y_R[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~31_combout\,
	datab => \Y_R[1]~34_combout\,
	datac => \B[4]~input_o\,
	datad => \Y_R[1]~29_combout\,
	combout => \Y_R[1]~76_combout\);

-- Location: LCCOMB_X66_Y52_N2
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (\Mux60~3_combout\ & (\Mux60~4_combout\)) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~76_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[19]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Mux60~4_combout\,
	datac => \Shift|ll5[19]~17_combout\,
	datad => \Y_R[1]~76_combout\,
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X66_Y52_N12
\Mux44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~1_combout\ = (\Mux60~2_combout\ & (\Mux44~0_combout\)) # (!\Mux60~2_combout\ & ((\Mux44~0_combout\ & (\Shift|rl4[35]~21_combout\)) # (!\Mux44~0_combout\ & ((\Shift|rl4[19]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~2_combout\,
	datab => \Mux44~0_combout\,
	datac => \Shift|rl4[35]~21_combout\,
	datad => \Shift|rl4[19]~18_combout\,
	combout => \Mux44~1_combout\);

-- Location: LCCOMB_X65_Y57_N30
\Add|S[19]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[19]~17_combout\ = (\Add|P\(17) & ((\Add|G\(16)) # ((\Add|P\(16) & \Add|block_carry_in[4]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(16),
	datab => \Add|P\(17),
	datac => \Add|G\(16),
	datad => \Add|block_carry_in[4]~24_combout\,
	combout => \Add|S[19]~17_combout\);

-- Location: LCCOMB_X67_Y56_N20
\Add|GEN_BLOCKS:4:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\ = (\Add|G\(17) & ((\A[18]~input_o\) # (\B[18]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(17) & (\A[18]~input_o\ & (\B[18]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(17),
	datab => \B[18]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[18]~input_o\,
	combout => \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X67_Y56_N30
\Add|S[19]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[19]~16_combout\ = \B[19]~input_o\ $ (\A[19]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \A[19]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|S[19]~16_combout\);

-- Location: LCCOMB_X67_Y56_N24
\Add|S[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[19]~18_combout\ = \Add|S[19]~16_combout\ $ (((\Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\) # ((\Add|S[19]~17_combout\ & \Add|P\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[19]~17_combout\,
	datab => \Add|GEN_BLOCKS:4:LACG_INST|g_int~2_combout\,
	datac => \Add|S[19]~16_combout\,
	datad => \Add|P\(18),
	combout => \Add|S[19]~18_combout\);

-- Location: LCCOMB_X67_Y56_N10
\Mux44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~2_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~18_combout\ & ((\Add|S[19]~18_combout\))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux44~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux44~1_combout\,
	datab => \Y_ShiftOrArith[1]~18_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Add|S[19]~18_combout\,
	combout => \Mux44~2_combout\);

-- Location: LCCOMB_X67_Y56_N28
\Mux44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~3_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux44~2_combout\) # ((\FuncClass[0]~input_o\ & \Mux44~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux44~5_combout\,
	datad => \Mux44~2_combout\,
	combout => \Mux44~3_combout\);

-- Location: LCCOMB_X72_Y52_N2
\Shift|ll2[21]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~38_combout\ = (\B[1]~input_o\ & (\A[18]~input_o\)) # (!\B[1]~input_o\ & ((\A[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[18]~input_o\,
	datac => \A[20]~input_o\,
	combout => \Shift|ll2[21]~38_combout\);

-- Location: LCCOMB_X73_Y52_N16
\Shift|ll2[20]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[20]~39_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[20]~36_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[21]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[21]~38_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[20]~36_combout\,
	combout => \Shift|ll2[20]~39_combout\);

-- Location: LCCOMB_X69_Y48_N6
\Shift|ll4[20]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[20]~25_combout\ = (\B[3]~input_o\ & (\Shift|ll2[12]~23_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[20]~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[12]~23_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[20]~39_combout\,
	combout => \Shift|ll4[20]~25_combout\);

-- Location: LCCOMB_X69_Y48_N16
\Shift|ll4[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[20]~26_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[16]~14_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[20]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[20]~25_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[16]~14_combout\,
	combout => \Shift|ll4[20]~26_combout\);

-- Location: LCCOMB_X65_Y51_N14
\Shift|ll5[20]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[20]~18_combout\ = (\B[4]~input_o\ & (\Shift|ll3[4]~0_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ll4[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[4]~0_combout\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll4[20]~26_combout\,
	datad => \B[4]~input_o\,
	combout => \Shift|ll5[20]~18_combout\);

-- Location: LCCOMB_X65_Y51_N24
\Y_R[1]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~77_combout\ = (\B[4]~input_o\ & (((\Y_R[1]~34_combout\)))) # (!\B[4]~input_o\ & ((\Y_R[1]~33_combout\) # ((\Y_R[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~33_combout\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~34_combout\,
	datad => \Y_R[1]~35_combout\,
	combout => \Y_R[1]~77_combout\);

-- Location: LCCOMB_X65_Y51_N26
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (\Mux60~4_combout\ & ((\Mux60~3_combout\) # ((\Y_R[1]~77_combout\)))) # (!\Mux60~4_combout\ & (!\Mux60~3_combout\ & (\Shift|ll5[20]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Mux60~3_combout\,
	datac => \Shift|ll5[20]~18_combout\,
	datad => \Y_R[1]~77_combout\,
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X65_Y51_N12
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux43~0_combout\ & ((\Mux60~2_combout\) # ((\Shift|rl4[36]~25_combout\)))) # (!\Mux43~0_combout\ & (!\Mux60~2_combout\ & ((\Shift|rl4[20]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~0_combout\,
	datab => \Mux60~2_combout\,
	datac => \Shift|rl4[36]~25_combout\,
	datad => \Shift|rl4[20]~23_combout\,
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X67_Y57_N14
\Mux43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & ((\Add|block_carry_in[5]~26_combout\ $ (\Add|P\(20))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux43~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Mux43~1_combout\,
	datac => \Add|block_carry_in[5]~26_combout\,
	datad => \Add|P\(20),
	combout => \Mux43~2_combout\);

-- Location: LCCOMB_X67_Y57_N4
\Mux43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~4_combout\ = (\LogicFN[0]~input_o\ & ((\B[20]~input_o\ & (\LogicFN[1]~input_o\ $ (!\A[20]~input_o\))) # (!\B[20]~input_o\ & (!\LogicFN[1]~input_o\ & \A[20]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[20]~input_o\) # ((\A[20]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[20]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[20]~input_o\,
	combout => \Mux43~4_combout\);

-- Location: LCCOMB_X67_Y57_N22
\Mux43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~5_combout\ = (\Mux43~4_combout\ & ((\B[8]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[8]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux43~4_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux43~5_combout\);

-- Location: LCCOMB_X67_Y57_N24
\Mux43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux43~5_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux43~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux43~2_combout\,
	datac => \Mux43~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux43~3_combout\);

-- Location: LCCOMB_X65_Y53_N4
\Y_R[1]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~81_combout\ = (\B[4]~input_o\ & (((\ShiftFN[0]~input_o\ & \A[63]~input_o\)))) # (!\B[4]~input_o\ & (\Y_R[1]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~39_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~81_combout\);

-- Location: LCCOMB_X72_Y52_N12
\Shift|ll2[22]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~40_combout\ = (\B[1]~input_o\ & ((\A[19]~input_o\))) # (!\B[1]~input_o\ & (\A[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[19]~input_o\,
	combout => \Shift|ll2[22]~40_combout\);

-- Location: LCCOMB_X72_Y52_N22
\Shift|ll2[21]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[21]~41_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[21]~38_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[22]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[22]~40_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[21]~38_combout\,
	combout => \Shift|ll2[21]~41_combout\);

-- Location: LCCOMB_X67_Y52_N16
\Shift|ll4[21]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[21]~27_combout\ = (\B[3]~input_o\ & (\Shift|ll2[13]~25_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[21]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[13]~25_combout\,
	datab => \Shift|ll2[21]~41_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[21]~27_combout\);

-- Location: LCCOMB_X67_Y52_N26
\Shift|ll4[21]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[21]~28_combout\ = (\B[2]~input_o\ & (\Shift|ll4[17]~17_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[21]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[17]~17_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[21]~27_combout\,
	combout => \Shift|ll4[21]~28_combout\);

-- Location: LCCOMB_X65_Y53_N18
\Shift|ll5[21]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[21]~19_combout\ = (\B[4]~input_o\ & (\Shift|ll3[5]~1_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ll4[21]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[5]~1_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[21]~28_combout\,
	combout => \Shift|ll5[21]~19_combout\);

-- Location: LCCOMB_X65_Y53_N12
\Mux42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~0_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Y_R[1]~81_combout\)) # (!\Mux60~4_combout\ & ((\Shift|ll5[21]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Y_R[1]~81_combout\,
	datac => \Mux60~4_combout\,
	datad => \Shift|ll5[21]~19_combout\,
	combout => \Mux42~0_combout\);

-- Location: LCCOMB_X65_Y53_N14
\Mux42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~1_combout\ = (\Mux42~0_combout\ & ((\Shift|rl4[37]~29_combout\) # ((\Mux60~2_combout\)))) # (!\Mux42~0_combout\ & (((!\Mux60~2_combout\ & \Shift|rl4[21]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~0_combout\,
	datab => \Shift|rl4[37]~29_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|rl4[21]~27_combout\,
	combout => \Mux42~1_combout\);

-- Location: LCCOMB_X67_Y57_N26
\Add|GEN_BLOCKS:5:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[5]~26_combout\ & ((\A[20]~input_o\) # (\AddnSub~input_o\ $ (\B[20]~input_o\)))) # (!\Add|block_carry_in[5]~26_combout\ & (\A[20]~input_o\ & (\AddnSub~input_o\ $ (\B[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[20]~input_o\,
	datac => \Add|block_carry_in[5]~26_combout\,
	datad => \A[20]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X67_Y57_N12
\Mux42~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & ((\Add|P\(21) $ (\Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\)))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~1_combout\,
	datab => \Add|P\(21),
	datac => \Add|GEN_BLOCKS:5:LACG_INST|C[1]~0_combout\,
	datad => \Y_ShiftOrArith[1]~18_combout\,
	combout => \Mux42~2_combout\);

-- Location: LCCOMB_X68_Y58_N28
\Mux42~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~4_combout\ = (\A[21]~input_o\ & ((\B[21]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[21]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[21]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[21]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[21]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[21]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux42~4_combout\);

-- Location: LCCOMB_X68_Y58_N30
\Mux42~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~5_combout\ = (\Mux42~4_combout\ & ((\B[9]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[9]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux42~4_combout\,
	combout => \Mux42~5_combout\);

-- Location: LCCOMB_X68_Y57_N6
\Mux42~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux42~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux42~5_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux42~2_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux42~5_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux42~3_combout\);

-- Location: LCCOMB_X67_Y57_N30
\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(20) & ((\A[21]~input_o\) # (\AddnSub~input_o\ $ (\B[21]~input_o\)))) # (!\Add|G\(20) & (\A[21]~input_o\ & (\AddnSub~input_o\ $ (\B[21]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[21]~input_o\,
	datac => \Add|G\(20),
	datad => \A[21]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X67_Y57_N0
\Add|GEN_BLOCKS:5:LACG_INST|C[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|C\(2) = (\Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\) # ((\Add|P\(21) & (\Add|block_carry_in[5]~26_combout\ & \Add|P\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:5:LACG_INST|g_int[1]~1_combout\,
	datab => \Add|P\(21),
	datac => \Add|block_carry_in[5]~26_combout\,
	datad => \Add|P\(20),
	combout => \Add|GEN_BLOCKS:5:LACG_INST|C\(2));

-- Location: LCCOMB_X65_Y52_N6
\Y_R[1]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~82_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\)))) # (!\B[4]~input_o\ & (\Y_R[1]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~44_combout\,
	datab => \A[63]~input_o\,
	datac => \B[4]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_R[1]~82_combout\);

-- Location: LCCOMB_X72_Y52_N24
\Shift|ll2[23]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~42_combout\ = (\B[1]~input_o\ & (\A[20]~input_o\)) # (!\B[1]~input_o\ & ((\A[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[20]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ll2[23]~42_combout\);

-- Location: LCCOMB_X72_Y52_N26
\Shift|ll2[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[22]~43_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[22]~40_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[23]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[23]~42_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[22]~40_combout\,
	combout => \Shift|ll2[22]~43_combout\);

-- Location: LCCOMB_X69_Y49_N10
\Shift|ll4[22]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[22]~29_combout\ = (\B[3]~input_o\ & (\Shift|ll2[14]~27_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[22]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[14]~27_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[22]~43_combout\,
	combout => \Shift|ll4[22]~29_combout\);

-- Location: LCCOMB_X69_Y49_N12
\Shift|ll4[22]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[22]~30_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[18]~20_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[22]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[22]~29_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll4[18]~20_combout\,
	combout => \Shift|ll4[22]~30_combout\);

-- Location: LCCOMB_X65_Y52_N24
\Shift|ll5[22]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[22]~20_combout\ = (\B[4]~input_o\ & (!\B[3]~input_o\ & (\Shift|ll3[6]~3_combout\))) # (!\B[4]~input_o\ & (((\Shift|ll4[22]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \B[3]~input_o\,
	datac => \Shift|ll3[6]~3_combout\,
	datad => \Shift|ll4[22]~30_combout\,
	combout => \Shift|ll5[22]~20_combout\);

-- Location: LCCOMB_X65_Y52_N2
\Mux41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~0_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & (\Y_R[1]~82_combout\)) # (!\Mux60~4_combout\ & ((\Shift|ll5[22]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Y_R[1]~82_combout\,
	datac => \Mux60~4_combout\,
	datad => \Shift|ll5[22]~20_combout\,
	combout => \Mux41~0_combout\);

-- Location: LCCOMB_X65_Y52_N12
\Mux41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~1_combout\ = (\Mux41~0_combout\ & ((\Shift|rl4[38]~33_combout\) # ((\Mux60~2_combout\)))) # (!\Mux41~0_combout\ & (((!\Mux60~2_combout\ & \Shift|rl4[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[38]~33_combout\,
	datab => \Mux41~0_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|rl4[22]~31_combout\,
	combout => \Mux41~1_combout\);

-- Location: LCCOMB_X66_Y57_N8
\Mux41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & (\Add|GEN_BLOCKS:5:LACG_INST|C\(2) $ (((\Add|P\(22)))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (((\Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Add|GEN_BLOCKS:5:LACG_INST|C\(2),
	datac => \Mux41~1_combout\,
	datad => \Add|P\(22),
	combout => \Mux41~2_combout\);

-- Location: LCCOMB_X66_Y57_N4
\Mux41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~4_combout\ = (\LogicFN[0]~input_o\ & ((\B[22]~input_o\ & (\LogicFN[1]~input_o\ $ (!\A[22]~input_o\))) # (!\B[22]~input_o\ & (!\LogicFN[1]~input_o\ & \A[22]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[22]~input_o\) # ((\A[22]~input_o\) # 
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
	combout => \Mux41~4_combout\);

-- Location: LCCOMB_X66_Y57_N6
\Mux41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~5_combout\ = (\Mux41~4_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux41~4_combout\,
	datad => \B[10]~input_o\,
	combout => \Mux41~5_combout\);

-- Location: LCCOMB_X66_Y57_N18
\Mux41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux41~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux41~5_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux41~2_combout\,
	datad => \Mux41~5_combout\,
	combout => \Mux41~3_combout\);

-- Location: LCCOMB_X66_Y57_N0
\Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~4_combout\ = (\LogicFN[0]~input_o\ & ((\B[23]~input_o\ & (\LogicFN[1]~input_o\ $ (!\A[23]~input_o\))) # (!\B[23]~input_o\ & (!\LogicFN[1]~input_o\ & \A[23]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[23]~input_o\) # ((\A[23]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[23]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Mux40~4_combout\);

-- Location: LCCOMB_X66_Y57_N26
\Mux40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~5_combout\ = (\Mux40~4_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[11]~input_o\,
	datad => \Mux40~4_combout\,
	combout => \Mux40~5_combout\);

-- Location: LCCOMB_X62_Y50_N30
\Y_R[1]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~83_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\)))) # (!\B[4]~input_o\ & (\Y_R[1]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~48_combout\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~83_combout\);

-- Location: LCCOMB_X72_Y52_N28
\Shift|ll2[24]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~44_combout\ = (\B[1]~input_o\ & (\A[21]~input_o\)) # (!\B[1]~input_o\ & ((\A[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datac => \A[21]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Shift|ll2[24]~44_combout\);

-- Location: LCCOMB_X72_Y52_N30
\Shift|ll2[23]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[23]~45_combout\ = (\B[0]~input_o\ & (\Shift|ll2[23]~42_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[24]~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[23]~42_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[24]~44_combout\,
	combout => \Shift|ll2[23]~45_combout\);

-- Location: LCCOMB_X69_Y50_N14
\Shift|ll4[23]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[23]~31_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[15]~29_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[23]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[23]~45_combout\,
	datad => \Shift|ll2[15]~29_combout\,
	combout => \Shift|ll4[23]~31_combout\);

-- Location: LCCOMB_X66_Y50_N2
\Shift|ll4[23]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[23]~32_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[19]~23_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[23]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[23]~31_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[19]~23_combout\,
	combout => \Shift|ll4[23]~32_combout\);

-- Location: LCCOMB_X66_Y50_N12
\Shift|ll5[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[23]~21_combout\ = (\B[4]~input_o\ & (\Shift|ll3[7]~4_combout\ & (!\B[3]~input_o\))) # (!\B[4]~input_o\ & (((\Shift|ll4[23]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[7]~4_combout\,
	datab => \B[4]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[23]~32_combout\,
	combout => \Shift|ll5[23]~21_combout\);

-- Location: LCCOMB_X66_Y50_N22
\Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~0_combout\ = (\Mux60~4_combout\ & ((\Y_R[1]~83_combout\) # ((\Mux60~3_combout\)))) # (!\Mux60~4_combout\ & (((!\Mux60~3_combout\ & \Shift|ll5[23]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Y_R[1]~83_combout\,
	datac => \Mux60~3_combout\,
	datad => \Shift|ll5[23]~21_combout\,
	combout => \Mux40~0_combout\);

-- Location: LCCOMB_X66_Y57_N10
\Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~1_combout\ = (\Mux40~0_combout\ & ((\Shift|rl4[39]~37_combout\) # ((\Mux60~2_combout\)))) # (!\Mux40~0_combout\ & (((\Shift|rl4[23]~35_combout\ & !\Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[39]~37_combout\,
	datab => \Mux40~0_combout\,
	datac => \Shift|rl4[23]~35_combout\,
	datad => \Mux60~2_combout\,
	combout => \Mux40~1_combout\);

-- Location: LCCOMB_X66_Y57_N20
\Add|GEN_BLOCKS:5:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\ = (\Add|G\(21) & ((\A[22]~input_o\) # (\AddnSub~input_o\ $ (\B[22]~input_o\)))) # (!\Add|G\(21) & (\A[22]~input_o\ & (\AddnSub~input_o\ $ (\B[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[22]~input_o\,
	datac => \Add|G\(21),
	datad => \A[22]~input_o\,
	combout => \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X66_Y57_N22
\Add|S[23]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[23]~19_combout\ = \AddnSub~input_o\ $ (\B[23]~input_o\ $ (\A[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[23]~input_o\,
	datad => \A[23]~input_o\,
	combout => \Add|S[23]~19_combout\);

-- Location: LCCOMB_X67_Y57_N18
\Add|S[23]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[23]~20_combout\ = (\Add|P\(21) & ((\Add|G\(20)) # ((\Add|P\(20) & \Add|block_carry_in[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(20),
	datab => \Add|P\(20),
	datac => \Add|block_carry_in[5]~26_combout\,
	datad => \Add|P\(21),
	combout => \Add|S[23]~20_combout\);

-- Location: LCCOMB_X66_Y57_N24
\Add|S[23]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[23]~21_combout\ = \Add|S[23]~19_combout\ $ (((\Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\) # ((\Add|P\(22) & \Add|S[23]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(22),
	datab => \Add|GEN_BLOCKS:5:LACG_INST|g_int~2_combout\,
	datac => \Add|S[23]~19_combout\,
	datad => \Add|S[23]~20_combout\,
	combout => \Add|S[23]~21_combout\);

-- Location: LCCOMB_X66_Y57_N28
\Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~2_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~18_combout\ & ((\Add|S[23]~21_combout\))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~1_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Y_ShiftOrArith[1]~18_combout\,
	datad => \Add|S[23]~21_combout\,
	combout => \Mux40~2_combout\);

-- Location: LCCOMB_X66_Y57_N30
\Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux40~3_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux40~2_combout\) # ((\Mux40~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux40~5_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux40~2_combout\,
	combout => \Mux40~3_combout\);

-- Location: LCCOMB_X68_Y57_N0
\Mux39~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~4_combout\ = (\A[24]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[24]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[24]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[24]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[24]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[24]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux39~4_combout\);

-- Location: LCCOMB_X68_Y57_N10
\Mux39~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~5_combout\ = (\Mux39~4_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \Mux39~4_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[12]~input_o\,
	combout => \Mux39~5_combout\);

-- Location: LCCOMB_X67_Y48_N24
\Shift|ll2[25]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~46_combout\ = (\B[1]~input_o\ & ((\A[22]~input_o\))) # (!\B[1]~input_o\ & (\A[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[24]~input_o\,
	datad => \A[22]~input_o\,
	combout => \Shift|ll2[25]~46_combout\);

-- Location: LCCOMB_X67_Y48_N18
\Shift|ll2[24]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[24]~47_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[24]~44_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[25]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[25]~46_combout\,
	datad => \Shift|ll2[24]~44_combout\,
	combout => \Shift|ll2[24]~47_combout\);

-- Location: LCCOMB_X67_Y48_N28
\Shift|ll4[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[24]~33_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[16]~31_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[24]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[24]~47_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[16]~31_combout\,
	combout => \Shift|ll4[24]~33_combout\);

-- Location: LCCOMB_X69_Y48_N2
\Shift|ll4[24]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[24]~34_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[20]~25_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[24]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[24]~33_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[20]~25_combout\,
	combout => \Shift|ll4[24]~34_combout\);

-- Location: LCCOMB_X68_Y51_N20
\Shift|ll5[24]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[24]~22_combout\ = (\B[4]~input_o\ & (\Shift|ll4[8]~2_combout\)) # (!\B[4]~input_o\ & ((\Shift|ll4[24]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[8]~2_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[24]~34_combout\,
	combout => \Shift|ll5[24]~22_combout\);

-- Location: LCCOMB_X62_Y54_N16
\Y_R[1]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~78_combout\ = (\B[3]~input_o\ & (((\Y_R[1]~34_combout\)))) # (!\B[3]~input_o\ & ((\B[4]~input_o\ & (\Y_R[1]~34_combout\)) # (!\B[4]~input_o\ & ((\Shift|rl3[56]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~34_combout\,
	datad => \Shift|rl3[56]~2_combout\,
	combout => \Y_R[1]~78_combout\);

-- Location: LCCOMB_X62_Y51_N8
\Mux39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~0_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~78_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[24]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Shift|ll5[24]~22_combout\,
	datac => \Mux60~4_combout\,
	datad => \Y_R[1]~78_combout\,
	combout => \Mux39~0_combout\);

-- Location: LCCOMB_X66_Y47_N20
\Mux39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~1_combout\ = (\Mux39~0_combout\ & ((\Shift|rl4[40]~42_combout\) # ((\Mux60~2_combout\)))) # (!\Mux39~0_combout\ & (((\Shift|rl4[24]~40_combout\ & !\Mux60~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[40]~42_combout\,
	datab => \Shift|rl4[24]~40_combout\,
	datac => \Mux39~0_combout\,
	datad => \Mux60~2_combout\,
	combout => \Mux39~1_combout\);

-- Location: LCCOMB_X68_Y57_N24
\Mux39~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & (\Add|block_carry_in[6]~28_combout\ $ ((\Add|P\(24))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (((\Mux39~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Add|block_carry_in[6]~28_combout\,
	datac => \Add|P\(24),
	datad => \Mux39~1_combout\,
	combout => \Mux39~2_combout\);

-- Location: LCCOMB_X68_Y57_N26
\Mux39~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux39~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux39~5_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux39~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux39~5_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux39~2_combout\,
	combout => \Mux39~3_combout\);

-- Location: LCCOMB_X68_Y49_N10
\Shift|ll2[26]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~48_combout\ = (\B[1]~input_o\ & ((\A[23]~input_o\))) # (!\B[1]~input_o\ & (\A[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[25]~input_o\,
	datac => \A[23]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[26]~48_combout\);

-- Location: LCCOMB_X67_Y48_N6
\Shift|ll2[25]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[25]~49_combout\ = (\B[0]~input_o\ & (\Shift|ll2[25]~46_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[26]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[25]~46_combout\,
	datad => \Shift|ll2[26]~48_combout\,
	combout => \Shift|ll2[25]~49_combout\);

-- Location: LCCOMB_X67_Y52_N4
\Shift|ll4[25]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[25]~35_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[17]~33_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[25]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[25]~49_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[17]~33_combout\,
	combout => \Shift|ll4[25]~35_combout\);

-- Location: LCCOMB_X66_Y52_N22
\Shift|ll4[25]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[25]~36_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[21]~27_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[25]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[25]~35_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[21]~27_combout\,
	combout => \Shift|ll4[25]~36_combout\);

-- Location: LCCOMB_X67_Y54_N14
\Shift|ll5[25]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[25]~23_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[9]~4_combout\))) # (!\B[4]~input_o\ & (\Shift|ll4[25]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[25]~36_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[9]~4_combout\,
	combout => \Shift|ll5[25]~23_combout\);

-- Location: LCCOMB_X62_Y51_N12
\Y_R[1]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~84_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\)))) # (!\B[4]~input_o\ & (\Y_R[1]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~54_combout\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~84_combout\);

-- Location: LCCOMB_X62_Y51_N18
\Mux38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~0_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~84_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[25]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Shift|ll5[25]~23_combout\,
	datac => \Mux60~4_combout\,
	datad => \Y_R[1]~84_combout\,
	combout => \Mux38~0_combout\);

-- Location: LCCOMB_X62_Y51_N20
\Mux38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~1_combout\ = (\Mux60~2_combout\ & (((\Mux38~0_combout\)))) # (!\Mux60~2_combout\ & ((\Mux38~0_combout\ & ((\Shift|rl4[41]~47_combout\))) # (!\Mux38~0_combout\ & (\Shift|rl4[25]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[25]~45_combout\,
	datab => \Shift|rl4[41]~47_combout\,
	datac => \Mux60~2_combout\,
	datad => \Mux38~0_combout\,
	combout => \Mux38~1_combout\);

-- Location: LCCOMB_X68_Y57_N12
\Add|GEN_BLOCKS:6:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\ = (\A[24]~input_o\ & ((\Add|block_carry_in[6]~28_combout\) # (\AddnSub~input_o\ $ (\B[24]~input_o\)))) # (!\A[24]~input_o\ & (\Add|block_carry_in[6]~28_combout\ & (\AddnSub~input_o\ $ (\B[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[24]~input_o\,
	datac => \B[24]~input_o\,
	datad => \Add|block_carry_in[6]~28_combout\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X68_Y57_N30
\Mux38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & (\Add|P\(25) $ (((\Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (((\Mux38~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Add|P\(25),
	datac => \Mux38~1_combout\,
	datad => \Add|GEN_BLOCKS:6:LACG_INST|C[1]~0_combout\,
	combout => \Mux38~2_combout\);

-- Location: LCCOMB_X68_Y56_N22
\Mux38~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~4_combout\ = (\LogicFN[0]~input_o\ & ((\A[25]~input_o\ & (\LogicFN[1]~input_o\ $ (!\B[25]~input_o\))) # (!\A[25]~input_o\ & (!\LogicFN[1]~input_o\ & \B[25]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[25]~input_o\) # ((\B[25]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[25]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Mux38~4_combout\);

-- Location: LCCOMB_X68_Y56_N0
\Mux38~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~5_combout\ = (\Mux38~4_combout\ & ((\B[13]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[13]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux38~4_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux38~5_combout\);

-- Location: LCCOMB_X68_Y57_N8
\Mux38~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux38~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux38~5_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux38~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux38~2_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux38~5_combout\,
	combout => \Mux38~3_combout\);

-- Location: LCCOMB_X68_Y55_N22
\Mux37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~4_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[26]~input_o\ & \B[26]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[26]~input_o\ $ (\B[26]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[26]~input_o\) # (\B[26]~input_o\)) # 
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
	combout => \Mux37~4_combout\);

-- Location: LCCOMB_X68_Y55_N24
\Mux37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~5_combout\ = (\Mux37~4_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux37~4_combout\,
	datad => \B[14]~input_o\,
	combout => \Mux37~5_combout\);

-- Location: LCCOMB_X68_Y49_N4
\Shift|ll2[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~50_combout\ = (\B[1]~input_o\ & (\A[24]~input_o\)) # (!\B[1]~input_o\ & ((\A[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[24]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[26]~input_o\,
	combout => \Shift|ll2[27]~50_combout\);

-- Location: LCCOMB_X68_Y49_N14
\Shift|ll2[26]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[26]~51_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[26]~48_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[27]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[27]~50_combout\,
	datad => \Shift|ll2[26]~48_combout\,
	combout => \Shift|ll2[26]~51_combout\);

-- Location: LCCOMB_X69_Y49_N6
\Shift|ll4[26]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[26]~37_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[18]~35_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[26]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[26]~51_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[18]~35_combout\,
	combout => \Shift|ll4[26]~37_combout\);

-- Location: LCCOMB_X69_Y49_N0
\Shift|ll4[26]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[26]~38_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[22]~29_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[26]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[26]~37_combout\,
	datab => \B[2]~input_o\,
	datad => \Shift|ll4[22]~29_combout\,
	combout => \Shift|ll4[26]~38_combout\);

-- Location: LCCOMB_X68_Y51_N22
\Shift|ll5[26]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[26]~24_combout\ = (\B[4]~input_o\ & (\Shift|ll4[10]~6_combout\)) # (!\B[4]~input_o\ & ((\Shift|ll4[26]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datab => \Shift|ll4[10]~6_combout\,
	datad => \Shift|ll4[26]~38_combout\,
	combout => \Shift|ll5[26]~24_combout\);

-- Location: LCCOMB_X62_Y51_N6
\Y_R[1]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~85_combout\ = (\B[4]~input_o\ & (((\A[63]~input_o\ & \ShiftFN[0]~input_o\)))) # (!\B[4]~input_o\ & (\Y_R[1]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~58_combout\,
	datab => \A[63]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~85_combout\);

-- Location: LCCOMB_X62_Y51_N30
\Mux37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~0_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~85_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[26]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Shift|ll5[26]~24_combout\,
	datac => \Mux60~4_combout\,
	datad => \Y_R[1]~85_combout\,
	combout => \Mux37~0_combout\);

-- Location: LCCOMB_X62_Y51_N24
\Mux37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~1_combout\ = (\Mux60~2_combout\ & (((\Mux37~0_combout\)))) # (!\Mux60~2_combout\ & ((\Mux37~0_combout\ & ((\Shift|rl4[42]~52_combout\))) # (!\Mux37~0_combout\ & (\Shift|rl4[26]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[26]~50_combout\,
	datab => \Mux60~2_combout\,
	datac => \Mux37~0_combout\,
	datad => \Shift|rl4[42]~52_combout\,
	combout => \Mux37~1_combout\);

-- Location: LCCOMB_X63_Y56_N10
\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(24) & ((\A[25]~input_o\) # (\AddnSub~input_o\ $ (\B[25]~input_o\)))) # (!\Add|G\(24) & (\A[25]~input_o\ & (\AddnSub~input_o\ $ (\B[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(24),
	datac => \A[25]~input_o\,
	datad => \B[25]~input_o\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X63_Y56_N4
\Add|GEN_BLOCKS:6:LACG_INST|C[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|C\(2) = (\Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[6]~28_combout\ & (\Add|P\(25) & \Add|P\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~28_combout\,
	datab => \Add|P\(25),
	datac => \Add|P\(24),
	datad => \Add|GEN_BLOCKS:6:LACG_INST|g_int[1]~1_combout\,
	combout => \Add|GEN_BLOCKS:6:LACG_INST|C\(2));

-- Location: LCCOMB_X63_Y56_N30
\Mux37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & ((\Add|GEN_BLOCKS:6:LACG_INST|C\(2) $ (\Add|P\(26))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (\Mux37~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~1_combout\,
	datab => \Y_ShiftOrArith[1]~18_combout\,
	datac => \Add|GEN_BLOCKS:6:LACG_INST|C\(2),
	datad => \Add|P\(26),
	combout => \Mux37~2_combout\);

-- Location: LCCOMB_X68_Y57_N18
\Mux37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux37~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux37~5_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux37~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux37~5_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux37~2_combout\,
	combout => \Mux37~3_combout\);

-- Location: LCCOMB_X62_Y49_N12
\Mux36~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~4_combout\ = (\LogicFN[1]~input_o\ & ((\A[27]~input_o\ & ((\B[27]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[27]~input_o\ & (!\LogicFN[0]~input_o\ & \B[27]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[27]~input_o\ $ (\B[27]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[27]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[27]~input_o\,
	combout => \Mux36~4_combout\);

-- Location: LCCOMB_X62_Y49_N14
\Mux36~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~5_combout\ = (\Mux36~4_combout\ & ((\LogicFN[1]~input_o\) # ((\B[15]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[15]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux36~4_combout\,
	combout => \Mux36~5_combout\);

-- Location: LCCOMB_X63_Y56_N20
\Add|S[27]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[27]~23_combout\ = (\Add|P\(25) & ((\Add|G\(24)) # ((\Add|block_carry_in[6]~28_combout\ & \Add|P\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[6]~28_combout\,
	datab => \Add|P\(25),
	datac => \Add|G\(24),
	datad => \Add|P\(24),
	combout => \Add|S[27]~23_combout\);

-- Location: LCCOMB_X63_Y56_N26
\Add|S[27]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[27]~22_combout\ = \A[27]~input_o\ $ (\B[27]~input_o\ $ (\AddnSub~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[27]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|S[27]~22_combout\);

-- Location: LCCOMB_X63_Y56_N24
\Add|GEN_BLOCKS:6:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\ = (\A[26]~input_o\ & ((\Add|G\(25)) # (\AddnSub~input_o\ $ (\B[26]~input_o\)))) # (!\A[26]~input_o\ & (\Add|G\(25) & (\AddnSub~input_o\ $ (\B[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[26]~input_o\,
	datad => \Add|G\(25),
	combout => \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X63_Y56_N14
\Add|S[27]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[27]~24_combout\ = \Add|S[27]~22_combout\ $ (((\Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\) # ((\Add|P\(26) & \Add|S[27]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(26),
	datab => \Add|S[27]~23_combout\,
	datac => \Add|S[27]~22_combout\,
	datad => \Add|GEN_BLOCKS:6:LACG_INST|g_int~2_combout\,
	combout => \Add|S[27]~24_combout\);

-- Location: LCCOMB_X68_Y49_N24
\Shift|ll2[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[28]~52_combout\ = (\B[1]~input_o\ & ((\A[25]~input_o\))) # (!\B[1]~input_o\ & (\A[27]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[25]~input_o\,
	combout => \Shift|ll2[28]~52_combout\);

-- Location: LCCOMB_X68_Y49_N2
\Shift|ll2[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[27]~53_combout\ = (\B[0]~input_o\ & (\Shift|ll2[27]~50_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[28]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[27]~50_combout\,
	datad => \Shift|ll2[28]~52_combout\,
	combout => \Shift|ll2[27]~53_combout\);

-- Location: LCCOMB_X69_Y50_N8
\Shift|ll4[27]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[27]~39_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[19]~37_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[27]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[27]~53_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[19]~37_combout\,
	combout => \Shift|ll4[27]~39_combout\);

-- Location: LCCOMB_X60_Y50_N10
\Shift|ll4[27]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[27]~40_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[23]~31_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[27]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[27]~39_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[23]~31_combout\,
	combout => \Shift|ll4[27]~40_combout\);

-- Location: LCCOMB_X62_Y52_N24
\Shift|ll5[27]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[27]~25_combout\ = (\B[4]~input_o\ & (\Shift|ll4[11]~8_combout\)) # (!\B[4]~input_o\ & ((\Shift|ll4[27]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[11]~8_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[27]~40_combout\,
	combout => \Shift|ll5[27]~25_combout\);

-- Location: LCCOMB_X62_Y52_N0
\Y_R[1]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~86_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & ((\A[63]~input_o\)))) # (!\B[4]~input_o\ & (((\Y_R[1]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~61_combout\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~86_combout\);

-- Location: LCCOMB_X62_Y52_N26
\Mux36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~0_combout\ = (\Mux60~4_combout\ & (((\Mux60~3_combout\) # (\Y_R[1]~86_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[27]~25_combout\ & (!\Mux60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Shift|ll5[27]~25_combout\,
	datac => \Mux60~3_combout\,
	datad => \Y_R[1]~86_combout\,
	combout => \Mux36~0_combout\);

-- Location: LCCOMB_X63_Y49_N30
\Mux36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~1_combout\ = (\Mux36~0_combout\ & (((\Mux60~2_combout\) # (\Shift|rl4[43]~57_combout\)))) # (!\Mux36~0_combout\ & (\Shift|rl4[27]~55_combout\ & (!\Mux60~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~0_combout\,
	datab => \Shift|rl4[27]~55_combout\,
	datac => \Mux60~2_combout\,
	datad => \Shift|rl4[43]~57_combout\,
	combout => \Mux36~1_combout\);

-- Location: LCCOMB_X63_Y49_N24
\Mux36~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~2_combout\ = (!\FuncClass[0]~input_o\ & ((\Y_ShiftOrArith[1]~18_combout\ & (\Add|S[27]~24_combout\)) # (!\Y_ShiftOrArith[1]~18_combout\ & ((\Mux36~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Add|S[27]~24_combout\,
	datac => \Mux36~1_combout\,
	datad => \Y_ShiftOrArith[1]~18_combout\,
	combout => \Mux36~2_combout\);

-- Location: LCCOMB_X63_Y49_N26
\Mux36~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux36~3_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux36~2_combout\) # ((\Mux36~5_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux36~5_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux36~2_combout\,
	combout => \Mux36~3_combout\);

-- Location: LCCOMB_X65_Y57_N8
\Mux35~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~4_combout\ = (\B[28]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[28]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[28]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[28]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[28]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[28]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[28]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux35~4_combout\);

-- Location: LCCOMB_X65_Y57_N18
\Mux35~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~5_combout\ = (\Mux35~4_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux35~4_combout\,
	datad => \B[16]~input_o\,
	combout => \Mux35~5_combout\);

-- Location: LCCOMB_X62_Y52_N4
\Y_R[1]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~79_combout\ = (\Mux60~1_combout\ & (((\Y_R[1]~34_combout\)))) # (!\Mux60~1_combout\ & ((\B[4]~input_o\ & ((\Y_R[1]~34_combout\))) # (!\B[4]~input_o\ & (\Shift|rl2[60]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl2[60]~29_combout\,
	datab => \Y_R[1]~34_combout\,
	datac => \Mux60~1_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_R[1]~79_combout\);

-- Location: LCCOMB_X69_Y48_N0
\Shift|ll4[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[12]~43_combout\ = (\Shift|ll3[4]~0_combout\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll3[4]~0_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[12]~43_combout\);

-- Location: LCCOMB_X68_Y49_N20
\Shift|ll2[29]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[29]~54_combout\ = (\B[1]~input_o\ & (\A[26]~input_o\)) # (!\B[1]~input_o\ & ((\A[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[26]~input_o\,
	datab => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[29]~54_combout\);

-- Location: LCCOMB_X68_Y49_N22
\Shift|ll2[28]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[28]~55_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[28]~52_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[29]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[29]~54_combout\,
	datad => \Shift|ll2[28]~52_combout\,
	combout => \Shift|ll2[28]~55_combout\);

-- Location: LCCOMB_X69_Y48_N28
\Shift|ll4[28]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[28]~41_combout\ = (\B[3]~input_o\ & (\Shift|ll2[20]~39_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[28]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[20]~39_combout\,
	datad => \Shift|ll2[28]~55_combout\,
	combout => \Shift|ll4[28]~41_combout\);

-- Location: LCCOMB_X69_Y48_N22
\Shift|ll4[28]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[28]~42_combout\ = (\B[2]~input_o\ & (\Shift|ll4[24]~33_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[28]~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[24]~33_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[28]~41_combout\,
	combout => \Shift|ll4[28]~42_combout\);

-- Location: LCCOMB_X69_Y48_N26
\Shift|ll5[28]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[28]~26_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[12]~9_combout\) # ((\Shift|ll4[12]~43_combout\)))) # (!\B[4]~input_o\ & (((\Shift|ll4[28]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[12]~9_combout\,
	datab => \Shift|ll4[12]~43_combout\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[28]~42_combout\,
	combout => \Shift|ll5[28]~26_combout\);

-- Location: LCCOMB_X62_Y52_N30
\Mux35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~0_combout\ = (\Mux60~4_combout\ & ((\Mux60~3_combout\) # ((\Y_R[1]~79_combout\)))) # (!\Mux60~4_combout\ & (!\Mux60~3_combout\ & ((\Shift|ll5[28]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Mux60~3_combout\,
	datac => \Y_R[1]~79_combout\,
	datad => \Shift|ll5[28]~26_combout\,
	combout => \Mux35~0_combout\);

-- Location: LCCOMB_X65_Y51_N6
\Mux35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~1_combout\ = (\Mux60~2_combout\ & (((\Mux35~0_combout\)))) # (!\Mux60~2_combout\ & ((\Mux35~0_combout\ & (\Shift|rl4[44]~60_combout\)) # (!\Mux35~0_combout\ & ((\Shift|rl4[28]~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[44]~60_combout\,
	datab => \Mux60~2_combout\,
	datac => \Mux35~0_combout\,
	datad => \Shift|rl4[28]~58_combout\,
	combout => \Mux35~1_combout\);

-- Location: LCCOMB_X61_Y49_N16
\Mux35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & (\Add|block_carry_in[7]~30_combout\ $ (((\Add|P\(28)))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (((\Mux35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Add|block_carry_in[7]~30_combout\,
	datac => \Mux35~1_combout\,
	datad => \Add|P\(28),
	combout => \Mux35~2_combout\);

-- Location: LCCOMB_X63_Y49_N28
\Mux35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux35~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux35~5_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux35~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux35~5_combout\,
	datad => \Mux35~2_combout\,
	combout => \Mux35~3_combout\);

-- Location: LCCOMB_X61_Y53_N16
\Mux34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~4_combout\ = (\LogicFN[1]~input_o\ & ((\B[29]~input_o\ & ((\A[29]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[29]~input_o\ & (!\LogicFN[0]~input_o\ & \A[29]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[29]~input_o\ $ (\A[29]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[29]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Mux34~4_combout\);

-- Location: LCCOMB_X61_Y53_N18
\Mux34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~5_combout\ = (\Mux34~4_combout\ & ((\LogicFN[1]~input_o\) # ((\B[17]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[17]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux34~4_combout\,
	combout => \Mux34~5_combout\);

-- Location: LCCOMB_X61_Y49_N2
\Add|GEN_BLOCKS:7:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[7]~30_combout\ & ((\A[28]~input_o\) # (\AddnSub~input_o\ $ (\B[28]~input_o\)))) # (!\Add|block_carry_in[7]~30_combout\ & (\A[28]~input_o\ & (\AddnSub~input_o\ $ (\B[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[28]~input_o\,
	datac => \Add|block_carry_in[7]~30_combout\,
	datad => \A[28]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X68_Y49_N8
\Shift|ll2[30]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[30]~56_combout\ = (\B[1]~input_o\ & (\A[27]~input_o\)) # (!\B[1]~input_o\ & ((\A[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[27]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Shift|ll2[30]~56_combout\);

-- Location: LCCOMB_X68_Y49_N18
\Shift|ll2[29]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[29]~57_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[29]~54_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[30]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[30]~56_combout\,
	datad => \Shift|ll2[29]~54_combout\,
	combout => \Shift|ll2[29]~57_combout\);

-- Location: LCCOMB_X67_Y52_N6
\Shift|ll4[29]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[29]~45_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[21]~41_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[29]~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[29]~57_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[21]~41_combout\,
	combout => \Shift|ll4[29]~45_combout\);

-- Location: LCCOMB_X66_Y52_N0
\Shift|ll4[29]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[29]~46_combout\ = (\B[2]~input_o\ & (\Shift|ll4[25]~35_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[29]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[25]~35_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[29]~45_combout\,
	combout => \Shift|ll4[29]~46_combout\);

-- Location: LCCOMB_X63_Y52_N28
\Shift|ll4[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[13]~44_combout\ = (\Shift|ll4[13]~10_combout\) # ((\Shift|ll3[5]~1_combout\ & \B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll3[5]~1_combout\,
	datac => \Shift|ll4[13]~10_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[13]~44_combout\);

-- Location: LCCOMB_X63_Y52_N14
\Shift|ll5[29]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[29]~27_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[13]~44_combout\))) # (!\B[4]~input_o\ & (\Shift|ll4[29]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ll4[29]~46_combout\,
	datad => \Shift|ll4[13]~44_combout\,
	combout => \Shift|ll5[29]~27_combout\);

-- Location: LCCOMB_X62_Y52_N2
\Y_R[1]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~87_combout\ = (\B[4]~input_o\ & (\A[63]~input_o\ & ((\ShiftFN[0]~input_o\)))) # (!\B[4]~input_o\ & (((\Y_R[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[63]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~66_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_R[1]~87_combout\);

-- Location: LCCOMB_X63_Y52_N8
\Mux34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mux60~3_combout\ & (((\Mux60~4_combout\)))) # (!\Mux60~3_combout\ & ((\Mux60~4_combout\ & ((\Y_R[1]~87_combout\))) # (!\Mux60~4_combout\ & (\Shift|ll5[29]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~3_combout\,
	datab => \Shift|ll5[29]~27_combout\,
	datac => \Mux60~4_combout\,
	datad => \Y_R[1]~87_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X63_Y49_N6
\Mux34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~1_combout\ = (\Mux60~2_combout\ & (((\Mux34~0_combout\)))) # (!\Mux60~2_combout\ & ((\Mux34~0_combout\ & (\Shift|rl4[45]~63_combout\)) # (!\Mux34~0_combout\ & ((\Shift|rl4[29]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[45]~63_combout\,
	datab => \Shift|rl4[29]~61_combout\,
	datac => \Mux60~2_combout\,
	datad => \Mux34~0_combout\,
	combout => \Mux34~1_combout\);

-- Location: LCCOMB_X61_Y49_N4
\Mux34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & (\Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\ $ (((\Add|P\(29)))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (((\Mux34~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Add|GEN_BLOCKS:7:LACG_INST|C[1]~0_combout\,
	datac => \Mux34~1_combout\,
	datad => \Add|P\(29),
	combout => \Mux34~2_combout\);

-- Location: LCCOMB_X61_Y53_N4
\Mux34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux34~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux34~5_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux34~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux34~5_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux34~2_combout\,
	combout => \Mux34~3_combout\);

-- Location: LCCOMB_X62_Y49_N24
\Mux33~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~4_combout\ = (\LogicFN[1]~input_o\ & ((\A[30]~input_o\ & ((\B[30]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[30]~input_o\ & (!\LogicFN[0]~input_o\ & \B[30]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[30]~input_o\ $ (\B[30]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[30]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[30]~input_o\,
	combout => \Mux33~4_combout\);

-- Location: LCCOMB_X62_Y49_N2
\Mux33~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~5_combout\ = (\Mux33~4_combout\ & ((\LogicFN[1]~input_o\) # ((\B[18]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[18]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux33~4_combout\,
	combout => \Mux33~5_combout\);

-- Location: LCCOMB_X61_Y49_N30
\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(28) & ((\A[29]~input_o\) # (\AddnSub~input_o\ $ (\B[29]~input_o\)))) # (!\Add|G\(28) & (\A[29]~input_o\ & (\AddnSub~input_o\ $ (\B[29]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(28),
	datac => \B[29]~input_o\,
	datad => \A[29]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X61_Y49_N8
\Add|GEN_BLOCKS:7:LACG_INST|C[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C\(2) = (\Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~1_combout\) # ((\Add|P\(29) & (\Add|block_carry_in[7]~30_combout\ & \Add|P\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:7:LACG_INST|g_int[1]~1_combout\,
	datab => \Add|P\(29),
	datac => \Add|block_carry_in[7]~30_combout\,
	datad => \Add|P\(28),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C\(2));

-- Location: LCCOMB_X68_Y49_N28
\Shift|ll2[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[31]~58_combout\ = (\B[1]~input_o\ & ((\A[28]~input_o\))) # (!\B[1]~input_o\ & (\A[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[30]~input_o\,
	datab => \A[28]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[31]~58_combout\);

-- Location: LCCOMB_X68_Y49_N30
\Shift|ll2[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[30]~59_combout\ = (\B[0]~input_o\ & (\Shift|ll2[30]~56_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[31]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[30]~56_combout\,
	datad => \Shift|ll2[31]~58_combout\,
	combout => \Shift|ll2[30]~59_combout\);

-- Location: LCCOMB_X69_Y49_N26
\Shift|ll4[30]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[30]~47_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[22]~43_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[30]~59_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[22]~43_combout\,
	combout => \Shift|ll4[30]~47_combout\);

-- Location: LCCOMB_X69_Y49_N28
\Shift|ll4[30]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[30]~48_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[26]~37_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[30]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[30]~47_combout\,
	datad => \Shift|ll4[26]~37_combout\,
	combout => \Shift|ll4[30]~48_combout\);

-- Location: LCCOMB_X65_Y52_N22
\Shift|ll5[30]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[30]~28_combout\ = (\B[4]~input_o\ & ((\Shift|ll4[14]~11_combout\) # ((\Shift|ll3[6]~3_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[6]~3_combout\,
	datab => \B[3]~input_o\,
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[14]~11_combout\,
	combout => \Shift|ll5[30]~28_combout\);

-- Location: LCCOMB_X65_Y52_N16
\Shift|ll5[30]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[30]~29_combout\ = (\Shift|ll5[30]~28_combout\) # ((!\B[4]~input_o\ & \Shift|ll4[30]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datac => \Shift|ll4[30]~48_combout\,
	datad => \Shift|ll5[30]~28_combout\,
	combout => \Shift|ll5[30]~29_combout\);

-- Location: LCCOMB_X62_Y52_N20
\Y_R[1]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_R[1]~88_combout\ = (\B[4]~input_o\ & (\ShiftFN[0]~input_o\ & ((\A[63]~input_o\)))) # (!\B[4]~input_o\ & (((\Y_R[1]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[0]~input_o\,
	datab => \Y_R[1]~68_combout\,
	datac => \B[4]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_R[1]~88_combout\);

-- Location: LCCOMB_X62_Y52_N8
\Mux33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mux60~4_combout\ & (((\Mux60~3_combout\) # (\Y_R[1]~88_combout\)))) # (!\Mux60~4_combout\ & (\Shift|ll5[30]~29_combout\ & (!\Mux60~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~4_combout\,
	datab => \Shift|ll5[30]~29_combout\,
	datac => \Mux60~3_combout\,
	datad => \Y_R[1]~88_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X63_Y49_N0
\Mux33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mux60~2_combout\ & (((\Mux33~0_combout\)))) # (!\Mux60~2_combout\ & ((\Mux33~0_combout\ & ((\Shift|rl4[46]~66_combout\))) # (!\Mux33~0_combout\ & (\Shift|rl4[30]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|rl4[30]~64_combout\,
	datab => \Shift|rl4[46]~66_combout\,
	datac => \Mux60~2_combout\,
	datad => \Mux33~0_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X63_Y49_N10
\Mux33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~2_combout\ = (\Y_ShiftOrArith[1]~18_combout\ & (\Add|P\(30) $ ((\Add|GEN_BLOCKS:7:LACG_INST|C\(2))))) # (!\Y_ShiftOrArith[1]~18_combout\ & (((\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~18_combout\,
	datab => \Add|P\(30),
	datac => \Add|GEN_BLOCKS:7:LACG_INST|C\(2),
	datad => \Mux33~1_combout\,
	combout => \Mux33~2_combout\);

-- Location: LCCOMB_X63_Y49_N4
\Mux33~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux33~3_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux33~5_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux33~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~5_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux33~2_combout\,
	combout => \Mux33~3_combout\);

-- Location: LCCOMB_X67_Y48_N16
\Shift|ll2[32]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[32]~60_combout\ = (\B[1]~input_o\ & (\A[29]~input_o\)) # (!\B[1]~input_o\ & ((\A[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[29]~input_o\,
	datac => \A[31]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[32]~60_combout\);

-- Location: LCCOMB_X67_Y48_N26
\Shift|ll2[31]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[31]~61_combout\ = (\B[0]~input_o\ & (\Shift|ll2[31]~58_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[32]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[31]~58_combout\,
	datad => \Shift|ll2[32]~60_combout\,
	combout => \Shift|ll2[31]~61_combout\);

-- Location: LCCOMB_X69_Y50_N2
\Shift|ll4[31]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[31]~50_combout\ = (\B[3]~input_o\ & (\Shift|ll2[23]~45_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[31]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[23]~45_combout\,
	datad => \Shift|ll2[31]~61_combout\,
	combout => \Shift|ll4[31]~50_combout\);

-- Location: LCCOMB_X60_Y50_N12
\Shift|ll4[31]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[31]~51_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[27]~39_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[31]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[31]~50_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[27]~39_combout\,
	combout => \Shift|ll4[31]~51_combout\);

-- Location: LCCOMB_X68_Y53_N22
\Shift|ll4[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[15]~49_combout\ = (\Shift|ll4[15]~12_combout\) # ((\B[3]~input_o\ & \Shift|ll3[7]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll4[15]~12_combout\,
	datac => \Shift|ll3[7]~4_combout\,
	combout => \Shift|ll4[15]~49_combout\);

-- Location: LCCOMB_X67_Y54_N16
\Y_ShiftOrArith[31]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~23_combout\ = (!\B[5]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ShiftFN[0]~input_o\,
	combout => \Y_ShiftOrArith[31]~23_combout\);

-- Location: LCCOMB_X60_Y50_N22
\Y_ShiftOrArith[31]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~24_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & ((\B[4]~input_o\ & ((\Shift|ll4[15]~49_combout\))) # (!\B[4]~input_o\ & (\Shift|ll4[31]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[31]~51_combout\,
	datab => \Shift|ll4[15]~49_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_ShiftOrArith[31]~24_combout\);

-- Location: LCCOMB_X62_Y54_N28
\Y_ShiftOrArith[31]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~20_combout\ = (\ShiftFN[0]~input_o\) # ((\Shift|ra4[62]~0_combout\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[0]~input_o\,
	datac => \Shift|ra4[62]~0_combout\,
	datad => \B[4]~input_o\,
	combout => \Y_ShiftOrArith[31]~20_combout\);

-- Location: LCCOMB_X62_Y54_N10
\Y_ShiftOrArith[31]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~19_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Shift|rl4[47]~69_combout\))) # (!\B[4]~input_o\ & (\Shift|rl4[31]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Shift|rl4[31]~67_combout\,
	datad => \Shift|rl4[47]~69_combout\,
	combout => \Y_ShiftOrArith[31]~19_combout\);

-- Location: LCCOMB_X62_Y54_N30
\Y_ShiftOrArith[31]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~21_combout\ = (\Y_ShiftOrArith[31]~19_combout\) # ((\B[5]~input_o\ & (\A[63]~input_o\ & \Y_ShiftOrArith[31]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \A[63]~input_o\,
	datac => \Y_ShiftOrArith[31]~20_combout\,
	datad => \Y_ShiftOrArith[31]~19_combout\,
	combout => \Y_ShiftOrArith[31]~21_combout\);

-- Location: LCCOMB_X61_Y53_N30
\Logic|xor_result[31]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|xor_result[31]~4_combout\ = \B[31]~input_o\ $ (\A[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[31]~input_o\,
	datad => \A[31]~input_o\,
	combout => \Logic|xor_result[31]~4_combout\);

-- Location: LCCOMB_X61_Y49_N12
\Add|GEN_BLOCKS:7:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ = (\Add|G\(28)) # ((\Add|P\(28) & \Add|block_carry_in[7]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(28),
	datab => \Add|block_carry_in[7]~30_combout\,
	datac => \Add|G\(28),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X61_Y49_N18
\Add|GEN_BLOCKS:7:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|g_int~2_combout\ = (\A[30]~input_o\ & ((\Add|G\(29)) # (\AddnSub~input_o\ $ (\B[30]~input_o\)))) # (!\A[30]~input_o\ & (\Add|G\(29) & (\AddnSub~input_o\ $ (\B[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[30]~input_o\,
	datac => \Add|G\(29),
	datad => \B[30]~input_o\,
	combout => \Add|GEN_BLOCKS:7:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X61_Y49_N22
\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:7:LACG_INST|g_int~2_combout\) # ((\Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\ & (\Add|P\(29) & \Add|P\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~1_combout\,
	datab => \Add|P\(29),
	datac => \Add|GEN_BLOCKS:7:LACG_INST|g_int~2_combout\,
	datad => \Add|P\(30),
	combout => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X61_Y53_N20
\Y_ShiftOrArith[31]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~22_combout\ = (!\ShiftFN[0]~input_o\ & (\Logic|xor_result[31]~4_combout\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Logic|xor_result[31]~4_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:7:LACG_INST|C[3]~2_combout\,
	combout => \Y_ShiftOrArith[31]~22_combout\);

-- Location: LCCOMB_X61_Y53_N14
\Y_ShiftOrArith[31]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~25_combout\ = (\ShiftFN[1]~input_o\ & (((\Y_ShiftOrArith[31]~21_combout\)))) # (!\ShiftFN[1]~input_o\ & ((\Y_ShiftOrArith[31]~24_combout\) # ((\Y_ShiftOrArith[31]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_ShiftOrArith[31]~24_combout\,
	datac => \Y_ShiftOrArith[31]~21_combout\,
	datad => \Y_ShiftOrArith[31]~22_combout\,
	combout => \Y_ShiftOrArith[31]~25_combout\);

-- Location: LCCOMB_X61_Y53_N8
\Logic|Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux32~0_combout\ = (\LogicFN[1]~input_o\ & (\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\Logic|xor_result[31]~4_combout\)) # (!\LogicFN[0]~input_o\ & ((\B[19]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Logic|xor_result[31]~4_combout\,
	datad => \B[19]~input_o\,
	combout => \Logic|Mux32~0_combout\);

-- Location: LCCOMB_X61_Y53_N10
\Logic|Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux32~1_combout\ = (\LogicFN[1]~input_o\ & ((\B[31]~input_o\ & ((\A[31]~input_o\) # (!\Logic|Mux32~0_combout\))) # (!\B[31]~input_o\ & (!\Logic|Mux32~0_combout\ & \A[31]~input_o\)))) # (!\LogicFN[1]~input_o\ & (((\Logic|Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[31]~input_o\,
	datac => \Logic|Mux32~0_combout\,
	datad => \A[31]~input_o\,
	combout => \Logic|Mux32~1_combout\);

-- Location: LCCOMB_X61_Y53_N24
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Logic|Mux32~1_combout\))) # (!\FuncClass[0]~input_o\ & (\Y_ShiftOrArith[31]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Y_ShiftOrArith[31]~25_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux32~1_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X59_Y55_N4
\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\B[32]~input_o\ & ((\A[32]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[32]~input_o\ & ((\A[32]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[32]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[32]~input_o\,
	datab => \A[32]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X59_Y55_N14
\Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux31~5_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux31~5_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux31~6_combout\);

-- Location: IOIBUF_X45_Y73_N8
\ExtWord~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ExtWord,
	o => \ExtWord~input_o\);

-- Location: LCCOMB_X62_Y55_N8
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\ExtWord~input_o\) # ((\ShiftFN[1]~input_o\ & \B[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X63_Y55_N2
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X67_Y54_N18
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = ((!\B[5]~input_o\ & \B[4]~input_o\)) # (!\ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \B[4]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X62_Y49_N0
\Shift|ll2[33]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[33]~62_combout\ = (\B[1]~input_o\ & (\A[30]~input_o\)) # (!\B[1]~input_o\ & ((\A[32]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[30]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[32]~input_o\,
	combout => \Shift|ll2[33]~62_combout\);

-- Location: LCCOMB_X67_Y48_N12
\Shift|ll2[32]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[32]~63_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[32]~60_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[33]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[33]~62_combout\,
	datad => \Shift|ll2[32]~60_combout\,
	combout => \Shift|ll2[32]~63_combout\);

-- Location: LCCOMB_X67_Y48_N30
\Shift|ll4[32]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[32]~52_combout\ = (\B[3]~input_o\ & (\Shift|ll2[24]~47_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[32]~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[24]~47_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[32]~63_combout\,
	combout => \Shift|ll4[32]~52_combout\);

-- Location: LCCOMB_X69_Y48_N4
\Shift|ll4[32]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[32]~53_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[28]~41_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[32]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[32]~52_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[28]~41_combout\,
	combout => \Shift|ll4[32]~53_combout\);

-- Location: LCCOMB_X65_Y50_N6
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux17~2_combout\ & (((\Shift|ll4[16]~15_combout\)) # (!\Y_ShiftOrArith[31]~23_combout\))) # (!\Mux17~2_combout\ & (\Y_ShiftOrArith[31]~23_combout\ & ((\Shift|ll4[32]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Y_ShiftOrArith[31]~23_combout\,
	datac => \Shift|ll4[16]~15_combout\,
	datad => \Shift|ll4[32]~53_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X65_Y50_N28
\Shift|ll5[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[0]~30_combout\ = (\Shift|ra4[62]~0_combout\ & (\A[0]~input_o\ & !\B[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ra4[62]~0_combout\,
	datac => \A[0]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|ll5[0]~30_combout\);

-- Location: LCCOMB_X61_Y50_N30
\Add|S[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(32) = \A[32]~input_o\ $ (\AddnSub~input_o\ $ (\B[32]~input_o\ $ (\Add|block_carry_in[8]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	datad => \Add|block_carry_in[8]~32_combout\,
	combout => \Add|S\(32));

-- Location: LCCOMB_X65_Y50_N0
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\ & (((\Add|S\(32)) # (\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux31~0_combout\ & (\Shift|ll5[0]~30_combout\ & ((!\Y_ShiftOrArith[31]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~0_combout\,
	datab => \Shift|ll5[0]~30_combout\,
	datac => \Add|S\(32),
	datad => \Y_ShiftOrArith[31]~23_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X63_Y51_N16
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\) # (\Shift|rl5[32]~0_combout\)))) # (!\Mux17~1_combout\ & (\Mux31~1_combout\ & (!\Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux31~1_combout\,
	datac => \Mux17~0_combout\,
	datad => \Shift|rl5[32]~0_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X63_Y51_N10
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux17~0_combout\ & ((\Mux31~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux31~2_combout\ & ((\Y_ShiftOrArith[31]~25_combout\))))) # (!\Mux17~0_combout\ & (((\Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X59_Y55_N24
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux31~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux31~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux31~6_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux31~3_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X60_Y53_N20
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\LogicFN[1]~input_o\ & ((\A[33]~input_o\ & ((\B[33]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[33]~input_o\ & (\B[33]~input_o\ & !\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[33]~input_o\ $ (\B[33]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[33]~input_o\,
	datac => \B[33]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X60_Y53_N14
\Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\Mux30~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Mux30~5_combout\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X60_Y50_N8
\Shift|ll5[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[1]~31_combout\ = (!\B[4]~input_o\ & (\Shift|ll1[1]~0_combout\ & !\Shift|ll4[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[4]~input_o\,
	datac => \Shift|ll1[1]~0_combout\,
	datad => \Shift|ll4[1]~0_combout\,
	combout => \Shift|ll5[1]~31_combout\);

-- Location: LCCOMB_X62_Y49_N26
\Shift|ll2[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[34]~64_combout\ = (\B[1]~input_o\ & ((\A[31]~input_o\))) # (!\B[1]~input_o\ & (\A[33]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[31]~input_o\,
	combout => \Shift|ll2[34]~64_combout\);

-- Location: LCCOMB_X62_Y49_N20
\Shift|ll2[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[33]~65_combout\ = (\B[0]~input_o\ & (\Shift|ll2[33]~62_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[34]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[33]~62_combout\,
	datac => \Shift|ll2[34]~64_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[33]~65_combout\);

-- Location: LCCOMB_X67_Y52_N0
\Shift|ll4[33]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[33]~54_combout\ = (\B[3]~input_o\ & (\Shift|ll2[25]~49_combout\)) # (!\B[3]~input_o\ & ((\Shift|ll2[33]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ll2[25]~49_combout\,
	datad => \Shift|ll2[33]~65_combout\,
	combout => \Shift|ll4[33]~54_combout\);

-- Location: LCCOMB_X67_Y52_N2
\Shift|ll4[33]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[33]~55_combout\ = (\B[2]~input_o\ & ((\Shift|ll4[29]~45_combout\))) # (!\B[2]~input_o\ & (\Shift|ll4[33]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[33]~54_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[29]~45_combout\,
	combout => \Shift|ll4[33]~55_combout\);

-- Location: LCCOMB_X60_Y50_N26
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (!\Mux17~2_combout\ & ((\Shift|ll4[33]~55_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\) # ((\Shift|ll5[1]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Mux17~2_combout\,
	datac => \Shift|ll5[1]~31_combout\,
	datad => \Shift|ll4[33]~55_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X61_Y50_N24
\Add|GEN_BLOCKS:8:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\ = (\A[32]~input_o\ & ((\Add|block_carry_in[8]~32_combout\) # (\AddnSub~input_o\ $ (\B[32]~input_o\)))) # (!\A[32]~input_o\ & (\Add|block_carry_in[8]~32_combout\ & (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	datad => \Add|block_carry_in[8]~32_combout\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X60_Y50_N28
\Add|S[33]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(33) = \A[33]~input_o\ $ (\Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\ $ (\AddnSub~input_o\ $ (\B[33]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[33]~input_o\,
	datab => \Add|GEN_BLOCKS:8:LACG_INST|C[1]~0_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[33]~input_o\,
	combout => \Add|S\(33));

-- Location: LCCOMB_X60_Y50_N20
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\Add|S\(33)) # (!\Mux17~2_combout\)))) # (!\Mux30~0_combout\ & (\Shift|ll4[17]~18_combout\ & (\Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \Shift|ll4[17]~18_combout\,
	datac => \Mux17~2_combout\,
	datad => \Add|S\(33),
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X62_Y53_N0
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\)))) # (!\Mux17~1_combout\ & ((\Mux17~0_combout\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\Mux17~0_combout\ & ((\Mux30~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X62_Y53_N26
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux30~2_combout\ & (((\Y_R[1]~34_combout\) # (!\Mux17~1_combout\)))) # (!\Mux30~2_combout\ & (\Y_R[1]~23_combout\ & (\Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~23_combout\,
	datab => \Mux30~2_combout\,
	datac => \Mux17~1_combout\,
	datad => \Y_R[1]~34_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X60_Y53_N28
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux30~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux30~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux30~6_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X65_Y47_N22
\Shift|ll2[35]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[35]~66_combout\ = (\B[1]~input_o\ & (\A[32]~input_o\)) # (!\B[1]~input_o\ & ((\A[34]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \A[34]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[35]~66_combout\);

-- Location: LCCOMB_X62_Y49_N6
\Shift|ll2[34]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[34]~67_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[34]~64_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[35]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[35]~66_combout\,
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[34]~64_combout\,
	combout => \Shift|ll2[34]~67_combout\);

-- Location: LCCOMB_X69_Y49_N22
\Shift|ll4[34]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[34]~56_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[26]~51_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[34]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[34]~67_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[26]~51_combout\,
	combout => \Shift|ll4[34]~56_combout\);

-- Location: LCCOMB_X69_Y49_N24
\Shift|ll4[34]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[34]~57_combout\ = (\B[2]~input_o\ & (\Shift|ll4[30]~47_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[34]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[30]~47_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[34]~56_combout\,
	combout => \Shift|ll4[34]~57_combout\);

-- Location: LCCOMB_X66_Y53_N22
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux17~2_combout\ & (((\Shift|ll4[18]~21_combout\) # (!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & (\Shift|ll4[34]~57_combout\ & (\Y_ShiftOrArith[31]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Shift|ll4[34]~57_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll4[18]~21_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X61_Y50_N18
\Add|G[32]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(32) = (\A[32]~input_o\ & (\B[32]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datac => \B[32]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|G\(32));

-- Location: LCCOMB_X61_Y50_N12
\Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\ = (\A[33]~input_o\ & ((\Add|G\(32)) # (\B[33]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[33]~input_o\ & (\Add|G\(32) & (\B[33]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[33]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[33]~input_o\,
	datad => \Add|G\(32),
	combout => \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X61_Y50_N22
\Add|S[34]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(34) = \Add|P\(34) $ (((\Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[8]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:8:LACG_INST|g_int[1]~0_combout\,
	datab => \Add|GEN_BLOCKS:8:LACG_INST|Pout~0_combout\,
	datac => \Add|P\(34),
	datad => \Add|block_carry_in[8]~32_combout\,
	combout => \Add|S\(34));

-- Location: LCCOMB_X66_Y53_N8
\Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\Mux29~0_combout\ & ((\Add|S\(34)) # ((\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux29~0_combout\ & (((!\Y_ShiftOrArith[31]~23_combout\ & \Shift|ll5[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~0_combout\,
	datab => \Add|S\(34),
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll5[2]~35_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X63_Y51_N4
\Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\Mux17~1_combout\ & ((\Y_R[1]~28_combout\) # ((\Mux17~0_combout\)))) # (!\Mux17~1_combout\ & (((!\Mux17~0_combout\ & \Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~28_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux29~1_combout\,
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X63_Y51_N30
\Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux17~0_combout\ & ((\Mux29~2_combout\ & ((\Y_R[1]~34_combout\))) # (!\Mux29~2_combout\ & (\Y_ShiftOrArith[31]~25_combout\)))) # (!\Mux17~0_combout\ & (((\Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux29~2_combout\,
	datad => \Y_R[1]~34_combout\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X60_Y53_N24
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\LogicFN[1]~input_o\ & ((\B[34]~input_o\ & ((\A[34]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[34]~input_o\ & (\A[34]~input_o\ & !\LogicFN[0]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[34]~input_o\ $ (\A[34]~input_o\)) # 
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
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X60_Y53_N10
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux29~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \Mux29~5_combout\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X60_Y53_N6
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux29~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux29~3_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux29~6_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X66_Y50_N10
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\LogicFN[1]~input_o\ & ((\A[35]~input_o\ & ((\B[35]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[35]~input_o\ & (!\LogicFN[0]~input_o\ & \B[35]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[35]~input_o\ $ (\B[35]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[35]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[35]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X66_Y50_N20
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\Mux28~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux28~5_combout\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X61_Y50_N2
\Add|GEN_BLOCKS:8:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ = (\A[32]~input_o\ & ((\Add|block_carry_in[8]~32_combout\) # (\AddnSub~input_o\ $ (\B[32]~input_o\)))) # (!\A[32]~input_o\ & (\Add|block_carry_in[8]~32_combout\ & (\AddnSub~input_o\ $ (\B[32]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[32]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[32]~input_o\,
	datad => \Add|block_carry_in[8]~32_combout\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X61_Y50_N0
\Add|GEN_BLOCKS:8:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|g_int~1_combout\ = (\A[34]~input_o\ & ((\Add|G\(33)) # (\B[34]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[34]~input_o\ & (\Add|G\(33) & (\B[34]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[34]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[34]~input_o\,
	datad => \Add|G\(33),
	combout => \Add|GEN_BLOCKS:8:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X61_Y50_N20
\Add|GEN_BLOCKS:8:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:8:LACG_INST|g_int~1_combout\) # ((\Add|P\(33) & (\Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\ & \Add|P\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|P\(33),
	datab => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~1_combout\,
	datac => \Add|P\(34),
	datad => \Add|GEN_BLOCKS:8:LACG_INST|g_int~1_combout\,
	combout => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X66_Y50_N24
\Add|S[35]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(35) = \B[35]~input_o\ $ (\A[35]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[35]~input_o\,
	datab => \A[35]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:8:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(35));

-- Location: LCCOMB_X65_Y47_N16
\Shift|ll2[36]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[36]~68_combout\ = (\B[1]~input_o\ & ((\A[33]~input_o\))) # (!\B[1]~input_o\ & (\A[35]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[35]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[33]~input_o\,
	combout => \Shift|ll2[36]~68_combout\);

-- Location: LCCOMB_X65_Y47_N10
\Shift|ll2[35]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[35]~69_combout\ = (\B[0]~input_o\ & (\Shift|ll2[35]~66_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[36]~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[35]~66_combout\,
	datab => \Shift|ll2[36]~68_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[35]~69_combout\);

-- Location: LCCOMB_X69_Y50_N12
\Shift|ll4[35]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[35]~58_combout\ = (\B[3]~input_o\ & ((\Shift|ll2[27]~53_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[35]~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[35]~69_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ll2[27]~53_combout\,
	combout => \Shift|ll4[35]~58_combout\);

-- Location: LCCOMB_X69_Y50_N30
\Shift|ll4[35]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[35]~59_combout\ = (\B[2]~input_o\ & (\Shift|ll4[31]~50_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[35]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[31]~50_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[35]~58_combout\,
	combout => \Shift|ll4[35]~59_combout\);

-- Location: LCCOMB_X66_Y52_N18
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux17~2_combout\ & (((!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & ((\Y_ShiftOrArith[31]~23_combout\ & (\Shift|ll4[35]~59_combout\)) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Shift|ll5[3]~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[35]~59_combout\,
	datab => \Mux17~2_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll5[3]~36_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X66_Y50_N26
\Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\Mux28~0_combout\ & (((\Add|S\(35)) # (!\Mux17~2_combout\)))) # (!\Mux28~0_combout\ & (\Shift|ll4[19]~24_combout\ & ((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[19]~24_combout\,
	datab => \Add|S\(35),
	datac => \Mux28~0_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X63_Y55_N4
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\)))) # (!\Mux17~1_combout\ & ((\Mux17~0_combout\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\Mux17~0_combout\ & ((\Mux28~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux28~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X63_Y55_N22
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\Mux28~2_combout\ & (((\Y_R[1]~34_combout\) # (!\Mux17~1_combout\)))) # (!\Mux28~2_combout\ & (\Y_R[1]~32_combout\ & ((\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~32_combout\,
	datab => \Mux28~2_combout\,
	datac => \Y_R[1]~34_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X63_Y55_N0
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux28~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux28~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux28~6_combout\,
	datac => \Mux28~3_combout\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X60_Y53_N12
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[36]~input_o\ & \B[36]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[36]~input_o\ $ (\B[36]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[36]~input_o\) # (\B[36]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[36]~input_o\,
	datad => \B[36]~input_o\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X60_Y53_N22
\Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux27~5_combout\ & ((\LogicFN[0]~input_o\) # ((\LogicFN[1]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux27~5_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X65_Y47_N12
\Shift|ll2[37]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[37]~70_combout\ = (\B[1]~input_o\ & (\A[34]~input_o\)) # (!\B[1]~input_o\ & ((\A[36]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[34]~input_o\,
	datac => \A[36]~input_o\,
	combout => \Shift|ll2[37]~70_combout\);

-- Location: LCCOMB_X65_Y47_N6
\Shift|ll2[36]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[36]~71_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[36]~68_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[37]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[37]~70_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[36]~68_combout\,
	combout => \Shift|ll2[36]~71_combout\);

-- Location: LCCOMB_X67_Y47_N4
\Shift|ll4[36]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[36]~60_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[28]~55_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[36]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[3]~input_o\,
	datab => \Shift|ll2[36]~71_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[28]~55_combout\,
	combout => \Shift|ll4[36]~60_combout\);

-- Location: LCCOMB_X67_Y47_N22
\Shift|ll4[36]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[36]~61_combout\ = (\Shift|ll4[36]~60_combout\) # ((\Shift|ll4[32]~52_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[32]~52_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[36]~60_combout\,
	combout => \Shift|ll4[36]~61_combout\);

-- Location: LCCOMB_X65_Y51_N16
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\ & ((\Shift|ll4[20]~26_combout\))) # (!\Mux17~2_combout\ & (\Shift|ll4[36]~61_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[36]~61_combout\,
	datab => \Y_ShiftOrArith[31]~23_combout\,
	datac => \Shift|ll4[20]~26_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X66_Y54_N8
\Add|S[36]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(36) = \Add|block_carry_in[9]~54_combout\ $ (\A[36]~input_o\ $ (\B[36]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[9]~54_combout\,
	datab => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(36));

-- Location: LCCOMB_X65_Y51_N18
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux27~0_combout\ & (((\Add|S\(36)) # (\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux27~0_combout\ & (\Shift|ll5[4]~37_combout\ & ((!\Y_ShiftOrArith[31]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[4]~37_combout\,
	datab => \Mux27~0_combout\,
	datac => \Add|S\(36),
	datad => \Y_ShiftOrArith[31]~23_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X63_Y51_N24
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux17~0_combout\ & (((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & ((\Mux17~1_combout\ & ((\Y_R[1]~36_combout\))) # (!\Mux17~1_combout\ & (\Mux27~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Y_R[1]~36_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X63_Y51_N2
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux17~0_combout\ & ((\Mux27~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux27~2_combout\ & ((\Y_ShiftOrArith[31]~25_combout\))))) # (!\Mux17~0_combout\ & (((\Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux27~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X60_Y53_N0
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux27~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux27~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux27~6_combout\,
	datad => \Mux27~3_combout\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X65_Y47_N8
\Shift|ll2[38]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[38]~72_combout\ = (\B[1]~input_o\ & ((\A[35]~input_o\))) # (!\B[1]~input_o\ & (\A[37]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[37]~input_o\,
	datac => \A[35]~input_o\,
	combout => \Shift|ll2[38]~72_combout\);

-- Location: LCCOMB_X65_Y47_N18
\Shift|ll2[37]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[37]~73_combout\ = (\B[0]~input_o\ & (\Shift|ll2[37]~70_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[38]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[37]~70_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[38]~72_combout\,
	combout => \Shift|ll2[37]~73_combout\);

-- Location: LCCOMB_X67_Y52_N28
\Shift|ll4[37]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[37]~62_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[29]~57_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[37]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[37]~73_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[29]~57_combout\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[37]~62_combout\);

-- Location: LCCOMB_X67_Y52_N30
\Shift|ll4[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[37]~63_combout\ = (\Shift|ll4[37]~62_combout\) # ((\Shift|ll4[33]~54_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll4[33]~54_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[37]~62_combout\,
	combout => \Shift|ll4[37]~63_combout\);

-- Location: LCCOMB_X65_Y53_N16
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (\Shift|ll4[37]~63_combout\ & ((!\Mux17~2_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & (((\Shift|ll5[5]~38_combout\) # (\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[37]~63_combout\,
	datab => \Shift|ll5[5]~38_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X66_Y54_N2
\Add|GEN_BLOCKS:9:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\ = (\Add|block_carry_in[9]~54_combout\ & ((\A[36]~input_o\) # (\B[36]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[9]~54_combout\ & (\A[36]~input_o\ & (\B[36]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[9]~54_combout\,
	datab => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X66_Y54_N14
\Add|S[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(37) = \A[37]~input_o\ $ (\AddnSub~input_o\ $ (\B[37]~input_o\ $ (\Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[37]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[37]~input_o\,
	datad => \Add|GEN_BLOCKS:9:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(37));

-- Location: LCCOMB_X65_Y53_N26
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux26~0_combout\ & (((\Add|S\(37)) # (!\Mux17~2_combout\)))) # (!\Mux26~0_combout\ & (\Shift|ll4[21]~28_combout\ & ((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[21]~28_combout\,
	datab => \Mux26~0_combout\,
	datac => \Add|S\(37),
	datad => \Mux17~2_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X62_Y53_N20
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux17~0_combout\ & (((\Mux17~1_combout\) # (\Y_ShiftOrArith[31]~25_combout\)))) # (!\Mux17~0_combout\ & (\Mux26~1_combout\ & (!\Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X62_Y53_N22
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux17~1_combout\ & ((\Mux26~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux26~2_combout\ & ((\Y_R[1]~40_combout\))))) # (!\Mux17~1_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Y_R[1]~40_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X62_Y56_N18
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\LogicFN[0]~input_o\ & ((\LogicFN[1]~input_o\ & (\A[37]~input_o\ & \B[37]~input_o\)) # (!\LogicFN[1]~input_o\ & (\A[37]~input_o\ $ (\B[37]~input_o\))))) # (!\LogicFN[0]~input_o\ & (((\A[37]~input_o\) # (\B[37]~input_o\)) # 
-- (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X62_Y56_N28
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux26~5_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux26~5_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X62_Y56_N22
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux26~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux26~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux26~3_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux26~6_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X69_Y47_N24
\Shift|ll2[39]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[39]~74_combout\ = (\B[1]~input_o\ & (\A[36]~input_o\)) # (!\B[1]~input_o\ & ((\A[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[36]~input_o\,
	datab => \A[38]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[39]~74_combout\);

-- Location: LCCOMB_X69_Y47_N10
\Shift|ll2[38]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[38]~75_combout\ = (\B[0]~input_o\ & (\Shift|ll2[38]~72_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[39]~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[38]~72_combout\,
	datad => \Shift|ll2[39]~74_combout\,
	combout => \Shift|ll2[38]~75_combout\);

-- Location: LCCOMB_X69_Y49_N18
\Shift|ll4[38]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[38]~64_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[30]~59_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[38]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[38]~75_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[30]~59_combout\,
	combout => \Shift|ll4[38]~64_combout\);

-- Location: LCCOMB_X69_Y49_N20
\Shift|ll4[38]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[38]~65_combout\ = (\Shift|ll4[38]~64_combout\) # ((\B[2]~input_o\ & \Shift|ll4[34]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll4[34]~56_combout\,
	datad => \Shift|ll4[38]~64_combout\,
	combout => \Shift|ll4[38]~65_combout\);

-- Location: LCCOMB_X65_Y52_N10
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux17~2_combout\ & (((\Shift|ll4[22]~30_combout\) # (!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & (\Shift|ll4[38]~65_combout\ & (\Y_ShiftOrArith[31]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[38]~65_combout\,
	datab => \Mux17~2_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll4[22]~30_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X66_Y54_N28
\Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(36) & ((\A[37]~input_o\) # (\B[37]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(36) & (\A[37]~input_o\ & (\B[37]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[37]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|G\(36),
	datad => \A[37]~input_o\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X66_Y54_N30
\Add|S[38]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(38) = \Add|P\(38) $ (((\Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[9]~54_combout\ & \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[9]~54_combout\,
	datab => \Add|GEN_BLOCKS:9:LACG_INST|g_int[1]~1_combout\,
	datac => \Add|P\(38),
	datad => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\,
	combout => \Add|S\(38));

-- Location: LCCOMB_X65_Y52_N28
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & ((\Add|S\(38)) # ((\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux25~0_combout\ & (((!\Y_ShiftOrArith[31]~23_combout\ & \Shift|ll5[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Add|S\(38),
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll5[6]~8_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X63_Y51_N20
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux17~0_combout\ & (((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & ((\Mux17~1_combout\ & ((\Y_R[1]~45_combout\))) # (!\Mux17~1_combout\ & (\Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Y_R[1]~45_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X63_Y51_N14
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux17~0_combout\ & ((\Mux25~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux25~2_combout\ & ((\Y_ShiftOrArith[31]~25_combout\))))) # (!\Mux17~0_combout\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X62_Y56_N6
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\LogicFN[0]~input_o\ & ((\A[38]~input_o\ & (\B[38]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\A[38]~input_o\ & (\B[38]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[38]~input_o\) # ((\B[38]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[38]~input_o\,
	datac => \B[38]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X62_Y56_N16
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux25~5_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux25~5_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X62_Y56_N0
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux25~6_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux25~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~3_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux25~6_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X66_Y50_N6
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\LogicFN[0]~input_o\ & ((\B[39]~input_o\ & (\A[39]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\B[39]~input_o\ & (\A[39]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[39]~input_o\) # ((\A[39]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[39]~input_o\,
	datac => \A[39]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X66_Y50_N8
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\Mux24~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux24~5_combout\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X62_Y56_N10
\Add|G[37]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(37) = (\A[37]~input_o\ & (\AddnSub~input_o\ $ (\B[37]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[37]~input_o\,
	datad => \B[37]~input_o\,
	combout => \Add|G\(37));

-- Location: LCCOMB_X62_Y54_N24
\Add|GEN_BLOCKS:9:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\ = (\A[38]~input_o\ & ((\Add|G\(37)) # (\AddnSub~input_o\ $ (\B[38]~input_o\)))) # (!\A[38]~input_o\ & (\Add|G\(37) & (\AddnSub~input_o\ $ (\B[38]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[38]~input_o\,
	datac => \A[38]~input_o\,
	datad => \Add|G\(37),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X66_Y54_N16
\Add|GEN_BLOCKS:9:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ = (\Add|block_carry_in[9]~54_combout\ & ((\A[36]~input_o\) # (\B[36]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[9]~54_combout\ & (\A[36]~input_o\ & (\B[36]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[9]~54_combout\,
	datab => \A[36]~input_o\,
	datac => \B[36]~input_o\,
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X66_Y54_N18
\Add|GEN_BLOCKS:9:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\) # ((\Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\ & (\Add|P\(38) & \Add|P\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:9:LACG_INST|g_int~2_combout\,
	datab => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~1_combout\,
	datac => \Add|P\(38),
	datad => \Add|P\(37),
	combout => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X66_Y50_N30
\Add|S[39]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(39) = \A[39]~input_o\ $ (\B[39]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \B[39]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|GEN_BLOCKS:9:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(39));

-- Location: LCCOMB_X69_Y47_N4
\Shift|ll2[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[40]~76_combout\ = (\B[1]~input_o\ & ((\A[37]~input_o\))) # (!\B[1]~input_o\ & (\A[39]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datab => \A[37]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[40]~76_combout\);

-- Location: LCCOMB_X69_Y47_N6
\Shift|ll2[39]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[39]~77_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[39]~74_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[40]~76_combout\,
	datad => \Shift|ll2[39]~74_combout\,
	combout => \Shift|ll2[39]~77_combout\);

-- Location: LCCOMB_X69_Y50_N24
\Shift|ll4[39]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[39]~66_combout\ = (!\B[2]~input_o\ & ((\B[3]~input_o\ & ((\Shift|ll2[31]~61_combout\))) # (!\B[3]~input_o\ & (\Shift|ll2[39]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[39]~77_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[31]~61_combout\,
	combout => \Shift|ll4[39]~66_combout\);

-- Location: LCCOMB_X69_Y50_N26
\Shift|ll4[39]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[39]~67_combout\ = (\Shift|ll4[39]~66_combout\) # ((\Shift|ll4[35]~58_combout\ & \B[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[35]~58_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[39]~66_combout\,
	combout => \Shift|ll4[39]~67_combout\);

-- Location: LCCOMB_X66_Y50_N4
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (!\Mux17~2_combout\ & ((\Shift|ll4[39]~67_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\) # ((\Shift|ll5[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Mux17~2_combout\,
	datac => \Shift|ll5[7]~9_combout\,
	datad => \Shift|ll4[39]~67_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X66_Y50_N16
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & ((\Add|S\(39)) # ((!\Mux17~2_combout\)))) # (!\Mux24~0_combout\ & (((\Shift|ll4[23]~32_combout\ & \Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(39),
	datab => \Shift|ll4[23]~32_combout\,
	datac => \Mux24~0_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X62_Y53_N16
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\Mux17~0_combout\ & ((\Y_ShiftOrArith[31]~25_combout\) # ((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & (((!\Mux17~1_combout\ & \Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X62_Y53_N18
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\Mux24~2_combout\ & ((\Y_R[1]~34_combout\) # ((!\Mux17~1_combout\)))) # (!\Mux24~2_combout\ & (((\Mux17~1_combout\ & \Y_R[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux24~2_combout\,
	datac => \Mux17~1_combout\,
	datad => \Y_R[1]~49_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X62_Y53_N28
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux24~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux24~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \Mux24~6_combout\,
	datad => \Mux24~3_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X67_Y54_N22
\Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~5_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[40]~input_o\ & \B[40]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[40]~input_o\) # (\B[40]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[40]~input_o\ $ (\B[40]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[40]~input_o\,
	datad => \B[40]~input_o\,
	combout => \Mux23~5_combout\);

-- Location: LCCOMB_X59_Y55_N18
\Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~6_combout\ = (\Mux23~5_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux23~5_combout\,
	combout => \Mux23~6_combout\);

-- Location: LCCOMB_X69_Y47_N8
\Shift|ll2[41]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[41]~78_combout\ = (\B[1]~input_o\ & ((\A[38]~input_o\))) # (!\B[1]~input_o\ & (\A[40]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \A[38]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[41]~78_combout\);

-- Location: LCCOMB_X69_Y47_N2
\Shift|ll2[40]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[40]~79_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[40]~76_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[41]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[41]~78_combout\,
	datac => \Shift|ll2[40]~76_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[40]~79_combout\);

-- Location: LCCOMB_X67_Y47_N10
\Shift|ll3[40]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[40]~5_combout\ = (\B[2]~input_o\ & (\Shift|ll2[36]~71_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[40]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[36]~71_combout\,
	datad => \Shift|ll2[40]~79_combout\,
	combout => \Shift|ll3[40]~5_combout\);

-- Location: LCCOMB_X67_Y47_N8
\Shift|ll4[40]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[40]~68_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[28]~55_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[32]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[32]~63_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[28]~55_combout\,
	combout => \Shift|ll4[40]~68_combout\);

-- Location: LCCOMB_X67_Y47_N12
\Shift|ll4[40]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[40]~69_combout\ = (\Shift|ll4[40]~68_combout\) # ((\Shift|ll3[40]~5_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[40]~5_combout\,
	datab => \Shift|ll4[40]~68_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[40]~69_combout\);

-- Location: LCCOMB_X68_Y51_N10
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\ & ((\Shift|ll4[24]~34_combout\))) # (!\Mux17~2_combout\ & (\Shift|ll4[40]~69_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Shift|ll4[40]~69_combout\,
	datac => \Mux17~2_combout\,
	datad => \Shift|ll4[24]~34_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X66_Y54_N20
\Add|block_carry_in[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[10]~47_combout\ = (\Add|block_carry_in[10]~10_combout\) # ((\Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\ & (\Add|block_carry_in[9]~54_combout\ & \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:9:LACG_INST|Pout~0_combout\,
	datab => \Add|block_carry_in[9]~54_combout\,
	datac => \Add|block_carry_in[10]~10_combout\,
	datad => \Add|GEN_BLOCKS:9:LACG_INST|Pout~1_combout\,
	combout => \Add|block_carry_in[10]~47_combout\);

-- Location: LCCOMB_X67_Y54_N20
\Add|S[40]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(40) = \A[40]~input_o\ $ (\Add|block_carry_in[10]~47_combout\ $ (\AddnSub~input_o\ $ (\B[40]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \Add|block_carry_in[10]~47_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[40]~input_o\,
	combout => \Add|S\(40));

-- Location: LCCOMB_X68_Y51_N24
\Shift|ll5[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[8]~32_combout\ = (!\B[4]~input_o\ & \Shift|ll4[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[8]~2_combout\,
	combout => \Shift|ll5[8]~32_combout\);

-- Location: LCCOMB_X68_Y51_N4
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & ((\Add|S\(40)) # ((\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux23~0_combout\ & (((!\Y_ShiftOrArith[31]~23_combout\ & \Shift|ll5[8]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \Add|S\(40),
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll5[8]~32_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X63_Y51_N0
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux17~0_combout\ & (((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & ((\Mux17~1_combout\ & ((\Y_R[1]~51_combout\))) # (!\Mux17~1_combout\ & (\Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Y_R[1]~51_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X63_Y51_N26
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux17~0_combout\ & ((\Mux23~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux23~2_combout\ & ((\Y_ShiftOrArith[31]~25_combout\))))) # (!\Mux17~0_combout\ & (((\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux23~2_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X59_Y55_N2
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux23~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux23~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux23~6_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux23~3_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X67_Y54_N6
\Add|GEN_BLOCKS:10:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\ = (\A[40]~input_o\ & ((\Add|block_carry_in[10]~47_combout\) # (\AddnSub~input_o\ $ (\B[40]~input_o\)))) # (!\A[40]~input_o\ & (\Add|block_carry_in[10]~47_combout\ & (\AddnSub~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \Add|block_carry_in[10]~47_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[40]~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X69_Y47_N12
\Shift|ll2[42]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[42]~80_combout\ = (\B[1]~input_o\ & (\A[39]~input_o\)) # (!\B[1]~input_o\ & ((\A[41]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[39]~input_o\,
	datac => \A[41]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[42]~80_combout\);

-- Location: LCCOMB_X69_Y47_N30
\Shift|ll2[41]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[41]~81_combout\ = (\B[0]~input_o\ & (\Shift|ll2[41]~78_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[42]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[41]~78_combout\,
	datad => \Shift|ll2[42]~80_combout\,
	combout => \Shift|ll2[41]~81_combout\);

-- Location: LCCOMB_X63_Y50_N26
\Shift|ll3[41]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[41]~6_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[37]~73_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[41]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[41]~81_combout\,
	datab => \Shift|ll2[37]~73_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll3[41]~6_combout\);

-- Location: LCCOMB_X63_Y50_N24
\Shift|ll4[41]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[41]~70_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[29]~57_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[33]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[33]~65_combout\,
	datab => \Shift|ll2[29]~57_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[41]~70_combout\);

-- Location: LCCOMB_X63_Y50_N12
\Shift|ll4[41]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[41]~71_combout\ = (\Shift|ll4[41]~70_combout\) # ((\Shift|ll3[41]~6_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[41]~6_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[41]~70_combout\,
	combout => \Shift|ll4[41]~71_combout\);

-- Location: LCCOMB_X67_Y54_N24
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux17~2_combout\ & (((\Shift|ll4[25]~36_combout\) # (!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & (\Shift|ll4[41]~71_combout\ & (\Y_ShiftOrArith[31]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Shift|ll4[41]~71_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll4[25]~36_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X67_Y54_N26
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (((\Mux22~0_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & (\Shift|ll4[9]~4_combout\ & (!\B[4]~input_o\ & !\Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Shift|ll4[9]~4_combout\,
	datac => \B[4]~input_o\,
	datad => \Mux22~0_combout\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X67_Y54_N12
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux22~1_combout\) # ((\Mux22~0_combout\ & (\Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\ $ (\Add|P\(41)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:10:LACG_INST|C[1]~0_combout\,
	datab => \Mux22~0_combout\,
	datac => \Mux22~1_combout\,
	datad => \Add|P\(41),
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X62_Y53_N6
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\)))) # (!\Mux17~1_combout\ & ((\Mux17~0_combout\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\Mux17~0_combout\ & ((\Mux22~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux22~2_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X62_Y53_N8
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux17~1_combout\ & ((\Mux22~3_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux22~3_combout\ & ((\Y_R[1]~55_combout\))))) # (!\Mux17~1_combout\ & (((\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Y_R[1]~55_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X68_Y54_N26
\Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~6_combout\ = (\B[41]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[41]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[41]~input_o\ & ((\LogicFN[0]~input_o\ & (!\LogicFN[1]~input_o\ & \A[41]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[41]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[41]~input_o\,
	combout => \Mux22~6_combout\);

-- Location: LCCOMB_X68_Y54_N20
\Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~7_combout\ = (\Mux22~6_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~6_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux22~7_combout\);

-- Location: LCCOMB_X68_Y57_N4
\Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~5_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & ((\Mux22~7_combout\))) # (!\FuncClass[0]~input_o\ & (\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~4_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux22~7_combout\,
	combout => \Mux22~5_combout\);

-- Location: LCCOMB_X68_Y54_N6
\Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~5_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[42]~input_o\ & \A[42]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[42]~input_o\) # (\A[42]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[42]~input_o\ $ (\A[42]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Mux21~5_combout\);

-- Location: LCCOMB_X68_Y54_N0
\Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~6_combout\ = (\Mux21~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~5_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux21~6_combout\);

-- Location: LCCOMB_X69_Y49_N30
\Shift|ll4[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[42]~72_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[30]~59_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[34]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll2[34]~67_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll2[30]~59_combout\,
	combout => \Shift|ll4[42]~72_combout\);

-- Location: LCCOMB_X66_Y49_N0
\Shift|ll2[43]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[43]~82_combout\ = (\B[1]~input_o\ & (\A[40]~input_o\)) # (!\B[1]~input_o\ & ((\A[42]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[42]~input_o\,
	combout => \Shift|ll2[43]~82_combout\);

-- Location: LCCOMB_X66_Y49_N26
\Shift|ll2[42]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[42]~83_combout\ = (\B[0]~input_o\ & (\Shift|ll2[42]~80_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[43]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[42]~80_combout\,
	datad => \Shift|ll2[43]~82_combout\,
	combout => \Shift|ll2[42]~83_combout\);

-- Location: LCCOMB_X69_Y49_N8
\Shift|ll3[42]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[42]~7_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[38]~75_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[42]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[42]~83_combout\,
	datad => \Shift|ll2[38]~75_combout\,
	combout => \Shift|ll3[42]~7_combout\);

-- Location: LCCOMB_X69_Y49_N2
\Shift|ll4[42]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[42]~73_combout\ = (\Shift|ll4[42]~72_combout\) # ((\Shift|ll3[42]~7_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[42]~72_combout\,
	datab => \Shift|ll3[42]~7_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[42]~73_combout\);

-- Location: LCCOMB_X68_Y51_N16
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\ & (\Shift|ll4[26]~38_combout\)) # (!\Mux17~2_combout\ & ((\Shift|ll4[42]~73_combout\))))) # (!\Y_ShiftOrArith[31]~23_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Shift|ll4[26]~38_combout\,
	datac => \Mux17~2_combout\,
	datad => \Shift|ll4[42]~73_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X67_Y54_N30
\Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(40) & ((\A[41]~input_o\) # (\B[41]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(40) & (\A[41]~input_o\ & (\B[41]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(40),
	datab => \B[41]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[41]~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X67_Y54_N8
\Add|S[42]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(42) = \Add|P\(42) $ (((\Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~1_combout\) # ((\Add|block_carry_in[10]~47_combout\ & \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:10:LACG_INST|g_int[1]~1_combout\,
	datab => \Add|block_carry_in[10]~47_combout\,
	datac => \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	datad => \Add|P\(42),
	combout => \Add|S\(42));

-- Location: LCCOMB_X68_Y51_N6
\Shift|ll5[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[10]~33_combout\ = (!\B[4]~input_o\ & \Shift|ll4[10]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[4]~input_o\,
	datad => \Shift|ll4[10]~6_combout\,
	combout => \Shift|ll5[10]~33_combout\);

-- Location: LCCOMB_X68_Y51_N26
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (\Mux21~0_combout\)) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Mux21~0_combout\ & (\Add|S\(42))) # (!\Mux21~0_combout\ & ((\Shift|ll5[10]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Mux21~0_combout\,
	datac => \Add|S\(42),
	datad => \Shift|ll5[10]~33_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X63_Y51_N28
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux17~0_combout\ & (((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & ((\Mux17~1_combout\ & (\Y_R[1]~59_combout\)) # (!\Mux17~1_combout\ & ((\Mux21~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~59_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux21~1_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X63_Y51_N22
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux17~0_combout\ & ((\Mux21~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux21~2_combout\ & ((\Y_ShiftOrArith[31]~25_combout\))))) # (!\Mux17~0_combout\ & (((\Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X68_Y57_N22
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux21~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux21~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~6_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X68_Y54_N10
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[43]~input_o\ & \A[43]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[43]~input_o\) # (\A[43]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[43]~input_o\ $ (\A[43]~input_o\)) # 
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
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X68_Y54_N4
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (\Mux20~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~5_combout\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[19]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X66_Y49_N4
\Shift|ll2[44]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[44]~84_combout\ = (\B[1]~input_o\ & ((\A[41]~input_o\))) # (!\B[1]~input_o\ & (\A[43]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[41]~input_o\,
	combout => \Shift|ll2[44]~84_combout\);

-- Location: LCCOMB_X66_Y49_N30
\Shift|ll2[43]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[43]~85_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[43]~82_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[44]~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[44]~84_combout\,
	datad => \Shift|ll2[43]~82_combout\,
	combout => \Shift|ll2[43]~85_combout\);

-- Location: LCCOMB_X69_Y50_N6
\Shift|ll3[43]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[43]~8_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[39]~77_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[43]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[43]~85_combout\,
	datad => \Shift|ll2[39]~77_combout\,
	combout => \Shift|ll3[43]~8_combout\);

-- Location: LCCOMB_X69_Y50_N20
\Shift|ll4[43]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[43]~74_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[31]~61_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[35]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[35]~69_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[31]~61_combout\,
	combout => \Shift|ll4[43]~74_combout\);

-- Location: LCCOMB_X69_Y50_N0
\Shift|ll4[43]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[43]~75_combout\ = (\Shift|ll4[43]~74_combout\) # ((\Shift|ll3[43]~8_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[43]~8_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[43]~74_combout\,
	combout => \Shift|ll4[43]~75_combout\);

-- Location: LCCOMB_X68_Y51_N12
\Shift|ll5[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll5[11]~34_combout\ = (!\B[4]~input_o\ & \Shift|ll4[11]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[4]~input_o\,
	datad => \Shift|ll4[11]~8_combout\,
	combout => \Shift|ll5[11]~34_combout\);

-- Location: LCCOMB_X68_Y51_N14
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (!\Mux17~2_combout\ & (\Shift|ll4[43]~75_combout\))) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\) # ((\Shift|ll5[11]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Mux17~2_combout\,
	datac => \Shift|ll4[43]~75_combout\,
	datad => \Shift|ll5[11]~34_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X68_Y54_N2
\Add|G[41]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(41) = (\A[41]~input_o\ & (\B[41]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[41]~input_o\,
	datab => \AddnSub~input_o\,
	datad => \A[41]~input_o\,
	combout => \Add|G\(41));

-- Location: LCCOMB_X68_Y54_N12
\Add|GEN_BLOCKS:10:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|g_int~2_combout\ = (\Add|G\(41) & ((\A[42]~input_o\) # (\AddnSub~input_o\ $ (\B[42]~input_o\)))) # (!\Add|G\(41) & (\A[42]~input_o\ & (\AddnSub~input_o\ $ (\B[42]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|G\(41),
	datac => \B[42]~input_o\,
	datad => \A[42]~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X67_Y54_N2
\Add|GEN_BLOCKS:10:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\ = (\A[40]~input_o\ & ((\Add|block_carry_in[10]~47_combout\) # (\AddnSub~input_o\ $ (\B[40]~input_o\)))) # (!\A[40]~input_o\ & (\Add|block_carry_in[10]~47_combout\ & (\AddnSub~input_o\ $ (\B[40]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[40]~input_o\,
	datab => \Add|block_carry_in[10]~47_combout\,
	datac => \AddnSub~input_o\,
	datad => \B[40]~input_o\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X68_Y54_N14
\Add|GEN_BLOCKS:10:LACG_INST|C[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\ = (\Add|GEN_BLOCKS:10:LACG_INST|g_int~2_combout\) # ((\Add|P\(42) & (\Add|P\(41) & \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:10:LACG_INST|g_int~2_combout\,
	datab => \Add|P\(42),
	datac => \Add|P\(41),
	datad => \Add|GEN_BLOCKS:10:LACG_INST|C[3]~1_combout\,
	combout => \Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\);

-- Location: LCCOMB_X68_Y54_N8
\Add|S[43]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(43) = \AddnSub~input_o\ $ (\A[43]~input_o\ $ (\B[43]~input_o\ $ (\Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[43]~input_o\,
	datac => \B[43]~input_o\,
	datad => \Add|GEN_BLOCKS:10:LACG_INST|C[3]~2_combout\,
	combout => \Add|S\(43));

-- Location: LCCOMB_X68_Y51_N0
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & (((\Add|S\(43)) # (!\Mux17~2_combout\)))) # (!\Mux20~0_combout\ & (\Shift|ll4[27]~40_combout\ & (\Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[27]~40_combout\,
	datab => \Mux20~0_combout\,
	datac => \Mux17~2_combout\,
	datad => \Add|S\(43),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X62_Y53_N2
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\)))) # (!\Mux17~1_combout\ & ((\Mux17~0_combout\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\Mux17~0_combout\ & ((\Mux20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux20~1_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X62_Y53_N12
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux17~1_combout\ & ((\Mux20~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux20~2_combout\ & ((\Y_R[1]~62_combout\))))) # (!\Mux17~1_combout\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Y_R[1]~62_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X63_Y55_N26
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux20~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux20~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux20~6_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux20~3_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X59_Y55_N22
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[44]~input_o\ & \B[44]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[44]~input_o\) # (\B[44]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[44]~input_o\ $ (\B[44]~input_o\)) # 
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
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X59_Y55_N16
\Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~6_combout\ = (\Mux19~5_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux19~5_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux19~6_combout\);

-- Location: LCCOMB_X66_Y49_N8
\Shift|ll2[45]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[45]~86_combout\ = (\B[1]~input_o\ & ((\A[42]~input_o\))) # (!\B[1]~input_o\ & (\A[44]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[44]~input_o\,
	datac => \A[42]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[45]~86_combout\);

-- Location: LCCOMB_X66_Y49_N18
\Shift|ll2[44]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[44]~87_combout\ = (\B[0]~input_o\ & (\Shift|ll2[44]~84_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[45]~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[44]~84_combout\,
	datad => \Shift|ll2[45]~86_combout\,
	combout => \Shift|ll2[44]~87_combout\);

-- Location: LCCOMB_X67_Y47_N16
\Shift|ll3[44]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[44]~9_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[40]~79_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[44]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[44]~87_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[40]~79_combout\,
	combout => \Shift|ll3[44]~9_combout\);

-- Location: LCCOMB_X67_Y47_N6
\Shift|ll4[44]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[44]~76_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[32]~63_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[36]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[32]~63_combout\,
	datab => \Shift|ll2[36]~71_combout\,
	datac => \B[2]~input_o\,
	datad => \B[3]~input_o\,
	combout => \Shift|ll4[44]~76_combout\);

-- Location: LCCOMB_X67_Y47_N26
\Shift|ll4[44]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[44]~77_combout\ = (\Shift|ll4[44]~76_combout\) # ((\Shift|ll3[44]~9_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll3[44]~9_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|ll4[44]~76_combout\,
	combout => \Shift|ll4[44]~77_combout\);

-- Location: LCCOMB_X68_Y51_N18
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\ & ((\Shift|ll4[28]~42_combout\))) # (!\Mux17~2_combout\ & (\Shift|ll4[44]~77_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Shift|ll4[44]~77_combout\,
	datac => \Mux17~2_combout\,
	datad => \Shift|ll4[28]~42_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X65_Y54_N16
\Add|S[44]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(44) = \Add|P\(44) $ (((\Add|block_carry_in[11]~38_combout\) # (\Add|block_carry_in[11]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add|block_carry_in[11]~38_combout\,
	datac => \Add|block_carry_in[11]~36_combout\,
	datad => \Add|P\(44),
	combout => \Add|S\(44));

-- Location: LCCOMB_X68_Y51_N28
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (\Mux19~0_combout\)) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Mux19~0_combout\ & ((\Add|S\(44)))) # (!\Mux19~0_combout\ & (\Shift|ll5[12]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Mux19~0_combout\,
	datac => \Shift|ll5[12]~10_combout\,
	datad => \Add|S\(44),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X63_Y51_N8
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\) # (\Y_R[1]~64_combout\)))) # (!\Mux17~1_combout\ & (\Mux19~1_combout\ & (!\Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux17~0_combout\,
	datad => \Y_R[1]~64_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X63_Y51_N18
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux17~0_combout\ & ((\Mux19~2_combout\ & ((\Y_R[1]~34_combout\))) # (!\Mux19~2_combout\ & (\Y_ShiftOrArith[31]~25_combout\)))) # (!\Mux17~0_combout\ & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux19~2_combout\,
	datad => \Y_R[1]~34_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X59_Y55_N20
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux19~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux19~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux19~6_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X61_Y53_N28
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (\LogicFN[1]~input_o\ & ((\A[45]~input_o\ & ((\B[45]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\A[45]~input_o\ & (!\LogicFN[0]~input_o\ & \B[45]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\A[45]~input_o\ $ (\B[45]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \A[45]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[45]~input_o\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X61_Y53_N22
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (\Mux18~5_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux18~5_combout\,
	combout => \Mux18~6_combout\);

-- Location: LCCOMB_X66_Y49_N28
\Shift|ll2[46]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[46]~88_combout\ = (\B[1]~input_o\ & (\A[43]~input_o\)) # (!\B[1]~input_o\ & ((\A[45]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[43]~input_o\,
	datab => \A[45]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[46]~88_combout\);

-- Location: LCCOMB_X66_Y49_N14
\Shift|ll2[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[45]~89_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[45]~86_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[46]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[46]~88_combout\,
	datac => \Shift|ll2[45]~86_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[45]~89_combout\);

-- Location: LCCOMB_X63_Y52_N26
\Shift|ll3[45]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[45]~10_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[41]~81_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[45]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[45]~89_combout\,
	datac => \Shift|ll2[41]~81_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll3[45]~10_combout\);

-- Location: LCCOMB_X63_Y50_N14
\Shift|ll4[45]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[45]~78_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[33]~65_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[37]~73_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[33]~65_combout\,
	datab => \Shift|ll2[37]~73_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[45]~78_combout\);

-- Location: LCCOMB_X63_Y52_N12
\Shift|ll4[45]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[45]~79_combout\ = (\Shift|ll4[45]~78_combout\) # ((\Shift|ll3[45]~10_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[45]~10_combout\,
	datab => \B[3]~input_o\,
	datad => \Shift|ll4[45]~78_combout\,
	combout => \Shift|ll4[45]~79_combout\);

-- Location: LCCOMB_X63_Y52_N30
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux17~2_combout\ & (((!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & ((\Y_ShiftOrArith[31]~23_combout\ & ((\Shift|ll4[45]~79_combout\))) # (!\Y_ShiftOrArith[31]~23_combout\ & (\Shift|ll5[13]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Shift|ll5[13]~11_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll4[45]~79_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X65_Y54_N28
\Add|block_carry_in[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|block_carry_in[11]~48_combout\ = (\Add|block_carry_in[11]~38_combout\) # ((\Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\ & (\Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[10]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:10:LACG_INST|Pout~1_combout\,
	datab => \Add|GEN_BLOCKS:10:LACG_INST|Pout~0_combout\,
	datac => \Add|block_carry_in[10]~47_combout\,
	datad => \Add|block_carry_in[11]~38_combout\,
	combout => \Add|block_carry_in[11]~48_combout\);

-- Location: LCCOMB_X65_Y54_N18
\Add|S[45]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[45]~25_combout\ = (\A[44]~input_o\ & ((\Add|block_carry_in[11]~48_combout\ & ((!\AddnSub~input_o\))) # (!\Add|block_carry_in[11]~48_combout\ & (\B[44]~input_o\)))) # (!\A[44]~input_o\ & ((\Add|block_carry_in[11]~48_combout\ & (\B[44]~input_o\)) # 
-- (!\Add|block_carry_in[11]~48_combout\ & ((\AddnSub~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[44]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[44]~input_o\,
	datad => \Add|block_carry_in[11]~48_combout\,
	combout => \Add|S[45]~25_combout\);

-- Location: LCCOMB_X65_Y54_N12
\Add|S[45]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[45]~26_combout\ = \B[45]~input_o\ $ (\A[45]~input_o\ $ (\Add|S[45]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \A[45]~input_o\,
	datad => \Add|S[45]~25_combout\,
	combout => \Add|S[45]~26_combout\);

-- Location: LCCOMB_X63_Y52_N0
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux17~2_combout\ & ((\Mux18~0_combout\ & ((\Add|S[45]~26_combout\))) # (!\Mux18~0_combout\ & (\Shift|ll4[29]~46_combout\)))) # (!\Mux17~2_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Shift|ll4[29]~46_combout\,
	datac => \Mux18~0_combout\,
	datad => \Add|S[45]~26_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X62_Y53_N14
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux17~0_combout\ & ((\Y_ShiftOrArith[31]~25_combout\) # ((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & (((!\Mux17~1_combout\ & \Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X62_Y53_N24
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux17~1_combout\ & ((\Mux18~2_combout\ & ((\Y_R[1]~34_combout\))) # (!\Mux18~2_combout\ & (\Y_R[1]~67_combout\)))) # (!\Mux17~1_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~67_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux18~2_combout\,
	datad => \Y_R[1]~34_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X61_Y53_N26
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux18~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux18~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux18~6_combout\,
	datad => \Mux18~3_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X63_Y54_N22
\Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[46]~input_o\ & \A[46]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[46]~input_o\) # (\A[46]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[46]~input_o\ $ (\A[46]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[46]~input_o\,
	datad => \A[46]~input_o\,
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X59_Y55_N28
\Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux17~8_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux17~8_combout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X65_Y54_N30
\Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\ = (\Add|G\(44) & ((\A[45]~input_o\) # (\B[45]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|G\(44) & (\A[45]~input_o\ & (\B[45]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \Add|G\(44),
	datac => \AddnSub~input_o\,
	datad => \A[45]~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X65_Y54_N0
\Add|S[46]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(46) = \Add|P\(46) $ (((\Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\) # ((\Add|block_carry_in[11]~48_combout\ & \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:11:LACG_INST|g_int[1]~0_combout\,
	datab => \Add|block_carry_in[11]~48_combout\,
	datac => \Add|P\(46),
	datad => \Add|GEN_BLOCKS:11:LACG_INST|Pout~0_combout\,
	combout => \Add|S\(46));

-- Location: LCCOMB_X69_Y49_N4
\Shift|ll4[46]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[46]~80_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & ((\Shift|ll2[34]~67_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[38]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[38]~75_combout\,
	datab => \Shift|ll2[34]~67_combout\,
	datac => \B[3]~input_o\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll4[46]~80_combout\);

-- Location: LCCOMB_X65_Y48_N16
\Shift|ll2[47]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[47]~90_combout\ = (\B[1]~input_o\ & ((\A[44]~input_o\))) # (!\B[1]~input_o\ & (\A[46]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[1]~input_o\,
	datab => \A[46]~input_o\,
	datac => \A[44]~input_o\,
	combout => \Shift|ll2[47]~90_combout\);

-- Location: LCCOMB_X65_Y48_N10
\Shift|ll2[46]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[46]~91_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[46]~88_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[47]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[47]~90_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[46]~88_combout\,
	combout => \Shift|ll2[46]~91_combout\);

-- Location: LCCOMB_X66_Y48_N10
\Shift|ll3[46]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[46]~11_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[42]~83_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[46]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[46]~91_combout\,
	datab => \Shift|ll2[42]~83_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll3[46]~11_combout\);

-- Location: LCCOMB_X66_Y48_N20
\Shift|ll4[46]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[46]~81_combout\ = (\Shift|ll4[46]~80_combout\) # ((!\B[3]~input_o\ & \Shift|ll3[46]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datac => \Shift|ll4[46]~80_combout\,
	datad => \Shift|ll3[46]~11_combout\,
	combout => \Shift|ll4[46]~81_combout\);

-- Location: LCCOMB_X65_Y52_N30
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~2_combout\ & (\Shift|ll4[30]~48_combout\)) # (!\Mux17~2_combout\ & ((\Shift|ll4[46]~81_combout\))))) # (!\Y_ShiftOrArith[31]~23_combout\ & (((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[30]~48_combout\,
	datab => \Shift|ll4[46]~81_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X65_Y52_N8
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (((\Mux17~3_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Mux17~3_combout\ & (\Add|S\(46))) # (!\Mux17~3_combout\ & ((\Shift|ll5[14]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(46),
	datab => \Shift|ll5[14]~12_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Mux17~3_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X63_Y51_N12
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~1_combout\ & ((\Mux17~0_combout\) # ((\Y_R[1]~69_combout\)))) # (!\Mux17~1_combout\ & (!\Mux17~0_combout\ & ((\Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_R[1]~69_combout\,
	datad => \Mux17~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X63_Y51_N6
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux17~0_combout\ & ((\Mux17~5_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux17~5_combout\ & ((\Y_ShiftOrArith[31]~25_combout\))))) # (!\Mux17~0_combout\ & (((\Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux17~5_combout\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X59_Y55_N6
\Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux17~9_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux17~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux17~9_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux17~6_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X63_Y54_N4
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[47]~input_o\ & \B[47]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[47]~input_o\) # (\B[47]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\A[47]~input_o\ $ (\B[47]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X59_Y54_N22
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\Mux16~5_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux16~5_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X69_Y50_N10
\Shift|ll4[47]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[47]~82_combout\ = (\B[3]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll2[35]~69_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[39]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[35]~69_combout\,
	datab => \B[3]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[39]~77_combout\,
	combout => \Shift|ll4[47]~82_combout\);

-- Location: LCCOMB_X63_Y54_N16
\Shift|ll2[48]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[48]~92_combout\ = (\B[1]~input_o\ & (\A[45]~input_o\)) # (!\B[1]~input_o\ & ((\A[47]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|ll2[48]~92_combout\);

-- Location: LCCOMB_X65_Y48_N20
\Shift|ll2[47]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[47]~93_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[47]~90_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[48]~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[48]~92_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[47]~90_combout\,
	combout => \Shift|ll2[47]~93_combout\);

-- Location: LCCOMB_X69_Y50_N4
\Shift|ll3[47]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[47]~12_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[43]~85_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[47]~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[47]~93_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[43]~85_combout\,
	combout => \Shift|ll3[47]~12_combout\);

-- Location: LCCOMB_X69_Y50_N22
\Shift|ll4[47]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll4[47]~83_combout\ = (\Shift|ll4[47]~82_combout\) # ((\Shift|ll3[47]~12_combout\ & !\B[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[47]~82_combout\,
	datab => \Shift|ll3[47]~12_combout\,
	datac => \B[3]~input_o\,
	combout => \Shift|ll4[47]~83_combout\);

-- Location: LCCOMB_X60_Y50_N30
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux17~2_combout\ & (((!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & ((\Y_ShiftOrArith[31]~23_combout\ & ((\Shift|ll4[47]~83_combout\))) # (!\Y_ShiftOrArith[31]~23_combout\ & (\Shift|ll5[15]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[15]~13_combout\,
	datab => \Mux17~2_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Shift|ll4[47]~83_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X63_Y54_N28
\Add|G[45]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(45) = (\A[45]~input_o\ & (\B[45]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[45]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[45]~input_o\,
	combout => \Add|G\(45));

-- Location: LCCOMB_X63_Y54_N6
\Add|GEN_BLOCKS:11:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\ = (\A[46]~input_o\ & ((\Add|G\(45)) # (\AddnSub~input_o\ $ (\B[46]~input_o\)))) # (!\A[46]~input_o\ & (\Add|G\(45) & (\AddnSub~input_o\ $ (\B[46]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[46]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \B[46]~input_o\,
	datad => \Add|G\(45),
	combout => \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X63_Y54_N24
\Add|P[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(47) = \AddnSub~input_o\ $ (\A[47]~input_o\ $ (\B[47]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[47]~input_o\,
	datad => \B[47]~input_o\,
	combout => \Add|P\(47));

-- Location: LCCOMB_X65_Y54_N10
\Add|GEN_BLOCKS:11:LACG_INST|C[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ = (\Add|G\(44)) # ((\Add|P\(44) & ((\Add|block_carry_in[11]~38_combout\) # (\Add|block_carry_in[11]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[11]~38_combout\,
	datab => \Add|P\(44),
	datac => \Add|block_carry_in[11]~36_combout\,
	datad => \Add|G\(44),
	combout => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\);

-- Location: LCCOMB_X63_Y54_N2
\Add|GEN_BLOCKS:11:LACG_INST|C[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\ = (\Add|P\(46) & (\A[45]~input_o\ $ (\AddnSub~input_o\ $ (\B[45]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[45]~input_o\,
	datab => \Add|P\(46),
	datac => \AddnSub~input_o\,
	datad => \B[45]~input_o\,
	combout => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\);

-- Location: LCCOMB_X63_Y54_N26
\Add|S[47]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(47) = \Add|P\(47) $ (((\Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\ & \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:11:LACG_INST|g_int~1_combout\,
	datab => \Add|P\(47),
	datac => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~0_combout\,
	datad => \Add|GEN_BLOCKS:11:LACG_INST|C[3]~1_combout\,
	combout => \Add|S\(47));

-- Location: LCCOMB_X60_Y50_N0
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & ((\Add|S\(47)) # ((!\Mux17~2_combout\)))) # (!\Mux16~0_combout\ & (((\Mux17~2_combout\ & \Shift|ll4[31]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Add|S\(47),
	datac => \Mux17~2_combout\,
	datad => \Shift|ll4[31]~51_combout\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X62_Y53_N10
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux17~0_combout\ & ((\Y_ShiftOrArith[31]~25_combout\) # ((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & (((!\Mux17~1_combout\ & \Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X62_Y53_N4
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\Mux17~1_combout\ & ((\Mux16~2_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux16~2_combout\ & ((\Y_R[1]~71_combout\))))) # (!\Mux17~1_combout\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux17~1_combout\,
	datac => \Y_R[1]~71_combout\,
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X59_Y54_N8
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux16~6_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux16~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~6_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X57_Y50_N2
\Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\A[48]~input_o\ & ((\B[48]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[48]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[48]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[48]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[48]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X57_Y50_N28
\Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~10_combout\ = (\Mux15~9_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux15~9_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux15~10_combout\);

-- Location: LCCOMB_X65_Y48_N30
\Shift|ll2[49]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[49]~94_combout\ = (\B[1]~input_o\ & ((\A[46]~input_o\))) # (!\B[1]~input_o\ & (\A[48]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \A[46]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[49]~94_combout\);

-- Location: LCCOMB_X65_Y48_N24
\Shift|ll2[48]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[48]~95_combout\ = (\B[0]~input_o\ & (\Shift|ll2[48]~92_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[49]~94_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[48]~92_combout\,
	datac => \Shift|ll2[49]~94_combout\,
	datad => \B[0]~input_o\,
	combout => \Shift|ll2[48]~95_combout\);

-- Location: LCCOMB_X67_Y47_N28
\Shift|ll3[48]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[48]~13_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[44]~87_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[48]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[48]~95_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[44]~87_combout\,
	combout => \Shift|ll3[48]~13_combout\);

-- Location: LCCOMB_X67_Y47_N14
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux52~0_combout\ & (((\Shift|ll3[40]~5_combout\) # (!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux52~0_combout\ & (\Shift|ll3[48]~13_combout\ & (\Y_ShiftOrArith[1]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux52~0_combout\,
	datab => \Shift|ll3[48]~13_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[40]~5_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X65_Y50_N10
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux15~3_combout\ & (((\Shift|ll5[16]~14_combout\) # (\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux15~3_combout\ & (\Shift|ll4[32]~53_combout\ & ((!\Y_ShiftOrArith[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Shift|ll4[32]~53_combout\,
	datac => \Shift|ll5[16]~14_combout\,
	datad => \Y_ShiftOrArith[1]~11_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X65_Y50_N4
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\ShiftFN[1]~input_o\ & (((\Y_R[1]~80_combout\) # (\Mux58~3_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Mux15~4_combout\ & ((!\Mux58~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_R[1]~80_combout\,
	datad => \Mux58~3_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X60_Y52_N28
\Add|S[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(48) = \AddnSub~input_o\ $ (\Add|block_carry_in[12]~39_combout\ $ (\A[48]~input_o\ $ (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[12]~39_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|S\(48));

-- Location: LCCOMB_X63_Y50_N16
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux15~5_combout\ & ((\Y_R[1]~34_combout\) # ((!\Mux58~3_combout\)))) # (!\Mux15~5_combout\ & (((\Mux58~3_combout\ & \Add|S\(48)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~34_combout\,
	datab => \Mux15~5_combout\,
	datac => \Mux58~3_combout\,
	datad => \Add|S\(48),
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X57_Y50_N16
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\ExtWord~input_o\ & ((\Mux15~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux15~6_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X57_Y50_N0
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux15~8_combout\) # ((\Mux15~10_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux15~10_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux15~8_combout\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X63_Y50_N30
\Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~8_combout\ = (\LogicFN[0]~input_o\ & ((\A[49]~input_o\ & (\B[49]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\A[49]~input_o\ & (\B[49]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[49]~input_o\) # ((\B[49]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[49]~input_o\,
	datac => \B[49]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux14~8_combout\);

-- Location: LCCOMB_X57_Y50_N8
\Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~9_combout\ = (\Mux14~8_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \Mux14~8_combout\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux14~9_combout\);

-- Location: LCCOMB_X65_Y48_N18
\Shift|ll2[50]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[50]~96_combout\ = (\B[1]~input_o\ & (\A[47]~input_o\)) # (!\B[1]~input_o\ & ((\A[49]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[47]~input_o\,
	datab => \A[49]~input_o\,
	datac => \B[1]~input_o\,
	combout => \Shift|ll2[50]~96_combout\);

-- Location: LCCOMB_X65_Y48_N28
\Shift|ll2[49]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[49]~97_combout\ = (\B[0]~input_o\ & (\Shift|ll2[49]~94_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[50]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[49]~94_combout\,
	datad => \Shift|ll2[50]~96_combout\,
	combout => \Shift|ll2[49]~97_combout\);

-- Location: LCCOMB_X63_Y52_N10
\Shift|ll3[49]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[49]~14_combout\ = (\B[2]~input_o\ & (\Shift|ll2[45]~89_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[49]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[45]~89_combout\,
	datab => \Shift|ll2[49]~97_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll3[49]~14_combout\);

-- Location: LCCOMB_X63_Y50_N18
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux52~0_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux52~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|ll3[49]~14_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll4[33]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[33]~55_combout\,
	datab => \Mux52~0_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[49]~14_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X63_Y50_N4
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & (((\Shift|ll5[17]~15_combout\) # (!\Mux52~0_combout\)))) # (!\Mux14~2_combout\ & (\Shift|ll3[41]~6_combout\ & (\Mux52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[41]~6_combout\,
	datab => \Mux14~2_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ll5[17]~15_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X63_Y50_N6
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux58~3_combout\ & (\ShiftFN[1]~input_o\)) # (!\Mux58~3_combout\ & ((\ShiftFN[1]~input_o\ & ((\Y_R[1]~73_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Mux14~3_combout\,
	datad => \Y_R[1]~73_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X60_Y52_N30
\Add|GEN_BLOCKS:12:LACG_INST|C[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|C[1]~4_combout\ = (\Add|block_carry_in[12]~39_combout\ & ((\A[48]~input_o\) # (\AddnSub~input_o\ $ (\B[48]~input_o\)))) # (!\Add|block_carry_in[12]~39_combout\ & (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[12]~39_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|GEN_BLOCKS:12:LACG_INST|C[1]~4_combout\);

-- Location: LCCOMB_X63_Y50_N20
\Add|S[49]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(49) = \B[49]~input_o\ $ (\A[49]~input_o\ $ (\Add|GEN_BLOCKS:12:LACG_INST|C[1]~4_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[49]~input_o\,
	datab => \A[49]~input_o\,
	datac => \Add|GEN_BLOCKS:12:LACG_INST|C[1]~4_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(49));

-- Location: LCCOMB_X63_Y50_N8
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux14~4_combout\ & (((\Y_R[1]~34_combout\) # (!\Mux58~3_combout\)))) # (!\Mux14~4_combout\ & (\Add|S\(49) & (\Mux58~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datab => \Add|S\(49),
	datac => \Mux58~3_combout\,
	datad => \Y_R[1]~34_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X57_Y50_N10
\Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~7_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\ExtWord~input_o\ & ((\Mux14~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux14~5_combout\,
	combout => \Mux14~7_combout\);

-- Location: LCCOMB_X57_Y50_N26
\Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux14~7_combout\) # ((\FuncClass[0]~input_o\ & \Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux14~9_combout\,
	datad => \Mux14~7_combout\,
	combout => \Mux14~6_combout\);

-- Location: LCCOMB_X57_Y50_N12
\Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~8_combout\ = (\B[50]~input_o\ & ((\A[50]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[50]~input_o\ & ((\LogicFN[0]~input_o\ & (\A[50]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\A[50]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[50]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \A[50]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux13~8_combout\);

-- Location: LCCOMB_X57_Y50_N22
\Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~9_combout\ = (\Mux13~8_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux13~8_combout\,
	combout => \Mux13~9_combout\);

-- Location: LCCOMB_X60_Y52_N24
\Add|G[48]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(48) = (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|G\(48));

-- Location: LCCOMB_X60_Y52_N10
\Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\ = (\A[49]~input_o\ & ((\Add|G\(48)) # (\AddnSub~input_o\ $ (\B[49]~input_o\)))) # (!\A[49]~input_o\ & (\Add|G\(48) & (\AddnSub~input_o\ $ (\B[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \Add|G\(48),
	combout => \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X60_Y52_N4
\Add|S[50]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(50) = \Add|P\(50) $ (((\Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\) # ((\Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[12]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:12:LACG_INST|g_int[1]~0_combout\,
	datab => \Add|P\(50),
	datac => \Add|GEN_BLOCKS:12:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[12]~39_combout\,
	combout => \Add|S\(50));

-- Location: LCCOMB_X60_Y51_N14
\Shift|ll2[51]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[51]~98_combout\ = (\B[1]~input_o\ & (\A[48]~input_o\)) # (!\B[1]~input_o\ & ((\A[50]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[48]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[50]~input_o\,
	combout => \Shift|ll2[51]~98_combout\);

-- Location: LCCOMB_X65_Y48_N6
\Shift|ll2[50]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[50]~99_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[50]~96_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[51]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[51]~98_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[50]~96_combout\,
	combout => \Shift|ll2[50]~99_combout\);

-- Location: LCCOMB_X66_Y48_N30
\Shift|ll3[50]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[50]~15_combout\ = (\B[2]~input_o\ & (\Shift|ll2[46]~91_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[50]~99_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[46]~91_combout\,
	datab => \Shift|ll2[50]~99_combout\,
	datac => \B[2]~input_o\,
	combout => \Shift|ll3[50]~15_combout\);

-- Location: LCCOMB_X66_Y48_N8
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & ((\Mux52~0_combout\ & (\Shift|ll3[42]~7_combout\)) # (!\Mux52~0_combout\ & ((\Shift|ll3[50]~15_combout\))))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|ll3[42]~7_combout\,
	datac => \Shift|ll3[50]~15_combout\,
	datad => \Mux52~0_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X66_Y53_N2
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & ((\Shift|ll5[18]~16_combout\) # ((\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux13~2_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\ & \Shift|ll4[34]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \Shift|ll5[18]~16_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll4[34]~57_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X66_Y53_N28
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux58~3_combout\ & (((\ShiftFN[1]~input_o\)))) # (!\Mux58~3_combout\ & ((\ShiftFN[1]~input_o\ & ((\Y_R[1]~75_combout\))) # (!\ShiftFN[1]~input_o\ & (\Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Mux13~3_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Y_R[1]~75_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X66_Y52_N20
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux58~3_combout\ & ((\Mux13~4_combout\ & ((\Y_R[1]~34_combout\))) # (!\Mux13~4_combout\ & (\Add|S\(50))))) # (!\Mux58~3_combout\ & (((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Add|S\(50),
	datac => \Mux13~4_combout\,
	datad => \Y_R[1]~34_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X57_Y50_N4
\Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~7_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\ExtWord~input_o\ & ((\Mux13~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux13~5_combout\,
	combout => \Mux13~7_combout\);

-- Location: LCCOMB_X57_Y50_N20
\Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux13~7_combout\) # ((\Mux13~9_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~9_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \Mux13~7_combout\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux13~6_combout\);

-- Location: LCCOMB_X60_Y52_N22
\Add|GEN_BLOCKS:12:LACG_INST|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|C[3]~5_combout\ = (\Add|block_carry_in[12]~39_combout\ & ((\A[48]~input_o\) # (\AddnSub~input_o\ $ (\B[48]~input_o\)))) # (!\Add|block_carry_in[12]~39_combout\ & (\A[48]~input_o\ & (\AddnSub~input_o\ $ (\B[48]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \Add|block_carry_in[12]~39_combout\,
	datac => \A[48]~input_o\,
	datad => \B[48]~input_o\,
	combout => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~5_combout\);

-- Location: LCCOMB_X60_Y52_N20
\Add|GEN_BLOCKS:12:LACG_INST|C[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|C[3]~6_combout\ = (\Add|P\(50) & (\AddnSub~input_o\ $ (\B[49]~input_o\ $ (\A[49]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[49]~input_o\,
	datac => \A[49]~input_o\,
	datad => \Add|P\(50),
	combout => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~6_combout\);

-- Location: LCCOMB_X60_Y52_N8
\Add|GEN_BLOCKS:12:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\ = (\A[50]~input_o\ & ((\Add|G\(49)) # (\AddnSub~input_o\ $ (\B[50]~input_o\)))) # (!\A[50]~input_o\ & (\Add|G\(49) & (\AddnSub~input_o\ $ (\B[50]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[50]~input_o\,
	datac => \B[50]~input_o\,
	datad => \Add|G\(49),
	combout => \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X60_Y51_N0
\Add|P[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(51) = \AddnSub~input_o\ $ (\A[51]~input_o\ $ (\B[51]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[51]~input_o\,
	datad => \B[51]~input_o\,
	combout => \Add|P\(51));

-- Location: LCCOMB_X60_Y52_N2
\Add|S[51]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(51) = \Add|P\(51) $ (((\Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:12:LACG_INST|C[3]~5_combout\ & \Add|GEN_BLOCKS:12:LACG_INST|C[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~5_combout\,
	datab => \Add|GEN_BLOCKS:12:LACG_INST|C[3]~6_combout\,
	datac => \Add|GEN_BLOCKS:12:LACG_INST|g_int~1_combout\,
	datad => \Add|P\(51),
	combout => \Add|S\(51));

-- Location: LCCOMB_X60_Y51_N10
\Shift|ll2[52]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[52]~100_combout\ = (\B[1]~input_o\ & (\A[49]~input_o\)) # (!\B[1]~input_o\ & ((\A[51]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[49]~input_o\,
	datab => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|ll2[52]~100_combout\);

-- Location: LCCOMB_X60_Y51_N20
\Shift|ll2[51]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[51]~101_combout\ = (\B[0]~input_o\ & (\Shift|ll2[51]~98_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[52]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ll2[51]~98_combout\,
	datad => \Shift|ll2[52]~100_combout\,
	combout => \Shift|ll2[51]~101_combout\);

-- Location: LCCOMB_X69_Y51_N6
\Shift|ll3[51]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[51]~16_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[47]~93_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[51]~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[51]~101_combout\,
	datab => \Shift|ll2[47]~93_combout\,
	datad => \B[2]~input_o\,
	combout => \Shift|ll3[51]~16_combout\);

-- Location: LCCOMB_X66_Y52_N14
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll3[51]~16_combout\ & (!\Mux52~0_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Mux52~0_combout\) # (\Shift|ll4[35]~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|ll3[51]~16_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ll4[35]~59_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X66_Y52_N24
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux12~2_combout\ & (((\Shift|ll5[19]~17_combout\) # (!\Mux52~0_combout\)))) # (!\Mux12~2_combout\ & (\Shift|ll3[43]~8_combout\ & (\Mux52~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[43]~8_combout\,
	datab => \Mux12~2_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ll5[19]~17_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X66_Y52_N26
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux58~3_combout\ & (((\ShiftFN[1]~input_o\)))) # (!\Mux58~3_combout\ & ((\ShiftFN[1]~input_o\ & (\Y_R[1]~76_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Y_R[1]~76_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X66_Y52_N28
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux12~4_combout\ & (((\Y_R[1]~34_combout\) # (!\Mux58~3_combout\)))) # (!\Mux12~4_combout\ & (\Add|S\(51) & ((\Mux58~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(51),
	datab => \Y_R[1]~34_combout\,
	datac => \Mux12~4_combout\,
	datad => \Mux58~3_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X57_Y50_N6
\Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~7_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\ExtWord~input_o\ & ((\Mux12~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \ExtWord~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux12~5_combout\,
	combout => \Mux12~7_combout\);

-- Location: LCCOMB_X57_Y50_N24
\Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~8_combout\ = (\A[51]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[51]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[51]~input_o\ & ((\LogicFN[1]~input_o\ & (\B[51]~input_o\ & !\LogicFN[0]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[51]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[51]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \B[51]~input_o\,
	datad => \LogicFN[0]~input_o\,
	combout => \Mux12~8_combout\);

-- Location: LCCOMB_X57_Y50_N18
\Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~9_combout\ = (\Mux12~8_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux12~8_combout\,
	combout => \Mux12~9_combout\);

-- Location: LCCOMB_X57_Y50_N14
\Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux12~7_combout\) # ((\FuncClass[0]~input_o\ & \Mux12~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~7_combout\,
	datab => \FuncClass[0]~input_o\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux12~9_combout\,
	combout => \Mux12~6_combout\);

-- Location: LCCOMB_X62_Y56_N2
\Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~8_combout\ = (\LogicFN[0]~input_o\ & ((\A[52]~input_o\ & (\B[52]~input_o\ $ (!\LogicFN[1]~input_o\))) # (!\A[52]~input_o\ & (\B[52]~input_o\ & !\LogicFN[1]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\A[52]~input_o\) # ((\B[52]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \A[52]~input_o\,
	datac => \B[52]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux11~8_combout\);

-- Location: LCCOMB_X62_Y56_N12
\Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~9_combout\ = (\Mux11~8_combout\ & ((\B[19]~input_o\) # ((\LogicFN[1]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Mux11~8_combout\,
	combout => \Mux11~9_combout\);

-- Location: LCCOMB_X60_Y51_N6
\Shift|ll2[53]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[53]~102_combout\ = (\B[1]~input_o\ & ((\A[50]~input_o\))) # (!\B[1]~input_o\ & (\A[52]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[52]~input_o\,
	datab => \B[1]~input_o\,
	datac => \A[50]~input_o\,
	combout => \Shift|ll2[53]~102_combout\);

-- Location: LCCOMB_X60_Y51_N16
\Shift|ll2[52]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[52]~103_combout\ = (\B[0]~input_o\ & (\Shift|ll2[52]~100_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[53]~102_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[52]~100_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[53]~102_combout\,
	combout => \Shift|ll2[52]~103_combout\);

-- Location: LCCOMB_X67_Y47_N24
\Shift|ll3[52]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[52]~17_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[48]~95_combout\))) # (!\B[2]~input_o\ & (\Shift|ll2[52]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[52]~103_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[48]~95_combout\,
	combout => \Shift|ll3[52]~17_combout\);

-- Location: LCCOMB_X67_Y47_N18
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & ((\Mux52~0_combout\ & ((\Shift|ll3[44]~9_combout\))) # (!\Mux52~0_combout\ & (\Shift|ll3[52]~17_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|ll3[52]~17_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ll3[44]~9_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X65_Y51_N4
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (\Mux11~2_combout\)) # (!\Y_ShiftOrArith[1]~11_combout\ & ((\Mux11~2_combout\ & (\Shift|ll5[20]~18_combout\)) # (!\Mux11~2_combout\ & ((\Shift|ll4[36]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Mux11~2_combout\,
	datac => \Shift|ll5[20]~18_combout\,
	datad => \Shift|ll4[36]~61_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X65_Y51_N22
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Mux58~3_combout\) # ((\Y_R[1]~77_combout\)))) # (!\ShiftFN[1]~input_o\ & (!\Mux58~3_combout\ & (\Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Mux58~3_combout\,
	datac => \Mux11~3_combout\,
	datad => \Y_R[1]~77_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X65_Y56_N2
\Add|S[52]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(52) = \Add|block_carry_in[13]~52_combout\ $ (\B[52]~input_o\ $ (\AddnSub~input_o\ $ (\A[52]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~52_combout\,
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[52]~input_o\,
	combout => \Add|S\(52));

-- Location: LCCOMB_X63_Y55_N20
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux58~3_combout\ & ((\Mux11~4_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux11~4_combout\ & ((\Add|S\(52)))))) # (!\Mux58~3_combout\ & (\Mux11~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Mux11~4_combout\,
	datac => \Y_R[1]~34_combout\,
	datad => \Add|S\(52),
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X63_Y55_N6
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~25_combout\))) # (!\ExtWord~input_o\ & (\Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux11~5_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X63_Y55_N30
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux11~7_combout\) # ((\FuncClass[0]~input_o\ & \Mux11~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux11~9_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X62_Y56_N14
\Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~8_combout\ = (\A[53]~input_o\ & ((\B[53]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[53]~input_o\ & ((\B[53]~input_o\ & ((!\LogicFN[1]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[53]~input_o\ & (!\LogicFN[0]~input_o\ & 
-- !\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[53]~input_o\,
	datab => \B[53]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux10~8_combout\);

-- Location: LCCOMB_X62_Y56_N24
\Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~9_combout\ = (\Mux10~8_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \Mux10~8_combout\,
	datac => \LogicFN[0]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux10~9_combout\);

-- Location: LCCOMB_X60_Y51_N18
\Shift|ll2[54]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[54]~104_combout\ = (\B[1]~input_o\ & ((\A[51]~input_o\))) # (!\B[1]~input_o\ & (\A[53]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[51]~input_o\,
	combout => \Shift|ll2[54]~104_combout\);

-- Location: LCCOMB_X60_Y51_N28
\Shift|ll2[53]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[53]~105_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[53]~102_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[54]~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[54]~104_combout\,
	datac => \B[0]~input_o\,
	datad => \Shift|ll2[53]~102_combout\,
	combout => \Shift|ll2[53]~105_combout\);

-- Location: LCCOMB_X66_Y47_N30
\Shift|ll3[53]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[53]~18_combout\ = (\B[2]~input_o\ & (\Shift|ll2[49]~97_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[53]~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[49]~97_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[53]~105_combout\,
	combout => \Shift|ll3[53]~18_combout\);

-- Location: LCCOMB_X65_Y53_N20
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux52~0_combout\ & (((!\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux52~0_combout\ & ((\Y_ShiftOrArith[1]~11_combout\ & ((\Shift|ll3[53]~18_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll4[37]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[37]~63_combout\,
	datab => \Mux52~0_combout\,
	datac => \Y_ShiftOrArith[1]~11_combout\,
	datad => \Shift|ll3[53]~18_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X65_Y53_N6
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux52~0_combout\ & ((\Mux10~2_combout\ & ((\Shift|ll5[21]~19_combout\))) # (!\Mux10~2_combout\ & (\Shift|ll3[45]~10_combout\)))) # (!\Mux52~0_combout\ & (((\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[45]~10_combout\,
	datab => \Shift|ll5[21]~19_combout\,
	datac => \Mux52~0_combout\,
	datad => \Mux10~2_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X65_Y53_N0
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux58~3_combout\ & (\ShiftFN[1]~input_o\)) # (!\Mux58~3_combout\ & ((\ShiftFN[1]~input_o\ & (\Y_R[1]~81_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \Y_R[1]~81_combout\,
	datad => \Mux10~3_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X65_Y56_N4
\Add|GEN_BLOCKS:13:LACG_INST|C[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|C[1]~4_combout\ = (\Add|block_carry_in[13]~52_combout\ & ((\A[52]~input_o\) # (\B[52]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[13]~52_combout\ & (\A[52]~input_o\ & (\B[52]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~52_combout\,
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[52]~input_o\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|C[1]~4_combout\);

-- Location: LCCOMB_X65_Y56_N18
\Add|S[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(53) = \B[53]~input_o\ $ (\AddnSub~input_o\ $ (\Add|GEN_BLOCKS:13:LACG_INST|C[1]~4_combout\ $ (\A[53]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|GEN_BLOCKS:13:LACG_INST|C[1]~4_combout\,
	datad => \A[53]~input_o\,
	combout => \Add|S\(53));

-- Location: LCCOMB_X65_Y55_N18
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux10~4_combout\ & (((\Y_R[1]~34_combout\)) # (!\Mux58~3_combout\))) # (!\Mux10~4_combout\ & (\Mux58~3_combout\ & ((\Add|S\(53)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~4_combout\,
	datab => \Mux58~3_combout\,
	datac => \Y_R[1]~34_combout\,
	datad => \Add|S\(53),
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X63_Y55_N24
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~25_combout\))) # (!\ExtWord~input_o\ & (\Mux10~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux10~5_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X62_Y56_N4
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux10~7_combout\) # ((\Mux10~9_combout\ & \FuncClass[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datab => \Mux10~9_combout\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X59_Y55_N0
\Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~8_combout\ = (\LogicFN[1]~input_o\ & ((\B[54]~input_o\ & ((\A[54]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[54]~input_o\ & (!\LogicFN[0]~input_o\ & \A[54]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[54]~input_o\ $ (\A[54]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[54]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Mux9~8_combout\);

-- Location: LCCOMB_X59_Y55_N10
\Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~9_combout\ = (\Mux9~8_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux9~8_combout\,
	combout => \Mux9~9_combout\);

-- Location: LCCOMB_X65_Y56_N30
\Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\ = (\A[53]~input_o\ & ((\Add|G\(52)) # (\B[53]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[53]~input_o\ & (\Add|G\(52) & (\B[53]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(52),
	combout => \Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\);

-- Location: LCCOMB_X65_Y56_N16
\Add|S[54]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(54) = \Add|P\(54) $ (((\Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\) # ((\Add|block_carry_in[13]~52_combout\ & \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~52_combout\,
	datab => \Add|P\(54),
	datac => \Add|GEN_BLOCKS:13:LACG_INST|g_int[1]~0_combout\,
	datad => \Add|GEN_BLOCKS:13:LACG_INST|Pout~0_combout\,
	combout => \Add|S\(54));

-- Location: LCCOMB_X66_Y51_N30
\Shift|ll2[55]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[55]~106_combout\ = (\B[1]~input_o\ & (\A[52]~input_o\)) # (!\B[1]~input_o\ & ((\A[54]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[52]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shift|ll2[55]~106_combout\);

-- Location: LCCOMB_X66_Y48_N2
\Shift|ll2[54]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[54]~107_combout\ = (\B[0]~input_o\ & (\Shift|ll2[54]~104_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[55]~106_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \Shift|ll2[54]~104_combout\,
	datad => \Shift|ll2[55]~106_combout\,
	combout => \Shift|ll2[54]~107_combout\);

-- Location: LCCOMB_X66_Y48_N28
\Shift|ll3[54]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[54]~19_combout\ = (\B[2]~input_o\ & (\Shift|ll2[50]~99_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[54]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Shift|ll2[50]~99_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[54]~107_combout\,
	combout => \Shift|ll3[54]~19_combout\);

-- Location: LCCOMB_X66_Y48_N14
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & ((\Mux52~0_combout\ & ((\Shift|ll3[46]~11_combout\))) # (!\Mux52~0_combout\ & (\Shift|ll3[54]~19_combout\)))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Mux52~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[1]~11_combout\,
	datab => \Shift|ll3[54]~19_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ll3[46]~11_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X66_Y48_N0
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux9~2_combout\ & (((\Shift|ll5[22]~20_combout\) # (\Y_ShiftOrArith[1]~11_combout\)))) # (!\Mux9~2_combout\ & (\Shift|ll4[38]~65_combout\ & ((!\Y_ShiftOrArith[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[38]~65_combout\,
	datab => \Shift|ll5[22]~20_combout\,
	datac => \Mux9~2_combout\,
	datad => \Y_ShiftOrArith[1]~11_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X66_Y48_N18
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux58~3_combout\ & (((\ShiftFN[1]~input_o\)))) # (!\Mux58~3_combout\ & ((\ShiftFN[1]~input_o\ & (\Y_R[1]~82_combout\)) # (!\ShiftFN[1]~input_o\ & ((\Mux9~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Y_R[1]~82_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X63_Y55_N8
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux58~3_combout\ & ((\Mux9~4_combout\ & ((\Y_R[1]~34_combout\))) # (!\Mux9~4_combout\ & (\Add|S\(54))))) # (!\Mux58~3_combout\ & (((\Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~3_combout\,
	datab => \Add|S\(54),
	datac => \Y_R[1]~34_combout\,
	datad => \Mux9~4_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X63_Y55_N10
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~25_combout\))) # (!\ExtWord~input_o\ & (\Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux9~5_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X63_Y55_N18
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux9~7_combout\) # ((\FuncClass[0]~input_o\ & \Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux9~9_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux9~7_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X60_Y57_N4
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\A[55]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\B[55]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[55]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \B[55]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\B[55]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[55]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X60_Y57_N22
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux8~8_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux8~8_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X66_Y51_N0
\Shift|ll2[56]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[56]~108_combout\ = (\B[1]~input_o\ & (\A[53]~input_o\)) # (!\B[1]~input_o\ & ((\A[55]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[53]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|ll2[56]~108_combout\);

-- Location: LCCOMB_X66_Y51_N26
\Shift|ll2[55]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[55]~109_combout\ = (\B[0]~input_o\ & (\Shift|ll2[55]~106_combout\)) # (!\B[0]~input_o\ & ((\Shift|ll2[56]~108_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[55]~106_combout\,
	datad => \Shift|ll2[56]~108_combout\,
	combout => \Shift|ll2[55]~109_combout\);

-- Location: LCCOMB_X69_Y51_N16
\Shift|ll3[55]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll3[55]~20_combout\ = (\B[2]~input_o\ & (\Shift|ll2[51]~101_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll2[55]~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[51]~101_combout\,
	datab => \B[2]~input_o\,
	datac => \Shift|ll2[55]~109_combout\,
	combout => \Shift|ll3[55]~20_combout\);

-- Location: LCCOMB_X66_Y50_N18
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Y_ShiftOrArith[1]~11_combout\ & (\Shift|ll3[55]~20_combout\ & (!\Mux52~0_combout\))) # (!\Y_ShiftOrArith[1]~11_combout\ & (((\Mux52~0_combout\) # (\Shift|ll4[39]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[55]~20_combout\,
	datab => \Y_ShiftOrArith[1]~11_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ll4[39]~67_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X66_Y50_N28
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & ((\Shift|ll5[23]~21_combout\) # ((!\Mux52~0_combout\)))) # (!\Mux8~2_combout\ & (((\Mux52~0_combout\ & \Shift|ll3[47]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[23]~21_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux52~0_combout\,
	datad => \Shift|ll3[47]~12_combout\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X65_Y55_N12
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\ShiftFN[1]~input_o\ & ((\Y_R[1]~83_combout\) # ((\Mux58~3_combout\)))) # (!\ShiftFN[1]~input_o\ & (((\Mux8~3_combout\ & !\Mux58~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \Y_R[1]~83_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux58~3_combout\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X65_Y56_N10
\Add|GEN_BLOCKS:13:LACG_INST|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|C[3]~5_combout\ = (\Add|block_carry_in[13]~52_combout\ & ((\A[52]~input_o\) # (\B[52]~input_o\ $ (\AddnSub~input_o\)))) # (!\Add|block_carry_in[13]~52_combout\ & (\A[52]~input_o\ & (\B[52]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[13]~52_combout\,
	datab => \B[52]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \A[52]~input_o\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~5_combout\);

-- Location: LCCOMB_X65_Y56_N28
\Add|GEN_BLOCKS:13:LACG_INST|C[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|C[3]~6_combout\ = (\Add|P\(54) & (\B[53]~input_o\ $ (\AddnSub~input_o\ $ (\A[53]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \Add|P\(54),
	datad => \A[53]~input_o\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~6_combout\);

-- Location: LCCOMB_X60_Y57_N8
\Add|P[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|P\(55) = \AddnSub~input_o\ $ (\A[55]~input_o\ $ (\B[55]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AddnSub~input_o\,
	datac => \A[55]~input_o\,
	datad => \B[55]~input_o\,
	combout => \Add|P\(55));

-- Location: LCCOMB_X65_Y56_N12
\Add|G[53]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|G\(53) = (\A[53]~input_o\ & (\B[53]~input_o\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[53]~input_o\,
	datab => \A[53]~input_o\,
	datac => \AddnSub~input_o\,
	combout => \Add|G\(53));

-- Location: LCCOMB_X65_Y56_N6
\Add|GEN_BLOCKS:13:LACG_INST|g_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\ = (\Add|G\(53) & ((\A[54]~input_o\) # (\AddnSub~input_o\ $ (\B[54]~input_o\)))) # (!\Add|G\(53) & (\A[54]~input_o\ & (\AddnSub~input_o\ $ (\B[54]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(53),
	datab => \AddnSub~input_o\,
	datac => \A[54]~input_o\,
	datad => \B[54]~input_o\,
	combout => \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\);

-- Location: LCCOMB_X65_Y56_N0
\Add|S[55]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(55) = \Add|P\(55) $ (((\Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\) # ((\Add|GEN_BLOCKS:13:LACG_INST|C[3]~5_combout\ & \Add|GEN_BLOCKS:13:LACG_INST|C[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~5_combout\,
	datab => \Add|GEN_BLOCKS:13:LACG_INST|C[3]~6_combout\,
	datac => \Add|P\(55),
	datad => \Add|GEN_BLOCKS:13:LACG_INST|g_int~1_combout\,
	combout => \Add|S\(55));

-- Location: LCCOMB_X65_Y55_N22
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = (\Mux8~4_combout\ & ((\Y_R[1]~34_combout\) # ((!\Mux58~3_combout\)))) # (!\Mux8~4_combout\ & (((\Add|S\(55) & \Mux58~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \Y_R[1]~34_combout\,
	datac => \Add|S\(55),
	datad => \Mux58~3_combout\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X63_Y55_N12
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (!\FuncClass[0]~input_o\ & ((\ExtWord~input_o\ & ((\Y_ShiftOrArith[31]~25_combout\))) # (!\ExtWord~input_o\ & (\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux8~5_combout\,
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X63_Y55_N28
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (!\FuncClass[1]~input_o\ & ((\Mux8~7_combout\) # ((\FuncClass[0]~input_o\ & \Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \Mux8~9_combout\,
	datac => \FuncClass[1]~input_o\,
	datad => \Mux8~7_combout\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X60_Y57_N16
\Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\A[56]~input_o\ & ((\B[56]~input_o\ $ (!\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\A[56]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[56]~input_o\ & !\LogicFN[1]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[56]~input_o\) # 
-- (!\LogicFN[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[56]~input_o\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X60_Y57_N26
\Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~12_combout\ = (\Mux7~11_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux7~11_combout\,
	combout => \Mux7~12_combout\);

-- Location: LCCOMB_X62_Y55_N2
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\ExtWord~input_o\) # (\FuncClass[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \FuncClass[0]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X62_Y55_N6
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\ShiftFN[1]~input_o\) # ((\B[5]~input_o\ & \ShiftFN[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X61_Y57_N8
\Add|S[56]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(56) = \B[56]~input_o\ $ (\AddnSub~input_o\ $ (\A[56]~input_o\ $ (\Add|block_carry_in[14]~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[56]~input_o\,
	datad => \Add|block_carry_in[14]~50_combout\,
	combout => \Add|S\(56));

-- Location: LCCOMB_X66_Y51_N12
\Shift|ll2[57]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[57]~110_combout\ = (\B[1]~input_o\ & ((\A[54]~input_o\))) # (!\B[1]~input_o\ & (\A[56]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \A[56]~input_o\,
	datad => \A[54]~input_o\,
	combout => \Shift|ll2[57]~110_combout\);

-- Location: LCCOMB_X66_Y51_N14
\Shift|ll2[56]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[56]~111_combout\ = (\B[0]~input_o\ & ((\Shift|ll2[56]~108_combout\))) # (!\B[0]~input_o\ & (\Shift|ll2[57]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[57]~110_combout\,
	datab => \B[0]~input_o\,
	datad => \Shift|ll2[56]~108_combout\,
	combout => \Shift|ll2[56]~111_combout\);

-- Location: LCCOMB_X67_Y47_N20
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux58~0_combout\ & ((\Shift|ll2[52]~103_combout\) # ((\Mux58~1_combout\)))) # (!\Mux58~0_combout\ & (((!\Mux58~1_combout\ & \Shift|ll2[56]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Shift|ll2[52]~103_combout\,
	datac => \Mux58~1_combout\,
	datad => \Shift|ll2[56]~111_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X67_Y47_N30
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~4_combout\ & ((\Shift|ll4[40]~69_combout\) # ((!\Mux58~1_combout\)))) # (!\Mux7~4_combout\ & (((\Mux58~1_combout\ & \Shift|ll3[48]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[40]~69_combout\,
	datab => \Mux7~4_combout\,
	datac => \Mux58~1_combout\,
	datad => \Shift|ll3[48]~13_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X63_Y55_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\ShiftFN[1]~input_o\ & \ShiftFN[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ShiftFN[1]~input_o\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X62_Y51_N10
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux7~3_combout\ & (((\Mux7~0_combout\)))) # (!\Mux7~3_combout\ & ((\Mux7~0_combout\ & ((\Mux7~5_combout\))) # (!\Mux7~0_combout\ & (\Add|S\(56)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Add|S\(56),
	datac => \Mux7~5_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X62_Y51_N4
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux7~6_combout\ & (((\Shift|ll5[24]~22_combout\) # (!\Mux7~3_combout\)))) # (!\Mux7~6_combout\ & (\Y_R[1]~78_combout\ & ((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~78_combout\,
	datab => \Shift|ll5[24]~22_combout\,
	datac => \Mux7~6_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X62_Y55_N12
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\FuncClass[0]~input_o\) # ((!\ExtWord~input_o\ & (\ShiftFN[1]~input_o\ & \B[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[0]~input_o\,
	datab => \ExtWord~input_o\,
	datac => \ShiftFN[1]~input_o\,
	datad => \B[5]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X62_Y55_N24
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Mux7~1_combout\ & (((\Mux7~2_combout\)))) # (!\Mux7~1_combout\ & ((\Mux7~2_combout\ & ((\Y_R[1]~34_combout\))) # (!\Mux7~2_combout\ & (\Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~7_combout\,
	datab => \Mux7~1_combout\,
	datac => \Y_R[1]~34_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X62_Y55_N26
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (\Mux7~1_combout\ & ((\Mux7~8_combout\ & (\Mux7~12_combout\)) # (!\Mux7~8_combout\ & ((\Y_ShiftOrArith[31]~25_combout\))))) # (!\Mux7~1_combout\ & (((\Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~12_combout\,
	datab => \Mux7~1_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux7~8_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X50_Y69_N16
\Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (!\FuncClass[1]~input_o\ & \Mux7~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FuncClass[1]~input_o\,
	datad => \Mux7~9_combout\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X60_Y57_N28
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\B[57]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[57]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[57]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[57]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[57]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[57]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X60_Y57_N6
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux6~7_combout\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X66_Y51_N8
\Shift|ll2[57]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[57]~112_combout\ = (!\B[0]~input_o\ & ((\B[1]~input_o\ & ((\A[55]~input_o\))) # (!\B[1]~input_o\ & (\A[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[57]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|ll2[57]~112_combout\);

-- Location: LCCOMB_X66_Y51_N2
\Shift|ll2[57]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[57]~113_combout\ = (\Shift|ll2[57]~112_combout\) # ((\B[0]~input_o\ & \Shift|ll2[57]~110_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[0]~input_o\,
	datac => \Shift|ll2[57]~112_combout\,
	datad => \Shift|ll2[57]~110_combout\,
	combout => \Shift|ll2[57]~113_combout\);

-- Location: LCCOMB_X63_Y50_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux58~1_combout\ & (((\Mux58~0_combout\) # (\Shift|ll3[49]~14_combout\)))) # (!\Mux58~1_combout\ & (\Shift|ll2[57]~113_combout\ & (!\Mux58~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~1_combout\,
	datab => \Shift|ll2[57]~113_combout\,
	datac => \Mux58~0_combout\,
	datad => \Shift|ll3[49]~14_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X62_Y51_N22
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux58~0_combout\ & ((\Mux6~0_combout\ & (\Shift|ll4[41]~71_combout\)) # (!\Mux6~0_combout\ & ((\Shift|ll2[53]~105_combout\))))) # (!\Mux58~0_combout\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Shift|ll4[41]~71_combout\,
	datac => \Mux6~0_combout\,
	datad => \Shift|ll2[53]~105_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X61_Y57_N26
\Add|GEN_BLOCKS:14:LACG_INST|C[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\ = (\A[56]~input_o\ & ((\Add|block_carry_in[14]~50_combout\) # (\B[56]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[56]~input_o\ & (\Add|block_carry_in[14]~50_combout\ & (\B[56]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[56]~input_o\,
	datab => \AddnSub~input_o\,
	datac => \A[56]~input_o\,
	datad => \Add|block_carry_in[14]~50_combout\,
	combout => \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\);

-- Location: LCCOMB_X62_Y54_N4
\Add|S[57]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(57) = \AddnSub~input_o\ $ (\A[57]~input_o\ $ (\B[57]~input_o\ $ (\Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[57]~input_o\,
	datac => \B[57]~input_o\,
	datad => \Add|GEN_BLOCKS:14:LACG_INST|C[1]~0_combout\,
	combout => \Add|S\(57));

-- Location: LCCOMB_X62_Y51_N0
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux7~3_combout\ & ((\Mux7~0_combout\) # ((\Y_R[1]~84_combout\)))) # (!\Mux7~3_combout\ & (!\Mux7~0_combout\ & (\Add|S\(57))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux7~0_combout\,
	datac => \Add|S\(57),
	datad => \Y_R[1]~84_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X62_Y51_N26
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\Shift|ll5[25]~23_combout\) # (!\Mux7~0_combout\)))) # (!\Mux6~2_combout\ & (\Mux6~1_combout\ & ((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~2_combout\,
	datac => \Shift|ll5[25]~23_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X62_Y55_N28
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux7~1_combout\ & (((\Y_ShiftOrArith[31]~25_combout\) # (\Mux7~2_combout\)))) # (!\Mux7~1_combout\ & (\Mux6~3_combout\ & ((!\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \Mux7~1_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X62_Y55_N14
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & ((\Mux6~8_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux6~4_combout\ & (((\Y_R[1]~34_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~8_combout\,
	datab => \Mux6~4_combout\,
	datac => \Y_R[1]~34_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X68_Y51_N30
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Mux6~5_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~5_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X60_Y57_N0
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\B[58]~input_o\ & ((\LogicFN[1]~input_o\ $ (!\A[58]~input_o\)) # (!\LogicFN[0]~input_o\))) # (!\B[58]~input_o\ & ((\LogicFN[1]~input_o\ & (!\LogicFN[0]~input_o\ & \A[58]~input_o\)) # (!\LogicFN[1]~input_o\ & ((\A[58]~input_o\) # 
-- (!\LogicFN[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \LogicFN[1]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[58]~input_o\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X60_Y57_N18
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux5~7_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Mux5~7_combout\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X61_Y57_N12
\Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\ = (\Add|G\(56) & ((\A[57]~input_o\) # (\AddnSub~input_o\ $ (\B[57]~input_o\)))) # (!\Add|G\(56) & (\A[57]~input_o\ & (\AddnSub~input_o\ $ (\B[57]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|G\(56),
	datab => \A[57]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[57]~input_o\,
	combout => \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\);

-- Location: LCCOMB_X61_Y57_N14
\Add|S[58]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(58) = \Add|P\(58) $ (((\Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\) # ((\Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & \Add|block_carry_in[14]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:14:LACG_INST|g_int[1]~1_combout\,
	datab => \Add|P\(58),
	datac => \Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\,
	datad => \Add|block_carry_in[14]~50_combout\,
	combout => \Add|S\(58));

-- Location: LCCOMB_X61_Y54_N10
\Shift|ll1[58]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[58]~1_combout\ = (\B[0]~input_o\ & ((\A[57]~input_o\))) # (!\B[0]~input_o\ & (\A[58]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datab => \A[58]~input_o\,
	datac => \A[57]~input_o\,
	combout => \Shift|ll1[58]~1_combout\);

-- Location: LCCOMB_X66_Y51_N28
\Shift|ll2[58]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[58]~114_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[55]~input_o\))) # (!\B[0]~input_o\ & (\A[56]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[55]~input_o\,
	combout => \Shift|ll2[58]~114_combout\);

-- Location: LCCOMB_X66_Y48_N4
\Shift|ll2[58]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[58]~115_combout\ = (\Shift|ll2[58]~114_combout\) # ((\Shift|ll1[58]~1_combout\ & !\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[58]~1_combout\,
	datab => \B[1]~input_o\,
	datad => \Shift|ll2[58]~114_combout\,
	combout => \Shift|ll2[58]~115_combout\);

-- Location: LCCOMB_X66_Y48_N22
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux58~0_combout\ & ((\Mux58~1_combout\) # ((\Shift|ll2[54]~107_combout\)))) # (!\Mux58~0_combout\ & (!\Mux58~1_combout\ & (\Shift|ll2[58]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Mux58~1_combout\,
	datac => \Shift|ll2[58]~115_combout\,
	datad => \Shift|ll2[54]~107_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X66_Y48_N16
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux58~1_combout\ & ((\Mux5~0_combout\ & ((\Shift|ll4[42]~73_combout\))) # (!\Mux5~0_combout\ & (\Shift|ll3[50]~15_combout\)))) # (!\Mux58~1_combout\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[50]~15_combout\,
	datab => \Mux58~1_combout\,
	datac => \Mux5~0_combout\,
	datad => \Shift|ll4[42]~73_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X62_Y55_N0
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux7~0_combout\ & (((\Mux5~1_combout\) # (\Mux7~3_combout\)))) # (!\Mux7~0_combout\ & (\Add|S\(58) & ((!\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S\(58),
	datab => \Mux7~0_combout\,
	datac => \Mux5~1_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X62_Y55_N18
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux5~2_combout\ & (((\Shift|ll5[26]~24_combout\) # (!\Mux7~3_combout\)))) # (!\Mux5~2_combout\ & (\Y_R[1]~85_combout\ & ((\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_R[1]~85_combout\,
	datab => \Mux5~2_combout\,
	datac => \Shift|ll5[26]~24_combout\,
	datad => \Mux7~3_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X62_Y55_N4
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux7~2_combout\ & ((\Mux7~1_combout\) # ((\Y_R[1]~34_combout\)))) # (!\Mux7~2_combout\ & (!\Mux7~1_combout\ & ((\Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux7~1_combout\,
	datac => \Y_R[1]~34_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X62_Y55_N22
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux5~4_combout\ & ((\Mux5~8_combout\) # ((!\Mux7~1_combout\)))) # (!\Mux5~4_combout\ & (((\Y_ShiftOrArith[31]~25_combout\ & \Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \Y_ShiftOrArith[31]~25_combout\,
	datac => \Mux5~4_combout\,
	datad => \Mux7~1_combout\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X60_Y58_N28
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (!\FuncClass[1]~input_o\ & \Mux5~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[1]~input_o\,
	datad => \Mux5~5_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X60_Y57_N20
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\LogicFN[0]~input_o\ & (((\LogicFN[1]~input_o\) # (\Logic|xor_result[59]~1_combout\)))) # (!\LogicFN[0]~input_o\ & (\B[19]~input_o\ & (!\LogicFN[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \Logic|xor_result[59]~1_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X60_Y57_N30
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Mux4~5_combout\ & (((\A[59]~input_o\ & \B[59]~input_o\)) # (!\LogicFN[1]~input_o\))) # (!\Mux4~5_combout\ & (\LogicFN[1]~input_o\ & ((\A[59]~input_o\) # (\B[59]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datab => \Mux4~5_combout\,
	datac => \LogicFN[1]~input_o\,
	datad => \B[59]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X60_Y57_N2
\Add|S[59]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[59]~27_combout\ = \A[59]~input_o\ $ (\AddnSub~input_o\ $ (\B[59]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[59]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \B[59]~input_o\,
	combout => \Add|S[59]~27_combout\);

-- Location: LCCOMB_X61_Y57_N16
\Add|GEN_BLOCKS:14:LACG_INST|g_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\ = (\A[58]~input_o\ & ((\Add|G\(57)) # (\B[58]~input_o\ $ (\AddnSub~input_o\)))) # (!\A[58]~input_o\ & (\Add|G\(57) & (\B[58]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[58]~input_o\,
	datab => \A[58]~input_o\,
	datac => \AddnSub~input_o\,
	datad => \Add|G\(57),
	combout => \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\);

-- Location: LCCOMB_X61_Y57_N10
\Add|S[59]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[59]~28_combout\ = (\Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & ((\Add|block_carry_in[14]~50_combout\) # ((\Add|P\(57) & \Add|G\(56))))) # (!\Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\ & (\Add|P\(57) & (\Add|G\(56))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:14:LACG_INST|Pout~0_combout\,
	datab => \Add|P\(57),
	datac => \Add|G\(56),
	datad => \Add|block_carry_in[14]~50_combout\,
	combout => \Add|S[59]~28_combout\);

-- Location: LCCOMB_X61_Y57_N4
\Add|S[59]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S[59]~29_combout\ = \Add|S[59]~27_combout\ $ (((\Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\) # ((\Add|P\(58) & \Add|S[59]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|S[59]~27_combout\,
	datab => \Add|GEN_BLOCKS:14:LACG_INST|g_int~2_combout\,
	datac => \Add|P\(58),
	datad => \Add|S[59]~28_combout\,
	combout => \Add|S[59]~29_combout\);

-- Location: LCCOMB_X62_Y55_N16
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux7~3_combout\ & (((\Y_R[1]~86_combout\) # (\Mux7~0_combout\)))) # (!\Mux7~3_combout\ & (\Add|S[59]~29_combout\ & ((!\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Add|S[59]~29_combout\,
	datac => \Y_R[1]~86_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X61_Y54_N4
\Shift|ll1[59]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[59]~2_combout\ = (\B[0]~input_o\ & (\A[58]~input_o\)) # (!\B[0]~input_o\ & ((\A[59]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[58]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Shift|ll1[59]~2_combout\);

-- Location: LCCOMB_X66_Y51_N6
\Shift|ll2[59]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[59]~116_combout\ = (\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[56]~input_o\)) # (!\B[0]~input_o\ & ((\A[57]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[56]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[57]~input_o\,
	combout => \Shift|ll2[59]~116_combout\);

-- Location: LCCOMB_X69_Y51_N18
\Shift|ll2[59]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll2[59]~117_combout\ = (\Shift|ll2[59]~116_combout\) # ((!\B[1]~input_o\ & \Shift|ll1[59]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[1]~input_o\,
	datac => \Shift|ll1[59]~2_combout\,
	datad => \Shift|ll2[59]~116_combout\,
	combout => \Shift|ll2[59]~117_combout\);

-- Location: LCCOMB_X69_Y51_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux58~0_combout\ & (((\Mux58~1_combout\)))) # (!\Mux58~0_combout\ & ((\Mux58~1_combout\ & ((\Shift|ll3[51]~16_combout\))) # (!\Mux58~1_combout\ & (\Shift|ll2[59]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Shift|ll2[59]~117_combout\,
	datac => \Mux58~1_combout\,
	datad => \Shift|ll3[51]~16_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X69_Y51_N14
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux58~0_combout\ & ((\Mux4~0_combout\ & (\Shift|ll4[43]~75_combout\)) # (!\Mux4~0_combout\ & ((\Shift|ll2[55]~109_combout\))))) # (!\Mux58~0_combout\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \Shift|ll4[43]~75_combout\,
	datac => \Shift|ll2[55]~109_combout\,
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X62_Y55_N10
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\Shift|ll5[27]~25_combout\) # ((!\Mux7~0_combout\)))) # (!\Mux4~2_combout\ & (((\Mux4~1_combout\ & \Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll5[27]~25_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux4~1_combout\,
	datad => \Mux7~0_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X62_Y55_N20
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux7~1_combout\ & (((\Y_ShiftOrArith[31]~25_combout\) # (\Mux7~2_combout\)))) # (!\Mux7~1_combout\ & (\Mux4~3_combout\ & ((!\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux7~1_combout\,
	datac => \Y_ShiftOrArith[31]~25_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X62_Y55_N30
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~4_combout\ & ((\Mux4~6_combout\) # ((!\Mux7~2_combout\)))) # (!\Mux4~4_combout\ & (((\Y_R[1]~34_combout\ & \Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \Mux4~4_combout\,
	datac => \Y_R[1]~34_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X66_Y59_N30
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~7_combout\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datac => \FuncClass[1]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X59_Y55_N12
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\LogicFN[1]~input_o\ & ((\B[60]~input_o\ & ((\A[60]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[60]~input_o\ & (!\LogicFN[0]~input_o\ & \A[60]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[60]~input_o\ $ (\A[60]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[60]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[60]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X59_Y55_N30
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (\Mux3~8_combout\ & ((\LogicFN[1]~input_o\) # ((\LogicFN[0]~input_o\) # (\B[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[19]~input_o\,
	datad => \Mux3~8_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X61_Y57_N30
\Add|S[60]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(60) = \Add|P\(60) $ (((\Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\ & ((\Add|block_carry_in[14]~50_combout\))) # (!\Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\ & (\Add|block_carry_in[15]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[15]~44_combout\,
	datab => \Add|block_carry_in[14]~50_combout\,
	datac => \Add|P\(60),
	datad => \Add|GEN_BLOCKS:14:LACG_INST|Pout~combout\,
	combout => \Add|S\(60));

-- Location: LCCOMB_X61_Y54_N14
\Shift|ll1[60]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[60]~3_combout\ = (\B[0]~input_o\ & ((\A[59]~input_o\))) # (!\B[0]~input_o\ & (\A[60]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[59]~input_o\,
	combout => \Shift|ll1[60]~3_combout\);

-- Location: LCCOMB_X67_Y53_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (!\Mux60~0_combout\ & ((\Mux60~1_combout\ & ((\Shift|ll2[56]~111_combout\))) # (!\Mux60~1_combout\ & (\Shift|ll1[60]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[60]~3_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ll2[56]~111_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X67_Y53_N22
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux60~0_combout\ & ((\Mux3~0_combout\ & (\Shift|ll3[52]~17_combout\)) # (!\Mux3~0_combout\ & ((\Shift|ll1[58]~1_combout\))))) # (!\Mux60~0_combout\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll3[52]~17_combout\,
	datab => \Mux60~0_combout\,
	datac => \Mux3~0_combout\,
	datad => \Shift|ll1[58]~1_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X62_Y52_N10
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux17~2_combout\ & ((\Shift|ll4[44]~77_combout\) # ((!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & (((\Mux3~1_combout\ & \Y_ShiftOrArith[31]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[44]~77_combout\,
	datab => \Mux3~1_combout\,
	datac => \Mux17~2_combout\,
	datad => \Y_ShiftOrArith[31]~23_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X62_Y52_N12
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Y_ShiftOrArith[31]~23_combout\ & (((\Mux3~2_combout\)))) # (!\Y_ShiftOrArith[31]~23_combout\ & ((\Mux3~2_combout\ & ((\Add|S\(60)))) # (!\Mux3~2_combout\ & (\Shift|ll5[28]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~23_combout\,
	datab => \Shift|ll5[28]~26_combout\,
	datac => \Add|S\(60),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X62_Y52_N6
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux17~0_combout\ & (((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & ((\Mux17~1_combout\ & ((\Y_R[1]~79_combout\))) # (!\Mux17~1_combout\ & (\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux17~0_combout\,
	datac => \Y_R[1]~79_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X62_Y52_N16
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & ((\Y_R[1]~34_combout\) # ((!\Mux17~0_combout\)))) # (!\Mux3~4_combout\ & (((\Mux17~0_combout\ & \Y_ShiftOrArith[31]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datab => \Y_R[1]~34_combout\,
	datac => \Mux17~0_combout\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X62_Y52_N18
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux3~9_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~9_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X59_Y55_N8
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\LogicFN[1]~input_o\ & ((\LogicFN[0]~input_o\ & (\B[61]~input_o\ & \A[61]~input_o\)) # (!\LogicFN[0]~input_o\ & ((\B[61]~input_o\) # (\A[61]~input_o\))))) # (!\LogicFN[1]~input_o\ & ((\B[61]~input_o\ $ (\A[61]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \B[61]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X59_Y55_N26
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Mux2~7_combout\ & ((\B[19]~input_o\) # ((\LogicFN[0]~input_o\) # (\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[19]~input_o\,
	datab => \LogicFN[0]~input_o\,
	datac => \Mux2~7_combout\,
	datad => \LogicFN[1]~input_o\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X59_Y58_N30
\Add|GEN_BLOCKS:15:LACG_INST|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C[1]~1_combout\ = (\A[60]~input_o\ & ((\Add|block_carry_in[15]~45_combout\) # (\AddnSub~input_o\ $ (\B[60]~input_o\)))) # (!\A[60]~input_o\ & (\Add|block_carry_in[15]~45_combout\ & (\AddnSub~input_o\ $ (\B[60]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \B[60]~input_o\,
	datac => \A[60]~input_o\,
	datad => \Add|block_carry_in[15]~45_combout\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C[1]~1_combout\);

-- Location: LCCOMB_X59_Y58_N6
\Add|S[61]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(61) = \B[61]~input_o\ $ (\A[61]~input_o\ $ (\Add|GEN_BLOCKS:15:LACG_INST|C[1]~1_combout\ $ (\AddnSub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[61]~input_o\,
	datab => \A[61]~input_o\,
	datac => \Add|GEN_BLOCKS:15:LACG_INST|C[1]~1_combout\,
	datad => \AddnSub~input_o\,
	combout => \Add|S\(61));

-- Location: LCCOMB_X61_Y54_N0
\Shift|ll1[61]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|ll1[61]~4_combout\ = (\B[0]~input_o\ & (\A[60]~input_o\)) # (!\B[0]~input_o\ & ((\A[61]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[60]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Shift|ll1[61]~4_combout\);

-- Location: LCCOMB_X63_Y52_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux60~0_combout\ & (((\Mux60~1_combout\)))) # (!\Mux60~0_combout\ & ((\Mux60~1_combout\ & ((\Shift|ll2[57]~113_combout\))) # (!\Mux60~1_combout\ & (\Shift|ll1[61]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Shift|ll1[61]~4_combout\,
	datac => \Mux60~1_combout\,
	datad => \Shift|ll2[57]~113_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X63_Y52_N6
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux60~0_combout\ & ((\Mux2~0_combout\ & (\Shift|ll3[53]~18_combout\)) # (!\Mux2~0_combout\ & ((\Shift|ll1[59]~2_combout\))))) # (!\Mux60~0_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux60~0_combout\,
	datab => \Shift|ll3[53]~18_combout\,
	datac => \Shift|ll1[59]~2_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X63_Y52_N24
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\Mux17~2_combout\ & (((!\Y_ShiftOrArith[31]~23_combout\)))) # (!\Mux17~2_combout\ & ((\Y_ShiftOrArith[31]~23_combout\ & ((\Mux2~1_combout\))) # (!\Y_ShiftOrArith[31]~23_combout\ & (\Shift|ll5[29]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Shift|ll5[29]~27_combout\,
	datac => \Y_ShiftOrArith[31]~23_combout\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X63_Y52_N18
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux17~2_combout\ & ((\Mux2~2_combout\ & ((\Add|S\(61)))) # (!\Mux2~2_combout\ & (\Shift|ll4[45]~79_combout\)))) # (!\Mux17~2_combout\ & (((\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[45]~79_combout\,
	datab => \Add|S\(61),
	datac => \Mux17~2_combout\,
	datad => \Mux2~2_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X62_Y53_N30
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux17~0_combout\ & ((\Y_ShiftOrArith[31]~25_combout\) # ((\Mux17~1_combout\)))) # (!\Mux17~0_combout\ & (((!\Mux17~1_combout\ & \Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X62_Y52_N28
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux17~1_combout\ & ((\Mux2~4_combout\ & (\Y_R[1]~34_combout\)) # (!\Mux2~4_combout\ & ((\Y_R[1]~87_combout\))))) # (!\Mux17~1_combout\ & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \Y_R[1]~34_combout\,
	datac => \Mux2~4_combout\,
	datad => \Y_R[1]~87_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X62_Y52_N14
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\FuncClass[1]~input_o\ & ((\FuncClass[0]~input_o\ & (\Mux2~8_combout\)) # (!\FuncClass[0]~input_o\ & ((\Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~8_combout\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Mux2~5_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X59_Y54_N30
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!\FuncClass[0]~input_o\ & !\FuncClass[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FuncClass[0]~input_o\,
	datad => \FuncClass[1]~input_o\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X59_Y54_N18
\Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~0_combout\ = (\LogicFN[0]~input_o\ & ((\B[62]~input_o\ & (\LogicFN[1]~input_o\ $ (!\A[62]~input_o\))) # (!\B[62]~input_o\ & (!\LogicFN[1]~input_o\ & \A[62]~input_o\)))) # (!\LogicFN[0]~input_o\ & ((\B[62]~input_o\) # ((\A[62]~input_o\) # 
-- (!\LogicFN[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[0]~input_o\,
	datab => \B[62]~input_o\,
	datac => \LogicFN[1]~input_o\,
	datad => \A[62]~input_o\,
	combout => \Logic|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y54_N12
\Logic|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux1~1_combout\ = (\Logic|Mux1~0_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Logic|Mux1~0_combout\,
	combout => \Logic|Mux1~1_combout\);

-- Location: LCCOMB_X59_Y54_N28
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ & \Logic|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux1~1_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X62_Y54_N26
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\B[5]~input_o\ & (((\Y_R[1]~34_combout\)))) # (!\B[5]~input_o\ & ((\B[4]~input_o\ & (\Y_R[1]~34_combout\)) # (!\B[4]~input_o\ & ((\Y_R[1]~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_R[1]~34_combout\,
	datad => \Y_R[1]~68_combout\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X59_Y54_N4
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\ExtWord~input_o\ & (\Y_ShiftOrArith[31]~25_combout\)) # (!\ExtWord~input_o\ & (((\ShiftFN[1]~input_o\ & \Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~25_combout\,
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X60_Y54_N20
\Y_LorS[62]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~1_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & ((\A[61]~input_o\))) # (!\B[0]~input_o\ & (\A[62]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \B[0]~input_o\,
	datac => \B[1]~input_o\,
	datad => \A[61]~input_o\,
	combout => \Y_LorS[62]~1_combout\);

-- Location: LCCOMB_X66_Y48_N12
\Y_LorS[62]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~2_combout\ = (!\B[2]~input_o\ & ((\Y_LorS[62]~1_combout\) # ((\Shift|ll1[60]~3_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[60]~3_combout\,
	datab => \Y_LorS[62]~1_combout\,
	datac => \B[2]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Y_LorS[62]~2_combout\);

-- Location: LCCOMB_X66_Y48_N26
\Y_LorS[62]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~0_combout\ = (\B[2]~input_o\ & ((\Shift|ll2[58]~114_combout\) # ((\Shift|ll1[58]~1_combout\ & !\B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll1[58]~1_combout\,
	datab => \B[1]~input_o\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll2[58]~114_combout\,
	combout => \Y_LorS[62]~0_combout\);

-- Location: LCCOMB_X66_Y48_N6
\Y_LorS[62]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~3_combout\ = (\B[3]~input_o\ & (((\Shift|ll3[54]~19_combout\)))) # (!\B[3]~input_o\ & ((\Y_LorS[62]~2_combout\) # ((\Y_LorS[62]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_LorS[62]~2_combout\,
	datab => \Shift|ll3[54]~19_combout\,
	datac => \Y_LorS[62]~0_combout\,
	datad => \B[3]~input_o\,
	combout => \Y_LorS[62]~3_combout\);

-- Location: LCCOMB_X65_Y52_N26
\Y_LorS[62]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~4_combout\ = (!\B[5]~input_o\ & ((\B[4]~input_o\ & ((\Shift|ll4[46]~81_combout\))) # (!\B[4]~input_o\ & (\Y_LorS[62]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \B[4]~input_o\,
	datac => \Y_LorS[62]~3_combout\,
	datad => \Shift|ll4[46]~81_combout\,
	combout => \Y_LorS[62]~4_combout\);

-- Location: LCCOMB_X65_Y52_N4
\Y_LorS[62]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_LorS[62]~5_combout\ = (\ShiftFN[0]~input_o\ & ((\Y_LorS[62]~4_combout\) # ((\B[5]~input_o\ & \Shift|ll5[30]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ll5[30]~29_combout\,
	datac => \Y_LorS[62]~4_combout\,
	datad => \ShiftFN[0]~input_o\,
	combout => \Y_LorS[62]~5_combout\);

-- Location: LCCOMB_X59_Y58_N18
\Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~3_combout\ = (\A[61]~input_o\ & ((\Add|G\(60)) # (\AddnSub~input_o\ $ (\B[61]~input_o\)))) # (!\A[61]~input_o\ & (\Add|G\(60) & (\AddnSub~input_o\ $ (\B[61]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddnSub~input_o\,
	datab => \A[61]~input_o\,
	datac => \B[61]~input_o\,
	datad => \Add|G\(60),
	combout => \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~3_combout\);

-- Location: LCCOMB_X59_Y58_N8
\Add|GEN_BLOCKS:15:LACG_INST|C~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|GEN_BLOCKS:15:LACG_INST|C~2_combout\ = (\Add|P\(61) & (\A[60]~input_o\ $ (\B[60]~input_o\ $ (\AddnSub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[60]~input_o\,
	datab => \B[60]~input_o\,
	datac => \Add|P\(61),
	datad => \AddnSub~input_o\,
	combout => \Add|GEN_BLOCKS:15:LACG_INST|C~2_combout\);

-- Location: LCCOMB_X59_Y58_N12
\Add|S[62]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S\(62) = \Add|P\(62) $ (((\Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~3_combout\) # ((\Add|block_carry_in[15]~45_combout\ & \Add|GEN_BLOCKS:15:LACG_INST|C~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|block_carry_in[15]~45_combout\,
	datab => \Add|GEN_BLOCKS:15:LACG_INST|g_int[1]~3_combout\,
	datac => \Add|GEN_BLOCKS:15:LACG_INST|C~2_combout\,
	datad => \Add|P\(62),
	combout => \Add|S\(62));

-- Location: LCCOMB_X59_Y54_N0
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (!\ShiftFN[1]~input_o\ & !\ExtWord~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftFN[1]~input_o\,
	datac => \ExtWord~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X59_Y54_N26
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~3_combout\ & ((\Y_LorS[62]~5_combout\) # ((!\ShiftFN[0]~input_o\ & \Add|S\(62)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_LorS[62]~5_combout\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Add|S\(62),
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X59_Y54_N20
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux1~2_combout\) # ((\Mux3~7_combout\ & ((\Mux1~7_combout\) # (\Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux1~2_combout\,
	datac => \Mux1~7_combout\,
	datad => \Mux1~4_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X60_Y58_N22
\Add|S_internal[63]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add|S_internal\(63) = \Add|P\(63) $ (((\Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\) # ((\Add|block_carry_in[15]~45_combout\ & \Add|GEN_BLOCKS:15:LACG_INST|Pout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add|GEN_BLOCKS:15:LACG_INST|C[3]~0_combout\,
	datab => \Add|P\(63),
	datac => \Add|block_carry_in[15]~45_combout\,
	datad => \Add|GEN_BLOCKS:15:LACG_INST|Pout~0_combout\,
	combout => \Add|S_internal\(63));

-- Location: LCCOMB_X60_Y50_N2
\Shift|Y_LL[63]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~1_combout\ = (\B[4]~input_o\ & ((\B[5]~input_o\ & ((\Shift|ll4[15]~49_combout\))) # (!\B[5]~input_o\ & (\Shift|ll4[47]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll4[47]~83_combout\,
	datab => \Shift|ll4[15]~49_combout\,
	datac => \B[5]~input_o\,
	datad => \B[4]~input_o\,
	combout => \Shift|Y_LL[63]~1_combout\);

-- Location: LCCOMB_X60_Y50_N4
\Shift|Y_LL[63]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~2_combout\ = (\B[5]~input_o\ & ((\B[2]~input_o\ & (\Shift|ll4[27]~39_combout\)) # (!\B[2]~input_o\ & ((\Shift|ll4[31]~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ll4[27]~39_combout\,
	datac => \B[2]~input_o\,
	datad => \Shift|ll4[31]~50_combout\,
	combout => \Shift|Y_LL[63]~2_combout\);

-- Location: LCCOMB_X61_Y54_N26
\Shift|Y_LL[63]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~3_combout\ = (!\B[1]~input_o\ & ((\B[0]~input_o\ & (\A[62]~input_o\)) # (!\B[0]~input_o\ & ((\A[63]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[62]~input_o\,
	datab => \A[63]~input_o\,
	datac => \B[0]~input_o\,
	datad => \B[1]~input_o\,
	combout => \Shift|Y_LL[63]~3_combout\);

-- Location: LCCOMB_X61_Y54_N20
\Shift|Y_LL[63]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~4_combout\ = (!\B[2]~input_o\ & ((\Shift|Y_LL[63]~3_combout\) # ((\Shift|ll1[61]~4_combout\ & \B[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \Shift|ll1[61]~4_combout\,
	datac => \Shift|Y_LL[63]~3_combout\,
	datad => \B[1]~input_o\,
	combout => \Shift|Y_LL[63]~4_combout\);

-- Location: LCCOMB_X60_Y50_N6
\Shift|Y_LL[63]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~5_combout\ = (!\B[3]~input_o\ & ((\Shift|Y_LL[63]~4_combout\) # ((\Shift|ll2[59]~117_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|ll2[59]~117_combout\,
	datab => \B[2]~input_o\,
	datac => \B[3]~input_o\,
	datad => \Shift|Y_LL[63]~4_combout\,
	combout => \Shift|Y_LL[63]~5_combout\);

-- Location: LCCOMB_X60_Y50_N24
\Shift|Y_LL[63]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~6_combout\ = (!\B[5]~input_o\ & ((\Shift|Y_LL[63]~5_combout\) # ((\Shift|ll3[55]~20_combout\ & \B[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[5]~input_o\,
	datab => \Shift|ll3[55]~20_combout\,
	datac => \B[3]~input_o\,
	datad => \Shift|Y_LL[63]~5_combout\,
	combout => \Shift|Y_LL[63]~6_combout\);

-- Location: LCCOMB_X60_Y50_N18
\Shift|Y_LL[63]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Shift|Y_LL[63]~7_combout\ = (\Shift|Y_LL[63]~1_combout\) # ((!\B[4]~input_o\ & ((\Shift|Y_LL[63]~2_combout\) # (\Shift|Y_LL[63]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Shift|Y_LL[63]~1_combout\,
	datab => \B[4]~input_o\,
	datac => \Shift|Y_LL[63]~2_combout\,
	datad => \Shift|Y_LL[63]~6_combout\,
	combout => \Shift|Y_LL[63]~7_combout\);

-- Location: LCCOMB_X60_Y58_N24
\Y_ShiftOrArith[31]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~26_combout\ = (\ShiftFN[1]~input_o\ & (\ShiftFN[0]~input_o\)) # (!\ShiftFN[1]~input_o\ & ((\ShiftFN[0]~input_o\ & ((\Shift|Y_LL[63]~7_combout\))) # (!\ShiftFN[0]~input_o\ & (\Add|S_internal\(63)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftFN[1]~input_o\,
	datab => \ShiftFN[0]~input_o\,
	datac => \Add|S_internal\(63),
	datad => \Shift|Y_LL[63]~7_combout\,
	combout => \Y_ShiftOrArith[31]~26_combout\);

-- Location: LCCOMB_X60_Y58_N2
\Y_ShiftOrArith[31]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Y_ShiftOrArith[31]~27_combout\ = (\ShiftFN[1]~input_o\ & (\A[63]~input_o\ & ((\Y_ShiftOrArith[31]~26_combout\) # (!\Shift|Y_LL[0]~0_combout\)))) # (!\ShiftFN[1]~input_o\ & (\Y_ShiftOrArith[31]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_ShiftOrArith[31]~26_combout\,
	datab => \Shift|Y_LL[0]~0_combout\,
	datac => \ShiftFN[1]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Y_ShiftOrArith[31]~27_combout\);

-- Location: LCCOMB_X59_Y54_N16
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\ExtWord~input_o\ & (!\FuncClass[1]~input_o\ & (!\FuncClass[0]~input_o\ & \Y_ShiftOrArith[31]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ExtWord~input_o\,
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Y_ShiftOrArith[31]~27_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X59_Y54_N6
\Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~0_combout\ = (\LogicFN[1]~input_o\ & ((\B[63]~input_o\ & ((\A[63]~input_o\) # (!\LogicFN[0]~input_o\))) # (!\B[63]~input_o\ & (!\LogicFN[0]~input_o\ & \A[63]~input_o\)))) # (!\LogicFN[1]~input_o\ & ((\B[63]~input_o\ $ (\A[63]~input_o\)) # 
-- (!\LogicFN[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[63]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \A[63]~input_o\,
	combout => \Logic|Mux0~0_combout\);

-- Location: LCCOMB_X59_Y54_N24
\Logic|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Logic|Mux0~1_combout\ = (\Logic|Mux0~0_combout\ & ((\LogicFN[1]~input_o\) # ((\B[19]~input_o\) # (\LogicFN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LogicFN[1]~input_o\,
	datab => \B[19]~input_o\,
	datac => \LogicFN[0]~input_o\,
	datad => \Logic|Mux0~0_combout\,
	combout => \Logic|Mux0~1_combout\);

-- Location: LCCOMB_X59_Y54_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\FuncClass[1]~input_o\ & (\FuncClass[0]~input_o\ & \Logic|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FuncClass[1]~input_o\,
	datac => \FuncClass[0]~input_o\,
	datad => \Logic|Mux0~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X59_Y54_N2
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\ExtWord~input_o\ & \Y_ShiftOrArith[31]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ExtWord~input_o\,
	datad => \Y_ShiftOrArith[31]~25_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X59_Y54_N10
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~1_combout\) # ((\Mux0~0_combout\) # ((\Mux3~7_combout\ & \Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux0~1_combout\,
	datac => \Mux0~0_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux0~2_combout\);

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


